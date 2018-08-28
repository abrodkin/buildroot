#!/bin/sh

echo "Reset setuid of busybox"
chmod u-s ${TARGET_DIR}/bin/busybox

echo "Copy Buildroot configuration on target"
cp -f ${BR2_CONFIG} ${TARGET_DIR}/etc/buildroot_config

echo "Create /init"
if [ ! -e ${TARGET_DIR}/init ]; then
	install -m 0755 fs/cpio/init ${TARGET_DIR}/init;
fi

BR2_GCC_TARGET_CPU="$(sed -n 's/^BR2_GCC_TARGET_CPU="\([a-z0-9 \-]*\)"$/\1/p' ${BR2_CONFIG})"
BR2_GCC_VERSION="$(sed -n 's/^BR2_GCC_VERSION="\([a-z0-9 \.\-]*\)"$/\1/p' ${BR2_CONFIG})"

echo "Create tarball with rootfs"
rm -f ${BINARIES_DIR}/arc_initramfs_${BR2_GCC_TARGET_CPU}-${BR2_GCC_VERSION}.tar.gz
tar czf ${BINARIES_DIR}/arc_initramfs_${BR2_GCC_TARGET_CPU}-${BR2_GCC_VERSION}.tar.gz -C ${TARGET_DIR} .
