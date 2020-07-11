#
_XDCBUILDCOUNT = 
ifneq (,$(findstring path,$(_USEXDCENV_)))
override XDCPATH = /app/ti/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages
override XDCROOT = /opt/ti/xdctools_3_61_00_16_core
override XDCBUILDCFG = /app/ti/simplelink_cc32xx_sdk_4_10_00_07/source/ti/utils/tiutils.bld
endif
ifneq (,$(findstring args,$(_USEXDCENV_)))
override XDCARGS = TIPOSIX_REPO="/app/ti/simplelink_cc32xx_sdk_4_10_00_07/source" ti.targets.arm.elf.M4="/opt/ti/ccs/tools/compiler/ti-cgt-arm_20.2.1.LTS" gnu.targets.arm.M4="/opt/ti/ccs/tools/compiler/gcc-arm-none-eabi-7-2017-q4-major" iar.targets.arm.M4=""
override XDCTARGETS = 
endif
#
ifeq (0,1)
PKGPATH = /app/ti/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages;/opt/ti/xdctools_3_61_00_16_core/packages;../..
HOSTOS = Linux
endif
