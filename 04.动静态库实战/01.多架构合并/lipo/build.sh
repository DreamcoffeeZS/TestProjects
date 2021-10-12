PRODUCTS_PATH=Products/Library/Frameworks/SYTimer.framework/SYTimer

# 报错：相同架构的二进制文件不能打包成胖二进制文件
echo "---操作1：直接合并两种架构"
lipo -output SYTimer -create  \
../Archives/SYTimer.framework-iphonesos.xcarchive/${PRODUCTS_PATH} \
../Archives/SYTimer.framework-iphonesimulator.xcarchive/${PRODUCTS_PATH}


echo "---操作2：从模拟器胖二进制中提取x86_64的二进制文件"
lipo -output SYTimer-x86_64 \
-extract x86_64 \
../Archives/SYTimer.framework-iphonesimulator.xcarchive/${PRODUCTS_PATH}


echo "---操作3：将不同架构的二进制文件打包成胖二进制"
lipo -output SYTimer -create  \
../Archives/SYTimer.framework-iphonesos.xcarchive/${PRODUCTS_PATH} \
SYTimer-x86_64




