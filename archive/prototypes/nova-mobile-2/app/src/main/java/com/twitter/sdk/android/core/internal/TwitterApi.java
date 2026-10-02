package com.twitter.sdk.android.core.internal;

import android.net.Uri;
import android.os.Build;
import java.text.Normalizer;

/* loaded from: classes.dex */
public class TwitterApi {
    public static final String BASE_HOST = "api.twitter.com";
    public static final String BASE_HOST_URL = "https://api.twitter.com";
    private final String baseHostUrl;

    public TwitterApi() {
        this("https://api.twitter.com");
    }

    public static String buildUserAgent(String str, String str2) {
        StringBuilder sb2 = new StringBuilder(str);
        sb2.append('/');
        sb2.append(str2);
        sb2.append(' ');
        String str3 = Build.MODEL;
        sb2.append(str3);
        sb2.append('/');
        sb2.append(Build.VERSION.RELEASE);
        sb2.append(" (");
        sb2.append(Build.MANUFACTURER);
        sb2.append(';');
        sb2.append(str3);
        sb2.append(';');
        sb2.append(Build.BRAND);
        sb2.append(';');
        sb2.append(Build.PRODUCT);
        sb2.append(')');
        return normalizeString(sb2.toString());
    }

    public static String normalizeString(String str) {
        return stripNonAscii(Normalizer.normalize(str, Normalizer.Form.NFD));
    }

    public static String stripNonAscii(String str) {
        StringBuilder sb2 = new StringBuilder(str.length());
        for (int i10 = 0; i10 < str.length(); i10++) {
            char charAt = str.charAt(i10);
            if (charAt > 31 && charAt < 127) {
                sb2.append(charAt);
            }
        }
        return sb2.toString();
    }

    public Uri.Builder buildUponBaseHostUrl(String... strArr) {
        Uri.Builder buildUpon = Uri.parse(getBaseHostUrl()).buildUpon();
        if (strArr != null) {
            for (String str : strArr) {
                buildUpon.appendPath(str);
            }
        }
        return buildUpon;
    }

    public String getBaseHostUrl() {
        return this.baseHostUrl;
    }

    public TwitterApi(String str) {
        this.baseHostUrl = str;
    }
}
