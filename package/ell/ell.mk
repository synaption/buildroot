################################################################################
#
# ell
#
################################################################################

<<<<<<< HEAD
ELL_VERSION = 0.57
=======
ELL_VERSION = 0.48
>>>>>>> origin/2022.02.x
ELL_SOURCE = ell-$(ELL_VERSION).tar.xz
ELL_SITE = $(BR2_KERNEL_MIRROR)/linux/libs/ell
ELL_LICENSE = LGPL-2.1+
ELL_LICENSE_FILES = COPYING
ELL_INSTALL_STAGING = YES

ELL_DEPENDENCIES = host-pkgconf

# disable ell/glib main loop example
ELL_CONF_OPTS = --disable-glib

$(eval $(autotools-package))
