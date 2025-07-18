--=====================================================================================
-- FFLU | Final Fantasy Level-Up! - locales.lua
-- Localization strings for different languages
--=====================================================================================

-- Global FFLU namespace for localization
FFLU = FFLU or {}

-- Default English strings
FFLU.L = {
    -- Welcome messages
    ["ADDON_LOADED"] = "Loaded!",
    ["ENABLED_STATUS"] = "Enabled",
    ["DISABLED_STATUS"] = "Disabled", 
    ["TYPE_HELP"] = "Type |cffffffff/fflu help|r for commands",
    
    -- Command responses
    ["ADDON_ENABLED"] = "Addon |cff00ff00enabled|r",
    ["ADDON_DISABLED"] = "Addon |cffff0000disabled|r",
    ["PLAYING_TEST"] = "Playing test sound...",
    ["SOUND_VARIANT_SET"] = "Sound variant set to: |cffffffff%s|r",
    
    -- Help system
    ["HELP_HEADER"] = "|cffffe568=== FFLU Commands ===|r",
    ["HELP_HELP"] = "|cffffffff/fflu help|r - Show this help",
    ["HELP_ENABLE"] = "|cffffffff/fflu enable|r - Enable the addon",
    ["HELP_DISABLE"] = "|cffffffff/fflu disable|r - Disable the addon",
    ["HELP_TOGGLE"] = "|cffffffff/fflu toggle|r - Toggle addon on/off",
    ["HELP_TEST"] = "|cffffffff/fflu test|r - Play test sound",
    ["HELP_STATUS"] = "|cffffffff/fflu status|r - Show current settings",
    ["HELP_SOUND"] = "|cffffffff/fflu sound <variant>|r - Set sound (high/medium/low)",
    
    -- Status display
    ["STATUS_HEADER"] = "|cffffe568=== FFLU Status ===|r",
    ["STATUS_STATUS"] = "Status:",
    ["STATUS_SOUND"] = "Sound Variant: |cffffffff%s|r",
    ["STATUS_MUTE"] = "Mute Default:",
    ["STATUS_VERSION"] = "Version: |cffffffff%s|r",
    ["YES"] = "|cff00ff00Yes|r",
    ["NO"] = "|cffff0000No|r",
    
    -- Error messages
    ["ERROR_PREFIX"] = "|cffff0000FFLU Error:|r",
    ["ERROR_SOUND_FAILED"] = "Failed to play sound file: %s",
    ["ERROR_INVALID_VARIANT"] = "Invalid sound variant: %s",
    ["ERROR_INVALID_VARIANT_OPTIONS"] = "Invalid sound variant. Use: high, medium, or low",
    ["ERROR_UNKNOWN_COMMAND"] = "Unknown command. Type |cffffffff/fflu help|r for available commands",
}

-- German localization
if GetLocale() == "deDE" then
    FFLU.L["ADDON_LOADED"] = "Geladen!"
    FFLU.L["ENABLED_STATUS"] = "Aktiviert"
    FFLU.L["DISABLED_STATUS"] = "Deaktiviert"
    FFLU.L["TYPE_HELP"] = "Geben Sie |cffffffff/fflu help|r für Befehle ein"
    FFLU.L["ADDON_ENABLED"] = "Addon |cff00ff00aktiviert|r"
    FFLU.L["ADDON_DISABLED"] = "Addon |cffff0000deaktiviert|r"
    FFLU.L["PLAYING_TEST"] = "Spiele Testsound..."
    FFLU.L["HELP_HEADER"] = "|cffffe568=== FFLU Befehle ===|r"
    FFLU.L["STATUS_HEADER"] = "|cffffe568=== FFLU Status ===|r"
    FFLU.L["YES"] = "|cff00ff00Ja|r"
    FFLU.L["NO"] = "|cffff0000Nein|r"
end

-- French localization
if GetLocale() == "frFR" then
    FFLU.L["ADDON_LOADED"] = "Chargé!"
    FFLU.L["ENABLED_STATUS"] = "Activé"
    FFLU.L["DISABLED_STATUS"] = "Désactivé"
    FFLU.L["TYPE_HELP"] = "Tapez |cffffffff/fflu help|r pour les commandes"
    FFLU.L["ADDON_ENABLED"] = "Addon |cff00ff00activé|r"
    FFLU.L["ADDON_DISABLED"] = "Addon |cffff0000désactivé|r"
    FFLU.L["PLAYING_TEST"] = "Lecture du son de test..."
    FFLU.L["HELP_HEADER"] = "|cffffe568=== Commandes FFLU ===|r"
    FFLU.L["STATUS_HEADER"] = "|cffffe568=== Statut FFLU ===|r"
    FFLU.L["YES"] = "|cff00ff00Oui|r"
    FFLU.L["NO"] = "|cffff0000Non|r"
end

-- Spanish localization
if GetLocale() == "esES" or GetLocale() == "esMX" then
    FFLU.L["ADDON_LOADED"] = "¡Cargado!"
    FFLU.L["ENABLED_STATUS"] = "Habilitado"
    FFLU.L["DISABLED_STATUS"] = "Deshabilitado"
    FFLU.L["TYPE_HELP"] = "Escriba |cffffffff/fflu help|r para comandos"
    FFLU.L["ADDON_ENABLED"] = "Addon |cff00ff00habilitado|r"
    FFLU.L["ADDON_DISABLED"] = "Addon |cffff0000deshabilitado|r"
    FFLU.L["PLAYING_TEST"] = "Reproduciendo sonido de prueba..."
    FFLU.L["HELP_HEADER"] = "|cffffe568=== Comandos FFLU ===|r"
    FFLU.L["STATUS_HEADER"] = "|cffffe568=== Estado FFLU ===|r"
    FFLU.L["YES"] = "|cff00ff00Sí|r"
    FFLU.L["NO"] = "|cffff0000No|r"
end