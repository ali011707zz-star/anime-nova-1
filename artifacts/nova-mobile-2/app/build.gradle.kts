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

dependencies {
    // The APK extraction includes source files that retain these library annotations.
    // They are compile-time only; the runtime implementations are already represented
    // by the extracted classes in this application.
    compileOnly("com.google.auto.value:auto-value-annotations:1.11.0")
    compileOnly("javax.annotation:javax.annotation-api:1.3.2")
}