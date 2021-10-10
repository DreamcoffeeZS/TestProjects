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

#设置自身ID、提供rpath(子动态库使用)、设置重新导出(暴露子库给可执行文件使用)
#注意：-reexport_framework必须在-framework之前，否则无法无效
echo "---步骤2：TestExample.o -> TestExample"
clang -dynamiclib  \
-target $TARGET \
-fobjc-arc \
-isysroot $SDK_PATH \
-Xlinker -install_name -Xlinker @rpath/TestExample.framework/TestExample \
-Xlinker -rpath -Xlinker @loader_path/Frameworks \
-Xlinker -reexport_framework -Xlinker TestExampleLog \
-F ./Frameworks \
-framework TestExampleLog \
TestExample.o -o TestExample
 
echo "\n---TestExample-grep(DYLIB):"
otool -l TestExample | grep 'DYLIB' -A 5
echo "\n---TestExample-grep(ID):"
otool -l TestExample | grep 'ID' -A 5
#echo "\n---TestExample-grep(RPATH):"
#otool -l TestExample | grep 'RPATH' -A 5
