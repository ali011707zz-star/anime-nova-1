package expo.modules.novadownload

import android.app.DownloadManager
import android.content.Context
import android.database.Cursor
import android.net.Uri
import android.os.Environment
import expo.modules.kotlin.modules.Module
import expo.modules.kotlin.modules.ModuleDefinition
import org.json.JSONObject

/**
 * Android DownloadManager bridge.
 *
 * Unlike a JS DownloadResumable, DownloadManager owns the network request
 * after the app process is suspended or killed. The small metadata record is
 * kept in private app preferences so the React Native layer can rebuild its
 * download list on the next launch.
 */
class NovaDownloadModule : Module() {
  private val preferencesName = "nova_background_downloads"

  private fun appContext(): Context =
    appContext.reactContext ?: throw IllegalStateException("NovaDownload is not attached")

  private fun manager(): DownloadManager =
    appContext().getSystemService(Context.DOWNLOAD_SERVICE) as DownloadManager

  private fun prefs() =
    appContext().getSharedPreferences(preferencesName, Context.MODE_PRIVATE)

  private fun preferenceKey(appId: String): String = "job:$appId"

  override fun definition() = ModuleDefinition {
    Name("NovaDownload")

    AsyncFunction("enqueue") {
      appId: String,
      url: String,
      fileName: String,
      title: String,
      description: String,
      headersJson: String,
      metadataJson: String,
      ->
      val safeAppId = appId.trim().take(180)
      val safeFileName = fileName
        .substringAfterLast('/')
        .substringAfterLast('\\')
        .replace(Regex("[^A-Za-z0-9._-]"), "_")
        .ifBlank { "nova-download.mp4" }

      // Re-enqueuing the same logical episode must not leave two OS jobs.
      removeStoredJob(safeAppId, cancel = true)

      val destination = appContext()
        .getExternalFilesDir(Environment.DIRECTORY_DOWNLOADS)
        ?: throw IllegalStateException("External downloads directory unavailable")
      if (!destination.exists() && !destination.mkdirs()) {
        throw IllegalStateException("Cannot create downloads directory")
      }

      val request = DownloadManager.Request(Uri.parse(url))
        .setTitle(title.take(120))
        .setDescription(description.take(240))
        .setMimeType("video/mp4")
        .setNotificationVisibility(DownloadManager.Request.VISIBILITY_VISIBLE_NOTIFY_COMPLETED)
        .setAllowedOverMetered(true)
        .setAllowedOverRoaming(true)
        .setDestinationInExternalFilesDir(
          appContext(),
          Environment.DIRECTORY_DOWNLOADS,
          safeFileName,
        )

      parseObject(headersJson).forEach { (key, value) ->
        // DownloadManager owns these headers; forwarding hop-by-hop headers
        // can make its retry/Range handling fail on some Android versions.
        if (
          key.isNotBlank() &&
          value.isNotBlank() &&
          !key.equals("host", ignoreCase = true) &&
          !key.equals("content-length", ignoreCase = true)
        ) {
          request.addRequestHeader(key, value)
        }
      }

      val jobId = manager().enqueue(request)
      val localPath = Uri.fromFile(destination.resolve(safeFileName)).toString()
      val record = JSONObject()
        .put("appId", safeAppId)
        .put("jobId", jobId)
        .put("localPath", localPath)
        .put("metadataJson", metadataJson)
      prefs().edit().putString(preferenceKey(safeAppId), record.toString()).apply()

      mapOf(
        "jobId" to jobId,
        "localPath" to localPath,
      )
    }

    AsyncFunction("list") {
      prefs().all.keys
        .filter { it.startsWith("job:") }
        .mapNotNull { key ->
          val raw = prefs().getString(key, null) ?: return@mapNotNull null
          val record = runCatching { JSONObject(raw) }.getOrNull() ?: return@mapNotNull null
          val jobId = record.optLong("jobId", -1L)
          if (jobId <= 0) return@mapNotNull null
          queryRecord(record, jobId)
        }
    }

    AsyncFunction("remove") { appId: String ->
      removeStoredJob(appId.trim().take(180), cancel = true)
    }

    AsyncFunction("forget") { appId: String ->
      removeStoredJob(appId.trim().take(180), cancel = false)
    }
  }

  private fun parseObject(raw: String): Map<String, String> {
    val result = linkedMapOf<String, String>()
    runCatching {
      val json = JSONObject(raw.ifBlank { "{}" })
      val keys = json.keys()
      while (keys.hasNext()) {
        val key = keys.next()
        val value = json.optString(key).trim()
        if (key.isNotBlank() && value.isNotBlank()) result[key] = value
      }
    }
    return result
  }

