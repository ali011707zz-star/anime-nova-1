package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes.dex */
public final class zzkr {
    public com.google.android.gms.internal.measurement.zzfy zza;
    public List<Long> zzb;
    public List<com.google.android.gms.internal.measurement.zzfo> zzc;
    public long zzd;
    public final /* synthetic */ zzks zze;

    public /* synthetic */ zzkr(zzks zzksVar, zzkq zzkqVar) {
        this.zze = zzksVar;
    }

    private static final long zzb(com.google.android.gms.internal.measurement.zzfo zzfoVar) {
        return ((zzfoVar.zzd() / 1000) / 60) / 60;
    }

    public final boolean zza(long j10, com.google.android.gms.internal.measurement.zzfo zzfoVar) {
        Preconditions.checkNotNull(zzfoVar);
        if (this.zzc == null) {
            this.zzc = new ArrayList();
        }
        if (this.zzb == null) {
            this.zzb = new ArrayList();
        }
        if (this.zzc.size() > 0 && zzb(this.zzc.get(0)) != zzb(zzfoVar)) {
            return false;
        }
        long zzbt = this.zzd + zzfoVar.zzbt();
        this.zze.zzg();
        if (zzbt >= Math.max(0, zzdy.zzh.zza(null).intValue())) {
            return false;
        }
        this.zzd = zzbt;
        this.zzc.add(zzfoVar);
        this.zzb.add(Long.valueOf(j10));
        int size = this.zzc.size();
        this.zze.zzg();
        return size < Math.max(1, zzdy.zzi.zza(null).intValue());
    }
}
