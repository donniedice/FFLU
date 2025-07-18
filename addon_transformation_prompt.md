# Complete Addon Transformation Prompt - RGX Mods v2.1.14 Standard

Apply the following comprehensive transformation to [ADDON_NAME] to match the FFLU v2.1.14 RGX Mods standard:

## Phase 1: Core Architecture Enhancement

### 1.1 Create Multi-Language Localization System
Create `data/locales.lua` with complete localization support:
```lua
-- ADDON_NAME Localization
-- Multi-language support for ADDON_NAME

local _, ns = ...
local L = {}
ns.L = L

-- Get current locale
local locale = GetLocale()

-- Default strings (English)
L["ADDON_LOADED"] = "ADDON_NAME loaded successfully! Type /[command] help for commands"
L["ADDON_ENABLED"] = "Addon |cff00ff00enabled|r"
L["ADDON_DISABLED"] = "Addon |cff00ffffdisabled|r"
-- Add all necessary strings following FFLU pattern

-- Localization by language
if locale == "deDE" then
    -- German translations
elseif locale == "frFR" then
    -- French translations
elseif locale == "esES" or locale == "esMX" then
    -- Spanish translations
elseif locale == "ruRU" then
    -- Russian translations (if applicable)
end
```

### 1.2 Enhance Core Functionality
Update `data/core.lua` with:
- Object-oriented architecture with proper namespacing
- SavedVariables system with type validation
- Complete slash command system
- Professional error handling with pcall protection
- RGX Mods branding in welcome messages
- Performance optimizations with cached constants
- Settings persistence and validation

Key features to add:
- `/[command] help` - Show all commands
- `/[command] enable/disable/toggle` - Control addon state
- `/[command] status` - Show current settings
- `/[command] reset` - Reset to defaults
- Additional addon-specific commands

### 1.3 Update All TOC Files
For each TOC file, update with:
1. Multiple interface versions for backward compatibility
2. Enhanced metadata including:
   - SavedVariables declaration
   - X-Embeds, X-License, X-Localizations
   - DefaultState: Enabled
   - LoadOnDemand: 0
3. RGX Mods branding in Title and Notes

Example for main TOC:
```
## Interface: 110105, 110002, 110000, 100207, 100206, 100205, 100200, 100107, 100105, 100100, 100002, 100000
## Version: 2.1.14
## Title: - |cff[color]A|r|cffffffffddon|r |cff[color]N|r|cffffffffame|r - |cff8080ff2.1.14|r
## Notes: [Description] with RGX Mods enhancements.|n|r|cff1f1d1eby DonnieDice|r
## Author: DonnieDice
## Email: donniedice@protonmail.com
## IconTexture: Interface\AddOns\[ADDON_NAME]\Images\icon
## SavedVariables: [ADDON_NAME]Settings

## X-Category: [Categories]
## X-Website: https://github.com/donniedice/[ADDON_NAME]
## X-Curse-Project-ID: [ID]
## X-Wago-ID: [ID]
## X-WoWI-ID: [ID]
## X-Embeds: 
## X-License: MIT
## X-Localizations: enUS, deDE, frFR, esES, ruRU
## DefaultState: Enabled
## LoadOnDemand: 0

data\locales.lua
data\core.lua
```

## Phase 2: Create Version-Specific TOC Files

Create TOC files for all WoW versions:
- `[ADDON_NAME].toc` - Retail (Interface: 110105+)
- `[ADDON_NAME]_Mists.toc` - MoP Classic (Interface: 50500+)
- `[ADDON_NAME]_Cata.toc` - Cata Classic (Interface: 40402+)
- `[ADDON_NAME]_Wrath.toc` - WotLK Classic (Interface: 30403+)
- `[ADDON_NAME]_BCC.toc` - BC Classic (Interface: 20504+)
- `[ADDON_NAME]_Vanilla.toc` - Classic Era (Interface: 11507+)

Each with multiple interface versions for backward compatibility.

## Phase 3: Professional README Transformation

Transform README.md with exact RGX Mods structure:

1. **Header Section**
   - Logo (PNG format, 128x128)
   - Badge with addon name
   - Tagline
   - Professional description
   
2. **Community Section**
   - Discord integration (RealmGX)
   - Community benefits
   - Call to action

3. **Support Section**
   - Buy Me a Coffee
   - CashApp
   - GitHub Sponsors
   - Star repository

4. **Content Sections**
   - Features table
   - Quick Start guide
   - Command Reference table
   - Advanced Configuration
   - Compatibility table with TOC files
   - Installation instructions
   - What's New (collapsible)

