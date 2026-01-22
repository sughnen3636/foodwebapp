# Flutter
-keep class io.flutter.app.** { *; }
-keep class io.flutter.plugin.**  { *; }

# Firebase
-keep class com.google.firebase.** { *; }
-keep class com.google.android.gms.** { *; }

# Location services
-keep class com.lyokone.** { *; }

# Native methods
-keepclasseswithmembernames class * {
    native <methods>;
}
