package com.google.android.gms.common.util;

import android.util.Base64;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;

/* compiled from: com.google.android.gms:play-services-basement@@17.6.0 */
@KeepForSdk
/* loaded from: classes.dex */
public final class Base64Utils {
    @RecentlyNonNull
    @KeepForSdk
    public static byte[] decode(@RecentlyNonNull String str) {
        if (str == null) {
            return null;
        }
        return Base64.decode(str, 0);
    }

    @RecentlyNonNull
    @KeepForSdk
    public static byte[] decodeUrlSafe(@RecentlyNonNull String str) {
        if (str == null) {
            return null;
        }
        return Base64.decode(str, 10);
    }

    @RecentlyNonNull
    @KeepForSdk
    public static byte[] decodeUrlSafeNoPadding(@RecentlyNonNull String str) {
        if (str == null) {
            return null;
        }
        return Base64.decode(str, 11);
    }

    @RecentlyNonNull
    @KeepForSdk
    public static String encode(@RecentlyNonNull byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return Base64.encodeToString(bArr, 0);
    }

    @RecentlyNonNull
    @KeepForSdk
    public static String encodeUrlSafe(@RecentlyNonNull byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return Base64.encodeToString(bArr, 10);
    }

    @RecentlyNonNull
    @KeepForSdk
    public static String encodeUrlSafeNoPadding(@RecentlyNonNull byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return Base64.encodeToString(bArr, 11);
    }
}
