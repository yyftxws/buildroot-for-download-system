################################################################################
#
# SVN_DEMO
#
################################################################################

# 1.58.02 (code/advanced@r3119)
SVN_DEMO_VERSION = r3119
SVN_DEMO_SITE = https://svn.code.sf.net/p/xmlrpc-c/code/advanced
SVN_DEMO_SITE_METHOD = svn
SVN_DEMO_LICENSE = BSD-3-Clause (xml-rpc main code and abyss web server), BSD like (lib/expat), Python 1.5.2 license (parts of xmlrpc_base64.c)
SVN_DEMO_LICENSE_FILES = doc/COPYING
SVN_DEMO_INSTALL_STAGING = YES
SVN_DEMO_DEPENDENCIES = libcurl host-autoconf
SVN_DEMO_CONFIG_SCRIPTS = xmlrpc-c-config
SVN_DEMO_MAKE = $(MAKE1)

# 下载最新代码
BR_NO_CHECK_HASH_FOR += $(SVN_DEMO_SOURCE)

$(eval $(generic-package))
