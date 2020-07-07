#
#  Do not edit this file.  This file is generated from 
#  package.bld.  Any modifications to this file will be 
#  overwritten whenever makefiles are re-generated.
#
#  target compatibility key = ti.targets.arm.elf.M4{1,0,20.2,1
#
ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/ccs/m4/json_release/package/package_ti.utils.json.oem4.dep
package/lib/lib/ccs/m4/json_release/package/package_ti.utils.json.oem4.dep: ;
endif

package/lib/lib/ccs/m4/json_release/package/package_ti.utils.json.oem4: | .interfaces
package/lib/lib/ccs/m4/json_release/package/package_ti.utils.json.oem4: package/package_ti.utils.json.c lib/ccs/m4/json_release.a.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clem4 $< ...
	$(ti.targets.arm.elf.M4.rootDir)/bin/armcl -c  -qq -pdsw225 --endian=little -mv7M4 --float_support=vfplib --abi=eabi -eo.oem4 -ea.sem4  -ms -g --c99  -DALLOW_PARSING__TEMPLATE -DALLOW_PARSING__JSON -D USE__STANDARD_LIBS  -I/app/ti/simplelink_cc32xx_sdk_4_10_00_07/source/ti/posix/ccs -Dxdc_target_name__=M4 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_20_2_1 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.M4.rootDir)/include  -fs=./package/lib/lib/ccs/m4/json_release/package -fr=./package/lib/lib/ccs/m4/json_release/package -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/ccs/m4/json_release/package -s oem4 $< -C   -qq -pdsw225 --endian=little -mv7M4 --float_support=vfplib --abi=eabi -eo.oem4 -ea.sem4  -ms -g --c99  -DALLOW_PARSING__TEMPLATE -DALLOW_PARSING__JSON -D USE__STANDARD_LIBS  -I/app/ti/simplelink_cc32xx_sdk_4_10_00_07/source/ti/posix/ccs -Dxdc_target_name__=M4 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_20_2_1 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.M4.rootDir)/include  -fs=./package/lib/lib/ccs/m4/json_release/package -fr=./package/lib/lib/ccs/m4/json_release/package
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/ccs/m4/json_release/package/package_ti.utils.json.oem4: export C_DIR=
package/lib/lib/ccs/m4/json_release/package/package_ti.utils.json.oem4: PATH:=$(ti.targets.arm.elf.M4.rootDir)/bin/:$(PATH)

package/lib/lib/ccs/m4/json_release/package/package_ti.utils.json.sem4: | .interfaces
package/lib/lib/ccs/m4/json_release/package/package_ti.utils.json.sem4: package/package_ti.utils.json.c lib/ccs/m4/json_release.a.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clem4 -n $< ...
	$(ti.targets.arm.elf.M4.rootDir)/bin/armcl -c -n -s --symdebug:none -qq -pdsw225 --endian=little -mv7M4 --float_support=vfplib --abi=eabi -eo.oem4 -ea.sem4  -ms -g --c99  -DALLOW_PARSING__TEMPLATE -DALLOW_PARSING__JSON -D USE__STANDARD_LIBS  -I/app/ti/simplelink_cc32xx_sdk_4_10_00_07/source/ti/posix/ccs -Dxdc_target_name__=M4 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_20_2_1 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.M4.rootDir)/include  -fs=./package/lib/lib/ccs/m4/json_release/package -fr=./package/lib/lib/ccs/m4/json_release/package -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/ccs/m4/json_release/package -s oem4 $< -C  -n -s --symdebug:none -qq -pdsw225 --endian=little -mv7M4 --float_support=vfplib --abi=eabi -eo.oem4 -ea.sem4  -ms -g --c99  -DALLOW_PARSING__TEMPLATE -DALLOW_PARSING__JSON -D USE__STANDARD_LIBS  -I/app/ti/simplelink_cc32xx_sdk_4_10_00_07/source/ti/posix/ccs -Dxdc_target_name__=M4 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_20_2_1 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.M4.rootDir)/include  -fs=./package/lib/lib/ccs/m4/json_release/package -fr=./package/lib/lib/ccs/m4/json_release/package
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/ccs/m4/json_release/package/package_ti.utils.json.sem4: export C_DIR=
package/lib/lib/ccs/m4/json_release/package/package_ti.utils.json.sem4: PATH:=$(ti.targets.arm.elf.M4.rootDir)/bin/:$(PATH)

ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/ccs/m4/json_release/source/json.oem4.dep
package/lib/lib/ccs/m4/json_release/source/json.oem4.dep: ;
endif

