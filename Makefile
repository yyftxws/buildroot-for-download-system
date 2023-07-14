O := $(CURDIR)/output

$(shell mkdir -p $(O)/build >/dev/null 2>&1)
CANONICAL_O := $(shell mkdir -p $(O) >/dev/null 2>&1)$(realpath $(O))

TOPDIR := $(CURDIR)
TOOLSDIR := $(TOPDIR)/tools

include $(TOOLSDIR)/support/misc/utils.mk
$(info CURDIR = $(CURDIR) )
# Set variables related to in-tree or out-of-tree build.
# Here, both $(O) and $(CURDIR) are absolute canonical paths.
ifeq ($(O),$(CURDIR)/output)
CONFIG_DIR := $(CURDIR)
NEED_WRAPPER =
endif

# bash prints the name of the directory on 'cd <dir>' if CDPATH is
# set, so unset it here to not cause problems. Notice that the export
# line doesn't affect the environment of $(shell ..) calls.
#export CDPATH :=

BASE_DIR := $(CANONICAL_O)
$(if $(BASE_DIR),, $(error output directory "$(O)" does not exist))


BUILD_DIR := $(BASE_DIR)/build

BR2_CONFIG = $(TOOLSDIR)/config.mk
# Pull in the user's configuration file
ifeq ($(filter $(noconfig_targets),$(MAKECMDGOALS)),)
-include $(BR2_CONFIG)
endif

ZCAT := $(call qstrip,$(BR2_ZCAT))
BZCAT := $(call qstrip,$(BR2_BZCAT))
XZCAT := $(call qstrip,$(BR2_XZCAT))
LZCAT := $(call qstrip,$(BR2_LZCAT))
TAR_OPTIONS = $(call qstrip,$(BR2_TAR_OPTIONS)) -xf


include $(TOOLSDIR)/package/pkg-utils.mk
include $(TOOLSDIR)/package/doc-asciidoc.mk

BR_PATH = "$(HOST_DIR)/bin:$(HOST_DIR)/sbin:$(PATH)"

export BR2_CONFIG
#export BR2_REPRODUCIBLE
#export TARGET_DIR
#export STAGING_DIR
#export HOST_DIR
#export BINARIES_DIR
export BASE_DIR
export TOOLSDIR

# Include legacy before the other things, because package .mk files
# may rely on it.
include Makefile.legacy

#include system/system.mk
include $(TOOLSDIR)/package/Makefile.in
# arch/arch.mk must be after package/Makefile.in because it may need to
# complement variables defined therein, like BR_NO_CHECK_HASH_FOR.
#include arch/arch.mk
include $(TOOLSDIR)/support/dependencies/dependencies.mk

include $(sort $(wildcard package/*/*.mk))

.PHONY: prepare
prepare:
#	echo "================"

