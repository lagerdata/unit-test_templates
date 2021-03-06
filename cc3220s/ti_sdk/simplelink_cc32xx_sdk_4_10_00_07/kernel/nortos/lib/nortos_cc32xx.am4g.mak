#
#  Do not edit this file.  This file is generated from 
#  package.bld.  Any modifications to this file will be 
#  overwritten whenever makefiles are re-generated.
#
#  target compatibility key = gnu.targets.arm.M4{1,0,9.2,1
#
ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/nortos_cc32xx/package/package_nortos.om4g.dep
package/lib/lib/nortos_cc32xx/package/package_nortos.om4g.dep: ;
endif

package/lib/lib/nortos_cc32xx/package/package_nortos.om4g: | .interfaces
package/lib/lib/nortos_cc32xx/package/package_nortos.om4g: package/package_nortos.c lib/nortos_cc32xx.am4g.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clm4g $< ...
	$(gnu.targets.arm.M4.rootDir)/bin/arm-none-eabi-gcc -c -MD -MF $@.dep -x c  -Wunused -Wunknown-pragmas -ffunction-sections -fdata-sections  -mcpu=cortex-m4 -mthumb -mfloat-abi=soft -mabi=aapcs -g -Dfar= -D__DYNAMIC_REENT__  -g  -Dxdc_target_name__=M4 -Dxdc_target_types__=gnu/targets/arm/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_9_2_1  -O2   -DUSE_CC3220_ROM_DRV_API -DDeviceFamily_CC3220 -fno-isolate-erroneous-paths-dereference  -Dxdc_runtime_Log_DISABLE_ALL -Dxdc_runtime_Assert_DISABLE_ALL  $(XDCINCS) -I/app/unity_application/sdk/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm//libs/install-native/arm-none-eabi/include/newlib-nano -I/app/unity_application/sdk/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm//libs/install-native/arm-none-eabi/include -o $@ $<
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/nortos_cc32xx/package/package_nortos.om4g: export LD_LIBRARY_PATH=

package/lib/lib/nortos_cc32xx/package/package_nortos.sm4g: | .interfaces
package/lib/lib/nortos_cc32xx/package/package_nortos.sm4g: package/package_nortos.c lib/nortos_cc32xx.am4g.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clm4g -S $< ...
	$(gnu.targets.arm.M4.rootDir)/bin/arm-none-eabi-gcc -c -MD -MF $@.dep -x c -S -Wunused -Wunknown-pragmas -ffunction-sections -fdata-sections  -mcpu=cortex-m4 -mthumb -mfloat-abi=soft -mabi=aapcs -g -Dfar= -D__DYNAMIC_REENT__  -g  -Dxdc_target_name__=M4 -Dxdc_target_types__=gnu/targets/arm/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_9_2_1  -O2   -DUSE_CC3220_ROM_DRV_API -DDeviceFamily_CC3220 -fno-isolate-erroneous-paths-dereference  -Dxdc_runtime_Log_DISABLE_ALL -Dxdc_runtime_Assert_DISABLE_ALL  $(XDCINCS) -I/app/unity_application/sdk/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm//libs/install-native/arm-none-eabi/include/newlib-nano -I/app/unity_application/sdk/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm//libs/install-native/arm-none-eabi/include -o $@ $<
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/nortos_cc32xx/package/package_nortos.sm4g: export LD_LIBRARY_PATH=

ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/nortos_cc32xx/dpl/posix_sleep.om4g.dep
package/lib/lib/nortos_cc32xx/dpl/posix_sleep.om4g.dep: ;
endif

package/lib/lib/nortos_cc32xx/dpl/posix_sleep.om4g: | .interfaces
package/lib/lib/nortos_cc32xx/dpl/posix_sleep.om4g: dpl/posix_sleep.c lib/nortos_cc32xx.am4g.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clm4g $< ...
	$(gnu.targets.arm.M4.rootDir)/bin/arm-none-eabi-gcc -c -MD -MF $@.dep -x c  -Wunused -Wunknown-pragmas -ffunction-sections -fdata-sections  -mcpu=cortex-m4 -mthumb -mfloat-abi=soft -mabi=aapcs -g -Dfar= -D__DYNAMIC_REENT__  -g  -Dxdc_target_name__=M4 -Dxdc_target_types__=gnu/targets/arm/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_9_2_1  -O2   -DUSE_CC3220_ROM_DRV_API -DDeviceFamily_CC3220 -fno-isolate-erroneous-paths-dereference  -Dxdc_runtime_Log_DISABLE_ALL -Dxdc_runtime_Assert_DISABLE_ALL  $(XDCINCS) -I/app/unity_application/sdk/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm//libs/install-native/arm-none-eabi/include/newlib-nano -I/app/unity_application/sdk/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm//libs/install-native/arm-none-eabi/include -o $@ $<
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/nortos_cc32xx/dpl/posix_sleep.om4g: export LD_LIBRARY_PATH=

