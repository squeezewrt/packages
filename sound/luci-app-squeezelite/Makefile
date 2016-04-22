#
# Copyright (C) 2015 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-squeezelite
PKG_RELEASE:=1

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

PKG_LICENSE:=GPL-3.0
PKG_MAINTAINER:= Andrew Kazakov <squeezewrt.ak@gmail.com>

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
  SECTION:=luci
  CATEGORY:=LuCI
  SUBMENU:=3. Applications
  TITLE:=Squeezelite Web UI
  DEPENDS:=@FEED_luci:PACKAGE_luci-base @(PACKAGE_squeezelite-full||PACKAGE_squeezelite-mini)
endef

define Package/$(PKG_NAME)/description
 This package will install 
 Web UI for Squeezelite - headless Squeezebox emulator.
endef

define Build/Prepare
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/controller/
	$(INSTALL_BIN) ./files/controller/squeezelite-controller.lua $(1)/usr/lib/lua/luci/controller/squeezelite-controller.lua
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/model/cbi/
	$(INSTALL_BIN) ./files/model/cbi/squeezelite-cbi.lua $(1)/usr/lib/lua/luci/model/cbi/squeezelite-cbi.lua
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/view/
	$(CP) ./files/view/squeezelite-view.htm $(1)/usr/lib/lua/luci/view/squeezelite-view.htm
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
