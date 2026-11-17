package expo.modules.novamedia3

import android.app.Activity
import android.content.Intent
import androidx.media3.common.util.UnstableApi
import expo.modules.kotlin.modules.Module
import expo.modules.kotlin.modules.ModuleDefinition
import expo.modules.kotlin.Promise

/**
 * Bridges to IsolatedPlayerActivity, which runs in its own Android process
 * (`:player`). See that class and
 * artifacts/nova-mobile/docs/NOVA_PLAYER_FULL_ISOLATION_PLAN.md for why.
 *
 * `open(config)` starts the isolated activity and resolves once it closes —
 * normally (back press / playback ended / recoverable player error) or
 * because the `:player` process itself died (`crashed: true`). Either way
 * this module's own process (the main app) is never affected.
 */
@UnstableApi
class IsolatedPlayerModule : Module() {
  private var pendingPromise: Promise? = null

  override fun definition() = ModuleDefinition {
    Name("NovaIsolatedPlayer")

    AsyncFunction("open") { config: Map<String, Any?>, promise: Promise ->
      val activity = appContext.currentActivity
      if (activity == null) {
        promise.reject("ERR_NO_ACTIVITY", "No current activity to launch the isolated player from", null)
        return@AsyncFunction
      }
      if (pendingPromise != null) {
        promise.reject("ERR_ALREADY_OPEN", "An isolated player session is already in progress", null)
        return@AsyncFunction
      }
      pendingPromise = promise

      val intent = Intent(activity, IsolatedPlayerActivity::class.java).apply {
        putExtra(IsolatedPlayerActivity.EXTRA_SOURCE_URL, config["sourceUrl"] as? String)
        putExtra(IsolatedPlayerActivity.EXTRA_SOURCE_HEADERS, config["sourceHeaders"] as? String)
        putExtra(IsolatedPlayerActivity.EXTRA_SUBTITLE_URL, config["subtitleUrl"] as? String)
        putExtra(IsolatedPlayerActivity.EXTRA_SUBTITLE_LANGUAGE, config["subtitleLanguage"] as? String)
        putExtra(IsolatedPlayerActivity.EXTRA_INITIAL_POSITION, (config["initialPositionSeconds"] as? Number)?.toDouble() ?: 0.0)
        putExtra(IsolatedPlayerActivity.EXTRA_INTRO_START, (config["introStartSeconds"] as? Number)?.toDouble() ?: -1.0)
        putExtra(IsolatedPlayerActivity.EXTRA_INTRO_END, (config["introEndSeconds"] as? Number)?.toDouble() ?: -1.0)
        putExtra(IsolatedPlayerActivity.EXTRA_OUTRO_START, (config["outroStartSeconds"] as? Number)?.toDouble() ?: -1.0)
        putExtra(IsolatedPlayerActivity.EXTRA_OUTRO_END, (config["outroEndSeconds"] as? Number)?.toDouble() ?: -1.0)
        putExtra(IsolatedPlayerActivity.EXTRA_SLEEP_TIMER_MINUTES, (config["sleepTimerMinutes"] as? Number)?.toDouble() ?: -1.0)
      }
      activity.startActivityForResult(intent, REQUEST_CODE)
    }

    OnActivityResult { activity, payload ->
      if (payload.requestCode != REQUEST_CODE) return@OnActivityResult
      val promise = pendingPromise ?: return@OnActivityResult
      pendingPromise = null

      val data = payload.data
      if (payload.resultCode == Activity.RESULT_OK && data != null) {
        // Clean close — IsolatedPlayerActivity reported its own final state.
        promise.resolve(
          mapOf(
            "positionSeconds" to data.getDoubleExtra(IsolatedPlayerActivity.RESULT_POSITION, 0.0),
            "durationSeconds" to data.getDoubleExtra(IsolatedPlayerActivity.RESULT_DURATION, 0.0),
            "ended" to data.getBooleanExtra(IsolatedPlayerActivity.RESULT_ENDED, false),
            "crashed" to false
          )
        )
      } else {
        // No normal result delivered — the `:player` process almost certainly
        // died outright. This is exactly the scenario process isolation
        // exists for: recover what we can (last persisted position) and
        // report crashed=true instead of losing the caller's state.
        val recovered = IsolatedPlayerActivity.readCrashRecoveryPosition(activity.cacheDir)
        promise.resolve(
          mapOf(
            "positionSeconds" to (recovered?.first ?: 0.0),
            "durationSeconds" to (recovered?.second ?: 0.0),
            "ended" to false,
            "crashed" to true
          )
        )
      }
    }
  }

  companion object {
    private const val REQUEST_CODE = 4177
  }
}
