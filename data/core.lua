--=====================================================================================
-- FFLU | Final Fantasy Level-Up! - core.lua
-- Version: 2.1.16
-- Author: DonnieDice
-- Description: Professional World of Warcraft addon that plays Final Fantasy level-up sound
-- RGX Mods Collection - RealmGX Community Project
--=====================================================================================

-- Global addon namespace and version info
FFLU = FFLU or {}

-- Constants (cached for performance)
local ADDON_VERSION = "2.1.16"
local ADDON_NAME = "FFLU"
local ICON_PATH = "|Tinterface/addons/FFLU/images/icon:16:16|t"
local SOUND_PATHS = {
    high = "Interface\\Addons\\FFLU\\sounds\\final_fantasy_high.ogg",
    medium = "Interface\\Addons\\FFLU\\sounds\\final_fantasy_med.ogg",
    low = "Interface\\Addons\\FFLU\\sounds\\final_fantasy_low.ogg"
}
local DEFAULT_SOUND_ID = 569593

-- Set addon properties
FFLU.version = ADDON_VERSION
FFLU.addonName = ADDON_NAME  
FFLU.sounds = SOUND_PATHS
FFLU.defaultSoundId = DEFAULT_SOUND_ID

-- Default configuration
FFLU.defaults = {
    enabled = true,
    soundVariant = "medium",
    muteDefault = true,
    showWelcome = true,
    volume = "Master",
    firstRun = true
}

-- Saved variables (will be initialized on addon load)
FFLUSettings = FFLUSettings or {}

-- Initialize addon settings
function FFLU:InitializeSettings()
    for key, value in pairs(self.defaults) do
        if FFLUSettings[key] == nil then
            FFLUSettings[key] = value
        end
    end
end

-- Get current settings with fallback to defaults (with type validation)
function FFLU:GetSetting(key)
    if not key or type(key) ~= "string" then
        return nil
    end
    
    local value = FFLUSettings[key]
    if value ~= nil then
        return value
    end
    
    return self.defaults[key]
end

-- Set a setting value (with validation)
function FFLU:SetSetting(key, value)
    if not key or type(key) ~= "string" or self.defaults[key] == nil then
        return false
    end
    
    -- Type validation based on default values
    local defaultType = type(self.defaults[key])
    if type(value) ~= defaultType then
        return false
    end
    
    FFLUSettings[key] = value
    return true
end

-- Safely play custom sound on level up
function FFLU:PlayCustomLevelUpSound()
    if not self:GetSetting("enabled") then
        return
    end
    
    local soundVariant = self:GetSetting("soundVariant")
    if not soundVariant then
        soundVariant = "medium"
    end
    
    local soundPath = SOUND_PATHS[soundVariant]
    if not soundPath then
        print(ICON_PATH .. " " .. (self.L and self.L["ERROR_PREFIX"] or "|cffff0000FFLU Error:|r") .. " Invalid sound variant: " .. tostring(soundVariant))
        return
    end
    
    local volume = self:GetSetting("volume") or "Master"
    local success = PlaySoundFile(soundPath, volume)
    
    if not success then
        print(ICON_PATH .. " " .. (self.L and self.L["ERROR_PREFIX"] or "|cffff0000FFLU Error:|r") .. " Failed to play sound file: " .. soundPath)
    end
end


-- Mute default level up sound
function FFLU:MuteDefaultLevelUpSound()
    if self:GetSetting("muteDefault") then
        MuteSoundFile(DEFAULT_SOUND_ID)
    end
end

-- Display welcome message on player login
function FFLU:DisplayWelcomeMessage()
    if not self:GetSetting("showWelcome") then
        return
    end
    
    -- Fallback localization if L table doesn't exist
    if not self.L then
        self.L = {
            ENABLED_STATUS = "|cff00ff00Enabled|r",
            DISABLED_STATUS = "|cffff0000Disabled|r",
            TYPE_HELP = "Type |cffffffff/fflu help|r for commands",
            COMMUNITY_MESSAGE = "Part of the RealmGX Community - join us at discord.gg/N7kdKAHVVF"
        }
    end
    
    -- Cached strings for performance
    local title = "[|cffffe568F|r|cffffffffinal|r |cffffe568F|r|cffffffffantasy|r |cffffe568L|r|cffffffffevel|r |cffffe568U|r|cffffffffp!|r]"
    local version = "|cff8080ff(v" .. ADDON_VERSION .. ")|r"
    local rgxMods = "|cffffe568RGX Mods|r"
    local status = self:GetSetting("enabled") and self.L["ENABLED_STATUS"] or self.L["DISABLED_STATUS"]
    
    print(ICON_PATH .. " - " .. title .. " " .. status .. " " .. version .. " - " .. rgxMods)
    
    -- Show community message on first run
    if self:GetSetting("firstRun") then
        print(ICON_PATH .. " " .. self.L["COMMUNITY_MESSAGE"])
        self:SetSetting("firstRun", false)
    end
    
    print(ICON_PATH .. " " .. self.L["TYPE_HELP"])
