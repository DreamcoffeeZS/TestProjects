#SDK_PATH、TARGET需要根据当前的编译环境调整
SDK_PATH=/Applications/Xcode13.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk
TARGET=x86_64-apple-macos11.6

SDK_PATH=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk
TARGET=x86_64-apple-macos10.15.7

echo "---步骤1：test.m -> test.o"
clang -target $TARGET \
-fobjc-arc \
-isysroot $SDK_PATH \
-I./Frameworks/TestExample.framework/Headers \
-c test.m -o test.o

echo "---步骤2：test.o -> test"
clang -target $TARGET \
-fobjc-arc \
-isysroot $SDK_PATH \
-F./Frameworks \
-framework TestExample \
-Xlinker -rpath -Xlinker @executable_path/Frameworks \
test.o -o test

echo "\n---test-grep(DYLIB):"
otool -l test | grep 'DYLIB' -A 3
echo "\n---test-grep(RPATH):"
otool -l test | grep 'RPATH' -A 3




