package com.google.android.gms.measurement.internal;

import java.util.List;

/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes.dex */
final class zzfk implements com.google.android.gms.internal.measurement.zzr {
    public final /* synthetic */ zzfm zza;

    public zzfk(zzfm zzfmVar) {
        this.zza = zzfmVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzr
    public final void zza(int i10, String str, List<String> list, boolean z10, boolean z11) {
        zzej zzc;
        int i11 = i10 - 1;
        if (i11 == 0) {
            zzc = this.zza.zzs.zzay().zzc();
        } else if (i11 != 1) {
            if (i11 == 3) {
                zzc = this.zza.zzs.zzay().zzj();
            } else if (i11 != 4) {
                zzc = this.zza.zzs.zzay().zzi();
            } else if (z10) {
                zzc = this.zza.zzs.zzay().zzm();
            } else if (!z11) {
                zzc = this.zza.zzs.zzay().zzl();
            } else {
                zzc = this.zza.zzs.zzay().zzk();
            }
        } else if (z10) {
            zzc = this.zza.zzs.zzay().zzh();
        } else if (!z11) {
            zzc = this.zza.zzs.zzay().zze();
        } else {
            zzc = this.zza.zzs.zzay().zzd();
        }
        int size = list.size();
        if (size == 1) {
            zzc.zzb(str, list.get(0));
            return;
        }
        if (size == 2) {
            zzc.zzc(str, list.get(0), list.get(1));
        } else if (size != 3) {
            zzc.zza(str);
        } else {
            zzc.zzd(str, list.get(0), list.get(1), list.get(2));
        }
    }
}
