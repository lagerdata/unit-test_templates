#
_XDCBUILDCOUNT = 0
ifneq (,$(findstring path,$(_USEXDCENV_)))
override XDCPATH = /app/unity_application/sdk/simplelink_cc32xx_sdk_4_10_00_07/source;/app/unity_application/sdk/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages
override XDCROOT = /opt/ti/xdctools_3_61_00_16_core
override XDCBUILDCFG = /app/unity_application/sdk/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/coresdk.bld
endif
ifneq (,$(findstring args,$(_USEXDCENV_)))
override XDCARGS = ti.targets.arm.elf.M4="/opt/ti/ccs/tools/compiler/ti-cgt-arm_20.2.1.LTS" gnu.targets.arm.M4="/usr" iar.targets.arm.M4="" CC32XXWARE=/app/unity_application/sdk/simplelink_cc32xx_sdk_4_10_00_07
override XDCTARGETS = 
endif
#
ifeq (0,1)
PKGPATH = /app/unity_application/sdk/simplelink_cc32xx_sdk_4_10_00_07/source;/app/unity_application/sdk/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages;/opt/ti/xdctools_3_61_00_16_core/packages;../..
HOSTOS = Linux
endif
