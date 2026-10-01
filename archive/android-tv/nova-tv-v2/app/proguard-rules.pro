# Keep Android/Kotlin entry points and Media3 playback components discoverable.
-keep class com.nova.anime.tv.** { *; }
-keep class androidx.media3.** { *; }
-dontwarn okhttp3.**
-dontwarn javax.annotation.**