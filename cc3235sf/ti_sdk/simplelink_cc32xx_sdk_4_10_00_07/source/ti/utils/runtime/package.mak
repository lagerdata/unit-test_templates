#
#  Do not edit this file.  This file is generated from 
#  package.bld.  Any modifications to this file will be 
#  overwritten whenever makefiles are re-generated.
#

unexport MAKEFILE_LIST
MK_NOGENDEPS := $(filter clean,$(MAKECMDGOALS))
override PKGDIR = ti/utils/runtime
XDCINCS = -I. -I$(strip $(subst ;, -I,$(subst $(space),\$(space),$(XPKGPATH))))
XDCCFGDIR = package/cfg/

#
# The following dependencies ensure package.mak is rebuilt
# in the event that some included BOM script changes.
#
ifneq (clean,$(MAKECMDGOALS))
/opt/ti/xdctools_3_61_00_16_core/packages/xdc/utils.js:
package.mak: /opt/ti/xdctools_3_61_00_16_core/packages/xdc/utils.js
/opt/ti/xdctools_3_61_00_16_core/packages/xdc/xdc.tci:
package.mak: /opt/ti/xdctools_3_61_00_16_core/packages/xdc/xdc.tci
/opt/ti/xdctools_3_61_00_16_core/packages/xdc/template.xs:
package.mak: /opt/ti/xdctools_3_61_00_16_core/packages/xdc/template.xs
/opt/ti/xdctools_3_61_00_16_core/packages/xdc/om2.xs:
package.mak: /opt/ti/xdctools_3_61_00_16_core/packages/xdc/om2.xs
/opt/ti/xdctools_3_61_00_16_core/packages/xdc/xmlgen.xs:
package.mak: /opt/ti/xdctools_3_61_00_16_core/packages/xdc/xmlgen.xs
/opt/ti/xdctools_3_61_00_16_core/packages/xdc/xmlgen2.xs:
package.mak: /opt/ti/xdctools_3_61_00_16_core/packages/xdc/xmlgen2.xs
/opt/ti/xdctools_3_61_00_16_core/packages/xdc/Warnings.xs:
package.mak: /opt/ti/xdctools_3_61_00_16_core/packages/xdc/Warnings.xs
/opt/ti/xdctools_3_61_00_16_core/packages/xdc/IPackage.xs:
package.mak: /opt/ti/xdctools_3_61_00_16_core/packages/xdc/IPackage.xs
/opt/ti/xdctools_3_61_00_16_core/packages/xdc/package.xs:
package.mak: /opt/ti/xdctools_3_61_00_16_core/packages/xdc/package.xs
/opt/ti/xdctools_3_61_00_16_core/packages/xdc/services/global/Clock.xs:
package.mak: /opt/ti/xdctools_3_61_00_16_core/packages/xdc/services/global/Clock.xs
/opt/ti/xdctools_3_61_00_16_core/packages/xdc/services/global/Trace.xs:
package.mak: /opt/ti/xdctools_3_61_00_16_core/packages/xdc/services/global/Trace.xs
/opt/ti/xdctools_3_61_00_16_core/packages/xdc/bld/bld.js:
package.mak: /opt/ti/xdctools_3_61_00_16_core/packages/xdc/bld/bld.js
/opt/ti/xdctools_3_61_00_16_core/packages/xdc/bld/BuildEnvironment.xs:
package.mak: /opt/ti/xdctools_3_61_00_16_core/packages/xdc/bld/BuildEnvironment.xs
/opt/ti/xdctools_3_61_00_16_core/packages/xdc/bld/PackageContents.xs:
package.mak: /opt/ti/xdctools_3_61_00_16_core/packages/xdc/bld/PackageContents.xs
/opt/ti/xdctools_3_61_00_16_core/packages/xdc/bld/_gen.xs:
package.mak: /opt/ti/xdctools_3_61_00_16_core/packages/xdc/bld/_gen.xs
/opt/ti/xdctools_3_61_00_16_core/packages/xdc/bld/Library.xs:
package.mak: /opt/ti/xdctools_3_61_00_16_core/packages/xdc/bld/Library.xs
/opt/ti/xdctools_3_61_00_16_core/packages/xdc/bld/Executable.xs:
package.mak: /opt/ti/xdctools_3_61_00_16_core/packages/xdc/bld/Executable.xs
/opt/ti/xdctools_3_61_00_16_core/packages/xdc/bld/Repository.xs:
package.mak: /opt/ti/xdctools_3_61_00_16_core/packages/xdc/bld/Repository.xs
/opt/ti/xdctools_3_61_00_16_core/packages/xdc/bld/Configuration.xs:
package.mak: /opt/ti/xdctools_3_61_00_16_core/packages/xdc/bld/Configuration.xs
/opt/ti/xdctools_3_61_00_16_core/packages/xdc/bld/Script.xs:
package.mak: /opt/ti/xdctools_3_61_00_16_core/packages/xdc/bld/Script.xs
/opt/ti/xdctools_3_61_00_16_core/packages/xdc/bld/Manifest.xs:
package.mak: /opt/ti/xdctools_3_61_00_16_core/packages/xdc/bld/Manifest.xs
/opt/ti/xdctools_3_61_00_16_core/packages/xdc/bld/Utils.xs:
package.mak: /opt/ti/xdctools_3_61_00_16_core/packages/xdc/bld/Utils.xs
/opt/ti/xdctools_3_61_00_16_core/packages/xdc/bld/ITarget.xs:
package.mak: /opt/ti/xdctools_3_61_00_16_core/packages/xdc/bld/ITarget.xs
/opt/ti/xdctools_3_61_00_16_core/packages/xdc/bld/ITarget2.xs:
package.mak: /opt/ti/xdctools_3_61_00_16_core/packages/xdc/bld/ITarget2.xs
/opt/ti/xdctools_3_61_00_16_core/packages/xdc/bld/ITarget3.xs:
package.mak: /opt/ti/xdctools_3_61_00_16_core/packages/xdc/bld/ITarget3.xs
/opt/ti/xdctools_3_61_00_16_core/packages/xdc/bld/ITargetFilter.xs:
package.mak: /opt/ti/xdctools_3_61_00_16_core/packages/xdc/bld/ITargetFilter.xs
/opt/ti/xdctools_3_61_00_16_core/packages/xdc/bld/package.xs:
package.mak: /opt/ti/xdctools_3_61_00_16_core/packages/xdc/bld/package.xs
/app/ti/simplelink_cc32xx_sdk_4_10_00_07/source/ti/utils/tiutils.bld:
package.mak: /app/ti/simplelink_cc32xx_sdk_4_10_00_07/source/ti/utils/tiutils.bld
/app/ti/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/ti/targets/ITarget.xs:
package.mak: /app/ti/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/ti/targets/ITarget.xs
/app/ti/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/ti/targets/C28_large.xs:
package.mak: /app/ti/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/ti/targets/C28_large.xs
/app/ti/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/ti/targets/C28_float.xs:
package.mak: /app/ti/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/ti/targets/C28_float.xs
/app/ti/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/ti/targets/package.xs:
package.mak: /app/ti/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/ti/targets/package.xs
/app/ti/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/ti/targets/arm/elf/IArm.xs:
package.mak: /app/ti/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/ti/targets/arm/elf/IArm.xs
/app/ti/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/ti/targets/arm/elf/package.xs:
package.mak: /app/ti/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/ti/targets/arm/elf/package.xs
/app/ti/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm/ITarget.xs:
package.mak: /app/ti/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm/ITarget.xs
/app/ti/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm/_utils.xs:
package.mak: /app/ti/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm/_utils.xs
/app/ti/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm/GCArmv6.xs:
package.mak: /app/ti/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm/GCArmv6.xs
/app/ti/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm/GCArmv7A.xs:
package.mak: /app/ti/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm/GCArmv7A.xs
/app/ti/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm/IM.xs:
package.mak: /app/ti/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm/IM.xs
/app/ti/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm/M3.xs:
package.mak: /app/ti/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm/M3.xs
/app/ti/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm/A8F.xs:
package.mak: /app/ti/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm/A8F.xs
/app/ti/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm/A9F.xs:
package.mak: /app/ti/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm/A9F.xs
/app/ti/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm/A15F.xs:
package.mak: /app/ti/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm/A15F.xs
/app/ti/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm/A53F.xs:
package.mak: /app/ti/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm/A53F.xs
/app/ti/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm/package.xs:
package.mak: /app/ti/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm/package.xs
package.mak: package.bld
endif

