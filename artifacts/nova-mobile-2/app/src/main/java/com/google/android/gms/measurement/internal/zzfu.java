package com.google.android.gms.measurement.internal;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes.dex */
public final class zzfu implements Runnable {
    public final /* synthetic */ zzgy zza;
    public final /* synthetic */ zzfv zzb;

    public zzfu(zzfv zzfvVar, zzgy zzgyVar) {
        this.zzb = zzfvVar;
        this.zza = zzgyVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzfv.zzA(this.zzb, this.zza);
        this.zzb.zzH(this.zza.zzg);
    }
}