package/lib/lib/nortos_cc32xx/dpl/posix_sleep.sm4g: | .interfaces
package/lib/lib/nortos_cc32xx/dpl/posix_sleep.sm4g: dpl/posix_sleep.c lib/nortos_cc32xx.am4g.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clm4g -S $< ...
	$(gnu.targets.arm.M4.rootDir)/bin/arm-none-eabi-gcc -c -MD -MF $@.dep -x c -S -Wunused -Wunknown-pragmas -ffunction-sections -fdata-sections  -mcpu=cortex-m4 -mthumb -mfloat-abi=soft -mabi=aapcs -g -Dfar= -D__DYNAMIC_REENT__  -g  -Dxdc_target_name__=M4 -Dxdc_target_types__=gnu/targets/arm/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_9_2_1  -O2   -DUSE_CC3220_ROM_DRV_API -DDeviceFamily_CC3220 -fno-isolate-erroneous-paths-dereference  -Dxdc_runtime_Log_DISABLE_ALL -Dxdc_runtime_Assert_DISABLE_ALL  $(XDCINCS) -I/app/unity_application/sdk/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm//libs/install-native/arm-none-eabi/include/newlib-nano -I/app/unity_application/sdk/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm//libs/install-native/arm-none-eabi/include -o $@ $<
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/nortos_cc32xx/dpl/posix_sleep.sm4g: export LD_LIBRARY_PATH=

ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/nortos_cc32xx/dpl/DebugP_nortos.om4g.dep
package/lib/lib/nortos_cc32xx/dpl/DebugP_nortos.om4g.dep: ;
endif

package/lib/lib/nortos_cc32xx/dpl/DebugP_nortos.om4g: | .interfaces
package/lib/lib/nortos_cc32xx/dpl/DebugP_nortos.om4g: dpl/DebugP_nortos.c lib/nortos_cc32xx.am4g.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clm4g $< ...
	$(gnu.targets.arm.M4.rootDir)/bin/arm-none-eabi-gcc -c -MD -MF $@.dep -x c  -Wunused -Wunknown-pragmas -ffunction-sections -fdata-sections  -mcpu=cortex-m4 -mthumb -mfloat-abi=soft -mabi=aapcs -g -Dfar= -D__DYNAMIC_REENT__  -g  -Dxdc_target_name__=M4 -Dxdc_target_types__=gnu/targets/arm/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_9_2_1  -O2   -DUSE_CC3220_ROM_DRV_API -DDeviceFamily_CC3220 -fno-isolate-erroneous-paths-dereference  -Dxdc_runtime_Log_DISABLE_ALL -Dxdc_runtime_Assert_DISABLE_ALL  $(XDCINCS) -I/app/unity_application/sdk/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm//libs/install-native/arm-none-eabi/include/newlib-nano -I/app/unity_application/sdk/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm//libs/install-native/arm-none-eabi/include -o $@ $<
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/nortos_cc32xx/dpl/DebugP_nortos.om4g: export LD_LIBRARY_PATH=

package/lib/lib/nortos_cc32xx/dpl/DebugP_nortos.sm4g: | .interfaces
package/lib/lib/nortos_cc32xx/dpl/DebugP_nortos.sm4g: dpl/DebugP_nortos.c lib/nortos_cc32xx.am4g.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clm4g -S $< ...
	$(gnu.targets.arm.M4.rootDir)/bin/arm-none-eabi-gcc -c -MD -MF $@.dep -x c -S -Wunused -Wunknown-pragmas -ffunction-sections -fdata-sections  -mcpu=cortex-m4 -mthumb -mfloat-abi=soft -mabi=aapcs -g -Dfar= -D__DYNAMIC_REENT__  -g  -Dxdc_target_name__=M4 -Dxdc_target_types__=gnu/targets/arm/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_9_2_1  -O2   -DUSE_CC3220_ROM_DRV_API -DDeviceFamily_CC3220 -fno-isolate-erroneous-paths-dereference  -Dxdc_runtime_Log_DISABLE_ALL -Dxdc_runtime_Assert_DISABLE_ALL  $(XDCINCS) -I/app/unity_application/sdk/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm//libs/install-native/arm-none-eabi/include/newlib-nano -I/app/unity_application/sdk/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm//libs/install-native/arm-none-eabi/include -o $@ $<
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/nortos_cc32xx/dpl/DebugP_nortos.sm4g: export LD_LIBRARY_PATH=

ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/nortos_cc32xx/dpl/MutexP_nortos.om4g.dep
package/lib/lib/nortos_cc32xx/dpl/MutexP_nortos.om4g.dep: ;
endif

package/lib/lib/nortos_cc32xx/dpl/MutexP_nortos.om4g: | .interfaces
package/lib/lib/nortos_cc32xx/dpl/MutexP_nortos.om4g: dpl/MutexP_nortos.c lib/nortos_cc32xx.am4g.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clm4g $< ...
	$(gnu.targets.arm.M4.rootDir)/bin/arm-none-eabi-gcc -c -MD -MF $@.dep -x c  -Wunused -Wunknown-pragmas -ffunction-sections -fdata-sections  -mcpu=cortex-m4 -mthumb -mfloat-abi=soft -mabi=aapcs -g -Dfar= -D__DYNAMIC_REENT__  -g  -Dxdc_target_name__=M4 -Dxdc_target_types__=gnu/targets/arm/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_9_2_1  -O2   -DUSE_CC3220_ROM_DRV_API -DDeviceFamily_CC3220 -fno-isolate-erroneous-paths-dereference  -Dxdc_runtime_Log_DISABLE_ALL -Dxdc_runtime_Assert_DISABLE_ALL  $(XDCINCS) -I/app/unity_application/sdk/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm//libs/install-native/arm-none-eabi/include/newlib-nano -I/app/unity_application/sdk/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm//libs/install-native/arm-none-eabi/include -o $@ $<
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/nortos_cc32xx/dpl/MutexP_nortos.om4g: export LD_LIBRARY_PATH=

