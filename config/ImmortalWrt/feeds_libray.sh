#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
# sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
# echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
# echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

# Modify default theme（FROM uci-theme-bootstrap CHANGE TO luci-theme-material）
sed -i 's/luci-theme-bootstrap/luci-theme-material/g' feeds/luci/collections/luci/Makefile

# Kenzok8开发及收集常用OpenWrt软件包源码合集，通用版luci适合18.06与19.07
# echo 'src-git smpackage https://github.com/kenzok8/small-package' >>feeds.conf.default

# Jerry's openwrt-package 
# Argon主题；Argon主题配置应用；vssr(Helloworld)上网冲浪应用；jd-dailybonus 京豆签到插件
# go-aliyundrive-webdav阿里云盘webdav的golang实现；lua-maxminddb lua版本的maxminddb ip库解析器
echo 'src-git jerryk https://github.com/jerrykuku/openwrt-package' >>feeds.conf.default

# Add luci-app-amlogic
svn co https://github.com/ophub/luci-app-amlogic/trunk/luci-app-amlogic package/luci-app-amlogic
