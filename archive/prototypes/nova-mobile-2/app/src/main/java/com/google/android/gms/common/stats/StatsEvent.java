package com.google.android.gms.common.stats;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* compiled from: com.google.android.gms:play-services-basement@@17.6.0 */
@KeepForSdk
@Deprecated
/* loaded from: classes.dex */
public abstract class StatsEvent extends AbstractSafeParcelable implements ReflectedParcelable {

    /* compiled from: com.google.android.gms:play-services-basement@@17.6.0 */
    @KeepForSdk
    /* loaded from: classes.dex */
    public interface Types {

        @KeepForSdk
        public static final int EVENT_TYPE_ACQUIRE_WAKE_LOCK = 7;

        @KeepForSdk
        public static final int EVENT_TYPE_RELEASE_WAKE_LOCK = 8;
    }

    @RecentlyNonNull
    public final String toString() {
        long zza = zza();
        int zzb = zzb();
        long zzc = zzc();
        String zzd = zzd();
        StringBuilder sb2 = new StringBuilder(String.valueOf(zzd).length() + 53);
        sb2.append(zza);
        sb2.append("\t");
        sb2.append(zzb);
        sb2.append("\t");
        sb2.append(zzc);
        sb2.append(zzd);
        return sb2.toString();
    }

    public abstract long zza();

    public abstract int zzb();

    public abstract long zzc();

    @RecentlyNonNull
    public abstract String zzd();
}
