#
# A desktop-oriented virtual machines management system written in Shell.
#
# Code is available online at https://github.com/magenete/cuckoo
# See LICENSE for licensing information, and README for details.
#
# Copyright (C) 2016 Magenete Systems OÜ.
#


if [ -z "$CUCKOO_DIR" ]
then
    echo "ERROR: Cuckoo directory (variable CUCKOO_DIR) has not been defined"
    exit 1
fi


if [ -z "$CUCKOO_ENV_NO" ]
then
    . "${CUCKOO_DIR}lib/env.sh"
fi


CUCKOO_OS="${CUCKOO_OS:=linux}"
CUCKOO_ARCH="${CUCKOO_ARCH:=x86_64}"
CUCKOO_DIST_VERSION="${CUCKOO_DIST_VERSION:=debian/8.4}"
if [ -z "$CUCKOO_DIST_VERSION" ]
then
    CUCKOO_ISO_FILE=""
    CUCKOO_DIST_VERSION_DIR=""
    CUCKOO_DIST_VERSION_CONFIG_FILE=""
else
    CUCKOO_ISO_FILE="${CUCKOO_DIST_VERSION}.iso"
    CUCKOO_DIST_VERSION_DIR="${CUCKOO_DIST_VERSION}/"
    CUCKOO_DIST_VERSION_CONFIG_FILE="${CUCKOO_DIST_VERSION}.config"
fi
CUCKOO_TMP_DIR="${TMPDIR:=/tmp}/cuckoo/"
CUCKOO_BIN_DIR="${CUCKOO_DIR}bin/"
CUCKOO_BIN_INSTALL_DIR="${CUCKOO_BIN_DIR}install/"
CUCKOO_BIN_RUN_DIR="${CUCKOO_BIN_DIR}run/"
CUCKOO_ETC_DIR="${CUCKOO_DIR}etc/"
CUCKOO_ETC_VERSION_FILE="${CUCKOO_ETC_DIR}VERSION"
CUCKOO_HD_DIR="${CUCKOO_DIR}hd/"
CUCKOO_HD_ARCH_DIR="${CUCKOO_HD_DIR}${CUCKOO_ARCH}/"
CUCKOO_HD_ARCH_OS_DIR="${CUCKOO_HD_ARCH_DIR}${CUCKOO_OS}/"
CUCKOO_HD_ARCH_OS_CLEAN_DIR="${CUCKOO_HD_ARCH_OS_DIR}.clean/"
CUCKOO_ISO_DIR="${CUCKOO_DIR}iso/"
CUCKOO_ISO_ARCH_DIR="${CUCKOO_ISO_DIR}${CUCKOO_ARCH}/"
CUCKOO_ISO_ARCH_OS_DIR="${CUCKOO_ISO_ARCH_DIR}${CUCKOO_OS}/"
CUCKOO_LIB_DIR="${CUCKOO_DIR}lib/"
CUCKOO_OS_DIR="${CUCKOO_DIR}os/"
CUCKOO_OS_COMMON_DIR="${CUCKOO_OS_DIR}common/"
CUCKOO_OS_OS_DIR="${CUCKOO_OS_DIR}${CUCKOO_OS}/"
