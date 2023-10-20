################################################################################
#
# jack1
#
################################################################################

JACK1_VERSION = 0.126.0
JACK1_SITE = \
	https://github.com/jackaudio/jack1/releases/download/$(JACK1_VERSION)
JACK1_LICENSE = GPL-2.0+ (jack server), LGPL-2.1+ (jack library)
JACK1_LICENSE_FILES = COPYING COPYING.GPL COPYING.LGPL
JACK1_INSTALL_STAGING = YES

JACK1_DEPENDENCIES = host-pkgconf alsa-lib berkeleydb
<<<<<<< HEAD
=======

ifeq ($(BR2_PACKAGE_LIBSAMPLERATE),y)
JACK1_DEPENDENCIES += libsamplerate
endif

ifeq ($(BR2_PACKAGE_LIBSNDFILE),y)
JACK1_DEPENDENCIES += libsndfile
endif
>>>>>>> origin/2022.02.x

ifeq ($(BR2_PACKAGE_LIBSAMPLERATE),y)
JACK1_DEPENDENCIES += libsamplerate
endif

JACK1_CONF_OPTS = --without-html-dir --disable-oss

$(eval $(autotools-package))
