// Top-level build file where you can add configuration options common to all sub-projects/modules.

buildscript {
    <#if includeKotlinSupport!false>ext.kotlin_version = '${kotlinVersion}'</#if>
    repositories {
        google()
        jcenter()
        maven { url 'https://dl.bintray.com/ihanbo/baddog'}

    }
    dependencies {

        classpath 'com.android.tools.build:gradle:3.0.1'
        //classpath 'com.github.dcendents:android-maven-gradle-plugin:1.5'      //上传bintray使用
        //classpath 'com.jfrog.bintray.gradle:gradle-bintray-plugin:1.2'        //上传bintray使用
        //classpath 'com.android.tools.build:gradle:${gradlePluginVersion}'

        <#if includeKotlinSupport!false>classpath "org.jetbrains.kotlin:kotlin-gradle-plugin:$kotlin_version"</#if>

        // NOTE: Do not place your application dependencies here; they belong
        // in the individual module build.gradle files
    }
}

allprojects {
    repositories {
        google()
        jcenter()
        maven { url 'https://dl.bintray.com/ihanbo/baddog'}

    }
}

task clean(type: Delete) {
    delete rootProject.buildDir
}

apply from: 'https://raw.githubusercontent.com/ihanbo/gradleBaseConfig/master/dependencies.gradle'
