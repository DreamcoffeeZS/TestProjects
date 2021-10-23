#SDK_PATH、TARGET需要根据当前的编译环境调整
SDK_PATH=/Applications/Xcode13.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk
TARGET=x86_64-apple-macos11.6

pushd ./dylib

echo "---步骤1：编译TestExample.m -> TestExample.o"
clang -target $TARGET \
-fobjc-arc \
-isysroot  $SDK_PATH \
-c TestExample.m -o TestExample.o

echo "---步骤2：编译TestExample.o -> libTestExample.a -> libTestExample.dylib"
#代替ar命令，使用官方工具libtool，将目标文件转为静态库
libtool -static -arch_only x86_64 TestExample.o -o libTestExample.a

ld -dylib -arch x86_64 \
-macosx_version_min 10.15.7 \
-syslibroot  $SDK_PATH \
-lsystem -framework Foundation \
-all_load \
libTestExample.a -o libTestExample.dylib
#注意：
#1.这里步骤属于链接过程，必须指定-all_load，否则默认的-noall_loa不会导出TestExample中的符号
#2.因为这里是直接给ld传参数，所以-all_load前不需要指定-Xlinker

popd


echo "---步骤3：编译test.m -> test.o"
clang -target $TARGET \
-fobjc-arc \
-isysroot  $SDK_PATH \
-I./dylib \
-c test.m -o test.o

echo "---步骤4：链接libTestExample.dylib -- test EXEC"
clang -target $TARGET \
-fobjc-arc \
-isysroot  $SDK_PATH \
-L./dylib \
-lTestExample \
test.o -o test


#测试执行：lldb 、file test 、r
#报错：
#dyld: Library not loaded: libTestExample.dylib
#  Referenced from: /Users/zhoushuai/Desktop/TestProjects/03.动态库/02.动态库原理/test
#  Reason: image not found