end

-- Slash command handler
function FFLU:HandleSlashCommand(args)
    -- Ensure localization fallback
    if not self.L then
        self.L = {
            ADDON_ENABLED = "Addon |cff00ff00enabled|r",
            ADDON_DISABLED = "Addon |cffff0000disabled|r",
            PLAYING_TEST = "Playing test sound...",
            SOUND_VARIANT_SET = "Sound variant set to: |cffffffff%s|r",
            ERROR_PREFIX = "|cffff0000FFLU Error:|r",
            ERROR_INVALID_VARIANT_OPTIONS = "Invalid sound variant. Use: high, medium, or low",
            ERROR_UNKNOWN_COMMAND = "Unknown command. Type |cffffffff/fflu help|r for available commands",
            HELP_HEADER = "|cffffe568=== FFLU Commands ===|r",
            HELP_HELP = "|cffffffff/fflu help|r - Show this help",
            HELP_ENABLE = "|cffffffff/fflu enable|r - Enable the addon",
            HELP_DISABLE = "|cffffffff/fflu disable|r - Disable the addon",
            HELP_TOGGLE = "|cffffffff/fflu toggle|r - Toggle addon on/off",
            HELP_TEST = "|cffffffff/fflu test|r - Play test sound",
            HELP_STATUS = "|cffffffff/fflu status|r - Show current settings",
            HELP_SOUND = "|cffffffff/fflu sound <variant>|r - Set sound (high/medium/low)",
            HELP_VOLUME = "|cffffffff/fflu volume <channel>|r - Set volume channel (Master/SFX/Music/Ambience)",
            HELP_RESET = "|cffffffff/fflu reset|r - Reset all settings to defaults",
            VOLUME_SET = "Volume channel set to: |cffffffff%s|r",
            ERROR_INVALID_VOLUME = "Invalid volume channel. Use: Master, SFX, Music, or Ambience",
            STATUS_HEADER = "|cffffe568=== FFLU Status ===|r",
            STATUS_STATUS = "Status:",
            STATUS_SOUND = "Sound Variant: |cffffffff%s|r",
            STATUS_MUTE = "Mute Default:",
            STATUS_VERSION = "Version: |cffffffff%s|r",
            ENABLED_STATUS = "|cff00ff00Enabled|r",
            DISABLED_STATUS = "|cffff0000Disabled|r",
            YES = "|cff00ff00Yes|r",
            NO = "|cffff0000No|r"
        }
    end
    
    -- Use cached icon path
    local iconPrefix = ICON_PATH
    
    local command = string.lower(args or "")
    
    if command == "" or command == "help" then
        self:ShowHelp()
    elseif command == "enable" then
        self:SetSetting("enabled", true)
        print(iconPrefix .. " |cffffe568FFLU:|r " .. self.L["ADDON_ENABLED"])
    elseif command == "disable" then
        self:SetSetting("enabled", false)
        print(iconPrefix .. " |cffffe568FFLU:|r " .. self.L["ADDON_DISABLED"])
    elseif command == "toggle" then
        local newState = not self:GetSetting("enabled")
        self:SetSetting("enabled", newState)
        local status = newState and self.L["ADDON_ENABLED"] or self.L["ADDON_DISABLED"]
        print(iconPrefix .. " |cffffe568FFLU:|r " .. status)
    elseif command == "test" then
        print(iconPrefix .. " |cffffe568FFLU:|r " .. self.L["PLAYING_TEST"])
        self:PlayCustomLevelUpSound()
    elseif command == "status" then
        self:ShowStatus()
    elseif command == "reset" then
        self:ResetSettings()
    elseif string.match(command, "^sound ") then
        local variant = string.match(command, "^sound (.+)")
        -- Validate against our constants table for better performance
        if variant and SOUND_PATHS[variant] then
            self:SetSetting("soundVariant", variant)
            print(iconPrefix .. " |cffffe568FFLU:|r " .. string.format(self.L["SOUND_VARIANT_SET"], variant))
        else
            print(iconPrefix .. " " .. self.L["ERROR_PREFIX"] .. " " .. self.L["ERROR_INVALID_VARIANT_OPTIONS"])
        end
    elseif string.match(command, "^volume ") then
        local channel = string.match(command, "^volume (.+)")
        if channel then
            -- Capitalize first letter for consistency
            channel = channel:sub(1,1):upper() .. channel:sub(2):lower()
            -- Validate volume channels
            if channel == "Master" or channel == "Sfx" or channel == "Music" or channel == "Ambience" then
                -- Fix SFX capitalization
                if channel == "Sfx" then channel = "SFX" end
                self:SetSetting("volume", channel)
                print(iconPrefix .. " |cffffe568FFLU:|r " .. string.format(self.L["VOLUME_SET"] or "Volume channel set to: |cffffffff%s|r", channel))
            else
                print(iconPrefix .. " " .. self.L["ERROR_PREFIX"] .. " " .. (self.L["ERROR_INVALID_VOLUME"] or "Invalid volume channel. Use: Master, SFX, Music, or Ambience"))
            end
        end
    else
        print(iconPrefix .. " " .. self.L["ERROR_PREFIX"] .. " " .. self.L["ERROR_UNKNOWN_COMMAND"])
    end
