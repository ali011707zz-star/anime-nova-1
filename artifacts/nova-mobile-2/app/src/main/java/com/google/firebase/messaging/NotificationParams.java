package com.google.firebase.messaging;

import android.content.res.Resources;
import android.graphics.Color;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import java.util.Arrays;
import java.util.MissingFormatArgumentException;
import okhttp3.internal.cache.DiskLruCache;
import org.json.JSONArray;
import org.json.JSONException;

/* compiled from: com.google.firebase:firebase-messaging@@22.0.0 */
/* loaded from: classes.dex */
public class NotificationParams {
    private final Bundle data;

    public NotificationParams(Bundle bundle) {
        if (bundle != null) {
            this.data = new Bundle(bundle);
            return;
        }
        throw new NullPointerException("data");
    }

    private static int getLightColor(String str) {
        int parseColor = Color.parseColor(str);
        if (parseColor != -16777216) {
            return parseColor;
        }
        throw new IllegalArgumentException("Transparent color is invalid");
    }

    private static boolean isAnalyticsKey(String str) {
        return str.startsWith("google.c.a.") || str.equals("from");
    }

    public static boolean isNotification(Bundle bundle) {
        return DiskLruCache.VERSION_1.equals(bundle.getString("gcm.n.e")) || DiskLruCache.VERSION_1.equals(bundle.getString(keyWithOldPrefix("gcm.n.e")));
    }

    private static boolean isReservedKey(String str) {
        return str.startsWith("google.c.") || str.startsWith("gcm.n.") || str.startsWith("gcm.notification.");
    }

    private static String keyWithOldPrefix(String str) {
        return !str.startsWith("gcm.n.") ? str : str.replace("gcm.n.", "gcm.notification.");
    }

    private String normalizePrefix(String str) {
        if (!this.data.containsKey(str) && str.startsWith("gcm.n.")) {
            String keyWithOldPrefix = keyWithOldPrefix(str);
            if (this.data.containsKey(keyWithOldPrefix)) {
                return keyWithOldPrefix;
            }
        }
        return str;
    }

    private static String userFriendlyKey(String str) {
        return str.startsWith("gcm.n.") ? str.substring(6) : str;
    }

    public boolean getBoolean(String str) {
        String string = getString(str);
        return DiskLruCache.VERSION_1.equals(string) || Boolean.parseBoolean(string);
    }

    public Integer getInteger(String str) {
        String string = getString(str);
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        try {
            return Integer.valueOf(Integer.parseInt(string));
        } catch (NumberFormatException unused) {
            String userFriendlyKey = userFriendlyKey(str);
            StringBuilder sb2 = new StringBuilder(String.valueOf(userFriendlyKey).length() + 38 + String.valueOf(string).length());
            sb2.append("Couldn't parse value of ");
            sb2.append(userFriendlyKey);
            sb2.append("(");
            sb2.append(string);
            sb2.append(") into an int");
            return null;
        }
    }

    public JSONArray getJSONArray(String str) {
        String string = getString(str);
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        try {
            return new JSONArray(string);
        } catch (JSONException unused) {
            String userFriendlyKey = userFriendlyKey(str);
            StringBuilder sb2 = new StringBuilder(String.valueOf(userFriendlyKey).length() + 50 + String.valueOf(string).length());
            sb2.append("Malformed JSON for key ");
            sb2.append(userFriendlyKey);
            sb2.append(": ");
            sb2.append(string);
            sb2.append(", falling back to default");
            return null;
        }
    }

