SDK_PATH=/Applications/Xcode13.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk
TARGET=x86_64-apple-macos11.6

SDK_PATH=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk
TARGET=x86_64-apple-macos10.15.7

echo "---步骤1：TestExample.m -> TestExample.o"
clang -target $TARGET \
-fobjc-arc \
-isysroot $SDK_PATH \
-I./Headers \
-I./Frameworks/TestExampleLog.framework/Headers \
-c TestExample.m -o TestExample.o

echo "---步骤2：TestExample.o -> TestExample"
clang -dynamiclib  \
-target $TARGET \
-fobjc-arc \
-isysroot $SDK_PATH \
-F ./Frameworks \
-framework TestExampleLog \
-Xlinker -install_name -Xlinker @rpath/TestExample.framework/TestExample \
-Xlinker -rpath -Xlinker @loader_path/Frameworks \
TestExample.o -o TestExample
 
echo "\n---TestExample-gerep(DYLIB):"
otool -l TestExample | grep 'DYLIB' -A 5
echo "\n---TestExample-gerep(ID):"
otool -l TestExample | grep 'ID' -A 5
echo "\n---TestExample-gerep(RPATH):"
otool -l TestExample | grep 'RPATH' -A 5
