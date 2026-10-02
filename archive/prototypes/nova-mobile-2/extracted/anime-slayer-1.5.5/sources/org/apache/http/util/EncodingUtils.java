package org.apache.http.util;

import java.io.UnsupportedEncodingException;

/* loaded from: classes2.dex */
public final class EncodingUtils {
    private EncodingUtils() {
    }

    public static byte[] getAsciiBytes(String str) {
        if (str != null) {
            try {
                return str.getBytes("US-ASCII");
            } catch (UnsupportedEncodingException unused) {
                throw new Error("HttpClient requires ASCII support");
            }
        }
        throw new IllegalArgumentException("Parameter may not be null");
    }

    public static String getAsciiString(byte[] bArr, int i10, int i11) {
        if (bArr != null) {
            try {
                return new String(bArr, i10, i11, "US-ASCII");
            } catch (UnsupportedEncodingException unused) {
                throw new Error("HttpClient requires ASCII support");
            }
        }
        throw new IllegalArgumentException("Parameter may not be null");
    }

    public static byte[] getBytes(String str, String str2) {
        if (str != null) {
            if (str2 != null && str2.length() != 0) {
                try {
                    return str.getBytes(str2);
                } catch (UnsupportedEncodingException unused) {
                    return str.getBytes();
                }
            }
            throw new IllegalArgumentException("charset may not be null or empty");
        }
        throw new IllegalArgumentException("data may not be null");
    }

    public static String getString(byte[] bArr, int i10, int i11, String str) {
        if (bArr != null) {
            if (str != null && str.length() != 0) {
                try {
                    return new String(bArr, i10, i11, str);
                } catch (UnsupportedEncodingException unused) {
                    return new String(bArr, i10, i11);
                }
            }
            throw new IllegalArgumentException("charset may not be null or empty");
        }
        throw new IllegalArgumentException("Parameter may not be null");
    }

    public static String getAsciiString(byte[] bArr) {
        if (bArr != null) {
            return getAsciiString(bArr, 0, bArr.length);
        }
        throw new IllegalArgumentException("Parameter may not be null");
    }

    public static String getString(byte[] bArr, String str) {
        if (bArr != null) {
            return getString(bArr, 0, bArr.length, str);
        }
        throw new IllegalArgumentException("Parameter may not be null");
    }
}
