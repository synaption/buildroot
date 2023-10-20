################################################################################
#
# rtl8189es
#
################################################################################

<<<<<<< HEAD
RTL8189ES_VERSION = 05996691a5f3a61968a83f8b368454fd2c6885ca
=======
RTL8189ES_VERSION = 39c17661136da48f8e9c644194dce6a7f5076896
>>>>>>> origin/2022.02.x
RTL8189ES_SITE = $(call github,jwrdegoede,rtl8189ES_linux,$(RTL8189ES_VERSION))
RTL8189ES_LICENSE = GPL-2.0

# Undefine the hardcoded CONFIG_LITTLE_ENDIAN
RTL8189ES_USER_EXTRA_CLAGS = -UCONFIG_LITTLE_ENDIAN
# Set endianness
RTL8189ES_USER_EXTRA_CLAGS += -DCONFIG_$(call qstrip,$(BR2_ENDIAN))_ENDIAN

RTL8189ES_MODULE_MAKE_OPTS = \
	CONFIG_RTL8189ES=m \
	KVER=$(LINUX_VERSION_PROBED) \
	KSRC=$(LINUX_DIR) \
<<<<<<< HEAD
	USER_EXTRA_CFLAGS="-Wno-error"
=======
	USER_EXTRA_CFLAGS="$(RTL8189ES_USER_EXTRA_CLAGS)"
>>>>>>> origin/2022.02.x

define RTL8189ES_LINUX_CONFIG_FIXUPS
	$(call KCONFIG_ENABLE_OPT,CONFIG_NET)
	$(call KCONFIG_ENABLE_OPT,CONFIG_WIRELESS)
	$(call KCONFIG_ENABLE_OPT,CONFIG_CFG80211)
	$(call KCONFIG_ENABLE_OPT,CONFIG_MMC)
endef

$(eval $(kernel-module))
$(eval $(generic-package))
