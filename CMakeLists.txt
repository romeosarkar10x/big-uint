cmake_minimum_required(VERSION  3.29.2)

project(big_uint LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(CMAKE_CXX_COMPILER g++)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# find_program(CMAKE_CXX_COMPILER)
add_library(${PROJECT_NAME} STATIC)

file(GLOB_RECURSE SOURCES ${PROJECT_SOURCE_DIR}/src/**/*.cpp)

target_sources(${PROJECT_NAME} PRIVATE ${SOURCES})

target_include_directories(
    ${PROJECT_NAME} PRIVATE
    ${PROJECT_SOURCE_DIR}/inc
)

target_compile_features(${PROJECT_NAME} PRIVATE cxx_std_20)