#!/bin/sh

echo "Reset setuid of busybox"
chmod u-s ${TARGET_DIR}/bin/busybox

echo "Remove THIS_IS_NOT_YOUR_ROOT_FILESYSTEM banner"
rm ${TARGET_DIR}/THIS_IS_NOT_YOUR_ROOT_FILESYSTEM

echo "Copy Buildroot configuration on target"
cp -f ${BR2_CONFIG} ${TARGET_DIR}/etc/buildroot_config

BR2_GCC_TARGET_CPU="$(sed -n 's/^BR2_GCC_TARGET_CPU="\([a-z0-9 \-]*\)"$/\1/p' ${BR2_CONFIG})"
BR2_GCC_VERSION="$(sed -n 's/^BR2_GCC_VERSION="\([a-z0-9 \.\-]*\)"$/\1/p' ${BR2_CONFIG})"

echo "Create tarball with rootfs"
rm -f ${BINARIES_DIR}/arc_initramfs_${BR2_GCC_TARGET_CPU}-${BR2_GCC_VERSION}.tar.gz
tar czf ${BINARIES_DIR}/arc_initramfs_${BR2_GCC_TARGET_CPU}-${BR2_GCC_VERSION}.tar.gz -C ${TARGET_DIR} .
