package com.google.android.gms.common.util;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.material.progressindicator.BaseProgressIndicator;

/* compiled from: com.google.android.gms:play-services-basement@@17.6.0 */
@KeepForSdk
/* loaded from: classes.dex */
public class MurmurHash3 {
    private MurmurHash3() {
    }

    @KeepForSdk
    public static int murmurhash3_x86_32(@RecentlyNonNull byte[] bArr, int i10, int i11, int i12) {
        int i13 = (i11 & (-4)) + i10;
        while (i10 < i13) {
            int i14 = ((bArr[i10] & BaseProgressIndicator.MAX_ALPHA) | ((bArr[i10 + 1] & BaseProgressIndicator.MAX_ALPHA) << 8) | ((bArr[i10 + 2] & BaseProgressIndicator.MAX_ALPHA) << 16) | (bArr[i10 + 3] << 24)) * (-862048943);
            int i15 = i12 ^ (((i14 << 15) | (i14 >>> 17)) * 461845907);
            i12 = (((i15 >>> 19) | (i15 << 13)) * 5) - 430675100;
            i10 += 4;
        }
        int i16 = i11 & 3;
        if (i16 != 1) {
            if (i16 != 2) {
                r3 = i16 == 3 ? (bArr[i13 + 2] & BaseProgressIndicator.MAX_ALPHA) << 16 : 0;
                int i17 = i12 ^ i11;
                int i18 = (i17 ^ (i17 >>> 16)) * (-2048144789);
                int i19 = (i18 ^ (i18 >>> 13)) * (-1028477387);
                return i19 ^ (i19 >>> 16);
            }
            r3 |= (bArr[i13 + 1] & BaseProgressIndicator.MAX_ALPHA) << 8;
        }
        int i20 = ((bArr[i13] & BaseProgressIndicator.MAX_ALPHA) | r3) * (-862048943);
        i12 ^= ((i20 >>> 17) | (i20 << 15)) * 461845907;
        int i172 = i12 ^ i11;
        int i182 = (i172 ^ (i172 >>> 16)) * (-2048144789);
        int i192 = (i182 ^ (i182 >>> 13)) * (-1028477387);
        return i192 ^ (i192 >>> 16);
    }
}
