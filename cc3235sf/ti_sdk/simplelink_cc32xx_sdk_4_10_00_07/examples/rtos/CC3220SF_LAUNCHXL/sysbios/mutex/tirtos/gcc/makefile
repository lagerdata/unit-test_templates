SIMPLELINK_CC32XX_SDK_INSTALL_DIR ?= $(abspath ../../../../../../..)

include $(SIMPLELINK_CC32XX_SDK_INSTALL_DIR)/imports.mak

XDCPATH = $(SIMPLELINK_CC32XX_SDK_INSTALL_DIR)/source;$(SIMPLELINK_CC32XX_SDK_INSTALL_DIR)/kernel/tirtos/packages;
XDCTARGET = gnu.targets.arm.M4
PLATFORM = ti.platforms.simplelink:CC3220SF
.PRECIOUS: $(CONFIGPKG)/compiler.opt $(CONFIGPKG)/linker.cmd

CC = "$(GCC_ARMCOMPILER)/bin/arm-none-eabi-gcc"
LNK = "$(GCC_ARMCOMPILER)/bin/arm-none-eabi-gcc"
HEX = "$(GCC_ARMCOMPILER)/bin/arm-none-eabi-objcopy"

OBJECTS = mutex.obj ti_drivers_config.obj

CONFIGPKG = mutex

NAME = mutex

CFLAGS = -I../.. \
    -I. \
    "-I$(SIMPLELINK_CC32XX_SDK_INSTALL_DIR)/source" \
    "-I$(SIMPLELINK_CC32XX_SDK_INSTALL_DIR)/source/ti/posix/gcc" \
    -mcpu=cortex-m4 \
    -march=armv7e-m \
    -mthumb \
    -std=c99 \
    -mfloat-abi=soft \
    -ffunction-sections \
    -fdata-sections \
    -g \
    -gstrict-dwarf \
    -Wall \
    "-I$(SIMPLELINK_CC32XX_SDK_INSTALL_DIR)/kernel/tirtos/packages/gnu/targets/arm/libs/install-native/arm-none-eabi/include/newlib-nano" \
    "-I$(SIMPLELINK_CC32XX_SDK_INSTALL_DIR)/kernel/tirtos/packages/gnu/targets/arm/libs/install-native/arm-none-eabi/include" \
    "-I$(GCC_ARMCOMPILER)/arm-none-eabi/include"

LFLAGS = -Wl,-T,../../tirtos/gcc/CC3220SF_LAUNCHXL_TIRTOS.lds \
    "-Wl,-Map,$(NAME).map" \
    "-L$(SIMPLELINK_CC32XX_SDK_INSTALL_DIR)/source" \
    -l:ti/display/lib/display.am4g \
    -l:ti/grlib/lib/gcc/m4/grlib.a \
    -l:third_party/spiffs/lib/gcc/m4/spiffs.a \
    -l:ti/drivers/lib/drivers_cc32xx.am4g \
    -l:third_party/fatfs/lib/gcc/m4/fatfs.a \
    "-L$(SIMPLELINK_CC32XX_SDK_INSTALL_DIR)/kernel/tirtos/packages" \
    -l:ti/dpl/lib/dpl_cc32xx.am4g \
    "-Wl,-T,$(NAME)/linker.cmd" \
    -l:ti/devices/cc32xx/driverlib/gcc/Release/driverlib.a \
    -march=armv7e-m \
    -mthumb \
    -nostartfiles \
    -static \
    -Wl,--gc-sections \
    "-L$(SIMPLELINK_CC32XX_SDK_INSTALL_DIR)/kernel/tirtos/packages/gnu/targets/arm/libs/install-native/arm-none-eabi/lib/thumb/v7e-m/nofp" \
    -lgcc \
    -lc \
    -lm \
    -lnosys \
    --specs=nano.specs

all: $(NAME).bin

cflags.opt: makefile $(SIMPLELINK_CC32XX_SDK_INSTALL_DIR)/imports.mak
	@ echo --compileOptions $(CFLAGS) > $@

$(CONFIGPKG)/compiler.opt: $(CONFIGPKG)/linker.cmd

$(CONFIGPKG)/linker.cmd: ../../tirtos/mutex.cfg cflags.opt
	@ echo Running Configuro...
	@ $(XDC_INSTALL_DIR)/xs --xdcpath="$(XDCPATH)" xdc.tools.configuro -c "$(GCC_ARMCOMPILER)" -t $(XDCTARGET) -p $(PLATFORM) -@cflags.opt -o "$(CONFIGPKG)" ../../tirtos/mutex.cfg

.INTERMEDIATE: syscfg
ti_drivers_config.c ti_drivers_config.h: syscfg
	@ echo generation complete

syscfg: ../../mutex.syscfg
	@ echo Generating configuration files...
	@ $(SYSCONFIG_TOOL) --compiler gcc --product $(SIMPLELINK_CC32XX_SDK_INSTALL_DIR)/.metadata/product.json --output $(@D) $<

mutex.obj: ../../mutex.c ti_drivers_config.h $(CONFIGPKG)/compiler.opt
	@ echo Building $@
	@ $(CC) $(CFLAGS) $< -c @$(CONFIGPKG)/compiler.opt -o $@

ti_drivers_config.obj: ti_drivers_config.c ti_drivers_config.h $(CONFIGPKG)/compiler.opt
	@ echo Building $@
	@ $(CC) $(CFLAGS) $< -c @$(CONFIGPKG)/compiler.opt -o $@

$(NAME).out: $(OBJECTS) $(CONFIGPKG)/linker.cmd
	@ echo linking $@
	@ $(LNK)  $(OBJECTS)  $(LFLAGS) -o $(NAME).out

$(NAME).bin: $(NAME).out
	@ echo building $@
	@ $(HEX) -O binary $? $@

clean:
	@ echo Cleaning...
	@ $(RM) $(OBJECTS) > $(DEVNULL) 2>&1
	@ $(RM) $(NAME).out > $(DEVNULL) 2>&1
	@ $(RM) $(NAME).map > $(DEVNULL) 2>&1
	@ $(RMDIR) $(NAME) > $(DEVNULL) 2>&1
	@ $(RM) cflags.opt > $(DEVNULL) 2>&1
	@ $(RM) $(NAME).bin > $(DEVNULL) 2>&1
	@ $(RM) ti_drivers_config.c ti_drivers_config.h > $(DEVNULL) 2>&1
