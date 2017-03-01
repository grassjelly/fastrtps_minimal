cmake_minimum_required(VERSION 2.8.12)
project("fastrtps_test")

# Generate Codes
execute_process(
	COMMAND ./gen.sh
	WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}
)

# Find requirements
set(fastcdr_DIR "$ENV{FASTRTPSHOME}/build/install/lib/fastcdr/cmake")
set(fastrtps_DIR "$ENV{FASTRTPSHOME}/build/install/lib/fastrtps/cmake")

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

#FastRTPS Gen Codes Source
file(GLOB GEN_SOURCE ${PROJECT_SOURCE_DIR}/gen/*.cxx)

include_directories(
	${PROJECT_SOURCE_DIR}/lib
)

#Generate executable for Generated sample codes
add_executable(app ${GEN_SOURCE})
target_link_libraries(app fastrtps fastcdr)

#Generate executable for main app
add_executable(main src/main.cpp)
