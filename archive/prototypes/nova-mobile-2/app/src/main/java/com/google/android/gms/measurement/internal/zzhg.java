package com.google.android.gms.measurement.internal;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes.dex */
public final class zzhg implements Runnable {
    public final /* synthetic */ String zza;
    public final /* synthetic */ String zzb;
    public final /* synthetic */ Object zzc;
    public final /* synthetic */ long zzd;
    public final /* synthetic */ zzia zze;

    public zzhg(zzia zziaVar, String str, String str2, Object obj, long j10) {
        this.zze = zziaVar;
        this.zza = str;
        this.zzb = str2;
        this.zzc = obj;
        this.zzd = j10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zze.zzZ(this.zza, this.zzb, this.zzc, this.zzd);
    }
}
