################################################################################
#
# helloworld
#
################################################################################

HELLO_VERSION = 1.0
HELLO_SITE = ./package/helloworld/src
HELLO_SITE_METHOD = local

define HELLOWORLD_BUILD_CMDS
    $(MAKE) CC="$(TARGET_CC)" LD="$(TARGET_LD)" -C $(@D)
endef

define HELLOWORLD_INSTALL_TARGET_CMDS
    $(INSTALL) -D -m 0755 $(@D)/helloworld $(TARGET_DIR)/home
endef

$(eval $(generic-package))