package/lib/lib/nortos_cc32xx/dpl/MutexP_nortos.sm4g: | .interfaces
package/lib/lib/nortos_cc32xx/dpl/MutexP_nortos.sm4g: dpl/MutexP_nortos.c lib/nortos_cc32xx.am4g.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clm4g -S $< ...
	$(gnu.targets.arm.M4.rootDir)/bin/arm-none-eabi-gcc -c -MD -MF $@.dep -x c -S -Wunused -Wunknown-pragmas -ffunction-sections -fdata-sections  -mcpu=cortex-m4 -mthumb -mfloat-abi=soft -mabi=aapcs -g -Dfar= -D__DYNAMIC_REENT__  -g  -Dxdc_target_name__=M4 -Dxdc_target_types__=gnu/targets/arm/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_9_2_1  -O2   -DUSE_CC3220_ROM_DRV_API -DDeviceFamily_CC3220 -fno-isolate-erroneous-paths-dereference  -Dxdc_runtime_Log_DISABLE_ALL -Dxdc_runtime_Assert_DISABLE_ALL  $(XDCINCS) -I/app/unity_application/sdk/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm//libs/install-native/arm-none-eabi/include/newlib-nano -I/app/unity_application/sdk/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm//libs/install-native/arm-none-eabi/include -o $@ $<
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/nortos_cc32xx/dpl/MutexP_nortos.sm4g: export LD_LIBRARY_PATH=

ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/nortos_cc32xx/./NoRTOS.om4g.dep
package/lib/lib/nortos_cc32xx/./NoRTOS.om4g.dep: ;
endif

package/lib/lib/nortos_cc32xx/./NoRTOS.om4g: | .interfaces
package/lib/lib/nortos_cc32xx/./NoRTOS.om4g: ./NoRTOS.c lib/nortos_cc32xx.am4g.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clm4g $< ...
	$(gnu.targets.arm.M4.rootDir)/bin/arm-none-eabi-gcc -c -MD -MF $@.dep -x c  -Wunused -Wunknown-pragmas -ffunction-sections -fdata-sections  -mcpu=cortex-m4 -mthumb -mfloat-abi=soft -mabi=aapcs -g -Dfar= -D__DYNAMIC_REENT__  -g  -Dxdc_target_name__=M4 -Dxdc_target_types__=gnu/targets/arm/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_9_2_1  -O2   -DUSE_CC3220_ROM_DRV_API -DDeviceFamily_CC3220 -fno-isolate-erroneous-paths-dereference  -Dxdc_runtime_Log_DISABLE_ALL -Dxdc_runtime_Assert_DISABLE_ALL  $(XDCINCS) -I/app/unity_application/sdk/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm//libs/install-native/arm-none-eabi/include/newlib-nano -I/app/unity_application/sdk/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm//libs/install-native/arm-none-eabi/include -o $@ $<
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/nortos_cc32xx/./NoRTOS.om4g: export LD_LIBRARY_PATH=

package/lib/lib/nortos_cc32xx/./NoRTOS.sm4g: | .interfaces
package/lib/lib/nortos_cc32xx/./NoRTOS.sm4g: ./NoRTOS.c lib/nortos_cc32xx.am4g.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clm4g -S $< ...
	$(gnu.targets.arm.M4.rootDir)/bin/arm-none-eabi-gcc -c -MD -MF $@.dep -x c -S -Wunused -Wunknown-pragmas -ffunction-sections -fdata-sections  -mcpu=cortex-m4 -mthumb -mfloat-abi=soft -mabi=aapcs -g -Dfar= -D__DYNAMIC_REENT__  -g  -Dxdc_target_name__=M4 -Dxdc_target_types__=gnu/targets/arm/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_9_2_1  -O2   -DUSE_CC3220_ROM_DRV_API -DDeviceFamily_CC3220 -fno-isolate-erroneous-paths-dereference  -Dxdc_runtime_Log_DISABLE_ALL -Dxdc_runtime_Assert_DISABLE_ALL  $(XDCINCS) -I/app/unity_application/sdk/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm//libs/install-native/arm-none-eabi/include/newlib-nano -I/app/unity_application/sdk/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm//libs/install-native/arm-none-eabi/include -o $@ $<
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/nortos_cc32xx/./NoRTOS.sm4g: export LD_LIBRARY_PATH=

ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/nortos_cc32xx/dpl/QueueP_nortos.om4g.dep
package/lib/lib/nortos_cc32xx/dpl/QueueP_nortos.om4g.dep: ;
endif

package/lib/lib/nortos_cc32xx/dpl/QueueP_nortos.om4g: | .interfaces
package/lib/lib/nortos_cc32xx/dpl/QueueP_nortos.om4g: dpl/QueueP_nortos.c lib/nortos_cc32xx.am4g.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clm4g $< ...
	$(gnu.targets.arm.M4.rootDir)/bin/arm-none-eabi-gcc -c -MD -MF $@.dep -x c  -Wunused -Wunknown-pragmas -ffunction-sections -fdata-sections  -mcpu=cortex-m4 -mthumb -mfloat-abi=soft -mabi=aapcs -g -Dfar= -D__DYNAMIC_REENT__  -g  -Dxdc_target_name__=M4 -Dxdc_target_types__=gnu/targets/arm/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_9_2_1  -O2   -DUSE_CC3220_ROM_DRV_API -DDeviceFamily_CC3220 -fno-isolate-erroneous-paths-dereference  -Dxdc_runtime_Log_DISABLE_ALL -Dxdc_runtime_Assert_DISABLE_ALL  $(XDCINCS) -I/app/unity_application/sdk/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm//libs/install-native/arm-none-eabi/include/newlib-nano -I/app/unity_application/sdk/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm//libs/install-native/arm-none-eabi/include -o $@ $<
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/nortos_cc32xx/dpl/QueueP_nortos.om4g: export LD_LIBRARY_PATH=

