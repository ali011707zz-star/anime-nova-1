package com.google.firebase.messaging;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.FirebaseApp;
import com.google.firebase.analytics.connector.AnalyticsConnector;
import com.google.firebase.installations.FirebaseInstallations;
import com.google.firebase.messaging.reporting.MessagingClientEvent;
import com.google.firebase.messaging.reporting.MessagingClientEventExtension;
import h9.b;
import h9.c;
import h9.f;
import h9.g;
import java.util.concurrent.ExecutionException;
import okhttp3.internal.cache.DiskLruCache;

/* compiled from: com.google.firebase:firebase-messaging@@22.0.0 */
/* loaded from: classes.dex */
public class MessagingAnalytics {
    public static boolean deliveryMetricsExportToBigQueryEnabled() {
        Context applicationContext;
        SharedPreferences sharedPreferences;
        ApplicationInfo applicationInfo;
        Bundle bundle;
        try {
            FirebaseApp.getInstance();
            applicationContext = FirebaseApp.getInstance().getApplicationContext();
            sharedPreferences = applicationContext.getSharedPreferences("com.google.firebase.messaging", 0);
        } catch (PackageManager.NameNotFoundException | IllegalStateException unused) {
        }
        if (sharedPreferences.contains("export_to_big_query")) {
            return sharedPreferences.getBoolean("export_to_big_query", false);
        }
        PackageManager packageManager = applicationContext.getPackageManager();
        if (packageManager != null && (applicationInfo = packageManager.getApplicationInfo(applicationContext.getPackageName(), 128)) != null && (bundle = applicationInfo.metaData) != null && bundle.containsKey("delivery_metrics_exported_to_big_query_enabled")) {
            return applicationInfo.metaData.getBoolean("delivery_metrics_exported_to_big_query_enabled", false);
        }
        return false;
    }

    public static MessagingClientEvent eventToProto(MessagingClientEvent.Event event, Intent intent) {
        if (intent == null) {
            return null;
        }
        Bundle extras = intent.getExtras();
        if (extras == null) {
            extras = Bundle.EMPTY;
        }
        MessagingClientEvent.Builder newBuilder = MessagingClientEvent.newBuilder();
        newBuilder.setTtl(getTtl(extras));
        newBuilder.setEvent(event);
        newBuilder.setInstanceId(getInstanceId(extras));
        newBuilder.setPackageName(getPackageName());
        newBuilder.setSdkPlatform(MessagingClientEvent.SDKPlatform.ANDROID);
        newBuilder.setMessageType(getMessageTypeForFirelog(extras));
        String messageId = getMessageId(extras);
        if (messageId != null) {
            newBuilder.setMessageId(messageId);
        }
        String topic = getTopic(extras);
        if (topic != null) {
            newBuilder.setTopic(topic);
        }
        String collapseKey = getCollapseKey(extras);
        if (collapseKey != null) {
            newBuilder.setCollapseKey(collapseKey);
        }
        String messageLabel = getMessageLabel(extras);
        if (messageLabel != null) {
            newBuilder.setAnalyticsLabel(messageLabel);
        }
        String composerLabel = getComposerLabel(extras);
        if (composerLabel != null) {
            newBuilder.setComposerLabel(composerLabel);
        }
        long projectNumber = getProjectNumber(extras);
        if (projectNumber > 0) {
            newBuilder.setProjectNumber(projectNumber);
        }
        return newBuilder.build();
    }

    public static String getCollapseKey(Bundle bundle) {
        return bundle.getString("collapse_key");
    }

    public static String getComposerId(Bundle bundle) {
        return bundle.getString("google.c.a.c_id");
    }

    public static String getComposerLabel(Bundle bundle) {
        return bundle.getString("google.c.a.c_l");
    }

    public static String getInstanceId(Bundle bundle) {
        String string = bundle.getString("google.to");
        if (!TextUtils.isEmpty(string)) {
            return string;
        }
        try {
            return (String) Tasks.await(FirebaseInstallations.getInstance(FirebaseApp.getInstance()).getId());
        } catch (InterruptedException | ExecutionException e10) {
            throw new RuntimeException(e10);
        }
    }

