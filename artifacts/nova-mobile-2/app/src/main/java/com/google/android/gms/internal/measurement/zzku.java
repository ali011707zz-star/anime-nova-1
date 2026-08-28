package com.google.android.gms.internal.measurement;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-base@@19.0.2 */
/* loaded from: classes.dex */
public abstract class zzku {
    private static final zzku zza = new zzkq(null);
    private static final zzku zzb = new zzks(0 == true ? 1 : 0);

    public /* synthetic */ zzku(zzkt zzktVar) {
    }

    public static zzku zzc() {
        return zza;
    }

    public static zzku zzd() {
        return zzb;
    }

    public abstract void zza(Object obj, long j10);

    public abstract <L> void zzb(Object obj, Object obj2, long j10);
}
