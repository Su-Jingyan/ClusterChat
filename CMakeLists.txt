cmake_minimum_required(VERSION 3.0)  # 最低版本
project(main)  # 当前工程名字

# set(CMAKE_BUILD_TYPE "Debug")  # 设置debug模式，没有这一行不能断点调试
# 配置编译选项
set(CMAKE_CXX_FLAGS ${CMAKE_CXX_FLAGS} -g)  # 原来的基础上再加上-g

# 配置最终的可执行文件的输出路径
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)

# 配置头文件的搜索路径
include_directories(${PROJECT_SOURCE_DIR}/include)
include_directories(${PROJECT_SOURCE_DIR}/include/server)
include_directories(${PROJECT_SOURCE_DIR}/include/server/db)
include_directories(${PROJECT_SOURCE_DIR}/include/server/model)
include_directories(${PROJECT_SOURCE_DIR}/include/server/redis)
include_directories(${PROJECT_SOURCE_DIR}/thirdparty)

# 指定搜索的子目录
add_subdirectory(src)