    public static String getMessageChannel(Bundle bundle) {
        return bundle.getString("google.c.a.m_c");
    }

    public static String getMessageId(Bundle bundle) {
        String string = bundle.getString("google.message_id");
        return string == null ? bundle.getString("message_id") : string;
    }

    public static String getMessageLabel(Bundle bundle) {
        return bundle.getString("google.c.a.m_l");
    }

    public static String getMessageTime(Bundle bundle) {
        return bundle.getString("google.c.a.ts");
    }

    public static MessagingClientEvent.MessageType getMessageTypeForFirelog(Bundle bundle) {
        if (bundle != null && NotificationParams.isNotification(bundle)) {
            return MessagingClientEvent.MessageType.DISPLAY_NOTIFICATION;
        }
        return MessagingClientEvent.MessageType.DATA_MESSAGE;
    }

    public static String getMessageTypeForScion(Bundle bundle) {
        return true != NotificationParams.isNotification(bundle) ? "data" : "display";
    }

    public static String getPackageName() {
        return FirebaseApp.getInstance().getApplicationContext().getPackageName();
    }

    public static long getProjectNumber(Bundle bundle) {
        if (bundle.containsKey("google.c.sender.id")) {
            try {
                return Long.parseLong(bundle.getString("google.c.sender.id"));
            } catch (NumberFormatException unused) {
            }
        }
        FirebaseApp firebaseApp = FirebaseApp.getInstance();
        String gcmSenderId = firebaseApp.getOptions().getGcmSenderId();
        if (gcmSenderId != null) {
            try {
                return Long.parseLong(gcmSenderId);
            } catch (NumberFormatException unused2) {
            }
        }
        String applicationId = firebaseApp.getOptions().getApplicationId();
        try {
            if (!applicationId.startsWith("1:")) {
                return Long.parseLong(applicationId);
            }
            String[] split = applicationId.split(":");
            if (split.length < 2) {
                return 0L;
            }
            String str = split[1];
            if (str.isEmpty()) {
                return 0L;
            }
            return Long.parseLong(str);
        } catch (NumberFormatException unused3) {
            return 0L;
        }
    }

    public static String getTopic(Bundle bundle) {
        String string = bundle.getString("from");
        if (string == null || !string.startsWith("/topics/")) {
            return null;
        }
        return string;
    }

