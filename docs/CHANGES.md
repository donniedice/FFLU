# FFLU Changelog

## v2.1.12 - Professional Edition

### Added
- **Complete Slash Command System**: Full `/fflu` command interface with help, status, and configuration options
- **Persistent Settings**: All user preferences are now saved via SavedVariables system
- **Multi-Language Support**: Native localization for English, German, French, and Spanish
- **Sound Variant Selection**: Choose between high, medium, and low quality Final Fantasy sounds
- **Professional Error Handling**: Comprehensive error boundaries with user-friendly messages
- **Mists of Pandaria Support**: Added dedicated TOC file for MoP Classic
- **Enhanced Status Display**: Detailed settings overview with `/fflu status` command
- **Input Validation**: Type checking and validation for all user inputs
- **Performance Optimizations**: Cached constants and optimized string operations

### Enhanced
- **Memory Efficiency**: Reduced garbage collection through string caching and local constants
- **Code Architecture**: Complete rewrite with object-oriented design and proper namespacing
- **Visual Consistency**: FFLU icon now appears before all addon output for clear identification
- **Event Handling**: Optimized event system with early returns and better performance
- **Welcome Message**: Clean, informative startup message with addon status

### Technical Improvements
- **Defensive Programming**: Added pcall protection for all user-facing functions
- **Constants Management**: Centralized configuration with cached values for better performance
- **Type Safety**: Comprehensive type validation for settings and user inputs
- **Error Recovery**: Graceful handling of edge cases and invalid states
- **Code Documentation**: Enhanced comments and clear function documentation

### Updated
- **Email Address**: Changed contact from joseph@cranberriestudios.com to donniedice@protonmail.com
- **TOC Files**: All TOC files updated to v2.1.12 with enhanced descriptions
- **Version Management**: Centralized version constant for easier maintenance

### Removed
- **Help Text Spam**: Removed redundant "Type /fflu help" message from welcome display
- **Global Pollution**: Eliminated unnecessary global variable creation

### Commands Added
- `/fflu help` - Display all available commands
- `/fflu enable/disable/toggle` - Control addon state
- `/fflu test` - Test sound playback
- `/fflu status` - Show comprehensive settings
- `/fflu sound <high/medium/low>` - Select sound quality

This release transforms FFLU from a simple sound addon into a professional, feature-complete WoW addon while maintaining its core focus and simplicity.

## v2.1.11 - Maintenance Release

### Updated
- **TOC Files**: Version bump for Retail, Vanilla, and Cataclysm compatibility
- **Contact Information**: Updated email address in TOC files

## Previous Versions

See `changelog.txt` for complete version history with detailed technical changes.