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

    sourceSets {
        named("main") {
            // JADX exported the original R class. Let AGP generate the
            // com.anslayer.R class from the copied resources instead.
            java.exclude("com/anslayer/R.java")
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