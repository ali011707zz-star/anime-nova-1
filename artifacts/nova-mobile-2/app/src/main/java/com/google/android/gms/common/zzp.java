package com.google.android.gms.common;

/* compiled from: com.google.android.gms:play-services-basement@@17.6.0 */
/* loaded from: classes.dex */
final class zzp {
    public static int zza(int i10) {
        int[] iArr = {1, 2, 3, 4, 5};
        for (int i11 = 0; i11 < 5; i11++) {
            int i12 = iArr[i11];
            int i13 = i12 - 1;
            if (i12 == 0) {
                throw null;
            }
            if (i13 == i10) {
                return i12;
            }
        }
        return 1;
    }
}
