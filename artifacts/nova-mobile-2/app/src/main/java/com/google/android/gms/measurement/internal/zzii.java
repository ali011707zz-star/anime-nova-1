package com.google.android.gms.measurement.internal;

import android.os.Bundle;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes.dex */
public final class zzii implements Runnable {
    public final /* synthetic */ Bundle zza;
    public final /* synthetic */ zzih zzb;
    public final /* synthetic */ zzih zzc;
    public final /* synthetic */ long zzd;
    public final /* synthetic */ zzio zze;

    public zzii(zzio zzioVar, Bundle bundle, zzih zzihVar, zzih zzihVar2, long j10) {
        this.zze = zzioVar;
        this.zza = bundle;
        this.zzb = zzihVar;
        this.zzc = zzihVar2;
        this.zzd = j10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzio.zzp(this.zze, this.zza, this.zzb, this.zzc, this.zzd);
    }
}
