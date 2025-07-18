# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

FFLU (Final Fantasy Level-Up!) is a professional World of Warcraft addon that plays the iconic Final Fantasy level-up chime when players level up. The addon features comprehensive customization options, multi-language support, and enterprise-grade code quality while maintaining focus on its core functionality.

## File Structure

- **TOC Files**: Four separate `.toc` files for different WoW versions:
  - `FFLU.toc` - The War Within (Interface: 110105)
  - `FFLU_Cata.toc` - Classic Cataclysm (Interface: 40402)  
  - `FFLU_Vanilla.toc` - Classic WoW (Interface: 11507)
  - `FFLU_Mists.toc` - Mists of Pandaria (Interface: 50500)
- **Core Logic**: 
  - `data/core.lua` - Main addon functionality with optimized architecture
  - `data/locales.lua` - Multi-language localization strings
- **Assets**: 
  - `sounds/` - Three variants of Final Fantasy level-up sound (high, medium, low)
  - `Images/icon.tga` - Addon icon displayed in all output

## Development Commands

This is a Lua addon with no build system. Development involves:
- Direct editing of `.lua` files
- Manual testing in WoW game client  
- Version updates in all four TOC files + constants in `core.lua`
- Testing slash commands and settings persistence

## Code Architecture

The addon uses an optimized, professional architecture:

1. **Constants Management**: Performance-optimized with cached local constants:
   - `ADDON_VERSION`, `ADDON_NAME`, `ICON_PATH`, `SOUND_PATHS`, `DEFAULT_SOUND_ID`

2. **Global Namespace**: `FFLU` table with proper initialization and namespacing

3. **Settings System**: Complete configuration management:
   - `FFLUSettings` SavedVariables for persistence
   - Type validation and input sanitization  
   - Default value fallbacks

4. **Event System**: Optimized event handling with early returns:
   - `PLAYER_LEVEL_UP` - Triggers custom sound
   - `ADDON_LOADED` - Initializes settings and mutes default sound
   - `PLAYER_LOGIN` - Shows welcome message

5. **Slash Commands**: Complete `/fflu` interface:
   - Help system, enable/disable, sound selection, status display
   - Input validation and error handling

6. **Error Handling**: Enterprise-grade protection:
   - `pcall` protection for all user-facing functions
   - Graceful error recovery and user-friendly messages

7. **Localization**: Multi-language support with fallbacks:
   - English, German, French, Spanish
   - Automatic locale detection

## Performance Optimizations

- **String Caching**: Eliminated repeated string concatenations
- **Constant Tables**: Local variables for frequently accessed values
- **Early Returns**: Optimized control flow in event handlers
- **Memory Efficiency**: Reduced garbage collection through smart caching
- **Type Safety**: Comprehensive input validation

## Version Management

- Version centralized in `ADDON_VERSION` constant in `core.lua`
- All four TOC files must be updated simultaneously
- Version appears in welcome message and status display
- Follow changelog standards in `docs/guidelines.md`

## Testing Requirements

- Load addon in WoW client across all supported versions
- Test all slash commands (`/fflu help`, `/fflu status`, etc.)
- Verify settings persistence across sessions
- Test sound playback with different variants
- Validate localization in different languages
- Test error scenarios and edge cases

## Key Considerations

- **Multi-Version Support**: Four TOC files require synchronized updates
- **Settings Validation**: All user inputs are type-checked and validated
- **Error Resilience**: Addon continues functioning even with errors
- **Performance**: Optimized for minimal memory and CPU usage
- **Maintainability**: Clean, documented code with clear separation of concerns
- **User Experience**: Consistent branding with icons and professional messaging

## Common Development Tasks

- **Version Updates**: Update `ADDON_VERSION` constant and all TOC files
- **Feature Addition**: Follow existing patterns for settings, validation, and commands
- **Localization**: Add strings to `locales.lua` and update fallbacks in `core.lua`
- **Testing**: Use `/fflu test` and manually level characters
- **Debugging**: Error messages appear with FFLU icon prefix for easy identification