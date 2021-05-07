cmake_minimum_required(VERSION 3.10)
set(PROJECT_NAME "gtk_example")
project(${PROJECT_NAME} LANGUAGES CXX)

# This value is used when generating builds using this plugin, so it must
# not be changed
set(PLUGIN_NAME "gtk_example_plugin")

add_library(${PLUGIN_NAME} SHARED
  "gtk_example_plugin.cc"
  "web_view_platform_view.cc"
  "web_view_view_factory.cc"
)
apply_standard_settings(${PLUGIN_NAME})

pkg_check_modules(WebKitGTK REQUIRED IMPORTED_TARGET webkit2gtk-4.0)

set_target_properties(${PLUGIN_NAME} PROPERTIES
  CXX_VISIBILITY_PRESET hidden)
target_compile_definitions(${PLUGIN_NAME} PRIVATE FLUTTER_PLUGIN_IMPL)
target_include_directories(${PLUGIN_NAME} INTERFACE
  "${CMAKE_CURRENT_SOURCE_DIR}/include")
target_link_libraries(${PLUGIN_NAME} PRIVATE flutter)
target_link_libraries(${PLUGIN_NAME} PRIVATE PkgConfig::GTK PkgConfig::WebKitGTK)

# List of absolute paths to libraries that should be bundled with the plugin
set(gtk_example_bundled_libraries
  ""
  PARENT_SCOPE
)