package/lib/lib/nortos_cc32xx/dpl/QueueP_nortos.sm4g: | .interfaces
package/lib/lib/nortos_cc32xx/dpl/QueueP_nortos.sm4g: dpl/QueueP_nortos.c lib/nortos_cc32xx.am4g.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clm4g -S $< ...
	$(gnu.targets.arm.M4.rootDir)/bin/arm-none-eabi-gcc -c -MD -MF $@.dep -x c -S -Wunused -Wunknown-pragmas -ffunction-sections -fdata-sections  -mcpu=cortex-m4 -mthumb -mfloat-abi=soft -mabi=aapcs -g -Dfar= -D__DYNAMIC_REENT__  -g  -Dxdc_target_name__=M4 -Dxdc_target_types__=gnu/targets/arm/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_9_2_1  -O2   -DUSE_CC3220_ROM_DRV_API -DDeviceFamily_CC3220 -fno-isolate-erroneous-paths-dereference  -Dxdc_runtime_Log_DISABLE_ALL -Dxdc_runtime_Assert_DISABLE_ALL  $(XDCINCS) -I/app/unity_application/sdk/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm//libs/install-native/arm-none-eabi/include/newlib-nano -I/app/unity_application/sdk/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm//libs/install-native/arm-none-eabi/include -o $@ $<
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/nortos_cc32xx/dpl/QueueP_nortos.sm4g: export LD_LIBRARY_PATH=

ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/nortos_cc32xx/dpl/SemaphoreP_nortos.om4g.dep
package/lib/lib/nortos_cc32xx/dpl/SemaphoreP_nortos.om4g.dep: ;
endif

package/lib/lib/nortos_cc32xx/dpl/SemaphoreP_nortos.om4g: | .interfaces
package/lib/lib/nortos_cc32xx/dpl/SemaphoreP_nortos.om4g: dpl/SemaphoreP_nortos.c lib/nortos_cc32xx.am4g.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clm4g $< ...
	$(gnu.targets.arm.M4.rootDir)/bin/arm-none-eabi-gcc -c -MD -MF $@.dep -x c  -Wunused -Wunknown-pragmas -ffunction-sections -fdata-sections  -mcpu=cortex-m4 -mthumb -mfloat-abi=soft -mabi=aapcs -g -Dfar= -D__DYNAMIC_REENT__  -g  -Dxdc_target_name__=M4 -Dxdc_target_types__=gnu/targets/arm/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_9_2_1  -O2   -DUSE_CC3220_ROM_DRV_API -DDeviceFamily_CC3220 -fno-isolate-erroneous-paths-dereference  -Dxdc_runtime_Log_DISABLE_ALL -Dxdc_runtime_Assert_DISABLE_ALL  $(XDCINCS) -I/app/unity_application/sdk/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm//libs/install-native/arm-none-eabi/include/newlib-nano -I/app/unity_application/sdk/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm//libs/install-native/arm-none-eabi/include -o $@ $<
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/nortos_cc32xx/dpl/SemaphoreP_nortos.om4g: export LD_LIBRARY_PATH=

package/lib/lib/nortos_cc32xx/dpl/SemaphoreP_nortos.sm4g: | .interfaces
package/lib/lib/nortos_cc32xx/dpl/SemaphoreP_nortos.sm4g: dpl/SemaphoreP_nortos.c lib/nortos_cc32xx.am4g.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clm4g -S $< ...
	$(gnu.targets.arm.M4.rootDir)/bin/arm-none-eabi-gcc -c -MD -MF $@.dep -x c -S -Wunused -Wunknown-pragmas -ffunction-sections -fdata-sections  -mcpu=cortex-m4 -mthumb -mfloat-abi=soft -mabi=aapcs -g -Dfar= -D__DYNAMIC_REENT__  -g  -Dxdc_target_name__=M4 -Dxdc_target_types__=gnu/targets/arm/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_9_2_1  -O2   -DUSE_CC3220_ROM_DRV_API -DDeviceFamily_CC3220 -fno-isolate-erroneous-paths-dereference  -Dxdc_runtime_Log_DISABLE_ALL -Dxdc_runtime_Assert_DISABLE_ALL  $(XDCINCS) -I/app/unity_application/sdk/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm//libs/install-native/arm-none-eabi/include/newlib-nano -I/app/unity_application/sdk/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm//libs/install-native/arm-none-eabi/include -o $@ $<
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/nortos_cc32xx/dpl/SemaphoreP_nortos.sm4g: export LD_LIBRARY_PATH=

ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/nortos_cc32xx/dpl/SwiP_nortos.om4g.dep
package/lib/lib/nortos_cc32xx/dpl/SwiP_nortos.om4g.dep: ;
endif

