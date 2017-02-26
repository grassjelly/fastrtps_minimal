cmake_minimum_required(VERSION 2.8.12)
project("fastrtps_test")

# Generate Codes
execute_process(
	COMMAND ./gen.sh
	WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}
)

# Find requirements
set(fastcdr_DIR "$ENV{FASTRTPS_INSTALL_DIR}/fastcdr/cmake")
set(fastrtps_DIR "$ENV{FASTRTPS_INSTALL_DIR}/fastrtps/cmake")

find_package(fastrtps REQUIRED)
find_package(fastcdr REQUIRED)


# Set C++11
include(CheckCXXCompilerFlag)
if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_COMPILER_IS_CLANG OR
        CMAKE_CXX_COMPILER_ID MATCHES "Clang")
    check_cxx_compiler_flag(--std=c++11 SUPPORTS_CXX11)
    if(SUPPORTS_CXX11)
        add_compile_options(--std=c++11)
    else()
        message(FATAL_ERROR "Compiler doesn't support C++11")
    endif()
endif()

file(GLOB TEST_SOURCES "*.cxx")

add_executable(fastrtps_test ${TEST_SOURCES})
target_link_libraries(fastrtps_test fastrtps fastcdr)
