################################################################################
#
# libks
#
################################################################################

<<<<<<< HEAD
LIBKS_VERSION = 2.0.2
=======
LIBKS_VERSION = 1.8.2
>>>>>>> origin/2022.02.x
LIBKS_SITE = $(call github,signalwire,libks,v$(LIBKS_VERSION))
LIBKS_LICENSE = MIT
LIBKS_LICENSE_FILES = copyright
LIBKS_INSTALL_STAGING = YES
LIBKS_DEPENDENCIES = openssl util-linux

$(eval $(cmake-package))
