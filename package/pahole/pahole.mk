################################################################################
#
# pahole
#
################################################################################

<<<<<<< HEAD
PAHOLE_VERSION = 1.25
PAHOLE_SITE = https://git.kernel.org/pub/scm/devel/pahole/pahole.git/snapshot
HOST_PAHOLE_DEPENDENCIES = \
	host-elfutils \
	host-libbpf
=======
PAHOLE_VERSION = v1.23
PAHOLE_SITE = https://git.kernel.org/pub/scm/devel/pahole/pahole.git
PAHOLE_SITE_METHOD = git
# pahole contains git submodule and relies on them to be built.
PAHOLE_GIT_SUBMODULES = YES
HOST_PAHOLE_DEPENDENCIES = host-elfutils
>>>>>>> origin/2022.02.x
# Defining __LIB is needed to build pahole.
# Set LIBBPF_EMBEDDED to OFF to use host-libbpf.
HOST_PAHOLE_CONF_OPTS = -D__LIB=lib -DLIBBPF_EMBEDDED=OFF
PAHOLE_LICENSE = GPL-2.0
PAHOLE_LICENSE_FILES = COPYING

$(eval $(host-cmake-package))