    public int[] getLightSettings() {
        JSONArray jSONArray = getJSONArray("gcm.n.light_settings");
        if (jSONArray == null) {
            return null;
        }
        int[] iArr = new int[3];
        try {
            if (jSONArray.length() == 3) {
                iArr[0] = getLightColor(jSONArray.optString(0));
                iArr[1] = jSONArray.optInt(1);
                iArr[2] = jSONArray.optInt(2);
                return iArr;
            }
            throw new JSONException("lightSettings don't have all three fields");
        } catch (IllegalArgumentException e10) {
            String valueOf = String.valueOf(jSONArray);
            String message = e10.getMessage();
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 60 + String.valueOf(message).length());
            sb2.append("LightSettings is invalid: ");
            sb2.append(valueOf);
            sb2.append(". ");
            sb2.append(message);
            sb2.append(". Skipping setting LightSettings");
            return null;
        } catch (JSONException unused) {
            String valueOf2 = String.valueOf(jSONArray);
            StringBuilder sb3 = new StringBuilder(valueOf2.length() + 58);
            sb3.append("LightSettings is invalid: ");
            sb3.append(valueOf2);
            sb3.append(". Skipping setting LightSettings");
            return null;
        }
    }

    public Uri getLink() {
        String string = getString("gcm.n.link_android");
        if (TextUtils.isEmpty(string)) {
            string = getString("gcm.n.link");
        }
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        return Uri.parse(string);
    }

    public Object[] getLocalizationArgsForKey(String str) {
        JSONArray jSONArray = getJSONArray(String.valueOf(str).concat("_loc_args"));
        if (jSONArray == null) {
            return null;
        }
        int length = jSONArray.length();
        String[] strArr = new String[length];
        for (int i10 = 0; i10 < length; i10++) {
            strArr[i10] = jSONArray.optString(i10);
        }
        return strArr;
    }

    public String getLocalizationResourceForKey(String str) {
        return getString(String.valueOf(str).concat("_loc_key"));
    }

    public String getLocalizedString(Resources resources, String str, String str2) {
        String localizationResourceForKey = getLocalizationResourceForKey(str2);
        if (TextUtils.isEmpty(localizationResourceForKey)) {
            return null;
        }
        int identifier = resources.getIdentifier(localizationResourceForKey, "string", str);
        if (identifier == 0) {
            String userFriendlyKey = userFriendlyKey(String.valueOf(str2).concat("_loc_key"));
            StringBuilder sb2 = new StringBuilder(String.valueOf(userFriendlyKey).length() + 49 + String.valueOf(str2).length());
            sb2.append(userFriendlyKey);
            sb2.append(" resource not found: ");
            sb2.append(str2);
            sb2.append(" Default value will be used.");
            return null;
        }
        Object[] localizationArgsForKey = getLocalizationArgsForKey(str2);
        if (localizationArgsForKey == null) {
            return resources.getString(identifier);
        }
        try {
            return resources.getString(identifier, localizationArgsForKey);
        } catch (MissingFormatArgumentException unused) {
            String userFriendlyKey2 = userFriendlyKey(str2);
            String arrays = Arrays.toString(localizationArgsForKey);
            StringBuilder sb3 = new StringBuilder(String.valueOf(userFriendlyKey2).length() + 58 + String.valueOf(arrays).length());
            sb3.append("Missing format argument for ");
            sb3.append(userFriendlyKey2);
            sb3.append(": ");
            sb3.append(arrays);
            sb3.append(" Default value will be used.");
            return null;
        }
    }

    public Long getLong(String str) {
        String string = getString(str);
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        try {
            return Long.valueOf(Long.parseLong(string));
        } catch (NumberFormatException unused) {
            String userFriendlyKey = userFriendlyKey(str);
            StringBuilder sb2 = new StringBuilder(String.valueOf(userFriendlyKey).length() + 38 + String.valueOf(string).length());
            sb2.append("Couldn't parse value of ");
            sb2.append(userFriendlyKey);
            sb2.append("(");
            sb2.append(string);
            sb2.append(") into a long");
            return null;
        }
    }

    public String getNotificationChannelId() {
        return getString("gcm.n.android_channel_id");
    }

    public Integer getNotificationCount() {
        Integer integer = getInteger("gcm.n.notification_count");
        if (integer == null) {
            return null;
        }
        if (integer.intValue() >= 0) {
            return integer;
        }
        String valueOf = String.valueOf(integer);
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 67);
        sb2.append("notificationCount is invalid: ");
        sb2.append(valueOf);
        sb2.append(". Skipping setting notificationCount.");
        return null;
    }

    public Integer getNotificationPriority() {
        Integer integer = getInteger("gcm.n.notification_priority");
        if (integer == null) {
            return null;
        }
        if (integer.intValue() >= -2 && integer.intValue() <= 2) {
            return integer;
        }
        String valueOf = String.valueOf(integer);
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 72);
        sb2.append("notificationPriority is invalid ");
        sb2.append(valueOf);
        sb2.append(". Skipping setting notificationPriority.");
        return null;
    }

    public String getPossiblyLocalizedString(Resources resources, String str, String str2) {
        String string = getString(str2);
        return !TextUtils.isEmpty(string) ? string : getLocalizedString(resources, str, str2);
    }

    public String getSoundResourceName() {
        String string = getString("gcm.n.sound2");
        return TextUtils.isEmpty(string) ? getString("gcm.n.sound") : string;
    }

    public String getString(String str) {
        return this.data.getString(normalizePrefix(str));
    }

    public long[] getVibrateTimings() {
        JSONArray jSONArray = getJSONArray("gcm.n.vibrate_timings");
        if (jSONArray == null) {
            return null;
        }
        try {
            if (jSONArray.length() > 1) {
                int length = jSONArray.length();
                long[] jArr = new long[length];
                for (int i10 = 0; i10 < length; i10++) {
                    jArr[i10] = jSONArray.optLong(i10);
                }
                return jArr;
            }
            throw new JSONException("vibrateTimings have invalid length");
        } catch (NumberFormatException | JSONException unused) {
            String valueOf = String.valueOf(jSONArray);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 74);
            sb2.append("User defined vibrateTimings is invalid: ");
            sb2.append(valueOf);
            sb2.append(". Skipping setting vibrateTimings.");
            return null;
        }
    }

    public Integer getVisibility() {
        Integer integer = getInteger("gcm.n.visibility");
        if (integer == null) {
            return null;
        }
        if (integer.intValue() >= -1 && integer.intValue() <= 1) {
            return integer;
        }
        String valueOf = String.valueOf(integer);
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 53);
        sb2.append("visibility is invalid: ");
        sb2.append(valueOf);
        sb2.append(". Skipping setting visibility.");
        return null;
    }

    public Bundle paramsForAnalyticsIntent() {
        Bundle bundle = new Bundle(this.data);
        for (String str : this.data.keySet()) {
            if (!isAnalyticsKey(str)) {
                bundle.remove(str);
            }
        }
        return bundle;
    }

    public Bundle paramsWithReservedKeysRemoved() {
        Bundle bundle = new Bundle(this.data);
        for (String str : this.data.keySet()) {
            if (isReservedKey(str)) {
                bundle.remove(str);
            }
        }
        return bundle;
    }
}
