# Gradle 升级 preBuild 顺序变化适配
# 最好 local.properties 配置 cmake 和 NDK
# cmake.dir=/Users/CaMnter/Android/adt-bundle-mac-x86_64-20140702/sdk/cmake/3.10.2.4988404
# ndk.dir=/Users/CaMnter/Android/adt-bundle-mac-x86_64-20140702/sdk/ndk/21.4.7075529
./gradlew :weex_sdk:preBuild

./gradlew :weex_sdk:clean

./gradlew :weex_sdk:cleanCopyJSCHeaderToWeexCore
./gradlew :weex_sdk:cleanCopyJscToJniDir
./gradlew :weex_sdk:cleanCopyAndRenamePackage
./gradlew :weex_sdk:cleanCopyManifest
./gradlew :weex_sdk:cleanCopyOtherCppFile
./gradlew :weex_sdk:cleanCopyAndRenameCppSourceFile

./gradlew :weex_sdk:preBuild
./gradlew :weex_sdk:assembleRelease