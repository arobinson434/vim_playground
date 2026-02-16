cmake_minimum_required( VERSION 3.16 )

project( testProj LANGUAGES CXX )
set(CMAKE_EXPORT_COMPILE_COMMANDS on)

add_executable( ${PROJECT_NAME} test.cpp )


