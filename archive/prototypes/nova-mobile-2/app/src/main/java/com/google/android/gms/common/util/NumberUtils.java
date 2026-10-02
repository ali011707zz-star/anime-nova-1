package com.google.android.gms.common.util;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;

/* compiled from: com.google.android.gms:play-services-basement@@17.6.0 */
@VisibleForTesting
@KeepForSdk
/* loaded from: classes.dex */
public class NumberUtils {
    private NumberUtils() {
    }

    @KeepForSdk
    public static long parseHexLong(@RecentlyNonNull String str) {
        if (str.length() <= 16) {
            if (str.length() == 16) {
                return (Long.parseLong(str.substring(0, 8), 16) << 32) | Long.parseLong(str.substring(8), 16);
            }
            return Long.parseLong(str, 16);
        }
        StringBuilder sb2 = new StringBuilder(str.length() + 37);
        sb2.append("Invalid input: ");
        sb2.append(str);
        sb2.append(" exceeds 16 characters");
        throw new NumberFormatException(sb2.toString());
    }
}
