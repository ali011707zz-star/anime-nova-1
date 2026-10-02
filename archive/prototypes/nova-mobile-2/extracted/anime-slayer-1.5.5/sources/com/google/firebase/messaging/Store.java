package com.google.firebase.messaging;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Log;
import f0.a;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.firebase:firebase-messaging@@22.0.0 */
/* loaded from: classes.dex */
class Store {
    public final Context context;
    public final SharedPreferences store;

    /* compiled from: com.google.firebase:firebase-messaging@@22.0.0 */
    /* loaded from: classes.dex */
    public static class Token {
        private static final long REFRESH_PERIOD_MILLIS = TimeUnit.DAYS.toMillis(7);
        public final String appVersion;
        public final long timestamp;
        public final String token;

        private Token(String str, String str2, long j10) {
            this.token = str;
            this.appVersion = str2;
            this.timestamp = j10;
        }

        public static String encode(String str, String str2, long j10) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("token", str);
                jSONObject.put("appVersion", str2);
                jSONObject.put("timestamp", j10);
                return jSONObject.toString();
            } catch (JSONException e10) {
                String valueOf = String.valueOf(e10);
                StringBuilder sb2 = new StringBuilder(valueOf.length() + 24);
                sb2.append("Failed to encode token: ");
                sb2.append(valueOf);
                return null;
            }
        }

        public static Token parse(String str) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            if (str.startsWith("{")) {
                try {
                    JSONObject jSONObject = new JSONObject(str);
                    return new Token(jSONObject.getString("token"), jSONObject.getString("appVersion"), jSONObject.getLong("timestamp"));
                } catch (JSONException e10) {
                    String valueOf = String.valueOf(e10);
                    StringBuilder sb2 = new StringBuilder(valueOf.length() + 23);
                    sb2.append("Failed to parse token: ");
                    sb2.append(valueOf);
                    return null;
                }
            }
            return new Token(str, null, 0L);
        }

        public boolean needsRefresh(String str) {
            return System.currentTimeMillis() > this.timestamp + REFRESH_PERIOD_MILLIS || !str.equals(this.appVersion);
        }
    }

    public Store(Context context) {
        this.context = context;
        this.store = context.getSharedPreferences("com.google.android.gms.appid", 0);
        checkForRestore("com.google.android.gms.appid-no-backup");
    }

    private void checkForRestore(String str) {
        File file = new File(a.j(this.context), "com.google.android.gms.appid-no-backup");
        if (file.exists()) {
            return;
        }
        try {
            if (!file.createNewFile() || isEmpty()) {
                return;
            }
            deleteAll();
        } catch (IOException e10) {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                String valueOf = String.valueOf(e10.getMessage());
                if (valueOf.length() != 0) {
                    "Error creating file in no backup dir: ".concat(valueOf);
                }
            }
        }
    }

    private String createTokenKey(String str, String str2) {
        StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 5 + String.valueOf(str2).length());
        sb2.append(str);
        sb2.append("|T|");
        sb2.append(str2);
        sb2.append("|*");
        return sb2.toString();
    }

    public synchronized void deleteAll() {
        this.store.edit().clear().commit();
    }

    public synchronized Token getToken(String str, String str2) {
        return Token.parse(this.store.getString(createTokenKey(str, str2), null));
    }

    public synchronized boolean isEmpty() {
        return this.store.getAll().isEmpty();
    }

    public synchronized void saveToken(String str, String str2, String str3, String str4) {
        String encode = Token.encode(str3, str4, System.currentTimeMillis());
        if (encode == null) {
            return;
        }
        SharedPreferences.Editor edit = this.store.edit();
        edit.putString(createTokenKey(str, str2), encode);
        edit.commit();
    }
}
