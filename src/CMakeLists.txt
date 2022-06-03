# The Flutter tooling requires that developers have CMake 3.10 or later
# installed. You should not increase this version, as doing so will cause
# the plugin to fail to compile for some customers of the plugin.
cmake_minimum_required(VERSION 3.10)

project(dart_cec_library VERSION 0.0.1 LANGUAGES C)

add_library(dart_cec SHARED
  "dart_cec.c"
)

set_target_properties(dart_cec PROPERTIES
  PUBLIC_HEADER dart_cec.h
  OUTPUT_NAME "dart_cec"
)

target_compile_definitions(dart_cec PUBLIC DART_SHARED_LIB)
