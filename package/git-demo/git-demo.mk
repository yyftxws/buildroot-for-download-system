################################################################################
#
# git-demo
#
################################################################################

#指定分支
GIT_DEMO_VERSION = release/common/rtd1325_SDK
GIT_DEMO_SITE = ssh://rsgerrit/git/DHC_SDK/android_s/build_scripts
GIT_DEMO_SITE_METHOD = git
GIT_DEMO_LICENSE = MIT
GIT_DEMO_LICENSE_FILES = LICENSE
GIT_DEMO_DEPENDENCIES = demo
LIBUBOX_INSTALL_STAGING = YES
GIT_DEMO_ADD_TOOLCHAIN_DEPENDENCY = NO
GIT_DEMO_ADD_SKELETON_DEPENDENCY = NO
# 下载最新代码
BR_NO_CHECK_HASH_FOR += $(GIT_DEMO_SOURCE)


define GIT_DEMO_INSTALL_TARGET_CMDS
	echo "=============GIT_DEMO================"
endef


$(eval $(generic-package))