ti.targets.arm.elf.M4.rootDir ?= /opt/ti/ccs/tools/compiler/ti-cgt-arm_20.2.1.LTS
ti.targets.arm.elf.packageBase ?= /app/ti/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/ti/targets/arm/elf/
gnu.targets.arm.M4.rootDir ?= /opt/ti/ccs/tools/compiler/gcc-arm-none-eabi-7-2017-q4-major
gnu.targets.arm.packageBase ?= /app/ti/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm/
.PRECIOUS: $(XDCCFGDIR)/%.oem4
.PHONY: all,em4 .dlls,em4 .executables,em4 test,em4
all,em4: .executables,em4
.executables,em4: .libraries,em4
.executables,em4: .dlls,em4
.dlls,em4: .libraries,em4
.libraries,em4: .interfaces
	@$(RM) $@
	@$(TOUCH) "$@"

.help::
	@$(ECHO) xdc test,em4
	@$(ECHO) xdc .executables,em4
	@$(ECHO) xdc .libraries,em4
	@$(ECHO) xdc .dlls,em4

.PRECIOUS: $(XDCCFGDIR)/%.om4g
.PHONY: all,m4g .dlls,m4g .executables,m4g test,m4g
all,m4g: .executables,m4g
.executables,m4g: .libraries,m4g
.executables,m4g: .dlls,m4g
.dlls,m4g: .libraries,m4g
.libraries,m4g: .interfaces
	@$(RM) $@
	@$(TOUCH) "$@"

