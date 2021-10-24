
ARCHIVES=/Users/zhoushuai/Desktop/TestProjects/04.动静态库实战/01.多架构合并/Archives
PRODUCTS_PATH=Products/Library/Frameworks/ZSTools.framework/ZSTools

#echo "---操作1：直接生成，不带调试符号"
#xcodebuild -create-xcframework \
#-framework '../Archives/ZSTools.framework-iphonesos.xcarchive/Products/Library/Frameworks/ZSTools.framework' \
#-framework '../Archives/ZSTools.framework-iphonesimulator.xcarchive/Products/Library/Frameworks/ZSTools.framework' \
#-output 'ZSTools.xcframework'

echo "---操作2：再次生成，携带调试符号"
#-debug-symbols：必须使用绝对路径
#Shell变量必须放在""中
xcodebuild -create-xcframework \
-framework '../Archives/ZSTools.framework-iphonesos.xcarchive/Products/Library/Frameworks/ZSTools.framework' \
-debug-symbols "${ARCHIVES}/ZSTools.framework-iphonesos.xcarchive/BCSymbolMaps/C23C54B6-491D-3EF1-910D-027FC006AFE5.bcsymbolmap" \
-debug-symbols "${ARCHIVES}/ZSTools.framework-iphonesos.xcarchive/BCSymbolMaps/E4F69E3F-62C0-393E-8EF4-1ADD891601B1.bcsymbolmap" \
-debug-symbols "${ARCHIVES}/ZSTools.framework-iphonesos.xcarchive/dSYMs/ZSTools.framework.dSYM" \
-framework '../Archives/ZSTools.framework-iphonesimulator.xcarchive/Products/Library/Frameworks/ZSTools.framework' \
-debug-symbols "${ARCHIVES}/ZSTools.framework-iphonesimulator.xcarchive/dSYMs/ZSTools.framework.dSYM" \
-output 'ZSTools.xcframework'
