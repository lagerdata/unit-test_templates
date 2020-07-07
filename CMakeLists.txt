cmake_minimum_required(VERSION 3.13)

# set the project name and version
project(unity-test-templates VERSION 1.0 LANGUAGES C ASM)


# Location of application specific code
add_subdirectory(nrf52)

add_subdirectory(atsame70)
