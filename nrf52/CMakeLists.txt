include(../cmake/utils.cmake)

add_executable(unity-nrf52 "")
target_sources(unity-nrf52 PRIVATE ${CMAKE_CURRENT_LIST_DIR}/src/main.c
  ${CMAKE_CURRENT_LIST_DIR}/src/test1.c
  ${CMAKE_CURRENT_LIST_DIR}/unity_uart_nrf52/nrf52_target_uart.c
  ${CMAKE_CURRENT_LIST_DIR}/../Unity/src/unity.c)

target_include_directories(unity-nrf52 PRIVATE ${CMAKE_CURRENT_LIST_DIR}/src
  ${CMAKE_CURRENT_LIST_DIR}/unity_uart_nrf52
  ${CMAKE_CURRENT_LIST_DIR}/unity_cfg
  ${CMAKE_CURRENT_LIST_DIR}/../Unity/src)

set(NRF52_SRC_DIR ${CMAKE_CURRENT_LIST_DIR}/nRF5_SDK_17)
target_sources(unity-nrf52 PRIVATE ${NRF52_SRC_DIR}/modules/nrfx/mdk/gcc_startup_nrf52840.S
  ${NRF52_SRC_DIR}/modules/nrfx/mdk/system_nrf52840.c)

target_include_directories(unity-nrf52 PUBLIC ${NRF52_SRC_DIR}/modules/nrfx
  ${NRF52_SRC_DIR}/modules/nrfx/soc
  ${NRF52_SRC_DIR}/modules/nrfx/mdk
  ${NRF52_SRC_DIR}/modules/nrfx/hal
  ${NRF52_SRC_DIR}/modules/nrfx/drivers
  ${NRF52_SRC_DIR}/modules/nrfx/drivers/include
  ${NRF52_SRC_DIR}/modules/nrfx/drivers/src
  ${NRF52_SRC_DIR}/modules/nrfx/drivers/src/prs
  ${NRF52_SRC_DIR}/modules/nrfx/templates
  ${NRF52_SRC_DIR}/modules/nrfx/templates/NRF52840
  ${NRF52_SRC_DIR}/modules/nrfx/helpers)

target_include_directories(unity-nrf52 PUBLIC ${NRF52_SRC_DIR}/components/toolchain/cmsis/include)


target_compile_options(unity-nrf52 PRIVATE -mcpu=cortex-m4 -mthumb -mabi=aapcs -mfloat-abi=hard -mfpu=fpv4-sp-d16)
target_compile_options(unity-nrf52 PRIVATE $<$<COMPILE_LANGUAGE:C>:-Wall -Werror -g -gstrict-dwarf -ffunction-sections -fdata-sections -fno-strict-aliasing -fno-builtin -fshort-enums>)
target_compile_options(unity-nrf52 PRIVATE $<$<COMPILE_LANGUAGE:ASM>:-x assembler-with-cpp>)
target_compile_options(unity-nrf52 PRIVATE "-ffile-prefix-map=${CMAKE_SOURCE_DIR}=.")

target_compile_definitions(unity-nrf52 PRIVATE FLOAT_ABI_HARD NRF52840_XXAA)
target_compile_definitions(unity-nrf52 PUBLIC $<$<COMPILE_LANGUAGE:C>:UNITY_INCLUDE_CONFIG_H>)
target_compile_definitions(unity-nrf52 PRIVATE $<$<COMPILE_LANGUAGE:ASM>:__HEAP_SIZE=8192 __STACK_SIZE=8192>)




target_link_directories(unity-nrf52 PRIVATE "${CMAKE_CURRENT_LIST_DIR}/linker")
target_link_options(unity-nrf52 PRIVATE -mcpu=cortex-m4 -mthumb -mabi=aapcs -mfloat-abi=hard -mfpu=fpv4-sp-d16 -Wl,--gc-sections -lc -lm -lnosys --specs=nano.specs -Tunity-nrf52.ld)


firmware_size(unity-nrf52)
generate_object(unity-nrf52 .bin binary)

if ("${CMAKE_C_COMPILER_ID}" STREQUAL "GNU")
  generate_object(unity-nrf52 .hex ihex)
endif()
