#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.3.1/g' package/base-files/files/bin/config_generate
cp -f $GITHUB_WORKSPACE/2102-5.4-24dbm/21_ethinfo.js package/emortal/autocore/files/generic/21_ethinfo.js
cp -f $GITHUB_WORKSPACE/2102-5.4-24dbm/02_network target/linux/mediatek/mt7981/base-files/etc/board.d/02_network
mkdir -p target/linux/mediatek/mt7981/base-files/usr/sbin
mkdir -p target/linux/mediatek/mt7981/base-files/etc/uci-defaults
cp -f $GITHUB_WORKSPACE/2102-5.4-24dbm/dhcp-watchdog target/linux/mediatek/mt7981/base-files/usr/sbin/dhcp-watchdog
cp -f $GITHUB_WORKSPACE/2102-5.4-24dbm/02-setup-cron target/linux/mediatek/mt7981/base-files/etc/uci-defaults/02-setup-cron
chmod 755 target/linux/mediatek/mt7981/base-files/usr/sbin/dhcp-watchdog
chmod 755 target/linux/mediatek/mt7981/base-files/etc/uci-defaults/02-setup-cron