package/lib/lib/nortos_cc32xx/dpl/SwiP_nortos.om4g: | .interfaces
package/lib/lib/nortos_cc32xx/dpl/SwiP_nortos.om4g: dpl/SwiP_nortos.c lib/nortos_cc32xx.am4g.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clm4g $< ...
	$(gnu.targets.arm.M4.rootDir)/bin/arm-none-eabi-gcc -c -MD -MF $@.dep -x c  -Wunused -Wunknown-pragmas -ffunction-sections -fdata-sections  -mcpu=cortex-m4 -mthumb -mfloat-abi=soft -mabi=aapcs -g -Dfar= -D__DYNAMIC_REENT__  -g  -Dxdc_target_name__=M4 -Dxdc_target_types__=gnu/targets/arm/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_9_2_1  -O2   -DUSE_CC3220_ROM_DRV_API -DDeviceFamily_CC3220 -fno-isolate-erroneous-paths-dereference  -Dxdc_runtime_Log_DISABLE_ALL -Dxdc_runtime_Assert_DISABLE_ALL  $(XDCINCS) -I/app/unity_application/sdk/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm//libs/install-native/arm-none-eabi/include/newlib-nano -I/app/unity_application/sdk/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm//libs/install-native/arm-none-eabi/include -o $@ $<
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/nortos_cc32xx/dpl/SwiP_nortos.om4g: export LD_LIBRARY_PATH=

package/lib/lib/nortos_cc32xx/dpl/SwiP_nortos.sm4g: | .interfaces
package/lib/lib/nortos_cc32xx/dpl/SwiP_nortos.sm4g: dpl/SwiP_nortos.c lib/nortos_cc32xx.am4g.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clm4g -S $< ...
	$(gnu.targets.arm.M4.rootDir)/bin/arm-none-eabi-gcc -c -MD -MF $@.dep -x c -S -Wunused -Wunknown-pragmas -ffunction-sections -fdata-sections  -mcpu=cortex-m4 -mthumb -mfloat-abi=soft -mabi=aapcs -g -Dfar= -D__DYNAMIC_REENT__  -g  -Dxdc_target_name__=M4 -Dxdc_target_types__=gnu/targets/arm/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_9_2_1  -O2   -DUSE_CC3220_ROM_DRV_API -DDeviceFamily_CC3220 -fno-isolate-erroneous-paths-dereference  -Dxdc_runtime_Log_DISABLE_ALL -Dxdc_runtime_Assert_DISABLE_ALL  $(XDCINCS) -I/app/unity_application/sdk/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm//libs/install-native/arm-none-eabi/include/newlib-nano -I/app/unity_application/sdk/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm//libs/install-native/arm-none-eabi/include -o $@ $<
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/nortos_cc32xx/dpl/SwiP_nortos.sm4g: export LD_LIBRARY_PATH=

ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/nortos_cc32xx/dpl/SystemP_nortos.om4g.dep
package/lib/lib/nortos_cc32xx/dpl/SystemP_nortos.om4g.dep: ;
endif

package/lib/lib/nortos_cc32xx/dpl/SystemP_nortos.om4g: | .interfaces
package/lib/lib/nortos_cc32xx/dpl/SystemP_nortos.om4g: dpl/SystemP_nortos.c lib/nortos_cc32xx.am4g.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clm4g $< ...
	$(gnu.targets.arm.M4.rootDir)/bin/arm-none-eabi-gcc -c -MD -MF $@.dep -x c  -Wunused -Wunknown-pragmas -ffunction-sections -fdata-sections  -mcpu=cortex-m4 -mthumb -mfloat-abi=soft -mabi=aapcs -g -Dfar= -D__DYNAMIC_REENT__  -g  -Dxdc_target_name__=M4 -Dxdc_target_types__=gnu/targets/arm/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_9_2_1  -O2   -DUSE_CC3220_ROM_DRV_API -DDeviceFamily_CC3220 -fno-isolate-erroneous-paths-dereference  -Dxdc_runtime_Log_DISABLE_ALL -Dxdc_runtime_Assert_DISABLE_ALL  $(XDCINCS) -I/app/unity_application/sdk/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm//libs/install-native/arm-none-eabi/include/newlib-nano -I/app/unity_application/sdk/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm//libs/install-native/arm-none-eabi/include -o $@ $<
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/nortos_cc32xx/dpl/SystemP_nortos.om4g: export LD_LIBRARY_PATH=

package/lib/lib/nortos_cc32xx/dpl/SystemP_nortos.sm4g: | .interfaces
package/lib/lib/nortos_cc32xx/dpl/SystemP_nortos.sm4g: dpl/SystemP_nortos.c lib/nortos_cc32xx.am4g.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clm4g -S $< ...
	$(gnu.targets.arm.M4.rootDir)/bin/arm-none-eabi-gcc -c -MD -MF $@.dep -x c -S -Wunused -Wunknown-pragmas -ffunction-sections -fdata-sections  -mcpu=cortex-m4 -mthumb -mfloat-abi=soft -mabi=aapcs -g -Dfar= -D__DYNAMIC_REENT__  -g  -Dxdc_target_name__=M4 -Dxdc_target_types__=gnu/targets/arm/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_9_2_1  -O2   -DUSE_CC3220_ROM_DRV_API -DDeviceFamily_CC3220 -fno-isolate-erroneous-paths-dereference  -Dxdc_runtime_Log_DISABLE_ALL -Dxdc_runtime_Assert_DISABLE_ALL  $(XDCINCS) -I/app/unity_application/sdk/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm//libs/install-native/arm-none-eabi/include/newlib-nano -I/app/unity_application/sdk/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm//libs/install-native/arm-none-eabi/include -o $@ $<
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/nortos_cc32xx/dpl/SystemP_nortos.sm4g: export LD_LIBRARY_PATH=

ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/nortos_cc32xx/dpl/ClockPSysTick_nortos.om4g.dep
package/lib/lib/nortos_cc32xx/dpl/ClockPSysTick_nortos.om4g.dep: ;
endif

