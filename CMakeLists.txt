cmake_minimum_required(VERSION 3.9)
project(afl)

set(CMAKE_CXX_STANDARD 11)

add_executable(
        afl-as afl-as.c
       )