end

-- Show help information
function FFLU:ShowHelp()
    local iconPrefix = ICON_PATH
    print(iconPrefix .. " " .. self.L["HELP_HEADER"])
    print(iconPrefix .. " " .. self.L["HELP_HELP"])
    print(iconPrefix .. " " .. self.L["HELP_ENABLE"])
    print(iconPrefix .. " " .. self.L["HELP_DISABLE"])
    print(iconPrefix .. " " .. self.L["HELP_TOGGLE"])
    print(iconPrefix .. " " .. self.L["HELP_TEST"])
    print(iconPrefix .. " " .. self.L["HELP_STATUS"])
    print(iconPrefix .. " " .. self.L["HELP_SOUND"])
    print(iconPrefix .. " " .. (self.L["HELP_VOLUME"] or "|cffffffff/fflu volume <channel>|r - Set volume channel (Master/SFX/Music/Ambience)"))
    print(iconPrefix .. " " .. self.L["HELP_RESET"])
    print(iconPrefix .. " " .. (self.L["COMMUNITY_MESSAGE"] or "Part of the RealmGX Community - join us at discord.gg/N7kdKAHVVF"))
end

-- Show current status
function FFLU:ShowStatus()
    local iconPrefix = ICON_PATH
    print(iconPrefix .. " " .. self.L["STATUS_HEADER"])
    local enabled = self:GetSetting("enabled")
    print(iconPrefix .. " " .. self.L["STATUS_STATUS"] .. " " .. (enabled and self.L["ENABLED_STATUS"] or self.L["DISABLED_STATUS"]))
    print(iconPrefix .. " " .. string.format(self.L["STATUS_SOUND"], self:GetSetting("soundVariant")))
    print(iconPrefix .. " " .. self.L["STATUS_MUTE"] .. " " .. (self:GetSetting("muteDefault") and self.L["YES"] or self.L["NO"]))
    print(iconPrefix .. " " .. string.format(self.L["STATUS_VERSION"], ADDON_VERSION))
    print(iconPrefix .. " " .. string.format(self.L["STATUS_VOLUME"] or "Volume Channel: |cffffffff%s|r", self:GetSetting("volume")))
end

-- Reset all settings to defaults
function FFLU:ResetSettings()
    local iconPrefix = ICON_PATH
    for key, value in pairs(self.defaults) do
        FFLUSettings[key] = value
    end
    -- Set first run back to true to show community message
    self:SetSetting("firstRun", true)
    print(iconPrefix .. " |cffffe568FFLU:|r Settings reset to defaults")
end

-- Event handler function (optimized with early returns)
function FFLU:OnEvent(event, ...)
    if event == "PLAYER_LEVEL_UP" then
        self:PlayCustomLevelUpSound()
        return
    end
    
    if event == "ADDON_LOADED" then
        local addonName = ...
        if addonName == ADDON_NAME then
            self:InitializeSettings()
            self:MuteDefaultLevelUpSound()
        end
        return
    end
    
    if event == "PLAYER_LOGIN" then
        self:DisplayWelcomeMessage()
    end
end

-- Register slash commands with error handling
SLASH_FFLU1 = "/fflu"
SlashCmdList["FFLU"] = function(args)
    local success, errorMsg = pcall(FFLU.HandleSlashCommand, FFLU, args)
    if not success then
        print(ICON_PATH .. " |cffff0000FFLU Error:|r " .. tostring(errorMsg))
    end
end

-- Event frame setup with error handling
local eventFrame = CreateFrame("Frame")
eventFrame:RegisterEvent("PLAYER_LEVEL_UP")
eventFrame:RegisterEvent("ADDON_LOADED")
eventFrame:RegisterEvent("PLAYER_LOGIN")
eventFrame:SetScript("OnEvent", function(self, event, ...)
    local success, errorMsg = pcall(FFLU.OnEvent, FFLU, event, ...)
    if not success then
        print(ICON_PATH .. " |cffff0000FFLU Error:|r Event handler failed: " .. tostring(errorMsg))
    end
end)
