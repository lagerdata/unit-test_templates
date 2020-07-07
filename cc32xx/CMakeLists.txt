include(../cmake/utils.cmake)

add_executable(unity-cc32xx "")
target_sources(unity-cc32xx PRIVATE ${CMAKE_CURRENT_LIST_DIR}/src/main.c
  ${CMAKE_CURRENT_LIST_DIR}/src/test1.c
  ${CMAKE_CURRENT_LIST_DIR}/unity_uart_cc32xx/cc32xx_target_uart.c
  ${CMAKE_CURRENT_LIST_DIR}/../Unity/src/unity.c)

target_include_directories(unity-cc32xx PRIVATE ${CMAKE_CURRENT_LIST_DIR}/src
  ${CMAKE_CURRENT_LIST_DIR}/unity_uart_cc32xx
  ${CMAKE_CURRENT_LIST_DIR}/unity_cfg
  ${CMAKE_CURRENT_LIST_DIR}/../Unity/src)

set(TI_SRC_DIR ${CMAKE_CURRENT_LIST_DIR}/ti_sdk/simplelink_cc32xx_sdk_4_10_00_07)
target_sources(unity-cc32xx PRIVATE ${TI_SRC_DIR}/source/ti/boards/CC3235SF_LAUNCHXL/CC3235SF_LAUNCHXL.c)


target_include_directories(unity-cc32xx PRIVATE ${TI_SRC_DIR}/source/ti/posix/gcc
  ${TI_SRC_DIR}/source/ti/posix/gcc/sys
  ${TI_SRC_DIR}/source
  ${TI_SRC_DIR}/nortos
  ${TI_SRC_DIR}/nortos/posix
  ${TI_SRC_DIR}/nortos/posix/sys
  ${TI_SRC_DIR}/nortos/dpl
  ${TI_SRC_DIR}/source/ti/devices
  ${TI_SRC_DIR}/source/ti/devices/cc32xx
  ${TI_SRC_DIR}/source/ti/devices/cc32xx/inc
  ${TI_SRC_DIR}/source/ti/devices/cc32xx/driverlib
  ${TI_SRC_DIR}/source/ti/drivers
  ${TI_SRC_DIR}/source/ti/drivers/power
  ${TI_SRC_DIR}/source/ti/drivers/dpl
  ${TI_SRC_DIR}/source/ti/util
  ${TI_SRC_DIR}/source/ti/boards/CC3235SF_LAUNCHXL)

target_link_libraries(unity-cc32xx LINK_PUBLIC ${TI_SRC_DIR}/source/ti/drivers/lib/drivers_cc32xx.am4g)
target_link_libraries(unity-cc32xx LINK_PUBLIC ${TI_SRC_DIR}/source/ti/devices/cc32xx/driverlib/gcc/Release/driverlib.a)
target_link_libraries(unity-cc32xx LINK_PUBLIC ${TI_SRC_DIR}/kernel/nortos/lib/nortos_cc32xx.am4g)


target_compile_options(unity-cc32xx PRIVATE -march=armv7e-m -mcpu=cortex-m4 -mthumb -mabi=aapcs -mfloat-abi=soft)
target_compile_options(unity-cc32xx PRIVATE $<$<COMPILE_LANGUAGE:C>:-Wall -Werror -g -gstrict-dwarf -ffunction-sections -fdata-sections -fno-strict-aliasing -fno-builtin -fshort-enums>)
target_compile_options(unity-cc32xx PRIVATE $<$<COMPILE_LANGUAGE:ASM>:-x assembler-with-cpp>)
target_compile_options(unity-cc32xx PUBLIC "-ffile-prefix-map=${CMAKE_SOURCE_DIR}=.")
target_compile_definitions(unity-cc32xx PRIVATE $<$<COMPILE_LANGUAGE:C>:CC32XX gcc DeviceFamily_CC3220 UNITY_INCLUDE_CONFIG_H>)

target_link_directories(unity-cc32xx PRIVATE ${CMAKE_CURRENT_LIST_DIR}/linker)
target_link_options(unity-cc32xx PRIVATE -march=armv7e-m -mcpu=cortex-m4 -mthumb -mabi=aapcs -mfloat-abi=soft -nostartfiles -static -Wl,--gc-sections "-L/usr/lib/arm-none-eabi/lib/thumb/v7e-m/nofp" -lgcc -lc -lm -lnosys --specs=nano.specs -Tunity-cc32xx.ld)


firmware_size(unity-cc32xx)
generate_object(unity-cc32xx .bin binary)

if ("${CMAKE_C_COMPILER_ID}" STREQUAL "GNU")
    generate_object(unity-cc32xx .hex ihex)
endif()
