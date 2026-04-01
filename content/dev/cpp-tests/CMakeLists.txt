cmake_minimum_required(VERSION 3.21)

project(IllusionKitCppTests LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

enable_testing()

add_executable(cpp_unit_tests
  tests/main.cpp
  tests/test_sample.cpp
  src/sample.cpp
)

target_include_directories(cpp_unit_tests PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/src
  ${CMAKE_CURRENT_LIST_DIR}/third_party/doctest
)

if(MSVC)
  target_compile_options(cpp_unit_tests PRIVATE /W4 /permissive- /EHsc)
else()
  target_compile_options(cpp_unit_tests PRIVATE -Wall -Wextra -Wpedantic)
endif()

# ctest integration
add_test(NAME cpp_unit_tests COMMAND cpp_unit_tests
  --no-version
  --reporters=console
  --success=true
)

