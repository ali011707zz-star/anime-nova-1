package com.google.android.gms.common;

import com.google.android.gms.common.internal.Preconditions;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-basement@@17.6.0 */
/* loaded from: classes.dex */
final class zzy {
    private String zza = null;
    private long zzb = -1;
    private com.google.android.gms.internal.common.zzu<byte[]> zzc = com.google.android.gms.internal.common.zzu.zzi();
    private com.google.android.gms.internal.common.zzu<byte[]> zzd = com.google.android.gms.internal.common.zzu.zzi();

    public final zzy zza(String str) {
        this.zza = str;
        return this;
    }

    public final zzy zzb(long j10) {
        this.zzb = j10;
        return this;
    }

    public final zzy zzc(List<byte[]> list) {
        Preconditions.checkNotNull(list);
        this.zzc = com.google.android.gms.internal.common.zzu.zzm(list);
        return this;
    }

    public final zzy zzd(List<byte[]> list) {
        Preconditions.checkNotNull(list);
        this.zzd = com.google.android.gms.internal.common.zzu.zzm(list);
        return this;
    }

    public final zzz zze() {
        if (this.zza == null) {
            throw new IllegalStateException("packageName must be defined");
        }
        if (this.zzb >= 0) {
            if (this.zzc.isEmpty() && this.zzd.isEmpty()) {
                throw new IllegalStateException("Either orderedTestCerts or orderedProdCerts must have at least one cert");
            }
            return new zzz(this.zza, this.zzb, this.zzc, this.zzd, null);
        }
        throw new IllegalStateException("minimumStampedVersionNumber must be greater than or equal to 0");
    }
}
