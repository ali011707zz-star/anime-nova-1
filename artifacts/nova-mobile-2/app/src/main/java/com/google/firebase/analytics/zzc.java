package com.google.firebase.analytics;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.zzee;
import com.google.android.gms.measurement.internal.zzgv;
import com.google.android.gms.measurement.internal.zzgw;
import com.google.android.gms.measurement.internal.zzib;
import java.util.List;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-measurement-api@@19.0.2 */
/* loaded from: classes.dex */
final class zzc implements zzib {
    public final /* synthetic */ zzee zza;

    public zzc(zzee zzeeVar) {
        this.zza = zzeeVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzib
    public final int zza(String str) {
        return this.zza.zza(str);
    }

    @Override // com.google.android.gms.measurement.internal.zzib
    public final long zzb() {
        return this.zza.zzb();
    }

    @Override // com.google.android.gms.measurement.internal.zzib
    public final Object zzg(int i10) {
        return this.zza.zzh(i10);
    }

    @Override // com.google.android.gms.measurement.internal.zzib
    public final String zzh() {
        return this.zza.zzl();
    }

    @Override // com.google.android.gms.measurement.internal.zzib
    public final String zzi() {
        return this.zza.zzm();
    }

    @Override // com.google.android.gms.measurement.internal.zzib
    public final String zzj() {
        return this.zza.zzn();
    }

    @Override // com.google.android.gms.measurement.internal.zzib
    public final String zzk() {
        return this.zza.zzo();
    }

    @Override // com.google.android.gms.measurement.internal.zzib
    public final List<Bundle> zzm(String str, String str2) {
        return this.zza.zzp(str, str2);
    }

    @Override // com.google.android.gms.measurement.internal.zzib
    public final Map<String, Object> zzo(String str, String str2, boolean z10) {
        return this.zza.zzq(str, str2, z10);
    }

    @Override // com.google.android.gms.measurement.internal.zzib
    public final void zzp(String str) {
        this.zza.zzu(str);
    }

    @Override // com.google.android.gms.measurement.internal.zzib
    public final void zzq(String str, String str2, Bundle bundle) {
        this.zza.zzv(str, str2, bundle);
    }

    @Override // com.google.android.gms.measurement.internal.zzib
    public final void zzr(String str) {
        this.zza.zzw(str);
    }

    @Override // com.google.android.gms.measurement.internal.zzib
    public final void zzs(String str, String str2, Bundle bundle) {
        this.zza.zzy(str, str2, bundle);
    }

    @Override // com.google.android.gms.measurement.internal.zzib
    public final void zzt(String str, String str2, Bundle bundle, long j10) {
        this.zza.zzz(str, str2, bundle, j10);
    }

    @Override // com.google.android.gms.measurement.internal.zzib
    public final void zzu(zzgw zzgwVar) {
        this.zza.zzB(zzgwVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzib
    public final void zzv(Bundle bundle) {
        this.zza.zzD(bundle);
    }

    @Override // com.google.android.gms.measurement.internal.zzib
    public final void zzw(zzgv zzgvVar) {
        this.zza.zzJ(zzgvVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzib
    public final void zzx(zzgw zzgwVar) {
        this.zza.zzO(zzgwVar);
    }
}
