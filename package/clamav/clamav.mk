################################################################################
#
# clamav
#
################################################################################

<<<<<<< HEAD
CLAMAV_VERSION = 1.0.3
=======
CLAMAV_VERSION = 0.103.8
>>>>>>> origin/2022.02.x
CLAMAV_SITE = https://www.clamav.net/downloads/production
CLAMAV_LICENSE = GPL-2.0
CLAMAV_LICENSE_FILES = \
	COPYING.txt \
	COPYING/COPYING.bzip2 \
	COPYING/COPYING.file \
	COPYING/COPYING.getopt \
	COPYING/COPYING.LGPL \
	COPYING/COPYING.llvm \
	COPYING/COPYING.lzma \
	COPYING/COPYING.pcre \
	COPYING/COPYING.regex \
	COPYING/COPYING.unrar \
	COPYING/COPYING.zlib
CLAMAV_CPE_ID_VENDOR = clamav
CLAMAV_SELINUX_MODULES = clamav
# affects only Cisco devices
CLAMAV_IGNORE_CVES += CVE-2016-1405
CLAMAV_DEPENDENCIES = \
	bzip2 \
	host-pkgconf \
	host-rustc \
	json-c \
	libcurl \
	libmspack \
	libxml2 \
	openssl \
	pcre2 \
	zlib \
	$(TARGET_NLS_DEPENDENCIES)

ifeq ($(BR2_TOOLCHAIN_HAS_LIBATOMIC),y)
CLAMAV_LIBS += -latomic
endif

ifeq ($(BR2_TOOLCHAIN_USES_GLIBC),)
CLAMAV_DEPENDENCIES += musl-fts
CLAMAV_LIBS += -lfts
endif

CLAMAV_CONF_ENV += LIBS="$(CLAMAV_LIBS)"

CLAMAV_CONF_OPTS = \
<<<<<<< HEAD
	-DCMAKE_SKIP_INSTALL_RPATH=ON \
	-DENABLE_JSON_SHARED=ON \
	-DENABLE_MAN_PAGES=OFF \
	-DENABLE_MILTER=OFF \
	-DENABLE_TESTS=OFF \
	-DHAVE_SYSTEM_LFS_FTS=ON \
	-DRUST_COMPILER_TARGET=$(RUSTC_TARGET_NAME) \
	-Dtest_run_result=ON \
	-Dtest_run_result__TRYRUN_OUTPUT=ON
=======
	--with-dbdir=/var/lib/clamav \
	--with-libcurl=$(STAGING_DIR)/usr \
	--with-openssl=$(STAGING_DIR)/usr \
	--with-system-libmspack=$(STAGING_DIR)/usr \
	--with-zlib=$(STAGING_DIR)/usr \
	--disable-zlib-vcheck \
	--disable-rpath \
	--disable-clamav \
	--disable-milter \
	--disable-llvm \
	--disable-clamdtop \
	--enable-mempool

ifeq ($(BR2_PACKAGE_BZIP2),y)
CLAMAV_DEPENDENCIES += bzip2
# autodetection gets confused if host has bzip2, so force it
CLAMAV_CONF_ENV += \
	ac_cv_libbz2_libs=-lbz2 \
	ac_cv_libbz2_ltlibs=-lbz2
else
CLAMAV_CONF_OPTS += --disable-bzip2
endif

ifeq ($(BR2_PACKAGE_JSON_C),y)
CLAMAV_CONF_OPTS += --with-libjson=$(STAGING_DIR)/usr
CLAMAV_DEPENDENCIES += json-c
else
CLAMAV_CONF_OPTS += --without-libjson
endif

ifeq ($(BR2_PACKAGE_LIBXML2),y)
CLAMAV_CONF_ENV += ac_cv_path_xmlconfig=$(STAGING_DIR)/usr/bin/xml2-config
CLAMAV_CONF_OPTS += --with-xml=$(STAGING_DIR)/usr
CLAMAV_DEPENDENCIES += libxml2
else
CLAMAV_CONF_OPTS += --disable-xml
endif

ifeq ($(BR2_PACKAGE_LIBICONV),y)
CLAMAV_CONF_OPTS += --with-iconv
CLAMAV_DEPENDENCIES += libiconv
else
CLAMAV_CONF_OPTS += --without-iconv
endif

ifeq ($(BR2_PACKAGE_PCRE2),y)
CLAMAV_CONF_OPTS += --with-pcre=$(STAGING_DIR)/usr
CLAMAV_DEPENDENCIES += pcre2
else ifeq ($(BR2_PACKAGE_PCRE),y)
CLAMAV_CONF_OPTS += --with-pcre=$(STAGING_DIR)/usr
CLAMAV_DEPENDENCIES += pcre
else
CLAMAV_CONF_OPTS += --without-pcre
endif
>>>>>>> origin/2022.02.x

ifeq ($(BR2_PACKAGE_NCURSES),y)
CLAMAV_CONF_OPTS += -DENABLE_APP=ON
CLAMAV_DEPENDENCIES += ncurses
ifeq ($(BR2_INIT_SYSTEMD),y)
CLAMAV_CONF_OPTS += -DENABLE_SYSTEMD=ON
CLAMAV_DEPENDENCIES += systemd
else
CLAMAV_CONF_OPTS += -DENABLE_SYSTEMD=OFF
endif
else
CLAMAV_CONF_OPTS += -DENABLE_APP=OFF -DENABLE_SYSTEMD=OFF
endif

$(eval $(cmake-package))