.help::
	@$(ECHO) xdc test,m4g
	@$(ECHO) xdc .executables,m4g
	@$(ECHO) xdc .libraries,m4g
	@$(ECHO) xdc .dlls,m4g


all: .executables 
.executables: .libraries .dlls
.libraries: .interfaces

PKGCFGS := $(wildcard package.xs) package/build.cfg
.interfaces: package/package.xdc.inc package/package.defs.h package.xdc $(PKGCFGS)

-include package/package.xdc.dep
package/%.xdc.inc package/%_ti.utils.runtime.c package/%.defs.h: %.xdc $(PKGCFGS)
	@$(MSG) generating interfaces for package ti.utils.runtime" (because $@ is older than $(firstword $?))" ...
	$(XSRUN) -f xdc/services/intern/cmd/build.xs $(MK_IDLOPTS) -m package/package.xdc.dep -i package/package.xdc.inc package.xdc

ifeq (,$(MK_NOGENDEPS))
-include package/package.cfg.dep
endif

package/package.cfg.xdc.inc: .interfaces $(XDCROOT)/packages/xdc/cfg/cfginc.js package.xdc
	@$(MSG) generating schema include file list ...
	$(CONFIG) -f $(XDCROOT)/packages/xdc/cfg/cfginc.js ti.utils.runtime $@

.libraries,em4 .libraries: lib/ccs/m4/runtime_debug.a

-include lib/ccs/m4/runtime_debug.a.mak
lib/ccs/m4/runtime_debug.a: 
	$(RM) $@
	@$(MSG) archiving package/lib/lib/ccs/m4/runtime_debug/package/package_ti.utils.runtime.oem4 package/lib/lib/ccs/m4/runtime_debug/Log.oem4 package/lib/lib/ccs/m4/runtime_debug/LoggerText.oem4  into $@ ...
	$(ti.targets.arm.elf.M4.rootDir)/bin/armar  rq $@   package/lib/lib/ccs/m4/runtime_debug/package/package_ti.utils.runtime.oem4 package/lib/lib/ccs/m4/runtime_debug/Log.oem4 package/lib/lib/ccs/m4/runtime_debug/LoggerText.oem4 
lib/ccs/m4/runtime_debug.a: export C_DIR=
lib/ccs/m4/runtime_debug.a: PATH:=$(ti.targets.arm.elf.M4.rootDir)/bin/:$(PATH)

clean,em4 clean::
	-$(RM) lib/ccs/m4/runtime_debug.a
.libraries,em4 .libraries: lib/ccs/m4/runtime_release.a