package/lib/lib/ccs/m4/json_release/source/json.oem4: | .interfaces
package/lib/lib/ccs/m4/json_release/source/json.oem4: source/json.c lib/ccs/m4/json_release.a.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clem4 $< ...
	$(ti.targets.arm.elf.M4.rootDir)/bin/armcl -c  -qq -pdsw225 --endian=little -mv7M4 --float_support=vfplib --abi=eabi -eo.oem4 -ea.sem4  -ms -g --c99  -DALLOW_PARSING__TEMPLATE -DALLOW_PARSING__JSON -D USE__STANDARD_LIBS  -I/app/ti/simplelink_cc32xx_sdk_4_10_00_07/source/ti/posix/ccs -Dxdc_target_name__=M4 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_20_2_1 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.M4.rootDir)/include  -fs=./package/lib/lib/ccs/m4/json_release/source -fr=./package/lib/lib/ccs/m4/json_release/source -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/ccs/m4/json_release/source -s oem4 $< -C   -qq -pdsw225 --endian=little -mv7M4 --float_support=vfplib --abi=eabi -eo.oem4 -ea.sem4  -ms -g --c99  -DALLOW_PARSING__TEMPLATE -DALLOW_PARSING__JSON -D USE__STANDARD_LIBS  -I/app/ti/simplelink_cc32xx_sdk_4_10_00_07/source/ti/posix/ccs -Dxdc_target_name__=M4 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_20_2_1 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.M4.rootDir)/include  -fs=./package/lib/lib/ccs/m4/json_release/source -fr=./package/lib/lib/ccs/m4/json_release/source
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/ccs/m4/json_release/source/json.oem4: export C_DIR=
package/lib/lib/ccs/m4/json_release/source/json.oem4: PATH:=$(ti.targets.arm.elf.M4.rootDir)/bin/:$(PATH)

package/lib/lib/ccs/m4/json_release/source/json.sem4: | .interfaces
package/lib/lib/ccs/m4/json_release/source/json.sem4: source/json.c lib/ccs/m4/json_release.a.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clem4 -n $< ...
	$(ti.targets.arm.elf.M4.rootDir)/bin/armcl -c -n -s --symdebug:none -qq -pdsw225 --endian=little -mv7M4 --float_support=vfplib --abi=eabi -eo.oem4 -ea.sem4  -ms -g --c99  -DALLOW_PARSING__TEMPLATE -DALLOW_PARSING__JSON -D USE__STANDARD_LIBS  -I/app/ti/simplelink_cc32xx_sdk_4_10_00_07/source/ti/posix/ccs -Dxdc_target_name__=M4 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_20_2_1 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.M4.rootDir)/include  -fs=./package/lib/lib/ccs/m4/json_release/source -fr=./package/lib/lib/ccs/m4/json_release/source -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/ccs/m4/json_release/source -s oem4 $< -C  -n -s --symdebug:none -qq -pdsw225 --endian=little -mv7M4 --float_support=vfplib --abi=eabi -eo.oem4 -ea.sem4  -ms -g --c99  -DALLOW_PARSING__TEMPLATE -DALLOW_PARSING__JSON -D USE__STANDARD_LIBS  -I/app/ti/simplelink_cc32xx_sdk_4_10_00_07/source/ti/posix/ccs -Dxdc_target_name__=M4 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_20_2_1 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.M4.rootDir)/include  -fs=./package/lib/lib/ccs/m4/json_release/source -fr=./package/lib/lib/ccs/m4/json_release/source
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/ccs/m4/json_release/source/json.sem4: export C_DIR=
package/lib/lib/ccs/m4/json_release/source/json.sem4: PATH:=$(ti.targets.arm.elf.M4.rootDir)/bin/:$(PATH)

ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/ccs/m4/json_release/source/json_engine.oem4.dep
package/lib/lib/ccs/m4/json_release/source/json_engine.oem4.dep: ;
endif