    public static int getTtl(Bundle bundle) {
        Object obj = bundle.get("google.ttl");
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        }
        if (!(obj instanceof String)) {
            return 0;
        }
        try {
            return Integer.parseInt((String) obj);
        } catch (NumberFormatException unused) {
            String valueOf = String.valueOf(obj);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 13);
            sb2.append("Invalid TTL: ");
            sb2.append(valueOf);
            return 0;
        }
    }

    public static String getUseDeviceTime(Bundle bundle) {
        if (bundle.containsKey("google.c.a.udt")) {
            return bundle.getString("google.c.a.udt");
        }
        return null;
    }

    private static boolean isDirectBootMessage(Intent intent) {
        return "com.google.firebase.messaging.RECEIVE_DIRECT_BOOT".equals(intent.getAction());
    }

    public static void logNotificationDismiss(Intent intent) {
        logToScion("_nd", intent.getExtras());
    }

    public static void logNotificationForeground(Intent intent) {
        logToScion("_nf", intent.getExtras());
    }

    public static void logNotificationOpen(Bundle bundle) {
        setUserPropertyIfRequired(bundle);
        logToScion("_no", bundle);
    }

    public static void logNotificationReceived(Intent intent) {
        if (shouldUploadScionMetrics(intent)) {
            logToScion("_nr", intent.getExtras());
        }
        if (shouldUploadFirelogAnalytics(intent)) {
            logToFirelog(MessagingClientEvent.Event.MESSAGE_DELIVERED, intent, FirebaseMessaging.getTransportFactory());
        }
    }

    private static void logToFirelog(MessagingClientEvent.Event event, Intent intent, g gVar) {
        MessagingClientEvent eventToProto;
        if (gVar == null || (eventToProto = eventToProto(event, intent)) == null) {
            return;
        }
        try {
            f a10 = gVar.a("FCM_CLIENT_EVENT_LOGGING", MessagingClientEventExtension.class, b.b("proto"), MessagingAnalytics$$Lambda$0.$instance);
            MessagingClientEventExtension.Builder newBuilder = MessagingClientEventExtension.newBuilder();
            newBuilder.setMessagingClientEvent(eventToProto);
            a10.a(c.d(newBuilder.build()));
        } catch (RuntimeException unused) {
        }
    }

    public static void logToScion(String str, Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        Bundle bundle2 = new Bundle();
        String composerId = getComposerId(bundle);
        if (composerId != null) {
            bundle2.putString("_nmid", composerId);
        }
        String composerLabel = getComposerLabel(bundle);
        if (composerLabel != null) {
            bundle2.putString("_nmn", composerLabel);
        }
        String messageLabel = getMessageLabel(bundle);
        if (!TextUtils.isEmpty(messageLabel)) {
            bundle2.putString("label", messageLabel);
        }
        String messageChannel = getMessageChannel(bundle);
        if (!TextUtils.isEmpty(messageChannel)) {
            bundle2.putString("message_channel", messageChannel);
        }
        String topic = getTopic(bundle);
        if (topic != null) {
            bundle2.putString("_nt", topic);
        }
        String messageTime = getMessageTime(bundle);
        if (messageTime != null) {
            try {
                bundle2.putInt("_nmt", Integer.parseInt(messageTime));
            } catch (NumberFormatException unused) {
            }
        }
        String useDeviceTime = getUseDeviceTime(bundle);
        if (useDeviceTime != null) {
            try {
                bundle2.putInt("_ndt", Integer.parseInt(useDeviceTime));
            } catch (NumberFormatException unused2) {
            }
        }
        String messageTypeForScion = getMessageTypeForScion(bundle);
        if ("_nr".equals(str) || "_nf".equals(str)) {
            bundle2.putString("_nmc", messageTypeForScion);
        }
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            String valueOf = String.valueOf(bundle2);
            StringBuilder sb2 = new StringBuilder(str.length() + 37 + valueOf.length());
            sb2.append("Logging to scion event=");
            sb2.append(str);
            sb2.append(" scionPayload=");
            sb2.append(valueOf);
        }
        AnalyticsConnector analyticsConnector = (AnalyticsConnector) FirebaseApp.getInstance().get(AnalyticsConnector.class);
        if (analyticsConnector != null) {
            analyticsConnector.logEvent(AppMeasurement.FCM_ORIGIN, str, bundle2);
        }
    }

    private static void setUserPropertyIfRequired(Bundle bundle) {
        AnalyticsConnector analyticsConnector;
        if (bundle == null || !DiskLruCache.VERSION_1.equals(bundle.getString("google.c.a.tc")) || (analyticsConnector = (AnalyticsConnector) FirebaseApp.getInstance().get(AnalyticsConnector.class)) == null) {
            return;
        }
        String string = bundle.getString("google.c.a.c_id");
        analyticsConnector.setUserProperty(AppMeasurement.FCM_ORIGIN, "_ln", string);
        Bundle bundle2 = new Bundle();
        bundle2.putString("source", "Firebase");
        bundle2.putString("medium", "notification");
        bundle2.putString("campaign", string);
        analyticsConnector.logEvent(AppMeasurement.FCM_ORIGIN, "_cmp", bundle2);
    }

    public static boolean shouldUploadFirelogAnalytics(Intent intent) {
        if (intent == null || isDirectBootMessage(intent)) {
            return false;
        }
        return deliveryMetricsExportToBigQueryEnabled();
    }

    public static boolean shouldUploadScionMetrics(Intent intent) {
        if (intent == null || isDirectBootMessage(intent)) {
            return false;
        }
        return shouldUploadScionMetrics(intent.getExtras());
    }

    public static boolean shouldUploadScionMetrics(Bundle bundle) {
        if (bundle == null) {
            return false;
        }
        return DiskLruCache.VERSION_1.equals(bundle.getString("google.c.a.e"));
    }
}
