pushd ./ZSTools

#注意：`SKIP_INSTALL=NO`：设置NO，才能将打包产物拷贝到目标路径archivePath中
echo "---步骤1：xcodebuild打包模拟器架构"
xcodebuild archive -project 'ZSTools.xcodeproj' \
-scheme 'ZSTools' \
-configuration Release \
-destination 'generic/platform=iOS Simulator' \
-archivePath '../ZSTools.framework-iphonesimulator.xcarchive' \
SKIP_INSTALL=NO

echo "---步骤2：xcodebuild打包真机架构"
xcodebuild archive -project 'ZSTools.xcodeproj' \
-scheme 'ZSTools' \
-configuration Release \
-destination 'generic/platform=iOS' \
-archivePath '../ZSTools.framework-iphonesos.xcarchive' \
SKIP_INSTALL=NO

popd







