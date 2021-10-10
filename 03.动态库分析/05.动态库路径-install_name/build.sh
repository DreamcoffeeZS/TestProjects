#SDK_PATH、TARGET需要根据当前的编译环境调整
SDK_PATH=/Applications/Xcode13.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk
TARGET=x86_64-apple-macos11.6

echo "---步骤1：test.m -> test.o"
clang -target $TARGET \
-fobjc-arc \
-isysroot $SDK_PATH \
-I./Frameworks/TestExample.framework/Headers \
-c test.m -o test.o

echo "---步骤2：链接TestExample动态库，生成test可执行文件"
clang -target $TARGET \
-fobjc-arc \
-isysroot $SDK_PATH \
-F./Frameworks \
-framework TestExample \
test.o -o test

#otool -l test | grep 'RPATH' -A 3
#otool -l test | grep 'DYLIB' -A 3



