package com.google.android.gms.measurement.internal;

import android.os.Handler;
import android.os.Looper;

/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes.dex */
public final class zzkd extends zzf {
    public final zzkc zza;
    public final zzkb zzb;
    public final zzjz zzc;
    private Handler zzd;

    public zzkd(zzfv zzfvVar) {
        super(zzfvVar);
        this.zza = new zzkc(this);
        this.zzb = new zzkb(this);
        this.zzc = new zzjz(this);
    }

    public static /* bridge */ /* synthetic */ void zzj(zzkd zzkdVar, long j10) {
        zzkdVar.zzg();
        zzkdVar.zzm();
        zzkdVar.zzs.zzay().zzj().zzb("Activity paused, time", Long.valueOf(j10));
        zzkdVar.zzc.zza(j10);
        if (zzkdVar.zzs.zzf().zzu()) {
            zzkdVar.zzb.zzb(j10);
        }
    }

    public static /* bridge */ /* synthetic */ void zzl(zzkd zzkdVar, long j10) {
        zzkdVar.zzg();
        zzkdVar.zzm();
        zzkdVar.zzs.zzay().zzj().zzb("Activity resumed, time", Long.valueOf(j10));
        if (zzkdVar.zzs.zzf().zzu() || zzkdVar.zzs.zzm().zzl.zzb()) {
            zzkdVar.zzb.zzc(j10);
        }
        zzkdVar.zzc.zzb();
        zzkc zzkcVar = zzkdVar.zza;
        zzkcVar.zza.zzg();
        if (zzkcVar.zza.zzs.zzJ()) {
            zzkcVar.zzb(zzkcVar.zza.zzs.zzav().currentTimeMillis(), false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzm() {
        zzg();
        if (this.zzd == null) {
            this.zzd = new com.google.android.gms.internal.measurement.zzby(Looper.getMainLooper());
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final boolean zzf() {
        return false;
    }
}