package/lib/lib/nortos_cc32xx/dpl/ClockPSysTick_nortos.om4g: | .interfaces
package/lib/lib/nortos_cc32xx/dpl/ClockPSysTick_nortos.om4g: dpl/ClockPSysTick_nortos.c lib/nortos_cc32xx.am4g.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clm4g $< ...
	$(gnu.targets.arm.M4.rootDir)/bin/arm-none-eabi-gcc -c -MD -MF $@.dep -x c  -Wunused -Wunknown-pragmas -ffunction-sections -fdata-sections  -mcpu=cortex-m4 -mthumb -mfloat-abi=soft -mabi=aapcs -g -Dfar= -D__DYNAMIC_REENT__  -g  -Dxdc_target_name__=M4 -Dxdc_target_types__=gnu/targets/arm/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_9_2_1  -O2   -DUSE_CC3220_ROM_DRV_API -DDeviceFamily_CC3220 -fno-isolate-erroneous-paths-dereference  -Dxdc_runtime_Log_DISABLE_ALL -Dxdc_runtime_Assert_DISABLE_ALL  $(XDCINCS) -I/app/unity_application/sdk/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm//libs/install-native/arm-none-eabi/include/newlib-nano -I/app/unity_application/sdk/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm//libs/install-native/arm-none-eabi/include -o $@ $<
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/nortos_cc32xx/dpl/ClockPSysTick_nortos.om4g: export LD_LIBRARY_PATH=

package/lib/lib/nortos_cc32xx/dpl/ClockPSysTick_nortos.sm4g: | .interfaces
package/lib/lib/nortos_cc32xx/dpl/ClockPSysTick_nortos.sm4g: dpl/ClockPSysTick_nortos.c lib/nortos_cc32xx.am4g.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clm4g -S $< ...
	$(gnu.targets.arm.M4.rootDir)/bin/arm-none-eabi-gcc -c -MD -MF $@.dep -x c -S -Wunused -Wunknown-pragmas -ffunction-sections -fdata-sections  -mcpu=cortex-m4 -mthumb -mfloat-abi=soft -mabi=aapcs -g -Dfar= -D__DYNAMIC_REENT__  -g  -Dxdc_target_name__=M4 -Dxdc_target_types__=gnu/targets/arm/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_9_2_1  -O2   -DUSE_CC3220_ROM_DRV_API -DDeviceFamily_CC3220 -fno-isolate-erroneous-paths-dereference  -Dxdc_runtime_Log_DISABLE_ALL -Dxdc_runtime_Assert_DISABLE_ALL  $(XDCINCS) -I/app/unity_application/sdk/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm//libs/install-native/arm-none-eabi/include/newlib-nano -I/app/unity_application/sdk/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm//libs/install-native/arm-none-eabi/include -o $@ $<
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/nortos_cc32xx/dpl/ClockPSysTick_nortos.sm4g: export LD_LIBRARY_PATH=

ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/nortos_cc32xx/dpl/HwiPCC32XX_nortos.om4g.dep
package/lib/lib/nortos_cc32xx/dpl/HwiPCC32XX_nortos.om4g.dep: ;
endif

package/lib/lib/nortos_cc32xx/dpl/HwiPCC32XX_nortos.om4g: | .interfaces
package/lib/lib/nortos_cc32xx/dpl/HwiPCC32XX_nortos.om4g: dpl/HwiPCC32XX_nortos.c lib/nortos_cc32xx.am4g.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clm4g $< ...
	$(gnu.targets.arm.M4.rootDir)/bin/arm-none-eabi-gcc -c -MD -MF $@.dep -x c  -Wunused -Wunknown-pragmas -ffunction-sections -fdata-sections  -mcpu=cortex-m4 -mthumb -mfloat-abi=soft -mabi=aapcs -g -Dfar= -D__DYNAMIC_REENT__  -g  -Dxdc_target_name__=M4 -Dxdc_target_types__=gnu/targets/arm/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_9_2_1  -O2   -DUSE_CC3220_ROM_DRV_API -DDeviceFamily_CC3220 -fno-isolate-erroneous-paths-dereference  -Dxdc_runtime_Log_DISABLE_ALL -Dxdc_runtime_Assert_DISABLE_ALL  $(XDCINCS) -I/app/unity_application/sdk/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm//libs/install-native/arm-none-eabi/include/newlib-nano -I/app/unity_application/sdk/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm//libs/install-native/arm-none-eabi/include -o $@ $<
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/nortos_cc32xx/dpl/HwiPCC32XX_nortos.om4g: export LD_LIBRARY_PATH=

package/lib/lib/nortos_cc32xx/dpl/HwiPCC32XX_nortos.sm4g: | .interfaces
package/lib/lib/nortos_cc32xx/dpl/HwiPCC32XX_nortos.sm4g: dpl/HwiPCC32XX_nortos.c lib/nortos_cc32xx.am4g.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clm4g -S $< ...
	$(gnu.targets.arm.M4.rootDir)/bin/arm-none-eabi-gcc -c -MD -MF $@.dep -x c -S -Wunused -Wunknown-pragmas -ffunction-sections -fdata-sections  -mcpu=cortex-m4 -mthumb -mfloat-abi=soft -mabi=aapcs -g -Dfar= -D__DYNAMIC_REENT__  -g  -Dxdc_target_name__=M4 -Dxdc_target_types__=gnu/targets/arm/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_9_2_1  -O2   -DUSE_CC3220_ROM_DRV_API -DDeviceFamily_CC3220 -fno-isolate-erroneous-paths-dereference  -Dxdc_runtime_Log_DISABLE_ALL -Dxdc_runtime_Assert_DISABLE_ALL  $(XDCINCS) -I/app/unity_application/sdk/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm//libs/install-native/arm-none-eabi/include/newlib-nano -I/app/unity_application/sdk/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm//libs/install-native/arm-none-eabi/include -o $@ $<
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/nortos_cc32xx/dpl/HwiPCC32XX_nortos.sm4g: export LD_LIBRARY_PATH=

ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/nortos_cc32xx/dpl/PowerCC32XX_nortos.om4g.dep
package/lib/lib/nortos_cc32xx/dpl/PowerCC32XX_nortos.om4g.dep: ;
endif