package/lib/lib/ccs/m4/json_release/source/json_engine.oem4: | .interfaces
package/lib/lib/ccs/m4/json_release/source/json_engine.oem4: source/json_engine.c lib/ccs/m4/json_release.a.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clem4 $< ...
	$(ti.targets.arm.elf.M4.rootDir)/bin/armcl -c  -qq -pdsw225 --endian=little -mv7M4 --float_support=vfplib --abi=eabi -eo.oem4 -ea.sem4  -ms -g --c99  -DALLOW_PARSING__TEMPLATE -DALLOW_PARSING__JSON -D USE__STANDARD_LIBS  -I/app/ti/simplelink_cc32xx_sdk_4_10_00_07/source/ti/posix/ccs -Dxdc_target_name__=M4 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_20_2_1 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.M4.rootDir)/include  -fs=./package/lib/lib/ccs/m4/json_release/source -fr=./package/lib/lib/ccs/m4/json_release/source -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/ccs/m4/json_release/source -s oem4 $< -C   -qq -pdsw225 --endian=little -mv7M4 --float_support=vfplib --abi=eabi -eo.oem4 -ea.sem4  -ms -g --c99  -DALLOW_PARSING__TEMPLATE -DALLOW_PARSING__JSON -D USE__STANDARD_LIBS  -I/app/ti/simplelink_cc32xx_sdk_4_10_00_07/source/ti/posix/ccs -Dxdc_target_name__=M4 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_20_2_1 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.M4.rootDir)/include  -fs=./package/lib/lib/ccs/m4/json_release/source -fr=./package/lib/lib/ccs/m4/json_release/source
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/ccs/m4/json_release/source/json_engine.oem4: export C_DIR=
package/lib/lib/ccs/m4/json_release/source/json_engine.oem4: PATH:=$(ti.targets.arm.elf.M4.rootDir)/bin/:$(PATH)

package/lib/lib/ccs/m4/json_release/source/json_engine.sem4: | .interfaces
package/lib/lib/ccs/m4/json_release/source/json_engine.sem4: source/json_engine.c lib/ccs/m4/json_release.a.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clem4 -n $< ...
	$(ti.targets.arm.elf.M4.rootDir)/bin/armcl -c -n -s --symdebug:none -qq -pdsw225 --endian=little -mv7M4 --float_support=vfplib --abi=eabi -eo.oem4 -ea.sem4  -ms -g --c99  -DALLOW_PARSING__TEMPLATE -DALLOW_PARSING__JSON -D USE__STANDARD_LIBS  -I/app/ti/simplelink_cc32xx_sdk_4_10_00_07/source/ti/posix/ccs -Dxdc_target_name__=M4 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_20_2_1 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.M4.rootDir)/include  -fs=./package/lib/lib/ccs/m4/json_release/source -fr=./package/lib/lib/ccs/m4/json_release/source -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/ccs/m4/json_release/source -s oem4 $< -C  -n -s --symdebug:none -qq -pdsw225 --endian=little -mv7M4 --float_support=vfplib --abi=eabi -eo.oem4 -ea.sem4  -ms -g --c99  -DALLOW_PARSING__TEMPLATE -DALLOW_PARSING__JSON -D USE__STANDARD_LIBS  -I/app/ti/simplelink_cc32xx_sdk_4_10_00_07/source/ti/posix/ccs -Dxdc_target_name__=M4 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_20_2_1 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.M4.rootDir)/include  -fs=./package/lib/lib/ccs/m4/json_release/source -fr=./package/lib/lib/ccs/m4/json_release/source
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/ccs/m4/json_release/source/json_engine.sem4: export C_DIR=
package/lib/lib/ccs/m4/json_release/source/json_engine.sem4: PATH:=$(ti.targets.arm.elf.M4.rootDir)/bin/:$(PATH)

ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/ccs/m4/json_release/source/parse_common.oem4.dep
package/lib/lib/ccs/m4/json_release/source/parse_common.oem4.dep: ;
endif

