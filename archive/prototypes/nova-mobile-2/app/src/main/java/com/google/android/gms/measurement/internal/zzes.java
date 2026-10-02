package com.google.android.gms.measurement.internal;

/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes.dex */
final class zzes implements Runnable {
    public final /* synthetic */ boolean zza;
    public final /* synthetic */ zzet zzb;

    public zzes(zzet zzetVar, boolean z10) {
        this.zzb = zzetVar;
        this.zza = z10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzks zzksVar;
        zzksVar = this.zzb.zzb;
        zzksVar.zzI(this.zza);
    }
}