package/lib/lib/nortos_cc32xx/dpl/PowerCC32XX_nortos.om4g: | .interfaces
package/lib/lib/nortos_cc32xx/dpl/PowerCC32XX_nortos.om4g: dpl/PowerCC32XX_nortos.c lib/nortos_cc32xx.am4g.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clm4g $< ...
	$(gnu.targets.arm.M4.rootDir)/bin/arm-none-eabi-gcc -c -MD -MF $@.dep -x c  -Wunused -Wunknown-pragmas -ffunction-sections -fdata-sections  -mcpu=cortex-m4 -mthumb -mfloat-abi=soft -mabi=aapcs -g -Dfar= -D__DYNAMIC_REENT__  -g  -Dxdc_target_name__=M4 -Dxdc_target_types__=gnu/targets/arm/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_9_2_1  -O2   -DUSE_CC3220_ROM_DRV_API -DDeviceFamily_CC3220 -fno-isolate-erroneous-paths-dereference  -Dxdc_runtime_Log_DISABLE_ALL -Dxdc_runtime_Assert_DISABLE_ALL  $(XDCINCS) -I/app/unity_application/sdk/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm//libs/install-native/arm-none-eabi/include/newlib-nano -I/app/unity_application/sdk/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm//libs/install-native/arm-none-eabi/include -o $@ $<
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/nortos_cc32xx/dpl/PowerCC32XX_nortos.om4g: export LD_LIBRARY_PATH=

package/lib/lib/nortos_cc32xx/dpl/PowerCC32XX_nortos.sm4g: | .interfaces
package/lib/lib/nortos_cc32xx/dpl/PowerCC32XX_nortos.sm4g: dpl/PowerCC32XX_nortos.c lib/nortos_cc32xx.am4g.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clm4g -S $< ...
	$(gnu.targets.arm.M4.rootDir)/bin/arm-none-eabi-gcc -c -MD -MF $@.dep -x c -S -Wunused -Wunknown-pragmas -ffunction-sections -fdata-sections  -mcpu=cortex-m4 -mthumb -mfloat-abi=soft -mabi=aapcs -g -Dfar= -D__DYNAMIC_REENT__  -g  -Dxdc_target_name__=M4 -Dxdc_target_types__=gnu/targets/arm/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_9_2_1  -O2   -DUSE_CC3220_ROM_DRV_API -DDeviceFamily_CC3220 -fno-isolate-erroneous-paths-dereference  -Dxdc_runtime_Log_DISABLE_ALL -Dxdc_runtime_Assert_DISABLE_ALL  $(XDCINCS) -I/app/unity_application/sdk/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm//libs/install-native/arm-none-eabi/include/newlib-nano -I/app/unity_application/sdk/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm//libs/install-native/arm-none-eabi/include -o $@ $<
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/nortos_cc32xx/dpl/PowerCC32XX_nortos.sm4g: export LD_LIBRARY_PATH=

ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/nortos_cc32xx/startup/startup_cc32xx_gcc.om4g.dep
package/lib/lib/nortos_cc32xx/startup/startup_cc32xx_gcc.om4g.dep: ;
endif

package/lib/lib/nortos_cc32xx/startup/startup_cc32xx_gcc.om4g: | .interfaces
package/lib/lib/nortos_cc32xx/startup/startup_cc32xx_gcc.om4g: startup/startup_cc32xx_gcc.c lib/nortos_cc32xx.am4g.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clm4g $< ...
	$(gnu.targets.arm.M4.rootDir)/bin/arm-none-eabi-gcc -c -MD -MF $@.dep -x c  -Wunused -Wunknown-pragmas -ffunction-sections -fdata-sections  -mcpu=cortex-m4 -mthumb -mfloat-abi=soft -mabi=aapcs -g -Dfar= -D__DYNAMIC_REENT__  -g  -Dxdc_target_name__=M4 -Dxdc_target_types__=gnu/targets/arm/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_9_2_1  -O2   -DUSE_CC3220_ROM_DRV_API -DDeviceFamily_CC3220 -fno-isolate-erroneous-paths-dereference  -Dxdc_runtime_Log_DISABLE_ALL -Dxdc_runtime_Assert_DISABLE_ALL  $(XDCINCS) -I/app/unity_application/sdk/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm//libs/install-native/arm-none-eabi/include/newlib-nano -I/app/unity_application/sdk/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm//libs/install-native/arm-none-eabi/include -o $@ $<
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/nortos_cc32xx/startup/startup_cc32xx_gcc.om4g: export LD_LIBRARY_PATH=

