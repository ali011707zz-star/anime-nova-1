package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* compiled from: com.google.android.gms:play-services-measurement-base@@19.0.2 */
/* loaded from: classes.dex */
final class zzmk extends zzmi<zzmj, zzmj> {
    @Override // com.google.android.gms.internal.measurement.zzmi
    public final /* bridge */ /* synthetic */ int zza(zzmj zzmjVar) {
        return zzmjVar.zza();
    }

    @Override // com.google.android.gms.internal.measurement.zzmi
    public final /* bridge */ /* synthetic */ int zzb(zzmj zzmjVar) {
        return zzmjVar.zzb();
    }

    @Override // com.google.android.gms.internal.measurement.zzmi
    public final /* bridge */ /* synthetic */ zzmj zzc(Object obj) {
        return ((zzjz) obj).zzc;
    }

    @Override // com.google.android.gms.internal.measurement.zzmi
    public final /* bridge */ /* synthetic */ zzmj zzd(zzmj zzmjVar, zzmj zzmjVar2) {
        zzmj zzmjVar3 = zzmjVar2;
        return zzmjVar3.equals(zzmj.zzc()) ? zzmjVar : zzmj.zzd(zzmjVar, zzmjVar3);
    }

    @Override // com.google.android.gms.internal.measurement.zzmi
    public final /* bridge */ /* synthetic */ zzmj zze() {
        return zzmj.zze();
    }

    @Override // com.google.android.gms.internal.measurement.zzmi
    public final /* bridge */ /* synthetic */ void zzf(zzmj zzmjVar, int i10, long j10) {
        zzmjVar.zzh(i10 << 3, Long.valueOf(j10));
    }

    @Override // com.google.android.gms.internal.measurement.zzmi
    public final void zzg(Object obj) {
        ((zzjz) obj).zzc.zzf();
    }

    @Override // com.google.android.gms.internal.measurement.zzmi
    public final /* bridge */ /* synthetic */ void zzh(Object obj, zzmj zzmjVar) {
        ((zzjz) obj).zzc = zzmjVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzmi
    public final /* bridge */ /* synthetic */ void zzi(zzmj zzmjVar, zzjh zzjhVar) throws IOException {
        zzmjVar.zzi(zzjhVar);
    }
}
