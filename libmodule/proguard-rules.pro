# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile

#取消代码压缩,这个非常重要，一旦取消，混淆时会移除所有未被引用过的类
-dontshrink
#不忽略非公共库的成员
-dontskipnonpubliclibraryclasses

#混淆后的包都会移动到 com.jd.ad.sdk 下,并且需要在媒体端声明
-keep class com.jd.ad.sdk.** { *; }

-flattenpackagehierarchy com.jd.ad.sdk
#-repackageclasses

#保留代码行号，方便异常信息的追踪
-keepattributes SourceFile,LineNumberTable
#ump apk包内所有class的内部结构
-dump class_files.txt
#列出从apk中删除的代码
-printusage unused.txt
#列出未混淆的类和成员
-printseeds seeds.txt
#列出混淆前后的映射
-printmapping mapping.txt

#-obfuscationdictionary dic.txt
#-classobfuscationdictionary dic.txt
#-packageobfuscationdictionary dic.txt