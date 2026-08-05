#
# Copyright (C) 2008-2019 Jerrykuku
# MODded by 2026 Zed
#
# This is free software, licensed under the Apache License, Version 2.0 .
#

include $(TOPDIR)/rules.mk

LUCI_TITLE:=Zargon Theme
LUCI_DEPENDS:=+USE_APK:wget-any +!USE_APK:wget +jsonfilter
PKG_VERSION:=2.5.76
PKG_RELEASE:=20260805

CONFIG_LUCI_CSSTIDY:=

include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature
