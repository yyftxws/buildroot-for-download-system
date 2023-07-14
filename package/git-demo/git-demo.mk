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
LIBUBOX_INSTALL_STAGING = YES
# 下载最新代码
BR_NO_CHECK_HASH_FOR += $(GIT_DEMO_SOURCE)


define GIT_DEMO_INSTALL_TARGET_CMDS
	echo "============================="
endef


$(eval $(generic-package))
