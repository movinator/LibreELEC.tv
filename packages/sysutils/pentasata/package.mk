# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2018-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="pentasata"
PKG_VERSION="0.1"
PKG_REV="100"
PKG_SHA256=""
PKG_ARCH="arm"
PKG_PROJECT="Rockchip"
PKG_LICENSE="GPL2"
PKG_SITE=""
PKG_URL=""
PKG_MAINTAINER="movinator"
PKG_DEPENDS_TARGET=" "
PKG_SHORTDESC="provides fan and button control"
PKG_LONGDESC="provides temperature base fan control with customizable values for temperature, fanspeed and provides customizable button handling. Three button states are recognized: clicked, double clicked, and long pressed. Each state may be connected to a system executable or an internal python function. See provided config file .config/rockpi-sata.conf"
PKG_TOOLCHAIN="manual"

makeinstall_target() {
  mkdir -p ${INSTALL}/usr/sbin
  mkdir -p ${INSTALL}/usr/lib/python3.8/site-packages
  mkdir -p ${INSTALL}/etc
  cp -r usr/* ${INSTALL}/usr
  cp -r etc/* ${INSTALL}/etc
}