-include lib/ccs/m4/runtime_release.a.mak
lib/ccs/m4/runtime_release.a: 
	$(RM) $@
	@$(MSG) archiving package/lib/lib/ccs/m4/runtime_release/package/package_ti.utils.runtime.oem4 package/lib/lib/ccs/m4/runtime_release/Log.oem4 package/lib/lib/ccs/m4/runtime_release/LoggerText.oem4  into $@ ...
	$(ti.targets.arm.elf.M4.rootDir)/bin/armar  rq $@   package/lib/lib/ccs/m4/runtime_release/package/package_ti.utils.runtime.oem4 package/lib/lib/ccs/m4/runtime_release/Log.oem4 package/lib/lib/ccs/m4/runtime_release/LoggerText.oem4 
lib/ccs/m4/runtime_release.a: export C_DIR=
lib/ccs/m4/runtime_release.a: PATH:=$(ti.targets.arm.elf.M4.rootDir)/bin/:$(PATH)

clean,em4 clean::
	-$(RM) lib/ccs/m4/runtime_release.a
.libraries,m4g .libraries: lib/gcc/m4/runtime_debug.a

-include lib/gcc/m4/runtime_debug.a.mak
lib/gcc/m4/runtime_debug.a: 
	$(RM) $@
	@$(MSG) archiving package/lib/lib/gcc/m4/runtime_debug/package/package_ti.utils.runtime.om4g package/lib/lib/gcc/m4/runtime_debug/Log.om4g package/lib/lib/gcc/m4/runtime_debug/LoggerText.om4g  into $@ ...
	$(gnu.targets.arm.M4.rootDir)/bin/arm-none-eabi-ar  cr $@   package/lib/lib/gcc/m4/runtime_debug/package/package_ti.utils.runtime.om4g package/lib/lib/gcc/m4/runtime_debug/Log.om4g package/lib/lib/gcc/m4/runtime_debug/LoggerText.om4g 
lib/gcc/m4/runtime_debug.a: export LD_LIBRARY_PATH=

clean,m4g clean::
	-$(RM) lib/gcc/m4/runtime_debug.a
.libraries,m4g .libraries: lib/gcc/m4/runtime_release.a

-include lib/gcc/m4/runtime_release.a.mak
lib/gcc/m4/runtime_release.a: 
	$(RM) $@
	@$(MSG) archiving package/lib/lib/gcc/m4/runtime_release/package/package_ti.utils.runtime.om4g package/lib/lib/gcc/m4/runtime_release/Log.om4g package/lib/lib/gcc/m4/runtime_release/LoggerText.om4g  into $@ ...
	$(gnu.targets.arm.M4.rootDir)/bin/arm-none-eabi-ar  cr $@   package/lib/lib/gcc/m4/runtime_release/package/package_ti.utils.runtime.om4g package/lib/lib/gcc/m4/runtime_release/Log.om4g package/lib/lib/gcc/m4/runtime_release/LoggerText.om4g 
lib/gcc/m4/runtime_release.a: export LD_LIBRARY_PATH=

clean,m4g clean::
	-$(RM) lib/gcc/m4/runtime_release.a
