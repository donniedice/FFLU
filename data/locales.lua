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

-- Russian localization ZamestoTV
if GetLocale() == "ruRU" then
    FFLU.L["ADDON_LOADED"] = "Загружен!"
    FFLU.L["ENABLED_STATUS"] = "Включён"
    FFLU.L["DISABLED_STATUS"] = "Отключён"
    FFLU.L["TYPE_HELP"] = "Введите |cffffffff/fflu help|r для команд"
    FFLU.L["ADDON_ENABLED"] = "Аддон |cff00ff00включён|r"
    FFLU.L["ADDON_DISABLED"] = "Аддон |cffff0000отключён|r"
    FFLU.L["PLAYING_TEST"] = "Воспроизведение тестового звука..."
    FFLU.L["SOUND_VARIANT_SET"] = "Вариант звука установлен на: |cffffffff%s|r"
    FFLU.L["HELP_HEADER"] = "|cffffe568=== Команды FFLU ===|r"
    FFLU.L["HELP_HELP"] = "|cffffffff/fflu help|r - Показать эту справку"
    FFLU.L["HELP_ENABLE"] = "|cffffffff/fflu enable|r - Включить аддон"
    FFLU.L["HELP_DISABLE"] = "|cffffffff/fflu disable|r - Отключить аддон"
    FFLU.L["HELP_TOGGLE"] = "|cffffffff/fflu toggle|r - Переключить аддон вкл/выкл"
    FFLU.L["HELP_TEST"] = "|cffffffff/fflu test|r - Воспроизвести тестовый звук"
    FFLU.L["HELP_STATUS"] = "|cffffffff/fflu status|r - Показать текущие настройки"
    FFLU.L["HELP_SOUND"] = "|cffffffff/fflu sound <variant>|r - Установить звук (высокий/средний/низкий)"
    FFLU.L["STATUS_HEADER"] = "|cffffe568=== Статус FFLU ===|r"
    FFLU.L["STATUS_STATUS"] = "Статус:"
    FFLU.L["STATUS_SOUND"] = "Вариант звука: |cffffffff%s|r"
    FFLU.L["STATUS_MUTE"] = "Отключить звук по умолчанию:"
    FFLU.L["STATUS_VERSION"] = "Версия: |cffffffff%s|r"
    FFLU.L["YES"] = "|cff00ff00Да|r"
    FFLU.L["NO"] = "|cffff0000Нет|r"
    FFLU.L["ERROR_PREFIX"] = "|cffff0000Ошибка FFLU:|r"
    FFLU.L["ERROR_SOUND_FAILED"] = "Не удалось воспроизвести звуковой файл: %s"
    FFLU.L["ERROR_INVALID_VARIANT"] = "Недопустимый вариант звука: %s"
    FFLU.L["ERROR_INVALID_VARIANT_OPTIONS"] = "Недопустимый вариант звука. Используйте: высокий, средний или низкий"
    FFLU.L["ERROR_UNKNOWN_COMMAND"] = "Неизвестная команда. Введите |cffffffff/fflu help|r для доступных команд"
end

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