package/lib/lib/ccs/m4/json_release/source/parse_common.oem4: | .interfaces
package/lib/lib/ccs/m4/json_release/source/parse_common.oem4: source/parse_common.c lib/ccs/m4/json_release.a.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clem4 $< ...
	$(ti.targets.arm.elf.M4.rootDir)/bin/armcl -c  -qq -pdsw225 --endian=little -mv7M4 --float_support=vfplib --abi=eabi -eo.oem4 -ea.sem4  -ms -g --c99  -DALLOW_PARSING__TEMPLATE -DALLOW_PARSING__JSON -D USE__STANDARD_LIBS  -I/app/ti/simplelink_cc32xx_sdk_4_10_00_07/source/ti/posix/ccs -Dxdc_target_name__=M4 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_20_2_1 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.M4.rootDir)/include  -fs=./package/lib/lib/ccs/m4/json_release/source -fr=./package/lib/lib/ccs/m4/json_release/source -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/ccs/m4/json_release/source -s oem4 $< -C   -qq -pdsw225 --endian=little -mv7M4 --float_support=vfplib --abi=eabi -eo.oem4 -ea.sem4  -ms -g --c99  -DALLOW_PARSING__TEMPLATE -DALLOW_PARSING__JSON -D USE__STANDARD_LIBS  -I/app/ti/simplelink_cc32xx_sdk_4_10_00_07/source/ti/posix/ccs -Dxdc_target_name__=M4 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_20_2_1 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.M4.rootDir)/include  -fs=./package/lib/lib/ccs/m4/json_release/source -fr=./package/lib/lib/ccs/m4/json_release/source
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/ccs/m4/json_release/source/parse_common.oem4: export C_DIR=
package/lib/lib/ccs/m4/json_release/source/parse_common.oem4: PATH:=$(ti.targets.arm.elf.M4.rootDir)/bin/:$(PATH)

package/lib/lib/ccs/m4/json_release/source/parse_common.sem4: | .interfaces
package/lib/lib/ccs/m4/json_release/source/parse_common.sem4: source/parse_common.c lib/ccs/m4/json_release.a.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clem4 -n $< ...
	$(ti.targets.arm.elf.M4.rootDir)/bin/armcl -c -n -s --symdebug:none -qq -pdsw225 --endian=little -mv7M4 --float_support=vfplib --abi=eabi -eo.oem4 -ea.sem4  -ms -g --c99  -DALLOW_PARSING__TEMPLATE -DALLOW_PARSING__JSON -D USE__STANDARD_LIBS  -I/app/ti/simplelink_cc32xx_sdk_4_10_00_07/source/ti/posix/ccs -Dxdc_target_name__=M4 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_20_2_1 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.M4.rootDir)/include  -fs=./package/lib/lib/ccs/m4/json_release/source -fr=./package/lib/lib/ccs/m4/json_release/source -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/ccs/m4/json_release/source -s oem4 $< -C  -n -s --symdebug:none -qq -pdsw225 --endian=little -mv7M4 --float_support=vfplib --abi=eabi -eo.oem4 -ea.sem4  -ms -g --c99  -DALLOW_PARSING__TEMPLATE -DALLOW_PARSING__JSON -D USE__STANDARD_LIBS  -I/app/ti/simplelink_cc32xx_sdk_4_10_00_07/source/ti/posix/ccs -Dxdc_target_name__=M4 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_20_2_1 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.M4.rootDir)/include  -fs=./package/lib/lib/ccs/m4/json_release/source -fr=./package/lib/lib/ccs/m4/json_release/source
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/ccs/m4/json_release/source/parse_common.sem4: export C_DIR=
package/lib/lib/ccs/m4/json_release/source/parse_common.sem4: PATH:=$(ti.targets.arm.elf.M4.rootDir)/bin/:$(PATH)

ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/ccs/m4/json_release/source/utils.oem4.dep
package/lib/lib/ccs/m4/json_release/source/utils.oem4.dep: ;
endif

package/lib/lib/ccs/m4/json_release/source/utils.oem4: | .interfaces
package/lib/lib/ccs/m4/json_release/source/utils.oem4: source/utils.c lib/ccs/m4/json_release.a.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clem4 $< ...
	$(ti.targets.arm.elf.M4.rootDir)/bin/armcl -c  -qq -pdsw225 --endian=little -mv7M4 --float_support=vfplib --abi=eabi -eo.oem4 -ea.sem4  -ms -g --c99  -DALLOW_PARSING__TEMPLATE -DALLOW_PARSING__JSON -D USE__STANDARD_LIBS  -I/app/ti/simplelink_cc32xx_sdk_4_10_00_07/source/ti/posix/ccs -Dxdc_target_name__=M4 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_20_2_1 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.M4.rootDir)/include  -fs=./package/lib/lib/ccs/m4/json_release/source -fr=./package/lib/lib/ccs/m4/json_release/source -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/ccs/m4/json_release/source -s oem4 $< -C   -qq -pdsw225 --endian=little -mv7M4 --float_support=vfplib --abi=eabi -eo.oem4 -ea.sem4  -ms -g --c99  -DALLOW_PARSING__TEMPLATE -DALLOW_PARSING__JSON -D USE__STANDARD_LIBS  -I/app/ti/simplelink_cc32xx_sdk_4_10_00_07/source/ti/posix/ccs -Dxdc_target_name__=M4 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_20_2_1 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.M4.rootDir)/include  -fs=./package/lib/lib/ccs/m4/json_release/source -fr=./package/lib/lib/ccs/m4/json_release/source
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/ccs/m4/json_release/source/utils.oem4: export C_DIR=
package/lib/lib/ccs/m4/json_release/source/utils.oem4: PATH:=$(ti.targets.arm.elf.M4.rootDir)/bin/:$(PATH)