test:;
%,copy:
	@$(if $<,,$(MSG) don\'t know how to build $*; exit 1)
	@$(MSG) cp $< $@
	$(RM) $@
	$(CP) $< $@
.PHONY: package_ti.utils.runtime.oem4,copy
package_ti.utils.runtime.oem4,copy : package_ti.utils.runtime.oem4,0,copy package_ti.utils.runtime.oem4,1,copy 
	@

package_ti.utils.runtime.oem4,0,copy : package/lib/lib/ccs/m4/runtime_debug/package/package_ti.utils.runtime.oem4
package_ti.utils.runtime.oem4,1,copy : package/lib/lib/ccs/m4/runtime_release/package/package_ti.utils.runtime.oem4
.PHONY: package_ti.utils.runtime.sem4,copy
package_ti.utils.runtime.sem4,copy : package_ti.utils.runtime.sem4,0,copy package_ti.utils.runtime.sem4,1,copy 
	@

package_ti.utils.runtime.sem4,0,copy : package/lib/lib/ccs/m4/runtime_debug/package/package_ti.utils.runtime.sem4
package_ti.utils.runtime.sem4,1,copy : package/lib/lib/ccs/m4/runtime_release/package/package_ti.utils.runtime.sem4
.PHONY: Log.oem4,copy
Log.oem4,copy : Log.oem4,0,copy Log.oem4,1,copy 
	@

Log.oem4,0,copy : package/lib/lib/ccs/m4/runtime_debug/Log.oem4
Log.oem4,1,copy : package/lib/lib/ccs/m4/runtime_release/Log.oem4
.PHONY: Log.sem4,copy
Log.sem4,copy : Log.sem4,0,copy Log.sem4,1,copy 
	@

Log.sem4,0,copy : package/lib/lib/ccs/m4/runtime_debug/Log.sem4
Log.sem4,1,copy : package/lib/lib/ccs/m4/runtime_release/Log.sem4
.PHONY: LoggerText.oem4,copy
LoggerText.oem4,copy : LoggerText.oem4,0,copy LoggerText.oem4,1,copy 
	@

LoggerText.oem4,0,copy : package/lib/lib/ccs/m4/runtime_debug/LoggerText.oem4
LoggerText.oem4,1,copy : package/lib/lib/ccs/m4/runtime_release/LoggerText.oem4
.PHONY: LoggerText.sem4,copy
LoggerText.sem4,copy : LoggerText.sem4,0,copy LoggerText.sem4,1,copy 
	@

LoggerText.sem4,0,copy : package/lib/lib/ccs/m4/runtime_debug/LoggerText.sem4
LoggerText.sem4,1,copy : package/lib/lib/ccs/m4/runtime_release/LoggerText.sem4
.PHONY: package_ti.utils.runtime.om4g,copy
package_ti.utils.runtime.om4g,copy : package_ti.utils.runtime.om4g,0,copy package_ti.utils.runtime.om4g,1,copy 
	@

package_ti.utils.runtime.om4g,0,copy : package/lib/lib/gcc/m4/runtime_debug/package/package_ti.utils.runtime.om4g
package_ti.utils.runtime.om4g,1,copy : package/lib/lib/gcc/m4/runtime_release/package/package_ti.utils.runtime.om4g
.PHONY: package_ti.utils.runtime.sm4g,copy
package_ti.utils.runtime.sm4g,copy : package_ti.utils.runtime.sm4g,0,copy package_ti.utils.runtime.sm4g,1,copy 
	@

package_ti.utils.runtime.sm4g,0,copy : package/lib/lib/gcc/m4/runtime_debug/package/package_ti.utils.runtime.sm4g
package_ti.utils.runtime.sm4g,1,copy : package/lib/lib/gcc/m4/runtime_release/package/package_ti.utils.runtime.sm4g
.PHONY: Log.om4g,copy
Log.om4g,copy : Log.om4g,0,copy Log.om4g,1,copy 
	@

Log.om4g,0,copy : package/lib/lib/gcc/m4/runtime_debug/Log.om4g
Log.om4g,1,copy : package/lib/lib/gcc/m4/runtime_release/Log.om4g
.PHONY: Log.sm4g,copy
Log.sm4g,copy : Log.sm4g,0,copy Log.sm4g,1,copy 
	@

Log.sm4g,0,copy : package/lib/lib/gcc/m4/runtime_debug/Log.sm4g
Log.sm4g,1,copy : package/lib/lib/gcc/m4/runtime_release/Log.sm4g
.PHONY: LoggerText.om4g,copy
LoggerText.om4g,copy : LoggerText.om4g,0,copy LoggerText.om4g,1,copy 
	@

LoggerText.om4g,0,copy : package/lib/lib/gcc/m4/runtime_debug/LoggerText.om4g
LoggerText.om4g,1,copy : package/lib/lib/gcc/m4/runtime_release/LoggerText.om4g
.PHONY: LoggerText.sm4g,copy
LoggerText.sm4g,copy : LoggerText.sm4g,0,copy LoggerText.sm4g,1,copy 
	@

LoggerText.sm4g,0,copy : package/lib/lib/gcc/m4/runtime_debug/LoggerText.sm4g
LoggerText.sm4g,1,copy : package/lib/lib/gcc/m4/runtime_release/LoggerText.sm4g

$(XDCCFGDIR)%.c $(XDCCFGDIR)%.h $(XDCCFGDIR)%.xdl: $(XDCCFGDIR)%.cfg $(XDCROOT)/packages/xdc/cfg/Main.xs | .interfaces
	@$(MSG) "configuring $(_PROG_NAME) from $< ..."
	$(CONFIG) $(_PROG_XSOPTS) xdc.cfg $(_PROG_NAME) $(XDCCFGDIR)$*.cfg $(XDCCFGDIR)$*

.PHONY: release,ti_utils_runtime
ifeq (,$(MK_NOGENDEPS))
-include package/rel/ti_utils_runtime.zip.dep
endif
package/rel/ti_utils_runtime/ti/utils/runtime/package/package.rel.xml: package/package.bld.xml
package/rel/ti_utils_runtime/ti/utils/runtime/package/package.rel.xml: package/build.cfg
package/rel/ti_utils_runtime/ti/utils/runtime/package/package.rel.xml: package/package.xdc.inc
package/rel/ti_utils_runtime/ti/utils/runtime/package/package.rel.xml: Bench.h
package/rel/ti_utils_runtime/ti/utils/runtime/package/package.rel.xml: Bench.rov.js
package/rel/ti_utils_runtime/ti/utils/runtime/package/package.rel.xml: Log.h
package/rel/ti_utils_runtime/ti/utils/runtime/package/package.rel.xml: LoggerBuf.h
package/rel/ti_utils_runtime/ti/utils/runtime/package/package.rel.xml: LoggerText_s.c
package/rel/ti_utils_runtime/ti/utils/runtime/package/package.rel.xml: LoggerText.h
package/rel/ti_utils_runtime/ti/utils/runtime/package/package.rel.xml: LoggerText.rov.js
package/rel/ti_utils_runtime/ti/utils/runtime/package/package.rel.xml: .meta/Bench.Config.c.xdt
package/rel/ti_utils_runtime/ti/utils/runtime/package/package.rel.xml: .meta/Bench.Config.h.xdt
package/rel/ti_utils_runtime/ti/utils/runtime/package/package.rel.xml: .meta/Bench.syscfg.js
package/rel/ti_utils_runtime/ti/utils/runtime/package/package.rel.xml: .meta/Config.c.xdt
package/rel/ti_utils_runtime/ti/utils/runtime/package/package.rel.xml: .meta/Config.h.xdt
package/rel/ti_utils_runtime/ti/utils/runtime/package/package.rel.xml: .meta/GetLibs.syscfg.js
package/rel/ti_utils_runtime/ti/utils/runtime/package/package.rel.xml: .meta/LoggerText.Config.c.xdt
package/rel/ti_utils_runtime/ti/utils/runtime/package/package.rel.xml: .meta/LoggerText.Config.h.xdt
package/rel/ti_utils_runtime/ti/utils/runtime/package/package.rel.xml: .meta/LoggerText.syscfg.js
package/rel/ti_utils_runtime/ti/utils/runtime/package/package.rel.xml: .meta/runtime.component.js
package/rel/ti_utils_runtime/ti/utils/runtime/package/package.rel.xml: package.bld
package/rel/ti_utils_runtime/ti/utils/runtime/package/package.rel.xml: package/package.cfg.xdc.inc
package/rel/ti_utils_runtime/ti/utils/runtime/package/package.rel.xml: lib/ccs/m4/runtime_debug.a
package/rel/ti_utils_runtime/ti/utils/runtime/package/package.rel.xml: package/package_ti.utils.runtime.c
package/rel/ti_utils_runtime/ti/utils/runtime/package/package.rel.xml: Log.c
package/rel/ti_utils_runtime/ti/utils/runtime/package/package.rel.xml: LoggerText.c
package/rel/ti_utils_runtime/ti/utils/runtime/package/package.rel.xml: lib/ccs/m4/runtime_release.a
package/rel/ti_utils_runtime/ti/utils/runtime/package/package.rel.xml: lib/gcc/m4/runtime_debug.a
package/rel/ti_utils_runtime/ti/utils/runtime/package/package.rel.xml: lib/gcc/m4/runtime_release.a
package/rel/ti_utils_runtime/ti/utils/runtime/package/package.rel.xml: .force
	@$(MSG) generating external release references $@ ...
	$(XS) $(JSENV) -f $(XDCROOT)/packages/xdc/bld/rel.js $(MK_RELOPTS) . $@

../../../../exports/ti_utils_runtime.zip: package/rel/ti_utils_runtime.xdc.inc package/rel/ti_utils_runtime/ti/utils/runtime/package/package.rel.xml
	@$(MSG) making release file $@ "(because of $(firstword $?))" ...
	-$(RM) $@
	$(call MKRELZIP,package/rel/ti_utils_runtime.xdc.inc,package/rel/ti_utils_runtime.zip.dep)


release release,ti_utils_runtime: all ../../../../exports/ti_utils_runtime.zip
clean:: .clean
	-$(RM) package/rel/ti_utils_runtime.xdc.inc
	-$(RM) package/rel/ti_utils_runtime.zip.dep

clean:: .clean
	-$(RM) .libraries $(wildcard .libraries,*)
clean:: 
	-$(RM) .dlls $(wildcard .dlls,*)
#
# The following clean rule removes user specified
# generated files or directories.
#
	-$(RMDIR) lib/
	-$(RMDIR) lib/

ifneq (clean,$(MAKECMDGOALS))
ifeq (,$(wildcard lib))
    $(shell $(MKDIR) lib)
endif
ifeq (,$(wildcard lib/ccs))
    $(shell $(MKDIR) lib/ccs)
endif
ifeq (,$(wildcard lib/ccs/m4))
    $(shell $(MKDIR) lib/ccs/m4)
endif
ifeq (,$(wildcard lib/gcc))
    $(shell $(MKDIR) lib/gcc)
endif
ifeq (,$(wildcard lib/gcc/m4))
    $(shell $(MKDIR) lib/gcc/m4)
endif
ifeq (,$(wildcard package))
    $(shell $(MKDIR) package)
endif
ifeq (,$(wildcard package/cfg))
    $(shell $(MKDIR) package/cfg)
endif
ifeq (,$(wildcard package/lib))
    $(shell $(MKDIR) package/lib)
endif
ifeq (,$(wildcard package/rel))
    $(shell $(MKDIR) package/rel)
endif
ifeq (,$(wildcard package/internal))
    $(shell $(MKDIR) package/internal)
endif
ifeq (,$(wildcard ../../../../exports))
    $(shell $(MKDIR) ../../../../exports)
endif
ifeq (,$(wildcard package/lib/lib))
    $(shell $(MKDIR) package/lib/lib)
endif
ifeq (,$(wildcard package/lib/lib/ccs))
    $(shell $(MKDIR) package/lib/lib/ccs)
endif
ifeq (,$(wildcard package/lib/lib/ccs/m4))
    $(shell $(MKDIR) package/lib/lib/ccs/m4)
endif
ifeq (,$(wildcard package/lib/lib/ccs/m4/runtime_debug))
    $(shell $(MKDIR) package/lib/lib/ccs/m4/runtime_debug)
endif
ifeq (,$(wildcard package/lib/lib/ccs/m4/runtime_debug/package))
    $(shell $(MKDIR) package/lib/lib/ccs/m4/runtime_debug/package)
endif
ifeq (,$(wildcard package/lib/lib/ccs/m4/runtime_release))
    $(shell $(MKDIR) package/lib/lib/ccs/m4/runtime_release)
endif
ifeq (,$(wildcard package/lib/lib/ccs/m4/runtime_release/package))
    $(shell $(MKDIR) package/lib/lib/ccs/m4/runtime_release/package)
endif
ifeq (,$(wildcard package/lib/lib/gcc))
    $(shell $(MKDIR) package/lib/lib/gcc)
endif
ifeq (,$(wildcard package/lib/lib/gcc/m4))
    $(shell $(MKDIR) package/lib/lib/gcc/m4)
endif
ifeq (,$(wildcard package/lib/lib/gcc/m4/runtime_debug))
    $(shell $(MKDIR) package/lib/lib/gcc/m4/runtime_debug)
endif
ifeq (,$(wildcard package/lib/lib/gcc/m4/runtime_debug/package))
    $(shell $(MKDIR) package/lib/lib/gcc/m4/runtime_debug/package)
endif
ifeq (,$(wildcard package/lib/lib/gcc/m4/runtime_release))
    $(shell $(MKDIR) package/lib/lib/gcc/m4/runtime_release)
endif
ifeq (,$(wildcard package/lib/lib/gcc/m4/runtime_release/package))
    $(shell $(MKDIR) package/lib/lib/gcc/m4/runtime_release/package)
endif
endif
clean::
	-$(RMDIR) package


