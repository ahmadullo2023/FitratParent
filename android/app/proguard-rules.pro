# Firebase
-keep class com.google.firebase.** { *; }
-dontwarn com.google.firebase.**

# Flutter
-keep class io.flutter.plugin.** { *; }
-dontwarn io.flutter.embedding.**

# Hive (agar ishlatsang)
-keep class com.example.yourapp.models.** { *; }

# Multidex
-keep class androidx.multidex.** { *; }