cmake_minimum_required(VERSION 3.10)
project(OmniLangC VERSION 1.0)

# Core C library
add_library(carbon SHARED src/carbon.c)
target_include_directories(carbon PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)

# Set the path to your PHP source directory
set(PHP_SRC_DIR "../php-src")

# Allow user to specify PHP_SRC_DIR via environment variable or CMake command line
if (DEFINED ENV{PHP_SRC_DIR})
    set(PHP_SRC_DIR $ENV{PHP_SRC_DIR})
endif()

# Add PHP include directories
include_directories(
        ${PHP_SRC_DIR}/main
        ${PHP_SRC_DIR}/Zend
        ${PHP_SRC_DIR}/TSRM
)

# Check if PHP headers are found
if (NOT EXISTS "${PHP_SRC_DIR}/main/php.h" OR NOT EXISTS "${PHP_SRC_DIR}/Zend/zend.h" OR NOT EXISTS "${PHP_SRC_DIR}/TSRM/TSRM.h")
    message(FATAL_ERROR "Could not find PHP headers. Please ensure PHP_SRC_DIR is set correctly.")
else()
    message(STATUS "Found PHP headers in ${PHP_SRC_DIR}")
endif()

# PHP binding
add_library(carbon_php SHARED bindings/php/carbon_php.c)
target_include_directories(carbon_php PUBLIC ${PHP_SRC_DIR}/main ${PHP_SRC_DIR}/Zend ${PHP_SRC_DIR}/TSRM ${PHP_SRC_DIR})
target_link_libraries(carbon_php carbon)

# Python binding
find_package(PythonInterp REQUIRED)
find_package(PythonLibs REQUIRED)
include_directories(${PYTHON_INCLUDE_DIRS})

set(CYTHON_PYX_FILE ${CMAKE_CURRENT_SOURCE_DIR}/bindings/python/carbon.pyx)
set(CYTHON_C_FILE ${CMAKE_CURRENT_SOURCE_DIR}/bindings/python/carbon.c)

add_custom_command(
        OUTPUT ${CYTHON_C_FILE}
        COMMAND cython --cplus -3 ${CYTHON_PYX_FILE} -o ${CYTHON_C_FILE}
        DEPENDS ${CYTHON_PYX_FILE}
        COMMENT "Generating C source from ${CYTHON_PYX_FILE}"
)

add_library(carbon_python MODULE ${CYTHON_C_FILE})
target_link_libraries(carbon_python ${PYTHON_LIBRARIES} carbon)
target_include_directories(carbon_python PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/bindings/python)

# Ruby binding
add_library(carbon_ruby SHARED bindings/ruby/carbon_ruby.c)
target_include_directories(carbon_ruby PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/bindings/ruby)
target_link_libraries(carbon_ruby carbon)

# Node.js binding
add_library(carbon_node SHARED bindings/node/carbon_node.cpp)
target_include_directories(carbon_node PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/bindings/node)
target_link_libraries(carbon_node carbon)
