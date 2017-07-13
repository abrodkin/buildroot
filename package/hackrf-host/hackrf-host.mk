################################################################################
#
# HACKRF_HOST
#
################################################################################

HACKRF_HOST_VERSION = v2017.02.1
HACKRF_HOST_SITE = $(call github,mossmann,hackrf,$(HACKRF_HOST_VERSION))
HACKRF_HOST_LICENSE = GPLv2 GPLv2+ BSD-3c
HACKRF_HOST_LICENSE_FILES = COPYING
HACKRF_HOST_DEPENDENCIES = fftw libusb
HACKRF_HOST_SUBDIR = host
HACKRF_HOST_INSTALL_STAGING = YES

HACKRF_HOST_CONF_OPTS += -DBUILD_HACKRF_TOOLS=ON

ifeq ($(BR2_PACKAGE_HAS_UDEV),y)
HACKRF_HOST_CONF_OPTS += -DINSTALL_UDEV_RULES=ON
else
HACKRF_HOST_CONF_OPTS += -DINSTALL_UDEV_RULES=OFF
endif

$(eval $(cmake-package))
