################################################################################
#
# git-demo
#
################################################################################

GIT_DEMO_VERSION = 395154e142b275d04ba470912fe8c9676ebb771d
GIT_DEMO_SITE = amlogic_l_group@10.10.61.21:/home/svn/sdmc_lib/sdk_patch_tool/tool.git
GIT_DEMO_SITE_METHOD = git
GIT_DEMO_LICENSE = MIT
GIT_DEMO_LICENSE_FILES = LICENSE
GIT_DEMO_ADD_TOOLCHAIN_DEPENDENCY = NO
GIT_DEMO_ADD_SKELETON_DEPENDENCY = NO
GIT_DEMO_DEPENDENCIES = demo

define EDID_DECODE_BUILD_CMDS
	$(TARGET_MAKE_ENV) $(TARGET_CONFIGURE_OPTS) $(MAKE) -C $(@D) \
		CFLAGS="$(TARGET_CXXFLAGS) -std=c++11" WARN_FLAGS=
endef

define EDID_DECODE_INSTALL_TARGET_CMDS
	$(TARGET_MAKE_ENV) $(TARGET_CONFIGURE_OPTS) $(MAKE) -C $(@D) \
		DESTDIR="$(TARGET_DIR)" install
endef

$(eval $(generic-package))
