SDK_PATH=/Applications/Xcode13.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk
TARGET=x86_64-apple-macos11.6

SDK_PATH=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk
TARGET=x86_64-apple-macos10.15.7

echo "---步骤1：TestExampleLog.m -> TestExampleLog.o"
clang \
-target $TARGET \
-fobjc-arc \
-isysroot $SDK_PATH \
-I./Headers \
-c TestExampleLog.m -o TestExampleLog.o

echo "---步骤2：TestExampleLog.o -> TestExampleLog "
clang -dynamiclib  \
-target $TARGET \
-fobjc-arc \
-Xlinker -install_name -Xlinker @rpath/TestExampleLog.framework/TestExampleLog \
TestExampleLog.o -o TestExampleLog

echo "\n---(otool -l TestExampleLog | grep 'ID' -A 5):"
otool -l TestExampleLog | grep 'ID' -A 5



