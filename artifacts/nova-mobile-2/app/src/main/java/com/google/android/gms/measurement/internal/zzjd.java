package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes.dex */
public final class zzjd implements Runnable {
    public final /* synthetic */ zzp zza;
    public final /* synthetic */ boolean zzb;
    public final /* synthetic */ zzat zzc;
    public final /* synthetic */ String zzd;
    public final /* synthetic */ zzjo zze;

    public zzjd(zzjo zzjoVar, boolean z10, zzp zzpVar, boolean z11, zzat zzatVar, String str) {
        this.zze = zzjoVar;
        this.zza = zzpVar;
        this.zzb = z11;
        this.zzc = zzatVar;
        this.zzd = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzeb zzebVar;
        zzebVar = this.zze.zzb;
        if (zzebVar == null) {
            this.zze.zzs.zzay().zzd().zza("Discarding data. Failed to send event to service");
            return;
        }
        Preconditions.checkNotNull(this.zza);
        this.zze.zzD(zzebVar, this.zzb ? null : this.zzc, this.zza);
        this.zze.zzQ();
    }
}
