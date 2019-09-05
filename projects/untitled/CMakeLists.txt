cmake_minimum_required(VERSION 2.8.11 FATAL_ERROR)

set(project_name untitled)

project(${project_name})

#打开全局moc
set(CMAKE_AUTOMOC ON)
#打开全局uic
set(CMAKE_AUTOUIC ON)

find_package(Qt5 REQUIRED Widgets Core)

set(target_name untitled)
add_executable(${target_name} main.cpp mainwindow.cpp mainwindow.h mainwindow.ui)
target_link_libraries(${target_name} Qt5::Widgets Qt5::Core)

