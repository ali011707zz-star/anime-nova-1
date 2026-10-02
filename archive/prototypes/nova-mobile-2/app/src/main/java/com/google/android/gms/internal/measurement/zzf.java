package com.google.android.gms.internal.measurement;

import com.google.android.material.shadow.ShadowDrawableWrapper;
import java.util.concurrent.Callable;

/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes.dex */
public final class zzf {
    public final zzax zza;
    public final zzg zzb;
    public final zzg zzc;
    public final zzj zzd;

    public zzf() {
        zzax zzaxVar = new zzax();
        this.zza = zzaxVar;
        zzg zzgVar = new zzg(null, zzaxVar);
        this.zzc = zzgVar;
        this.zzb = zzgVar.zza();
        zzj zzjVar = new zzj();
        this.zzd = zzjVar;
        zzgVar.zzg("require", new zzw(zzjVar));
        zzjVar.zza("internal.platform", new Callable() { // from class: com.google.android.gms.internal.measurement.zze
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new zzy();
            }
        });
        zzgVar.zzg("runtime.counter", new zzah(Double.valueOf(ShadowDrawableWrapper.COS_45)));
    }

    public final zzap zza(zzg zzgVar, zzgt... zzgtVarArr) {
        zzap zzapVar = zzap.zzf;
        for (zzgt zzgtVar : zzgtVarArr) {
            zzapVar = zzi.zza(zzgtVar);
            zzh.zzc(this.zzc);
            if ((zzapVar instanceof zzaq) || (zzapVar instanceof zzao)) {
                zzapVar = this.zza.zza(zzgVar, zzapVar);
            }
        }
        return zzapVar;
    }
}
