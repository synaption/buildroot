################################################################################
#
# flac
#
################################################################################

FLAC_VERSION = 1.4.3
FLAC_SITE = https://ftp.osuosl.org/pub/xiph/releases/flac
FLAC_SOURCE = flac-$(FLAC_VERSION).tar.xz
FLAC_INSTALL_STAGING = YES
FLAC_DEPENDENCIES = $(if $(BR2_PACKAGE_LIBICONV),libiconv)
FLAC_LICENSE = Xiph BSD-like (libFLAC), GPL-2.0+ (tools), LGPL-2.1+ (other libraries)
FLAC_LICENSE_FILES = COPYING.Xiph COPYING.GPL COPYING.LGPL
FLAC_CPE_ID_VENDOR = flac_project

FLAC_CONF_OPTS = \
	$(if $(BR2_INSTALL_LIBSTDCPP),--enable-cpplibs,--disable-cpplibs) \
<<<<<<< HEAD
	--disable-stack-smash-protection
=======
	--disable-xmms-plugin \
	--disable-altivec \
	--disable-stack-smash-protection \
	--disable-vsx
>>>>>>> origin/2022.02.x

ifeq ($(BR2_PACKAGE_LIBOGG),y)
FLAC_CONF_OPTS += --with-ogg=$(STAGING_DIR)/usr
FLAC_DEPENDENCIES += libogg
else
FLAC_CONF_OPTS += --disable-ogg
endif

$(eval $(autotools-package))
