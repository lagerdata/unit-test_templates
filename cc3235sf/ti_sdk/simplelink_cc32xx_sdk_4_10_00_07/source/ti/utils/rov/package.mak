#
#  Do not edit this file.  This file is generated from 
#  package.bld.  Any modifications to this file will be 
#  overwritten whenever makefiles are re-generated.
#

unexport MAKEFILE_LIST
MK_NOGENDEPS := $(filter clean,$(MAKECMDGOALS))
override PKGDIR = ti/utils/rov
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

all,em4 clean,em4 .libraries,em4 .dlls,em4 .executables,em4 test,em4:;
all,m4g clean,m4g .libraries,m4g .dlls,m4g .executables,m4g test,m4g:;

all: .executables 
.executables: .libraries .dlls
.libraries: .interfaces

PKGCFGS := $(wildcard package.xs) package/build.cfg
.interfaces: package/package.xdc.inc package/package.defs.h package.xdc $(PKGCFGS)

-include package/package.xdc.dep
package/%.xdc.inc package/%_ti.utils.rov.c package/%.defs.h: %.xdc $(PKGCFGS)
	@$(MSG) generating interfaces for package ti.utils.rov" (because $@ is older than $(firstword $?))" ...
	$(XSRUN) -f xdc/services/intern/cmd/build.xs $(MK_IDLOPTS) -m package/package.xdc.dep -i package/package.xdc.inc package.xdc

ifeq (,$(MK_NOGENDEPS))
-include package/package.cfg.dep
endif

package/package.cfg.xdc.inc: .interfaces $(XDCROOT)/packages/xdc/cfg/cfginc.js package.xdc
	@$(MSG) generating schema include file list ...
	$(CONFIG) -f $(XDCROOT)/packages/xdc/cfg/cfginc.js ti.utils.rov $@

test:;
%,copy:
	@$(if $<,,$(MSG) don\'t know how to build $*; exit 1)
	@$(MSG) cp $< $@
	$(RM) $@
	$(CP) $< $@

$(XDCCFGDIR)%.c $(XDCCFGDIR)%.h $(XDCCFGDIR)%.xdl: $(XDCCFGDIR)%.cfg $(XDCROOT)/packages/xdc/cfg/Main.xs | .interfaces
	@$(MSG) "configuring $(_PROG_NAME) from $< ..."
	$(CONFIG) $(_PROG_XSOPTS) xdc.cfg $(_PROG_NAME) $(XDCCFGDIR)$*.cfg $(XDCCFGDIR)$*

.PHONY: release,ti_utils_rov
ifeq (,$(MK_NOGENDEPS))
-include package/rel/ti_utils_rov.zip.dep
endif
package/rel/ti_utils_rov/ti/utils/rov/package/package.rel.xml: package/package.bld.xml
package/rel/ti_utils_rov/ti/utils/rov/package/package.rel.xml: package/build.cfg
package/rel/ti_utils_rov/ti/utils/rov/package/package.rel.xml: package/package.xdc.inc
package/rel/ti_utils_rov/ti/utils/rov/package/package.rel.xml: .meta/rov.component.js
package/rel/ti_utils_rov/ti/utils/rov/package/package.rel.xml: .meta/syscfg_c.rov.xs.xdt
package/rel/ti_utils_rov/ti/utils/rov/package/package.rel.xml: package.bld
package/rel/ti_utils_rov/ti/utils/rov/package/package.rel.xml: package/package.cfg.xdc.inc
package/rel/ti_utils_rov/ti/utils/rov/package/package.rel.xml: .force
	@$(MSG) generating external release references $@ ...
	$(XS) $(JSENV) -f $(XDCROOT)/packages/xdc/bld/rel.js $(MK_RELOPTS) . $@

../../../../exports/ti_utils_rov.zip: package/rel/ti_utils_rov.xdc.inc package/rel/ti_utils_rov/ti/utils/rov/package/package.rel.xml
	@$(MSG) making release file $@ "(because of $(firstword $?))" ...
	-$(RM) $@
	$(call MKRELZIP,package/rel/ti_utils_rov.xdc.inc,package/rel/ti_utils_rov.zip.dep)


release release,ti_utils_rov: all ../../../../exports/ti_utils_rov.zip
clean:: .clean
	-$(RM) package/rel/ti_utils_rov.xdc.inc
	-$(RM) package/rel/ti_utils_rov.zip.dep

clean:: .clean
	-$(RM) .libraries $(wildcard .libraries,*)
clean:: 
	-$(RM) .dlls $(wildcard .dlls,*)
#
# The following clean rule removes user specified
# generated files or directories.
#
	-$(RMDIR) lib/

ifneq (clean,$(MAKECMDGOALS))
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
endif
clean::
	-$(RMDIR) package


