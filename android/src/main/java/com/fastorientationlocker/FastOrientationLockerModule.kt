package com.fastorientationlocker

import android.app.Activity
import android.content.pm.ActivityInfo
import android.content.res.Configuration
import com.facebook.react.bridge.ReactApplicationContext
import com.facebook.react.bridge.ReactContextBaseJavaModule
import com.facebook.react.bridge.ReactMethod
import com.facebook.react.module.annotations.ReactModule
@ReactModule(name = FastOrientationLockerModule.NAME)
class FastOrientationLockerModule(reactContext: ReactApplicationContext) :
  NativeFastOrientationLockerSpec(reactContext) {

  override fun getName(): String {
    return NAME
  }

  // Example method
  // See https://reactnative.dev/docs/native-modules-android
  override fun lockToLandscape() {
    val activity: Activity? = currentActivity
    activity?.runOnUiThread {
      activity.requestedOrientation = ActivityInfo.SCREEN_ORIENTATION_SENSOR_LANDSCAPE
    }
  }

  override fun lockToPortrait() {
    val activity: Activity? = currentActivity
    activity?.runOnUiThread {
      activity.requestedOrientation = ActivityInfo.SCREEN_ORIENTATION_PORTRAIT
    }
  }

  override fun unlockAllOrientations() {
    val activity: Activity? = currentActivity
    activity?.runOnUiThread {
      activity.requestedOrientation = ActivityInfo.SCREEN_ORIENTATION_UNSPECIFIED
    }
  }

  companion object {
    const val NAME = "FastOrientationLocker"
  }
}
