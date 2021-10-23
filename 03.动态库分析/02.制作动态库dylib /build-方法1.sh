#SDK_PATH、TARGET需要根据当前的编译环境调整
SDK_PATH=/Applications/Xcode13.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk
TARGET=x86_64-apple-macos11.6

pushd ./dylib

echo "---步骤1：编译TestExample.m -> TestExample.o"
clang -target $TARGET \
-fobjc-arc \
-isysroot  $SDK_PATH \
-c TestExample.m -o TestExample.o

echo "---步骤2：编译TestExample.o -> libTestExample.dylib"
clang -dynamiclib \
-target x86_64-apple-macos11.6 \
-fobjc-arc \
-isysroot  $SDK_PATH \
TestExample.o -o libTestExample.dylib

popd

echo "---步骤3：编译test.m -> test.o"
clang -target $TARGET \
-fobjc-arc \
-isysroot  $SDK_PATH \
-I./dylib \
-c test.m -o test.o

echo "---步骤4：链接libTestExample.dylib -> test EXEC"
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
