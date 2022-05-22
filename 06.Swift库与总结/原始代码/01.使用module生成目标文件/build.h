# -fmodules：允许使用module语言来表示头文件
# -fmodule-map-file：modulemap文件的路径，如不指明默认module.modulemap
# -fmodules-cache-path：编译后的module缓存路径
clang  -fmodules -fmodule-map-file=Module.modulemap \
       -fmodules-cache-path=../prebuilt \
       -c use.c \
       -o use.o
