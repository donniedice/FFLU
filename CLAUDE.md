# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

FFLU (Final Fantasy Level-Up!) is a professional World of Warcraft addon that plays the iconic Final Fantasy level-up chime when players level up. As of v2.1.17, it features a professional architecture with slash commands, persistent settings, multi-language support, and extensive error handling as part of the RGX Mods collection.

## Project Structure

- **data/core.lua**: Main addon functionality with advanced features
- **data/locales.lua**: Multi-language support (English, German, French, Spanish, Russian)
- **sounds/**: Three variants of Final Fantasy level-up sound (high, medium, low)
- **images/icon.tga**: Addon icon displayed in all output
- **TOC Files**: Support for all WoW versions:
  - `FFLU.toc`: Retail WoW (Interface: 110105)
  - `FFLU_Cata.toc`: Classic Cataclysm (Interface: 40402)
  - `FFLU_Vanilla.toc`: Classic WoW (Interface: 11507)
  - `FFLU_Mists.toc`: Mists of Pandaria (Interface: 50500)
  - `FFLU_Wrath.toc`: Wrath of the Lich King (Interface: 30403)
  - `FFLU_BCC.toc`: Burning Crusade Classic (Interface: 20504)

## Development Commands

### Version Management
- Version is centralized in `ADDON_VERSION` constant in `data/core.lua` line 13
- When updating version, modify this constant and all TOC files simultaneously

### GitHub Actions Release Workflow
```bash
# Manual release using GitHub Actions (preferred method)
# 1. Update ADDON_VERSION in core.lua
# 2. Update Version in all TOC files
# 3. Update docs/CHANGES.md with release notes
# 4. Go to Actions → Package and Release → Run workflow
# 5. Enter version number (e.g., 2.1.18) and release type
```

### Testing Commands
```bash
# In-game testing
/fflu test     # Play test sound
/fflu status   # Check current settings
/fflu help     # View all commands
```

## Architecture & Code Standards

### SavedVariables System
**SavedVariables**: `FFLUSettings` with automatic fallback to defaults
- Settings are type-validated in `GetSetting` and `SetSetting` methods
- Default configuration defined in `FFLU.defaults` table
- Settings persist between sessions

### Localization Architecture
- Locale detection via `GetLocale()`
- Fallback system ensures English strings are always available
- Localized strings accessed via `FFLU.L` table
- Five languages supported: enUS, deDE, frFR, esES/esMX, ruRU

### Error Handling Pattern
All user-facing functions use `pcall` protection:
```lua
local success, errorMsg = pcall(function, args)
if not success then
    print(ICON_PATH .. " |cffff0000FFLU Error:|r " .. tostring(errorMsg))
end
```

### Performance Optimizations
- Constants cached at file start (lines 12-21 in core.lua)
- Event handler uses early returns for efficiency
- String concatenations minimized through caching
- Local references to frequently used values

## RGX Mods Standards

This addon follows RGX Mods community standards:
- Discord integration in welcome messages and help text
- Consistent branding with `|cffffe568RGX Mods|r` color scheme
- Professional error handling with user-friendly messages
- Icon prefix (`ICON_PATH`) in all output for brand consistency

## Key Implementation Details

### Slash Command System
- Main handler: `FFLU:HandleSlashCommand(args)` in core.lua
- Commands: help, enable, disable, toggle, test, status, sound, volume, reset
- All commands validate input and provide feedback

### Sound System
- Three sound quality variants stored in `SOUND_PATHS` table
- Default WoW level-up sound muted via `MuteSoundFile(569593)`
- Volume channel support (Master/SFX/Music/Ambience)

### Event System
- Registers: PLAYER_LEVEL_UP, ADDON_LOADED, PLAYER_LOGIN
- Event frame with error-protected handler
- Optimized with early returns for each event type