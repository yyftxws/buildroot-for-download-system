################################################################################
#
# DEMO
#
################################################################################

DEMO_VERSION = 3.0
# The version is really 3.0, but the tarball is named zip30.tgz
DEMO_SOURCE = zip$(subst .,,$(DEMO_VERSION)).tgz
DEMO_SITE = ftp://ftp.info-zip.org/pub/infozip/src
DEMO_LICENSE = Info-DEMO
DEMO_LICENSE_FILES = LICENSE
DEMO_CPE_ID_VENDOR = info-DEMO_project
DEMO_ADD_TOOLCHAIN_DEPENDENCY = NO
DEMO_ADD_SKELETON_DEPENDENCY = NO
#DEMO_OVERRIDE_SRCDIR = vendor/lib
#DEMO_DL_SUBDIR = system/bin
DEMO_DL_SUBDIR = vendor/lib


define DEMO_PRE_DOWNLOAD_CMDS
	@echo "=======step 1: pre download"
endef
DEMO_PRE_DOWNLOAD_HOOKS += DEMO_PRE_DOWNLOAD_CMDS

define DEMO_POST_DOWNLOAD_CMDS
	@echo "=======step 2: post download"
endef
DEMO_POST_DOWNLOAD_HOOKS += DEMO_POST_DOWNLOAD_CMDS

define DEMO_PRE_EXTRACT_CMDS
	@echo "=======step 3: pre extract"
endef
DEMO_PRE_EXTRACT_HOOKS += DEMO_PRE_EXTRACT_CMDS

define DEMO_POST_EXTRACT_CMDS
	@echo "=======step 4: post extract"
endef
DEMO_POST_EXTRACT_HOOKS += DEMO_POST_EXTRACT_CMDS

define DEMO_PRE_RSYNC_CMDS
	@echo "=======step 5: pre rsync   $(DEMO_DL_DIR) "
endef
DEMO_PRE_RSYNC_HOOKS += DEMO_PRE_RSYNC_CMDS

define DEMO_POST_RSYNC_HOOKS
	@echo "=======step 6: post rsync"
endef
DEMO_POST_RSYNC_HOOKS += DEMO_POST_RSYNC_CMDS

define DEMO_PRE_PATCH_CMDS
	@echo "=======step 7: pre patch"
endef
DEMO_PRE_PATCH_HOOKS += DEMO_PRE_PATCH_CMDS

define DEMO_POST_PATCH_CMDS
	@echo "=======step 8: post patch"
endef
DEMO_POST_PATCH_HOOKS += DEMO_POST_PATCH_CMDS

define DEMO_POST_PREPARE_CMDS
	@echo "=======step 9: post prepare"
endef
DEMO_POST_PREPARE_HOOKS += DEMO_POST_PREPARE_CMDS

define DEMO_PRE_CONFIGURE_CMDS
	@echo "=======step 10: pre configure"
endef
DEMO_PRE_CONFIGURE_HOOKS += DEMO_PRE_CONFIGURE_CMDS

define DEMO_POST_CONFIGURE_CMDS
	@echo "=======step 11: post configure"
endef
DEMO_POST_CONFIGURE_HOOKS += DEMO_POST_CONFIGURE_CMDS

define DEMO_PRE_BUILD_CMDS
	@echo "=======step 12: pre build"
endef
DEMO_PRE_BUILD_HOOKS += DEMO_PRE_BUILD_CMDS

define DEMO_BUILD_CMDS
	@echo "=======step 13: build cmds=================="
endef

define DEMO_POST_BUILD_CMDS
	@echo "=======step 14: post build"
endef
DEMO_POST_BUILD_HOOKS += DEMO_POST_BUILD_CMDS

define DEMO_PRE_INSTALL_CMDS
	@echo "=======step 15: pre install"
endef
DEMO_PRE_INSTALL_HOOKS += DEMO_PRE_INSTALL_CMDS

define DEMO_INSTALL_CMDS
	@echo "=======step 16: install"
endef

define DEMO_POST_INSTALL_CMDS
	@echo "=======step 17: post install"
endef
DEMO_POST_INSTALL_HOOKS += DEMO_POST_INSTALL_CMDS

define DEMO_PRE_INSTALL_STAGING_CMDS
	@echo "=======step 18: pre install staging"
endef
DEMO_PRE_INSTALL_STAGING_HOOKS += DEMO_PRE_INSTALL_STAGING_CMDS

define DEMO_INSTALL_STAGING_CMDS
	@echo "=======step 19: install staging"
endef

define DEMO_POST_INSTALL_STAGING_CMDS
	@echo "=======step 20: post install staging"
endef
DEMO_POST_INSTALL_STAGING_HOOKS += DEMO_POST_INSTALL_STAGING_CMDS

define DEMO_PRE_INSTALL_IMAGES_CMDS
	@echo "=======step 21: pre install images"
endef
DEMO_PRE_INSTALL_IMAGES_HOOKS += DEMO_PRE_INSTALL_IMAGES_CMDS

define DEMO_INSTALL_IMAGES_CMDS
	@echo "=======step 22: install images"
endef

define DEMO_POST_INSTALL_IMAGES_CMDS
	@echo "=======step 23: post install images"
endef
DEMO_POST_INSTALL_IMAGES_HOOKS += DEMO_POST_INSTALL_IMAGES_CMDS

define DEMO_PRE_INSTALL_TARGET_CMDS
	@echo "=======step 24: pre install target"
endef
DEMO_PRE_INSTALL_TARGET_HOOKS += DEMO_PRE_INSTALL_TARGET_CMDS

define DEMO_INSTALL_TARGET_CMDS
	@echo "=======step 25: install target"
endef

define DEMO_POST_INSTALL_TARGET_CMDS
	@echo "=======step 26: post install target"
endef
DEMO_POST_INSTALL_TARGET_HOOKS += DEMO_POST_INSTALL_TARGET_CMDS

$(eval $(generic-package))
