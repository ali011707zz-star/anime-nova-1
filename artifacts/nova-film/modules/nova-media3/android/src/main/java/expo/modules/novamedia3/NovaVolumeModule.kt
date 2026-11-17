package expo.modules.novamedia3

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.media.AudioManager
import android.os.Build
import expo.modules.kotlin.modules.Module
import expo.modules.kotlin.modules.ModuleDefinition

/**
 * Controls the phone's media stream, not the volume of the video player.
 *
 * The player stays at 100% and this module changes Android's real media
 * stream. This is the same stream controlled by the physical volume buttons.
 */
class NovaVolumeModule : Module() {
  private var volumeReceiver: BroadcastReceiver? = null

  // AudioManager exposes these as hidden/system API constants on newer SDKs,
  // so referencing them directly breaks Kotlin compilation. The broadcast
  // action and extra names are stable Android platform contract strings.
  private companion object {
    const val VOLUME_CHANGED_ACTION = "android.media.VOLUME_CHANGED_ACTION"
    const val EXTRA_VOLUME_STREAM_TYPE = "android.media.EXTRA_VOLUME_STREAM_TYPE"
  }

  private fun audioManager(): AudioManager? =
    appContext.reactContext?.getSystemService(Context.AUDIO_SERVICE) as? AudioManager

  private fun currentVolume(): Double {
    val audio = audioManager() ?: return 1.0
    val max = audio.getStreamMaxVolume(AudioManager.STREAM_MUSIC).coerceAtLeast(1)
    return audio.getStreamVolume(AudioManager.STREAM_MUSIC).toDouble() / max
  }

  private fun emitCurrentVolume() {
    sendEvent("onVolumeChange", mapOf("volume" to currentVolume()))
  }

  override fun definition() = ModuleDefinition {
    Name("NovaVolume")
    Events("onVolumeChange")

    OnCreate {
      appContext.reactContext?.let { context ->
        val filter = IntentFilter(VOLUME_CHANGED_ACTION)
        val receiver = object : BroadcastReceiver() {
          override fun onReceive(context: Context?, intent: Intent?) {
            if (intent?.getIntExtra(EXTRA_VOLUME_STREAM_TYPE, -1) ==
              AudioManager.STREAM_MUSIC
            ) {
              emitCurrentVolume()
            }
          }
        }
        volumeReceiver = receiver
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
          context.registerReceiver(receiver, filter, Context.RECEIVER_NOT_EXPORTED)
        } else {
          @Suppress("DEPRECATION")
          context.registerReceiver(receiver, filter)
        }
      }
    }

    OnDestroy {
      val context = appContext.reactContext
      volumeReceiver?.let { receiver ->
        try {
          context?.unregisterReceiver(receiver)
        } catch (_: IllegalArgumentException) {
          // Already unregistered during an activity/process teardown.
        }
      }
      volumeReceiver = null
    }

    AsyncFunction("getVolume") {
      currentVolume()
    }

    AsyncFunction("setVolume") { value: Double, showUi: Boolean ->
      val audio = audioManager() ?: return@AsyncFunction
      val max = audio.getStreamMaxVolume(AudioManager.STREAM_MUSIC).coerceAtLeast(1)
      val target = (value.coerceIn(0.0, 1.0) * max).toInt()
      var flags = 0
      if (showUi) flags = flags or AudioManager.FLAG_SHOW_UI or AudioManager.FLAG_PLAY_SOUND
      audio.setStreamVolume(AudioManager.STREAM_MUSIC, target, flags)
      emitCurrentVolume()
    }
  }
}