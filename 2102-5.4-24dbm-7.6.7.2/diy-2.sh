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
cp -f $GITHUB_WORKSPACE/2102-5.4-24dbm-7.6.7.2/023-fix-qos-peer_vendor_spec_action-frame-check.patch package/mtk/drivers/mt_wifi/patches-7672/023-fix-qos-peer_vendor_spec_action-frame-check.patch
cp -f $GITHUB_WORKSPACE/2102-5.4-24dbm-7.6.7.2/022-fix-rrm-snprintf-error.patch package/mtk/drivers/mt_wifi/patches-7672/022-fix-rrm-snprintf-error.patch
cp -f $GITHUB_WORKSPACE/2102-5.4-24dbm-7.6.7.2/21_ethinfo.js package/emortal/autocore/files/generic/21_ethinfo.js
cp -f $GITHUB_WORKSPACE/2102-5.4-24dbm-7.6.7.2/02_network target/linux/mediatek/mt7981/base-files/etc/board.d/02_network
cp -f $GITHUB_WORKSPACE/2102-5.4-24dbm-7.6.7.2/hostapd.sh package/network/services/hostapd/files/hostapd.sh
