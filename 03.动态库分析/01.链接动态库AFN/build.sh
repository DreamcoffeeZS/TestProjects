
SDK_PATH=/Applications/Xcode13.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk
LANGUAGE=objective-c
TAREGT=x86_64-apple-macos11.6

echo "------生成目标文件test.m -> test.o"
clang \
-x $LANGUAGE \
-target $TAREGT \
-fobjc-arc \
-isysroot $SDK_PATH \
-I ./AFNetworking \
-c test.m -o test.o

echo "------链接AFN，生成可执行文件"
clang \
-target $TAREGT \
-fobjc-arc \
-isysroot $SDK_PATH \
-L./AFNetworking \
-lAFNetworking \
test.o -o test


#测试执行：lldb 、file test 、r
#报错：
#dyld: Library not loaded: @rpath/AFNetworking.framework/Versions/A/AFNetworking
#  Referenced from: /Users/zhoushuai/Desktop/TestProjects/03.动态库/01.链接动态库AFN/test
#  Reason: image not found
