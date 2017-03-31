cmake_minimum_required(VERSION 3.7)
project(tg)

set(CMAKE_CXX_STANDARD 11)


set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

add_custom_target(tg COMMAND make -C ${tg_SOURCE_DIR} CLION_EXE_DIR=${PROJECT_BINARY_DIR})