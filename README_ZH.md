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

# 一个全新的 OpenWrt 主题

**Zargon** 是一款干净整洁的 OpenWrt LuCI 主题，**fork 自 [luci-theme-argon][argon]**。  
在此特别感谢原作者 **Jerrykuku** 的优秀作品 [Argon 主题][argon]。  

Zargon 保留了 `argon` 的 UCI 配置读取，因此 [luci-app-argon-config][config-link] 依然可以完整控制主题。  
支持浅色 / 深色模式自动或手动切换、自定义主题主色，以及现代化的毛玻璃 UI。

[![license][license-badge]][license]
[![prs][prs-badge]][prs]
[![issues][issues-badge]][issues]
[![release][release-badge]][release]
[![download][download-badge]][download]

[English][en-us-link] |
**简体中文**

[特色](#特色) •
[Zargon 的变动](#zargon-的变动) •
[兼容性](#兼容性) •
[快速开始](#快速开始) •
[屏幕截图](#屏幕截图) •
[鸣谢](#鸣谢)

<img src="https://raw.githubusercontent.com/zzsj0928/ReadmeContents/master/Zargon/Zargon_20260804.gif">
</div>

## 特色

- 简洁清爽的 Argon 风格界面设计。
- 完整适配桌面端与移动端显示。
- 支持浅色 / 深色模式自动或手动切换。
- 支持自定义主题主色，以及毛玻璃的模糊与透明度。
- 登录页支持本地图片、视频和在线壁纸背景。
- 可搭配 [luci-app-argon-config][config-link] 实现更完整的主题设置体验。

## Zargon 的变动

在 Argon 基础上做的一系列现代化 UI 改进：

- **可与 Argon 共存安装**：包名改为 `luci-theme-zargon`，静态资源与模板迁移到 `/luci-static/zargon`——与 Argon 并排安装互不冲突。
- **兼容 argon-config**：保留读取原 `argon` UCI 配置，[luci-app-argon-config][config-link] 仍可完整控制主题色、模糊与模式。
- **毛玻璃设计语言**：侧边栏、登录卡片、页脚统一毛玻璃（噪点磨砂纹理 + 悬浮阴影）。
- **现代化登录页**：主题色渐变登录按钮、毛玻璃登录卡片。
- **内容区卡片化**：页面区块、标题、页脚全部卡片化；"卡片内套卡片"的嵌套层级每级压缩到 2px。
- **现代化按钮**：保存并应用（主题色渐变）、保存（绿色渐变）、复位（橙色渐变）；刷新指示器改为"运行中"样式。
- **主题驱动的 Tab 与菜单高亮**：菜单与 Tab 的选中/悬停高亮跟随可配置主题色；深色模式下二级卡片与 Tab 从主题色动态推导"反差调黑"底色。
- **表格精修**：去底色、仅保留悬停高亮；行分割线颜色跟随菜单背景色。

## 兼容性

目前仅维护 `master` 分支。  
当前主要面向 [官方 OpenWrt][official] 和 [ImmortalWrt][immortalwrt] 的较新版本 LuCI 环境。

## 快速开始

### 从源码编译

```bash
cd openwrt/package
git clone https://github.com/zzsj0928/luci-theme-zargon.git
make menuconfig #choose LUCI->Theme->Luci-theme-zargon
make -j1 V=s
```

### 安装 release 包 (`ipk`)

```bash
wget https://github.com/zzsj0928/luci-theme-zargon/releases/download/v2.5.23/luci-theme-zargon_2.5.23-1_all.ipk
wget https://github.com/jerrykuku/luci-app-argon-config/releases/download/v2.5.76/luci-app-argon-config_2.5.76-1_all.ipk
opkg install ./luci-theme-zargon_2.5.23-1_all.ipk ./luci-app-argon-config_2.5.76-1_all.ipk
```

### 安装 release 包 (`apk`)

```bash
wget https://github.com/zzsj0928/luci-theme-zargon/releases/download/v2.5.23/luci-theme-zargon-2.5.23-r1.apk
wget https://github.com/jerrykuku/luci-app-argon-config/releases/download/v2.5.76/luci-app-argon-config-2.5.76-r1.apk
apk add --allow-untrusted ./luci-theme-zargon-2.5.23-r1.apk ./luci-app-argon-config-2.5.76-r1.apk
```


## 屏幕截图

![desktop](/Screenshots/screenshot_pc.jpg)
![mobile](/Screenshots/screenshot_phone.jpg)

## 鸣谢

- [luci-theme-argon][argon] — 本主题 fork 的原项目
- [luci-theme-material](https://github.com/LuttyYang/luci-theme-material/) — Argon 的 Material 基础
