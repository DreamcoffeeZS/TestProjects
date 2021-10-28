SDK_PATH=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk
LANGUAGE=objective-c
#TAREGT=arm64-apple-macos
TAREGT=x86_64-apple-macos
#修改支持的架构：https://lvv.me/blog/posts/2021/05/19_clang_cross_build/

TEST_NAME=Test
HEAD_PATH=./ZSTools
LIBRARY_PATH=./ZSTools
LIBRARY_NAME=ZSTools

echo "---步骤1:进入ZSTools"
pushd ./ZSTools

echo "---步骤2:生成静态库目标文件"
clang \
-x $LANGUAGE \
-target $TAREGT \
-fobjc-arc \
-isysroot $SDK_PATH \
-c ${LIBRARY_NAME}.m -o ${LIBRARY_NAME}.o

echo "---步骤3:封装静态库文件"
#这里没有手动改名，而是使用了ar命令封装静态库
ar -rc lib${LIBRARY_NAME}.a ${LIBRARY_NAME}.o

echo "---步骤4:退出ZSTools"
popd

echo "---步骤5:生成目标文件"
clang \
-x $LANGUAGE \
-target $TAREGT \
-fobjc-arc \
-isysroot $SDK_PATH \
-I ${HEAD_PATH} \
-c ${TEST_NAME}.m -o ${TEST_NAME}.o

echo "---步骤6:生成可执行文件"
clang \
-target $TAREGT \
-fobjc-arc \
-isysroot $SDK_PATH \
-Xlinker -dead_strip \
-Xlinker -all_load \
-Xlinker -why_live -Xlinker _global_function \
-L${LIBRARY_PATH} \
-l${LIBRARY_NAME} \
${TEST_NAME}.o -o ${TEST_NAME}

