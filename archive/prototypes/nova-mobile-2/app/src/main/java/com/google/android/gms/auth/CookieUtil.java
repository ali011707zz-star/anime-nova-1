package com.google.android.gms.auth;

import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import org.apache.http.HttpHost;

/* loaded from: classes.dex */
public final class CookieUtil {
    private CookieUtil() {
    }

    public static String getCookieUrl(String str, Boolean bool) {
        Preconditions.checkNotEmpty(str);
        String str2 = zza(bool) ? "https" : HttpHost.DEFAULT_SCHEME_NAME;
        StringBuilder sb2 = new StringBuilder(str2.length() + 3 + String.valueOf(str).length());
        sb2.append(str2);
        sb2.append("://");
        sb2.append(str);
        return sb2.toString();
    }

    public static String getCookieValue(String str, String str2, String str3, String str4, Boolean bool, Boolean bool2, Long l10) {
        StringBuilder sb2 = new StringBuilder(str);
        sb2.append('=');
        if (!TextUtils.isEmpty(str2)) {
            sb2.append(str2);
        }
        if (zza(bool)) {
            sb2.append(";HttpOnly");
        }
        if (zza(bool2)) {
            sb2.append(";Secure");
        }
        if (!TextUtils.isEmpty(str3)) {
            sb2.append(";Domain=");
            sb2.append(str3);
        }
        if (!TextUtils.isEmpty(str4)) {
            sb2.append(";Path=");
            sb2.append(str4);
        }
        if (l10 != null && l10.longValue() > 0) {
            sb2.append(";Max-Age=");
            sb2.append(l10);
        }
        return sb2.toString();
    }

    private static boolean zza(Boolean bool) {
        return bool != null && bool.booleanValue();
    }
}
