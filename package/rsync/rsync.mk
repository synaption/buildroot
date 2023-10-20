################################################################################
#
# rsync
#
################################################################################

<<<<<<< HEAD
RSYNC_VERSION = 3.2.7
RSYNC_SITE = https://rsync.samba.org/ftp/rsync/src
=======
RSYNC_VERSION = 3.2.5
RSYNC_SITE = http://rsync.samba.org/ftp/rsync/src
>>>>>>> origin/2022.02.x
RSYNC_LICENSE = GPL-3.0+ with exceptions
RSYNC_LICENSE_FILES = COPYING
RSYNC_CPE_ID_VENDOR = samba
RSYNC_SELINUX_MODULES = rsync
RSYNC_DEPENDENCIES = zlib popt
# We know that our C library is modern enough for C99 vsnprintf(). Since
# configure can't detect this, we tell configure that vsnprintf() is safe.
RSYNC_CONF_ENV = rsync_cv_HAVE_C99_VSNPRINTF=yes
RSYNC_CONF_OPTS = \
	--with-included-zlib=no \
	--with-included-popt=no \
	--disable-roll-simd \
<<<<<<< HEAD
=======
	--disable-openssl \
	--disable-xxhash \
	--disable-zstd \
	--disable-lz4 \
>>>>>>> origin/2022.02.x
	--disable-md5-asm

ifeq ($(BR2_TOOLCHAIN_HAS_LIBATOMIC),y)
RSYNC_CONF_ENV += LIBS=-latomic
endif

ifeq ($(BR2_PACKAGE_ACL),y)
RSYNC_DEPENDENCIES += acl
else
RSYNC_CONF_OPTS += --disable-acl-support
endif

ifeq ($(BR2_PACKAGE_LZ4),y)
RSYNC_DEPENDENCIES += lz4
RSYNC_CONF_OPTS += --enable-lz4
else
RSYNC_CONF_OPTS += --disable-lz4
endif

ifeq ($(BR2_PACKAGE_OPENSSL),y)
RSYNC_DEPENDENCIES += openssl
RSYNC_CONF_OPTS += --enable-openssl
else
RSYNC_CONF_OPTS += --disable-openssl
endif

ifeq ($(BR2_PACKAGE_XXHASH),y)
RSYNC_DEPENDENCIES += xxhash
RSYNC_CONF_OPTS += --enable-xxhash
else
RSYNC_CONF_OPTS += --disable-xxhash
endif

ifeq ($(BR2_PACKAGE_ZSTD),y)
RSYNC_DEPENDENCIES += zstd
RSYNC_CONF_OPTS += --enable-zstd
else
RSYNC_CONF_OPTS += --disable-zstd
endif

$(eval $(autotools-package))
