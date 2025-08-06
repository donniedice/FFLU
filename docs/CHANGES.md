# FFLU Changelog

## Version 2.1.20

### Added
- Discord webhook secret configured for automated notifications
- Repository prepared for Discord integration

### Changed  
- Version bump to 2.1.20
- Updated all TOC files for new version

### Technical Notes
- Discord webhook is now configured and ready
- GitHub Actions workflow will support Discord notifications in future releases

---

## v2.1.17 - Documentation Updates & Folder Standardization

### Changed
- **Folder Structure**: Renamed `Images` folder to lowercase `images` for consistency
- **Attribution**: Clarified that ZamestoTV and Hubbotu are the same contributor
- **Documentation**: Updated transformation prompt to v2.1.17 standard
- **GitIgnore**: Enhanced to exclude Claude artifacts and transformation prompt

### Technical Improvements
- **Cross-Platform**: Lowercase folder naming ensures compatibility across all platforms
- **Clean Repository**: Development artifacts now properly excluded from version control
- **Accurate Credits**: Proper attribution for Russian localization contributor
- **Updated Guide**: Transformation prompt reflects latest best practices

### Developer Notes
- All IconTexture paths updated from `Images/icon` to `images/icon`
- README logo path updated to lowercase `images` folder
- CLAUDE.md project structure documentation updated
- No functional changes to addon behavior

## v2.1.16 - CurseForge Compatibility Fix

### Fixed
- **CurseForge Upload**: Resolved 500 errors by limiting interface versions in TOC files
- **Multi-Version Support**: Simplified to single interface version per TOC for better compatibility
- **Release Workflow**: Improved stability for automated releases

### Technical Improvements
- **TOC Optimization**: Each TOC file now declares only the latest interface version
- **API Compatibility**: Reduced payload size for CurseForge API calls
- **Error Prevention**: Streamlined version declarations prevent server timeouts

This hotfix ensures reliable uploads to all distribution platforms including CurseForge.

## v2.1.15 - Enhanced Release Automation

### Added
- **Automated Release Workflow**: GitHub Actions now supports manual dispatch for creating releases
- **Volume Channel Command**: New `/fflu volume <channel>` command to set audio output channel
- **Workflow Documentation**: Complete transformation guide includes release automation

### Enhanced
- **Release Process**: Workflow creates tags, packages addon, and publishes GitHub releases automatically
- **Command System**: Added volume channel switching between Master, SFX, Music, and Ambience
- **Localization**: Added missing volume-related strings for all supported languages

### Technical Improvements
- **CI/CD Pipeline**: Complete automation from version bump to release publication
- **Error Handling**: Improved volume channel validation and error messages
- **Documentation**: Updated transformation prompt with full automation details

## v2.1.14 - Complete Multi-Version Support & Russian Localization

### Added
- **Russian Localization**: Complete Russian (ruRU) language support by ZamestoTV (Hubbotu)
- **Universal WoW Support**: TOC files for all WoW versions (BCC, WotLK)
- **Multi-Version Compatibility**: Each TOC supports multiple interface versions for backward compatibility
- **GitHub Logo**: PNG version for proper README display
- **Transformation Guide**: Comprehensive prompt for applying RGX Mods standard to other addons

### Enhanced
- **TOC Robustness**: All TOC files now include complete metadata (license, localizations, load state)
- **Package Management**: Updated .pkgmeta for proper multi-version release packaging
- **Version Support**: Interface declarations support all patch versions within each expansion
- **Documentation**: Complete compatibility table with TOC file mappings
- **Global Accessibility**: Now supports 5 languages and 6 WoW versions

### Technical Improvements
- **Backward Compatibility**: Each TOC file supports multiple interface versions
- **Release Automation**: Enhanced packaging configuration for CurseForge/Wago/WoWI
- **Professional Structure**: Complete addon infrastructure for long-term maintenance

### Contributors
- **ZamestoTV (Hubbotu)**: Russian localization translations and pull request submission

This release completes FFLU's transformation into a fully professional, multi-version addon supporting all WoW clients with comprehensive localization.

## v2.1.13 - Major RGX Mods Transformation

### Added
- **Complete Slash Command System**: Enhanced `/fflu` interface with additional commands
- **Persistent Settings via SavedVariables**: FFLUSettings system with type validation
- **Multi-Language Support**: English, German, French, Spanish localization system
- **Professional Error Handling**: pcall protection on all major functions
- **RGX Mods Branding**: RealmGX community integration throughout
- **Professional GitHub Badges**: Comprehensive statistics and community links
- **Reset Command**: `/fflu reset` to restore default settings
- **Enhanced Welcome Message**: Community integration with first-run detection
- **Advanced Localization**: Comprehensive translation system with fallbacks

### Updated
- **Code Architecture**: Object-oriented design with proper namespacing
- **README Structure**: Professional RGX Mods layout with community focus
- **All TOC Files**: Enhanced descriptions with RGX Mods branding (v2.1.13)
- **Version Management**: Updated to v2.1.13 across all files

### Enhanced
- **User Experience**: Consistent RGX Mods branding throughout
- **Community Integration**: Discord touchpoints and RealmGX messaging
- **Settings Management**: Improved type validation and error handling
- **Localization System**: Professional multi-language architecture

### RGX Mods Integration
- **Community Messaging**: Discord integration in welcome and help messages
- **Professional Branding**: RGX Mods styling throughout the addon
- **GitHub Statistics**: Comprehensive repository metrics and badges
- **Support Integration**: Buy Me a Coffee and community support links

This release transforms FFLU into a professional RGX Mods addon with extensive community integration and enhanced architecture.

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