5. **Statistics Section** (at bottom)
   - Repository Statistics
   - Project Metrics table
   - Contributors
   - GitHub Achievements
   - WakaTime stats (https://wakatime.com/@donniedice)
   - Streak Stats

## Phase 4: Update Supporting Files

### 4.1 Update .pkgmeta
```yaml
package-as: [ADDON_NAME]
manual-changelog: docs/CHANGES.md

enable-nolib-creation: no

move-folders:
  [ADDON_NAME]/[ADDON_NAME]: [ADDON_NAME]

ignore:
  - .gitignore
  - .github
  - README.md
  - CLAUDE.md

plain-copy:
  - Images/logo.png

manual-changelog:
  filename: docs/CHANGES.md
  markup-type: markdown

license-output: LICENSE
```

### 4.2 Update Documentation
- `docs/CHANGES.md` - Detailed v2.1.14 changelog
- `docs/changelog.txt` - Complete version history
- `CLAUDE.md` - Updated project instructions

## Phase 5: Assets and Branding

1. Ensure `Images/` folder contains:
   - `icon.tga` - Addon icon
   - `logo.png` - GitHub-compatible logo

2. Add RGX Mods branding throughout:
   - Welcome messages
   - Help text
   - Error messages
   - Community integration points

## Phase 6: Essential Files

### 6.1 Create LICENSE file
```
MIT License

Copyright (c) 2024 DonnieDice

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

### 6.2 Create .gitignore
```
# OS generated files
.DS_Store
.DS_Store?
._*
.Spotlight-V100
.Trashes
ehthumbs.db
Thumbs.db
desktop.ini

# IDE files
.idea/
.vscode/
*.swp
*.swo
*~

# Build/Release files
.release/
*.zip

# Temporary files
*.tmp
*.temp
*.log

# Personal settings
*.local.json
.claude/settings.local.json
```

### 6.3 Create GitHub Actions Workflow
Create `.github/workflows/release.yml` for automated releases:
```yaml
name: Package and Release

on:
  workflow_dispatch:
    inputs:
      version:
        description: 'Version number (e.g., 2.1.15)'
        required: true
        type: string
      release_type:
        description: 'Release type'
        required: true
        default: 'release'
        type: choice
        options:
          - release
          - beta
          - alpha
  push:
    tags:
      - 'v*'  # Also triggers on manual tag pushes

env:
  CF_API_KEY: ${{ secrets.CF_API_KEY }}
  WOWI_API_TOKEN: ${{ secrets.WOWI_API_TOKEN }}
  WAGO_API_TOKEN: ${{ secrets.WAGO_API_TOKEN }}
  GITHUB_OAUTH: ${{ secrets.GITHUB_TOKEN }}

jobs:
  release:
    runs-on: ubuntu-latest
    steps:
      - name: Clone Project
        uses: actions/checkout@v4
        with:
          fetch-depth: 0

      - name: Configure Git user
        run: |
          git config --global user.name "[YOUR_USERNAME]"
          git config --global user.email "[YOUR_EMAIL]"

      - name: Determine Version and Release Type
        id: version_info
        run: |
          if [[ "${{ github.event_name }}" == "workflow_dispatch" ]]; then
            VERSION="v${{ github.event.inputs.version }}"
            RELEASE_TYPE="${{ github.event.inputs.release_type }}"
          else
            VERSION="${GITHUB_REF#refs/tags/}"
            if [[ "$VERSION" == *"beta"* ]]; then
              RELEASE_TYPE="beta"
            elif [[ "$VERSION" == *"alpha"* ]]; then
              RELEASE_TYPE="alpha"
            else
              RELEASE_TYPE="release"
            fi
          fi
          echo "version=$VERSION" >> $GITHUB_OUTPUT
          echo "release_type=$RELEASE_TYPE" >> $GITHUB_OUTPUT

      - name: Create Tag (if workflow_dispatch)
        if: github.event_name == 'workflow_dispatch'
        run: |
          git tag -a "${{ steps.version_info.outputs.version }}" -m "Version ${{ steps.version_info.outputs.version }}"
          git push origin "${{ steps.version_info.outputs.version }}"

      - name: Package and Release
        uses: BigWigsMods/packager@master
        with:
          release-type: ${{ steps.version_info.outputs.release_type }}

      - name: Create GitHub Release
        uses: softprops/action-gh-release@v1
        with:
          tag_name: ${{ steps.version_info.outputs.version }}
          name: ${{ steps.version_info.outputs.version }} - ${{ github.event.repository.name }}
          body_path: docs/CHANGES.md
          draft: false
          prerelease: ${{ steps.version_info.outputs.release_type != 'release' }}
          files: |
            .release/*.zip
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```

## Phase 7: Version Control

### 7.1 Version Bump Process
When creating a new release:
1. Update version in all TOC files (both `## Version:` and in `## Title:` where displayed)
2. Update version constant in core.lua (`ADDON_VERSION`)
3. Update version in locales.lua header comment
4. Update docs/CHANGES.md with new version section
5. Commit changes with descriptive message
6. Push to main branch

### 7.2 Release Methods

#### Method 1: GitHub Actions Manual Dispatch (Recommended)
1. Push version bump commit to main
2. Go to GitHub Actions → "Package and Release" workflow
3. Click "Run workflow"
4. Enter version number (e.g., "2.1.15")
5. Select release type
6. Workflow automatically:
   - Creates git tag
   - Packages addon for all platforms
   - Creates GitHub release with changelog
   - Uploads packaged files

#### Method 2: Traditional Tag Push
1. Create and push tag locally:
   ```bash
   git tag -a v2.1.15 -m "Version 2.1.15"
   git push origin v2.1.15
   ```
2. Workflow triggers automatically on tag detection

## Phase 8: Version Control Commands

1. Update version to 2.1.14 in:
   - All TOC files (with multiple interface versions)
   - Core.lua ADDON_VERSION constant
   - Documentation
   - All file headers and comments

2. Commit with message:
```
feat: RGX Mods v2.1.14 transformation

- Added multi-language localization system
- Enhanced core with slash commands and settings
- Added SavedVariables persistence
- Created TOC files for all WoW versions
- Updated README with RGX Mods structure
- Added professional error handling
- Integrated RealmGX community features
- Updated all documentation

🤖 Generated with [Claude Code](https://claude.ai/code)

Co-Authored-By: Claude <noreply@anthropic.com>
```

3. Commit and push changes:
```bash
git add -A
git commit -m "feat: RGX Mods v2.1.14 transformation"
git push origin main
```

4. Create release using GitHub Actions:
   - Go to Actions tab on GitHub
   - Select "Package and Release" workflow
   - Click "Run workflow"
   - Enter version number (e.g., 2.1.14)
   - Select release type
   - Click "Run workflow"

   Or manually create tag and push:
   ```bash
   git tag -a v2.1.14 -m "Version 2.1.14 - RGX Mods transformation"
   git push origin v2.1.14
   ```

## Key Principles:
- Maintain addon's core functionality while enhancing architecture
- Add RGX Mods branding without overwhelming
- Ensure backward compatibility across all WoW versions
- Professional error handling and user experience
- Community integration at appropriate touchpoints
- Performance optimization through caching
- Type safety and input validation

## Testing Checklist:
- [ ] All slash commands work correctly
- [ ] Settings persist between sessions
- [ ] Localization falls back properly
- [ ] Error handling prevents crashes
- [ ] All WoW versions supported
- [ ] Welcome message displays correctly
- [ ] GitHub README renders properly
- [ ] Logo displays on GitHub
- [ ] Multi-version TOC files load correctly
- [ ] .pkgmeta packaging works
- [ ] GitHub Actions workflow triggers
- [ ] All metadata fields populated
- [ ] Automated release creation works
- [ ] CurseForge/Wago/WoWI packaging succeeds

## Critical Updates for v2.1.14:

1. **Multi-Interface Support**: Each TOC file MUST include multiple interface versions for backward compatibility within each expansion
2. **Complete Metadata**: All TOC files need X-Embeds, X-License, X-Localizations, DefaultState, LoadOnDemand
3. **Packaging Configuration**: .pkgmeta must handle multi-folder structure and changelog
4. **Professional Structure**: LICENSE, .gitignore, and GitHub workflows are required
5. **PNG Logo**: Use PNG format for GitHub compatibility, not TGA

## Release Automation:

The GitHub Actions workflow provides two methods for creating releases:

1. **Manual Workflow Dispatch** (Recommended):
   - Navigate to Actions tab → "Package and Release"
   - Click "Run workflow"
   - Enter version number (without 'v' prefix)
   - Select release type (release/beta/alpha)
   - Workflow will create tag, package addon, and create GitHub release

2. **Tag Push** (Traditional):
   - Create and push a tag manually
   - Workflow triggers automatically on tag push
   - Release type determined by tag name (beta/alpha keywords)

Both methods will:
- Package addon for CurseForge, Wago, and WoWInterface
- Create GitHub release with changelog from docs/CHANGES.md
- Upload packaged .zip files to release
- Mark beta/alpha releases as pre-release

## Example Multi-Version Interface Lines:
- Retail: `## Interface: 110105, 110002, 110000, 100207, 100206, 100205, 100200, 100107, 100105, 100100, 100002, 100000`
- MoP: `## Interface: 50500, 50401, 50400, 50300, 50200, 50100, 50001`
- Cata: `## Interface: 40402, 40401, 40400, 40300, 40200, 40100, 40000`
- WotLK: `## Interface: 30403, 30402, 30401, 30400, 30300, 30200, 30100, 30000`
- BC: `## Interface: 20504, 20503, 20502, 20501, 20500, 20400, 20300, 20200, 20100, 20000`
- Vanilla: `## Interface: 11507, 11506, 11505, 11503, 11502, 11501, 11500, 11404, 11403, 11402, 11401, 11400, 11307, 11306, 11305, 11304, 11303, 11302`