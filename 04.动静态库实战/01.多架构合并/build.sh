pushd ./SYTimer

echo "---步骤1：xcodebuild打包模拟器架构"
xcodebuild archive -project 'SYTimer.xcodeproj' \
-scheme 'SYTimer' \
-configuration Release \
-destination 'generic/platform=iOS Simulator' \
-archivePath '../archives/SYTimer.framework-iphonesimulator.xcarchive' \
SKIP_INSTALL=NO

echo "---步骤2：xcodebuild打包真机架构"
xcodebuild archive -project 'SYTimer.xcodeproj' \
-scheme 'SYTimer' \
-configuration Release \
-destination 'generic/platform=iOS' \
-archivePath '../archives/SYTimer.framework-iphonesos.xcarchive' \
SKIP_INSTALL=NO

popd