package/lib/lib/nortos_cc32xx/startup/startup_cc32xx_gcc.sm4g: | .interfaces
package/lib/lib/nortos_cc32xx/startup/startup_cc32xx_gcc.sm4g: startup/startup_cc32xx_gcc.c lib/nortos_cc32xx.am4g.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clm4g -S $< ...
	$(gnu.targets.arm.M4.rootDir)/bin/arm-none-eabi-gcc -c -MD -MF $@.dep -x c -S -Wunused -Wunknown-pragmas -ffunction-sections -fdata-sections  -mcpu=cortex-m4 -mthumb -mfloat-abi=soft -mabi=aapcs -g -Dfar= -D__DYNAMIC_REENT__  -g  -Dxdc_target_name__=M4 -Dxdc_target_types__=gnu/targets/arm/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_9_2_1  -O2   -DUSE_CC3220_ROM_DRV_API -DDeviceFamily_CC3220 -fno-isolate-erroneous-paths-dereference  -Dxdc_runtime_Log_DISABLE_ALL -Dxdc_runtime_Assert_DISABLE_ALL  $(XDCINCS) -I/app/unity_application/sdk/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm//libs/install-native/arm-none-eabi/include/newlib-nano -I/app/unity_application/sdk/simplelink_cc32xx_sdk_4_10_00_07/kernel/tirtos/packages/gnu/targets/arm//libs/install-native/arm-none-eabi/include -o $@ $<
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/nortos_cc32xx/startup/startup_cc32xx_gcc.sm4g: export LD_LIBRARY_PATH=

clean,m4g ::
	-$(RM) package/lib/lib/nortos_cc32xx/package/package_nortos.om4g
	-$(RM) package/lib/lib/nortos_cc32xx/dpl/posix_sleep.om4g
	-$(RM) package/lib/lib/nortos_cc32xx/dpl/DebugP_nortos.om4g
	-$(RM) package/lib/lib/nortos_cc32xx/dpl/MutexP_nortos.om4g
	-$(RM) package/lib/lib/nortos_cc32xx/./NoRTOS.om4g
	-$(RM) package/lib/lib/nortos_cc32xx/dpl/QueueP_nortos.om4g
	-$(RM) package/lib/lib/nortos_cc32xx/dpl/SemaphoreP_nortos.om4g
	-$(RM) package/lib/lib/nortos_cc32xx/dpl/SwiP_nortos.om4g
	-$(RM) package/lib/lib/nortos_cc32xx/dpl/SystemP_nortos.om4g
	-$(RM) package/lib/lib/nortos_cc32xx/dpl/ClockPSysTick_nortos.om4g
	-$(RM) package/lib/lib/nortos_cc32xx/dpl/HwiPCC32XX_nortos.om4g
	-$(RM) package/lib/lib/nortos_cc32xx/dpl/PowerCC32XX_nortos.om4g
	-$(RM) package/lib/lib/nortos_cc32xx/startup/startup_cc32xx_gcc.om4g
	-$(RM) package/lib/lib/nortos_cc32xx/package/package_nortos.sm4g
	-$(RM) package/lib/lib/nortos_cc32xx/dpl/posix_sleep.sm4g
	-$(RM) package/lib/lib/nortos_cc32xx/dpl/DebugP_nortos.sm4g
	-$(RM) package/lib/lib/nortos_cc32xx/dpl/MutexP_nortos.sm4g
	-$(RM) package/lib/lib/nortos_cc32xx/./NoRTOS.sm4g
	-$(RM) package/lib/lib/nortos_cc32xx/dpl/QueueP_nortos.sm4g
	-$(RM) package/lib/lib/nortos_cc32xx/dpl/SemaphoreP_nortos.sm4g
	-$(RM) package/lib/lib/nortos_cc32xx/dpl/SwiP_nortos.sm4g
	-$(RM) package/lib/lib/nortos_cc32xx/dpl/SystemP_nortos.sm4g
	-$(RM) package/lib/lib/nortos_cc32xx/dpl/ClockPSysTick_nortos.sm4g
	-$(RM) package/lib/lib/nortos_cc32xx/dpl/HwiPCC32XX_nortos.sm4g
	-$(RM) package/lib/lib/nortos_cc32xx/dpl/PowerCC32XX_nortos.sm4g
	-$(RM) package/lib/lib/nortos_cc32xx/startup/startup_cc32xx_gcc.sm4g

lib/nortos_cc32xx.am4g: package/lib/lib/nortos_cc32xx/package/package_nortos.om4g package/lib/lib/nortos_cc32xx/dpl/posix_sleep.om4g package/lib/lib/nortos_cc32xx/dpl/DebugP_nortos.om4g package/lib/lib/nortos_cc32xx/dpl/MutexP_nortos.om4g package/lib/lib/nortos_cc32xx/./NoRTOS.om4g package/lib/lib/nortos_cc32xx/dpl/QueueP_nortos.om4g package/lib/lib/nortos_cc32xx/dpl/SemaphoreP_nortos.om4g package/lib/lib/nortos_cc32xx/dpl/SwiP_nortos.om4g package/lib/lib/nortos_cc32xx/dpl/SystemP_nortos.om4g package/lib/lib/nortos_cc32xx/dpl/ClockPSysTick_nortos.om4g package/lib/lib/nortos_cc32xx/dpl/HwiPCC32XX_nortos.om4g package/lib/lib/nortos_cc32xx/dpl/PowerCC32XX_nortos.om4g package/lib/lib/nortos_cc32xx/startup/startup_cc32xx_gcc.om4g lib/nortos_cc32xx.am4g.mak

clean::
	-$(RM) lib/nortos_cc32xx.am4g.mak
