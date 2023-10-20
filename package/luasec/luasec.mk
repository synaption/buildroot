################################################################################
#
# luasec
#
################################################################################

<<<<<<< HEAD
LUASEC_VERSION = 1.2.0-1
=======
LUASEC_VERSION = 1.0.2-1
>>>>>>> origin/2022.02.x
LUASEC_SUBDIR = luasec
LUASEC_LICENSE = MIT
LUASEC_LICENSE_FILES = $(LUASEC_SUBDIR)/LICENSE
LUASEC_DEPENDENCIES = openssl

$(eval $(luarocks-package))
