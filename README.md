<!-- markdownlint-configure-file {
  "MD013": {
    "code_blocks": false,
    "tables": false,
    "line_length":200
  },
  "MD033": false,
  "MD041": false
} -->

[license]: /LICENSE
[license-badge]: https://img.shields.io/github/license/zzsj0928/luci-theme-zargon?style=flat-square&a=1
[prs]: https://github.com/zzsj0928/luci-theme-zargon/pulls
[prs-badge]: https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square
[issues]: https://github.com/zzsj0928/luci-theme-zargon/issues/new
[issues-badge]: https://img.shields.io/badge/Issues-welcome-brightgreen.svg?style=flat-square
[release]: https://github.com/zzsj0928/luci-theme-zargon/releases
[release-badge]: https://img.shields.io/github/v/release/zzsj0928/luci-theme-zargon?style=flat-square
[download]: https://github.com/zzsj0928/luci-theme-zargon/releases
[download-badge]: https://img.shields.io/github/downloads/zzsj0928/luci-theme-zargon/total?style=flat-square
[en-us-link]: /README.md
[zh-cn-link]: /README_ZH.md
[config-link]: https://github.com/jerrykuku/luci-app-argon-config/releases
[official]: https://github.com/openwrt/openwrt
[immortalwrt]: https://github.com/immortalwrt/immortalwrt
[argon]: https://github.com/jerrykuku/luci-theme-argon

<div align="center">
<img src="https://raw.githubusercontent.com/jerrykuku/staff/master/argon_title4.svg">

# A brand new OpenWrt LuCI theme

**Zargon** is a clean and tidy OpenWrt LuCI theme, **forked from [luci-theme-argon][argon]**.  
Special thanks to the original author **Jerrykuku** for the excellent [Argon theme][argon].  

Zargon keeps the `argon` UCI configuration reading, so [luci-app-argon-config][config-link] still fully controls the theme.  
It supports automatic and manual switching between light and dark modes, customizable theme colors, and modern frosted-glass UI.

[![license][license-badge]][license]
[![prs][prs-badge]][prs]
[![issues][issues-badge]][issues]
[![release][release-badge]][release]
[![download][download-badge]][download]

**English** |
[简体中文][zh-cn-link]

[Key Features](#key-features) •
[What's New in Zargon](#whats-new-in-zargon) •
[Compatibility](#compatibility) •
[Getting started](#getting-started) •
[Screenshots](#screenshots) •
[Credits](#credits)

<img src="https://raw.githubusercontent.com/zzsj0928/ReadmeContents/master/Zargon/Zargon_20260804.gif">
</div>

## Key Features

- Clean and modern Argon-style interface design.
- Fully adapted for both desktop and mobile displays.
- Supports automatic or manual switching between light and dark modes.
- Supports custom theme colors, along with adjustable blur and transparency effects.
- The login page supports local images, videos, and online wallpapers as backgrounds.
- Works with [luci-app-argon-config][config-link] for a more complete theme configuration experience.

## What's New in Zargon

A series of modern UI refinements on top of Argon:

- **Co-installable with Argon**: renamed package (`luci-theme-zargon`), static assets and templates moved to `/luci-static/zargon` — installs side-by-side with Argon without file conflicts.
- **argon-config compatible**: keeps reading the original `argon` UCI config, so [luci-app-argon-config][config-link] still fully controls theme color, blur and mode.
- **Frosted-glass design language**: frosted-glass sidebar, login card and footer with noise grain texture and floating shadows.
- **Modern login page**: gradient login button (theme-colored), frosted glass login card.
- **Card-based content area**: page sections, headers and footers all cardified; nested "card-in-card" levels collapse to 2px per level.
- **Modern buttons**: Save & Apply (theme gradient), Save (green gradient), Reset (orange gradient); the refresh indicator restyled with a running-state look.
- **Theme-driven Tab & menu highlight**: active menu / Tab highlight follows the configurable theme color; dark-mode secondary cards and Tabs derive a dynamic inverted-dark color from the theme.
- **Refined tables**: transparent background with hover highlight only; row separators follow the menu background color.

## Compatibility

Only the `master` branch is maintained now.  
Support is focused on modern LuCI environments based on [Official OpenWrt][official] and [ImmortalWrt][immortalwrt].

## Getting started

### Build from source

```bash
cd openwrt/package
git clone https://github.com/zzsj0928/luci-theme-zargon.git
make menuconfig #choose LUCI->Theme->Luci-theme-zargon
make -j1 V=s
```

### Install release packages (`ipk`)

```bash
wget https://github.com/zzsj0928/luci-theme-zargon/releases/download/v2.5.23/luci-theme-zargon_2.5.23-1_all.ipk
wget https://github.com/jerrykuku/luci-app-argon-config/releases/download/v2.4.6/luci-app-argon-config_2.4.6-1_all.ipk
opkg install ./luci-theme-zargon_2.5.23-1_all.ipk ./luci-app-argon-config_2.4.6-1_all.ipk
```

### Install release packages (`apk`)

```bash
wget https://github.com/zzsj0928/luci-theme-zargon/releases/download/v2.5.23/luci-theme-zargon-2.5.23-r1.apk
wget https://github.com/jerrykuku/luci-app-argon-config/releases/download/v2.4.6/luci-app-argon-config-2.4.6-r1.apk
apk add --allow-untrusted ./luci-theme-zargon-2.5.23-r1.apk ./luci-app-argon-config-2.4.6-r1.apk
```


## Screenshots

![desktop](/Screenshots/screenshot_pc.jpg)
![mobile](/Screenshots/screenshot_phone.jpg)

## Credits

- [luci-theme-argon][argon] — the original theme this project is forked from
- [luci-theme-material](https://github.com/LuttyYang/luci-theme-material/) — the material base of Argon
