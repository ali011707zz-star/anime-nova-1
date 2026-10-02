package com.twitter.sdk.android.core.internal.network;

import android.text.TextUtils;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.TreeMap;

/* loaded from: classes.dex */
public final class UrlUtils {
    public static final String UTF8 = "UTF8";

    private UrlUtils() {
    }

    public static TreeMap<String, String> getQueryParams(URI uri, boolean z10) {
        return getQueryParams(uri.getRawQuery(), z10);
    }

    public static String percentEncode(String str) {
        int i10;
        if (str == null) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        String urlEncode = urlEncode(str);
        int length = urlEncode.length();
        int i11 = 0;
        while (i11 < length) {
            char charAt = urlEncode.charAt(i11);
            if (charAt == '*') {
                sb2.append("%2A");
            } else if (charAt == '+') {
                sb2.append("%20");
            } else if (charAt == '%' && (i10 = i11 + 2) < length && urlEncode.charAt(i11 + 1) == '7' && urlEncode.charAt(i10) == 'E') {
                sb2.append('~');
                i11 = i10;
            } else {
                sb2.append(charAt);
            }
            i11++;
        }
        return sb2.toString();
    }

    public static String urlDecode(String str) {
        if (str == null) {
            return "";
        }
        try {
            return URLDecoder.decode(str, UTF8);
        } catch (UnsupportedEncodingException e10) {
            throw new RuntimeException(e10.getMessage(), e10);
        }
    }

    public static String urlEncode(String str) {
        if (str == null) {
            return "";
        }
        try {
            return URLEncoder.encode(str, UTF8);
        } catch (UnsupportedEncodingException e10) {
            throw new RuntimeException(e10.getMessage(), e10);
        }
    }

    public static TreeMap<String, String> getQueryParams(String str, boolean z10) {
        TreeMap<String, String> treeMap = new TreeMap<>();
        if (str == null) {
            return treeMap;
        }
        for (String str2 : str.split("&")) {
            String[] split = str2.split("=");
            if (split.length == 2) {
                if (z10) {
                    treeMap.put(urlDecode(split[0]), urlDecode(split[1]));
                } else {
                    treeMap.put(split[0], split[1]);
                }
            } else if (!TextUtils.isEmpty(split[0])) {
                if (z10) {
                    treeMap.put(urlDecode(split[0]), "");
                } else {
                    treeMap.put(split[0], "");
                }
            }
        }
        return treeMap;
    }
}
