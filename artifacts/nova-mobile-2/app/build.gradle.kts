plugins {
    id("com.android.application")
}

android {
    namespace = "com.anslayer"
    compileSdk = 35

    defaultConfig {
        applicationId = "com.nova.anime2"
        minSdk = 17
        targetSdk = 35
        versionCode = 200
        versionName = "2.0.0"

        vectorDrawables {
            useSupportLibrary = true
        }
    }

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    buildTypes {
        release {
            isMinifyEnabled = false
            proguardFiles(
                getDefaultProguardFile("proguard-android-optimize.txt"),
                "proguard-rules.pro",
            )
        }
    }

    packaging {
        resources {
            excludes += setOf(
                "META-INF/DEPENDENCIES",
                "META-INF/LICENSE",
                "META-INF/LICENSE.txt",
                "META-INF/NOTICE",
                "META-INF/NOTICE.txt",
            )
        }
    }
}

sourceSets {
    named("main") {
        java {
            // JADX also emitted the bytecode of third-party libraries into the
            // source tree. Those sources are not valid source-of-truth Java:
            // R8-renamed nested types collide when javac sees the whole tree.
            // Use the original Maven artifacts below and compile the app-owned
            // and obfuscated application packages that remain.
            exclude(
                "android/**",
                "androidx/**",
                "com/google/**",
                "com/bumptech/**",
                "com/pierfrancescosoffritti/**",
                "com/twitter/**",
                "okhttp3/**",
                "retrofit2/**",
            )
        }
    }
}

dependencies {
    implementation("androidx.activity:activity:1.10.1")
    implementation("androidx.appcompat:appcompat:1.7.0")
    implementation("androidx.cardview:cardview:1.0.0")
    implementation("androidx.constraintlayout:constraintlayout:2.2.1")
    implementation("androidx.core:core:1.15.0")
    implementation("androidx.drawerlayout:drawerlayout:1.2.0")
    implementation("androidx.fragment:fragment:1.8.5")
    implementation("androidx.lifecycle:lifecycle-runtime:2.8.7")
    implementation("androidx.preference:preference:1.2.1")
    implementation("androidx.recyclerview:recyclerview:1.3.2")
    implementation("androidx.savedstate:savedstate:1.2.1")
    implementation("androidx.swiperefreshlayout:swiperefreshlayout:1.1.0")
    implementation("androidx.work:work-runtime:2.10.0")
    implementation("com.google.android.material:material:1.12.0")
    implementation("com.google.android.gms:play-services-auth:21.3.0")
    implementation("com.google.android.gms:play-services-base:18.5.0")
    implementation("com.google.android.gms:play-services-measurement-api:22.1.2")
    implementation("com.google.firebase:firebase-messaging:24.1.0")
    implementation("com.bumptech.glide:glide:4.16.0")
    implementation("com.pierfrancescosoffritti.androidyoutubeplayer:core:12.1.0")
    implementation("com.squareup.duktape:duktape-android:1.4.0")
    implementation("com.squareup.okhttp3:okhttp:4.12.0")
    implementation("com.squareup.retrofit2:retrofit:2.11.0")
    implementation("com.google.code.gson:gson:2.11.0")

    // The APK extraction includes source files that retain these library annotations.
    // They are compile-time only and are not shipped twice in the APK.
    compileOnly("com.google.auto.value:auto-value-annotations:1.11.0")
    compileOnly("javax.annotation:javax.annotation-api:1.3.2")
}