package/lib/lib/ccs/m4/json_release/source/utils.sem4: | .interfaces
package/lib/lib/ccs/m4/json_release/source/utils.sem4: source/utils.c lib/ccs/m4/json_release.a.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clem4 -n $< ...
	$(ti.targets.arm.elf.M4.rootDir)/bin/armcl -c -n -s --symdebug:none -qq -pdsw225 --endian=little -mv7M4 --float_support=vfplib --abi=eabi -eo.oem4 -ea.sem4  -ms -g --c99  -DALLOW_PARSING__TEMPLATE -DALLOW_PARSING__JSON -D USE__STANDARD_LIBS  -I/app/ti/simplelink_cc32xx_sdk_4_10_00_07/source/ti/posix/ccs -Dxdc_target_name__=M4 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_20_2_1 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.M4.rootDir)/include  -fs=./package/lib/lib/ccs/m4/json_release/source -fr=./package/lib/lib/ccs/m4/json_release/source -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/ccs/m4/json_release/source -s oem4 $< -C  -n -s --symdebug:none -qq -pdsw225 --endian=little -mv7M4 --float_support=vfplib --abi=eabi -eo.oem4 -ea.sem4  -ms -g --c99  -DALLOW_PARSING__TEMPLATE -DALLOW_PARSING__JSON -D USE__STANDARD_LIBS  -I/app/ti/simplelink_cc32xx_sdk_4_10_00_07/source/ti/posix/ccs -Dxdc_target_name__=M4 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_20_2_1 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.M4.rootDir)/include  -fs=./package/lib/lib/ccs/m4/json_release/source -fr=./package/lib/lib/ccs/m4/json_release/source
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/ccs/m4/json_release/source/utils.sem4: export C_DIR=
package/lib/lib/ccs/m4/json_release/source/utils.sem4: PATH:=$(ti.targets.arm.elf.M4.rootDir)/bin/:$(PATH)

clean,em4 ::
	-$(RM) package/lib/lib/ccs/m4/json_release/package/package_ti.utils.json.oem4
	-$(RM) package/lib/lib/ccs/m4/json_release/source/json.oem4
	-$(RM) package/lib/lib/ccs/m4/json_release/source/json_engine.oem4
	-$(RM) package/lib/lib/ccs/m4/json_release/source/parse_common.oem4
	-$(RM) package/lib/lib/ccs/m4/json_release/source/utils.oem4
	-$(RM) package/lib/lib/ccs/m4/json_release/package/package_ti.utils.json.sem4
	-$(RM) package/lib/lib/ccs/m4/json_release/source/json.sem4
	-$(RM) package/lib/lib/ccs/m4/json_release/source/json_engine.sem4
	-$(RM) package/lib/lib/ccs/m4/json_release/source/parse_common.sem4
	-$(RM) package/lib/lib/ccs/m4/json_release/source/utils.sem4

lib/ccs/m4/json_release.a: package/lib/lib/ccs/m4/json_release/package/package_ti.utils.json.oem4 package/lib/lib/ccs/m4/json_release/source/json.oem4 package/lib/lib/ccs/m4/json_release/source/json_engine.oem4 package/lib/lib/ccs/m4/json_release/source/parse_common.oem4 package/lib/lib/ccs/m4/json_release/source/utils.oem4 lib/ccs/m4/json_release.a.mak

clean::
	-$(RM) lib/ccs/m4/json_release.a.mak
