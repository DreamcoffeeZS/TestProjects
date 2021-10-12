
ARCHIVES=/Users/zhoushuai/Desktop/TestProjects/04.动静态库实战/01.多架构合并/Archives
PRODUCTS_PATH=Products/Library/Frameworks/SYTimer.framework/SYTimer

# -debug-symbols：必须使用绝对路径
# Shell变量必须放在""中

#echo "---操作1：直接生成，不带调试符号"
#xcodebuild -create-xcframework \
#-framework '../Archives/SYTimer.framework-iphonesos.xcarchive/Products/Library/Frameworks/SYTimer.framework' \
#-framework '../Archives/SYTimer.framework-iphonesimulator.xcarchive/Products/Library/Frameworks/SYTimer.framework' \
#-output 'SYTimer.xcframework'

echo "---操作2：再次生成，携带调试符号"
xcodebuild -create-xcframework \
-framework '../Archives/SYTimer.framework-iphonesos.xcarchive/Products/Library/Frameworks/SYTimer.framework' \
-debug-symbols "${ARCHIVES}/SYTimer.framework-iphonesos.xcarchive/BCSymbolMaps/1A68D53A-222D-3A00-B35E-DA613828007A.bcsymbolmap" \
-debug-symbols "${ARCHIVES}/SYTimer.framework-iphonesos.xcarchive/BCSymbolMaps/56910357-073D-34C6-ABB4-43A4A86B614B.bcsymbolmap" \
-debug-symbols "${ARCHIVES}/SYTimer.framework-iphonesos.xcarchive/dSYMs/SYTimer.framework.dSYM" \
-framework '../Archives/SYTimer.framework-iphonesimulator.xcarchive/Products/Library/Frameworks/SYTimer.framework' \
-debug-symbols "${ARCHIVES}/SYTimer.framework-iphonesimulator.xcarchive/dSYMs/SYTimer.framework.dSYM" \
-output 'SYTimer.xcframework'