  private fun queryRecord(record: JSONObject, jobId: Long): Map<String, Any> {
    var status = "unknown"
    var statusCode = 0
    var bytesWritten = 0L
    var totalBytes = 0L
    var reasonCode = 0
    var reasonMessage = ""

    val cursor: Cursor? = runCatching {
      manager().query(DownloadManager.Query().setFilterById(jobId))
    }.getOrNull()

    cursor.use { rows ->
      if (rows != null && rows.moveToFirst()) {
        statusCode = rows.getInt(rows.getColumnIndexOrThrow(DownloadManager.COLUMN_STATUS))
        status = when (statusCode) {
          DownloadManager.STATUS_PENDING -> "pending"
          DownloadManager.STATUS_RUNNING -> "running"
          DownloadManager.STATUS_PAUSED -> "paused"
          DownloadManager.STATUS_SUCCESSFUL -> "successful"
          DownloadManager.STATUS_FAILED -> "failed"
          else -> "unknown"
        }
        bytesWritten = rows.getLong(
          rows.getColumnIndexOrThrow(DownloadManager.COLUMN_BYTES_DOWNLOADED_SO_FAR),
        )
        totalBytes = rows.getLong(
          rows.getColumnIndexOrThrow(DownloadManager.COLUMN_TOTAL_SIZE_BYTES),
        )
        val reasonIndex = rows.getColumnIndex(DownloadManager.COLUMN_REASON)
        if (reasonIndex >= 0 && !rows.isNull(reasonIndex)) {
          reasonCode = rows.getInt(reasonIndex)
          reasonMessage = downloadReasonMessage(statusCode, reasonCode)
        }
      }
    }

    return mapOf(
      "appId" to record.optString("appId"),
      "jobId" to jobId,
      "status" to status,
      "bytesWritten" to bytesWritten,
      "totalBytes" to totalBytes,
      "localPath" to record.optString("localPath"),
      "metadataJson" to record.optString("metadataJson", "{}"),
      "reasonCode" to reasonCode,
      "reasonMessage" to reasonMessage,
    )
  }

  private fun downloadReasonMessage(statusCode: Int, reasonCode: Int): String {
    if (statusCode == DownloadManager.STATUS_FAILED) {
      return when (reasonCode) {
        DownloadManager.ERROR_INSUFFICIENT_SPACE ->
          "مساحة التخزين غير كافية"
        DownloadManager.ERROR_FILE_ERROR ->
          "تعذر إنشاء ملف التنزيل أو الكتابة إليه"
        DownloadManager.ERROR_UNHANDLED_HTTP_CODE ->
          "الخادم أعاد استجابة HTTP غير مدعومة"
        DownloadManager.ERROR_HTTP_DATA_ERROR ->
          "انقطع نقل البيانات أو وصلت بيانات غير صالحة"
        DownloadManager.ERROR_TOO_MANY_REDIRECTS ->
          "عدد إعادة التوجيهات من الخادم كبير جداً"
        DownloadManager.ERROR_DEVICE_NOT_FOUND ->
          "مجلد التنزيل غير متاح على الجهاز"
        DownloadManager.ERROR_CANNOT_RESUME ->
          "تعذر استئناف التنزيل"
        DownloadManager.ERROR_FILE_ALREADY_EXISTS ->
          "ملف التنزيل موجود مسبقاً"
        DownloadManager.ERROR_UNKNOWN ->
          "فشل غير معروف من Android DownloadManager"
        else ->
          "فشل التنزيل من Android (رمز $reasonCode)"
      }
    }
    if (statusCode == DownloadManager.STATUS_PAUSED) {
      return when (reasonCode) {
        DownloadManager.PAUSED_WAITING_TO_RETRY -> "ينتظر إعادة المحاولة"
        DownloadManager.PAUSED_WAITING_FOR_NETWORK -> "ينتظر اتصال الشبكة"
        DownloadManager.PAUSED_QUEUED_FOR_WIFI -> "ينتظر شبكة Wi‑Fi"
        DownloadManager.PAUSED_UNKNOWN -> "متوقف مؤقتاً بسبب النظام"
        else -> "متوقف مؤقتاً (رمز $reasonCode)"
      }
    }
    return ""
  }

  private fun removeStoredJob(appId: String, cancel: Boolean): Boolean {
    val key = preferenceKey(appId)
    val raw = prefs().getString(key, null) ?: return false
    val jobId = runCatching { JSONObject(raw).optLong("jobId", -1L) }.getOrDefault(-1L)
    if (cancel && jobId > 0) runCatching { manager().remove(jobId) }
    prefs().edit().remove(key).apply()
    return true
  }
}