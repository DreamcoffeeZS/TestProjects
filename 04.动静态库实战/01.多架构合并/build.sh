pushd ./SYTimer

echo "---xcodebuild打包模拟器架构"
xcodebuild archive -project 'SYTimer.xcodeproj' \
-scheme 'SYTimer' \
-configuration Release \
-destination 'generic/platform=iOS Simulator' \
-archivePath '../archives/SYTimer.framework-iphonesimulator.xcarchive' \
SKIP_INSTALL=NO

echo "---xcodebuild打包真机架构"
xcodebuild archive -project 'SYTimer.xcodeproj' \
-scheme 'SYTimer' \
-configuration Release \
-destination 'generic/platform=iOS Simulator' \
-archivePath '../archives/SYTimer.framework-iphonesos.xcarchive' \
SKIP_INSTALL=NO

popd


echo "---lipo，打包"



#SKIP_INSTALL=NO：设置NO，才会将打包产物拷贝到目标路径中
#打包一次，得到的是胖二进制，因为Xcode里有设置，支持标准架构





