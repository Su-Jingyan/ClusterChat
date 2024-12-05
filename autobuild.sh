set -x

rm -rf `pwd`/build/*
cd `pwd`/build &&
    cmake .. &&
    make

# cmd
# chmod +x autobuild.sh  # 赋予可执行权限
# ./autobuild.sh