import java.util.Properties
import java.io.FileInputStream

val localProperties = Properties()
val localPropertiesFile = rootProject.file("local.properties")
if (localPropertiesFile.exists()) {
    localProperties.load(FileInputStream(localPropertiesFile))
}

plugins {
    id("com.android.application")
    id("kotlin-android")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    namespace = "com.tanlu_management"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = flutter.ndkVersion

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_17.toString()
    }

    signingConfigs {
        create("release") {
            keyAlias = localProperties["keyAlias"] as String?
            keyPassword = localProperties["keyPassword"] as String?
            storeFile = localProperties["storeFile"]?.let { file(it as String) }
            storePassword = localProperties["storePassword"] as String?
        }
    }

    defaultConfig {
        applicationId = "com.tanlu_management"
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    flavorDimensions += "flavor-type"

    productFlavors {
        create("dev") {
            dimension = "flavor-type"
            resValue("string", "app_name", "Tanlu Dev")
            applicationIdSuffix = ".dev"
        }
        create("stg") {
            dimension = "flavor-type"
            resValue("string", "app_name", "Tanlu Stg")
            applicationIdSuffix = ".stg"
        }
        create("production") {
            dimension = "flavor-type"
            resValue("string", "app_name", "Tanlu")
        }
    }

    buildTypes {
        release {
            signingConfig = signingConfigs.getByName("release")
        }
    }
}

flutter {
    source = "../.."
}

