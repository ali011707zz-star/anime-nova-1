package com.google.android.gms.measurement.internal;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes.dex */
public final class zzht implements Runnable {
    public final /* synthetic */ Boolean zza;
    public final /* synthetic */ zzia zzb;

    public zzht(zzia zziaVar, Boolean bool) {
        this.zzb = zziaVar;
        this.zza = bool;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zzac(this.zza, true);
    }
}
