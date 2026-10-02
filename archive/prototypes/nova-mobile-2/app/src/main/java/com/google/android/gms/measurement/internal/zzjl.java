package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;

/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes.dex */
final class zzjl implements Runnable {
    public final /* synthetic */ zzjn zza;

    public zzjl(zzjn zzjnVar) {
        this.zza = zzjnVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzjo zzjoVar = this.zza.zza;
        Context zzau = zzjoVar.zzs.zzau();
        this.zza.zza.zzs.zzaw();
        zzjo.zzo(zzjoVar, new ComponentName(zzau, "com.google.android.gms.measurement.AppMeasurementService"));
    }
}
