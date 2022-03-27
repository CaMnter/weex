# Apache 版本，区别就是包名不是 taobao 是 apache
# 最好 local.properties 配置 cmake 和 NDK
# cmake.dir=/Users/CaMnter/Android/adt-bundle-mac-x86_64-20140702/sdk/cmake/3.10.2.4988404
# ndk.dir=/Users/CaMnter/Android/adt-bundle-mac-x86_64-20140702/sdk/ndk/21.4.7075529
./gradlew :weex_sdk:clean :weex_sdk:assembleRelease -PapachePackageName=true
