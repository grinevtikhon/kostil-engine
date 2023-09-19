cmake_minimum_required(VERSION 3.20)

project(kostil-engine)

set(HEADERS_DIR "${PROJECT_SOURCE_DIR}/include")
set(SRC_DIR "${PROJECT_SOURCE_DIR}/source")
set(SOURCES
  ${SRC_DIR}/main.cpp
)

find_package(SFML COMPONENTS window graphics audio system)

add_executable(kostil-engine ${SOURCES})

target_include_directories(kostil-engine
  PRIVATE
    ${PROJECT_BINARY_DIR}
    ${HEADERS_DIR})

set_target_properties(kostil-engine
  PROPERTIES
    INSTALL_RPATH_USE_LINK_PATH TRUE)

target_link_libraries(kostil-engine sfml-graphics)