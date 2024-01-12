cmake_minimum_required(VERSION 3.25)
project(cmake-subbuild-dir-bug)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

set(CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")

include(CPM)
include(RapidJSON)

add_executable(main main.cpp)
target_link_libraries(main PRIVATE RapidJSON::RapidJSON)