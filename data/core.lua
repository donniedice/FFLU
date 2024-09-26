-- Final Fantasy Level Up! v2.0.1

local FFLU = {} -- Create a namespace to avoid global variable pollution

-- Play custom sound on level up
function FFLU.PlayCustomLevelUpSound()
    PlaySoundFile("Interface\\Addons\\FFLU\\final_fantasy_med.ogg", "Master")
end

-- Mute default level up sound
function FFLU.MuteDefaultLevelUpSound()
    MuteSoundFile(569593) -- Mutes the default level up sound
end


-- Display a message on player login
local function DisplayOnLoginMessage()
    print("[|Tinterface/addons/FFLU/images/icon:16:16|t - |cffffe568F|r|cffffffffinal|r |cffffe568F|r|cffffffffantasy|r |cffffe568L|r|cffffffffevel|r |cffffe568U|r|cffffffffp!|r] |cffffe568Loaded!|r |cff8080ff(v2.1.3)|r")
end

-- Event Registration
local frame = CreateFrame("Frame")
frame:RegisterEvent("PLAYER_LEVEL_UP")
frame:RegisterEvent("ADDON_LOADED")
frame:RegisterEvent("PLAYER_LOGIN")

frame:SetScript("OnEvent", function(self, event, ...)
    if event == "PLAYER_LEVEL_UP" then
        FFLU.PlayCustomLevelUpSound()
    elseif event == "ADDON_LOADED" and ... == "FFLU" then -- Check addon name
        FFLU.MuteDefaultLevelUpSound()
    elseif event == "PLAYER_LOGIN" then
        FFLU.DisplayWelcomeMessage()
    end
end)
