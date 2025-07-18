# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

FFLU (Final Fantasy Level-Up!) is a professional World of Warcraft addon that plays the iconic Final Fantasy level-up chime when players level up. As of v2.1.13, it features a professional architecture with slash commands, persistent settings, multi-language support, and extensive error handling as part of the RGX Mods collection.

## Project Structure

- **data/core.lua**: Main addon functionality with advanced features
- **data/locales.lua**: Multi-language support (English, German, French, Spanish)
- **sounds/**: Three variants of Final Fantasy level-up sound (high, medium, low)
- **Images/icon.tga**: Addon icon displayed in all output
- **FFLU.toc**: TOC file for retail WoW (Interface: 110105)
- **FFLU_Cata.toc**: TOC file for Classic Cataclysm (Interface: 40402)
- **FFLU_Vanilla.toc**: TOC file for Classic WoW (Interface: 11507)
- **FFLU_Mists.toc**: TOC file for Mists of Pandaria (Interface: 50500)

## Commands

Use `/fflu` followed by various commands for full functionality:

- `/fflu help` - Show all available commands
- `/fflu enable/disable/toggle` - Control addon state
- `/fflu test` - Play test sound
- `/fflu status` - Show current settings
- `/fflu sound <variant>` - Set sound quality (high/medium/low)
- `/fflu reset` - Reset all settings to defaults

## Settings Architecture

**SavedVariables**: `FFLUSettings` automatically managed with fallback defaults

The addon uses an optimized, professional architecture:

1. **Constants Management**: Performance-optimized with cached local constants
2. **Global Namespace**: `FFLU` table with proper initialization and namespacing
3. **Settings System**: Complete configuration management with type validation
4. **Event System**: Optimized event handling with early returns
5. **Slash Commands**: Complete `/fflu` interface with comprehensive validation
6. **Error Handling**: Enterprise-grade protection with `pcall` protection
7. **Localization**: Multi-language support with automatic locale detection

## RGX Mods Standards

This addon follows RGX Mods community standards with Discord integration and professional error handling.

## Key Features

- **Multi-Version Support**: Four TOC files for all WoW versions
- **Settings Validation**: All user inputs are type-checked and validated
- **Error Resilience**: Addon continues functioning even with errors
- **Performance**: Optimized for minimal memory and CPU usage
- **Maintainability**: Clean, documented code with clear separation of concerns
- **User Experience**: Consistent RGX Mods branding with icons and professional messaging
- **Community Integration**: RealmGX Discord integration throughout the addon

## Development Notes

- Version centralized in `ADDON_VERSION` constant in `core.lua`
- All four TOC files must be updated simultaneously
- Version appears in welcome message and status display
- Settings persist automatically via SavedVariables
- Multi-language support with automatic locale detection
- Professional error handling with pcall protection