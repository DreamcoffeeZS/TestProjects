#SDK_PATH、TARGET需要根据当前的编译环境调整
SDK_PATH=/Applications/Xcode13.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk
TARGET=x86_64-apple-macos11.6

echo "----步骤1：TestExample.m -> TestExample.o"
clang -target $TARGET \
-fobjc-arc \
-isysroot $SDK_PATH \
-I./Headers \
-c TestExample.m -o TestExample.o

echo "----步骤1：TestExample.m -> TestExample动态库"
clang -dynamiclib  \
-target $TARGET \
-fobjc-arc \
-isysroot $SDK_PATH \
TestExample.o -o TestExample


#echo "-------DYLIB---------"
#otool -l TestExample | grep 'DYLIB' -A 5
#echo "-------ID---------"
#otool -l TestExample | grep 'ID' -A 5
##echo "-------RPATH---------"
##otool -l TestExample | grep 'RPATH' -A 5
