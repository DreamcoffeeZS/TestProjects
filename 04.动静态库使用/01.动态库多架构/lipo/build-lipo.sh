PRODUCTS_PATH=Products/Library/Frameworks/ZSTools.framework/ZSTools

# 报错：相同架构的二进制文件不能打包成胖二进制文件
echo "---直接合并两种架构"
#lipo -output ZSTools -create  \
#../Archives/ZSTools.framework-iphonesos.xcarchive/${PRODUCTS_PATH} \
#../Archives/ZSTools.framework-iphonesimulator.xcarchive/${PRODUCTS_PATH}


echo "---使用提取方式合并两种架构"
echo "---步骤1：从模拟器胖二进制中提取x86_64的二进制文件"
lipo -output ZSTools-x86_64 \
-extract x86_64 \
../Archives/ZSTools.framework-iphonesimulator.xcarchive/${PRODUCTS_PATH}


echo "---步骤2：将不同架构的二进制文件打包成胖二进制"
lipo -output ZSTools -create  \
../Archives/ZSTools.framework-iphonesos.xcarchive/${PRODUCTS_PATH} \
ZSTools-x86_64




