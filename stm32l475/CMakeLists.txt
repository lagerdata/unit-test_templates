include(../cmake/utils.cmake)

add_executable(unity-stm32l475 "")
target_sources(unity-stm32l475 PRIVATE ${CMAKE_CURRENT_LIST_DIR}/src/main.c
  ${CMAKE_CURRENT_LIST_DIR}/src/test1.c
  ${CMAKE_CURRENT_LIST_DIR}/unity_uart_stm32l4x/stm32l4x_target_uart.c
  ${CMAKE_CURRENT_LIST_DIR}/../Unity/src/unity.c)

target_include_directories(unity-stm32l475 PRIVATE ${CMAKE_CURRENT_LIST_DIR}/src
  ${CMAKE_CURRENT_LIST_DIR}/unity_uart_stm32l4x
  ${CMAKE_CURRENT_LIST_DIR}/unity_cfg
  ${CMAKE_CURRENT_LIST_DIR}/../Unity/src)

set(STM32_SRC_DIR ${CMAKE_CURRENT_LIST_DIR}/stm32_sdk)
target_sources(unity-stm32l475 PRIVATE ${STM32_SRC_DIR}/Core/Startup/startup_stm32l475vgtx.s
  ${STM32_SRC_DIR}/Core/Src/system_stm32l4xx.c
  ${STM32_SRC_DIR}/Core/Src/stm32l4xx_it.c
  ${STM32_SRC_DIR}/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal.c
  ${STM32_SRC_DIR}/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_cortex.c
  ${STM32_SRC_DIR}/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_dma.c
  ${STM32_SRC_DIR}/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_dma_ex.c
  ${STM32_SRC_DIR}/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_gpio.c
  ${STM32_SRC_DIR}/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_pwr.c
  ${STM32_SRC_DIR}/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_pwr_ex.c
  ${STM32_SRC_DIR}/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_rcc.c
  ${STM32_SRC_DIR}/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_rcc_ex.c
  ${STM32_SRC_DIR}/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_uart.c)


target_include_directories(unity-stm32l475 PRIVATE ${STM32_SRC_DIR}/Drivers/CMSIS/Device/ST/STM32L4xx/Include
  ${STM32_SRC_DIR}/Drivers/CMSIS/Include
  ${STM32_SRC_DIR}/Drivers/STM32L4xx_HAL_Driver/Inc
  ${STM32_SRC_DIR}/Drivers/STM32L4xx_HAL_Driver/Legacy
  ${STM32_SRC_DIR}/Core/Inc)



target_compile_options(unity-stm32l475 PRIVATE -mcpu=cortex-m4 -mthumb -g3 -mabi=aapcs -mfloat-abi=hard -mfpu=fpv4-sp-d16)
target_compile_options(unity-stm32l475 PRIVATE $<$<COMPILE_LANGUAGE:C>:-Wall -Werror -std=gnu11 --specs=nano.specs -fstack-usage -ffunction-sections -fdata-sections -fno-strict-aliasing -fno-builtin -fshort-enums>)
target_compile_options(unity-stm32l475 PRIVATE $<$<COMPILE_LANGUAGE:ASM>:-x assembler-with-cpp>)
target_compile_options(unity-stm32l475 PUBLIC "-ffile-prefix-map=${CMAKE_SOURCE_DIR}=.")
target_compile_definitions(unity-stm32l475 PRIVATE $<$<COMPILE_LANGUAGE:C>:STM32L475xx DEBUG USE_HAL_DRIVER UNITY_INCLUDE_CONFIG_H>)

target_link_directories(unity-stm32l475 PRIVATE ${CMAKE_CURRENT_LIST_DIR}/linker)
target_link_options(unity-stm32l475 PRIVATE -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -static -Wl,--gc-sections -Wl,--start-group -lc -lm -Wl,--end-group --specs=nano.specs -TSTM32L475VGTX_FLASH.ld --specs=nosys.specs)


firmware_size(unity-stm32l475)
generate_object(unity-stm32l475 .bin binary)

if ("${CMAKE_C_COMPILER_ID}" STREQUAL "GNU")
    generate_object(unity-stm32l475 .hex ihex)
endif()
