package com.google.android.gms.internal.measurement;

import java.util.List;

/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes.dex */
public final class zzbc extends zzaw {
    public zzbc() {
        this.zza.add(zzbl.AND);
        this.zza.add(zzbl.NOT);
        this.zza.add(zzbl.OR);
    }

    @Override // com.google.android.gms.internal.measurement.zzaw
    public final zzap zza(String str, zzg zzgVar, List<zzap> list) {
        zzbl zzblVar = zzbl.ADD;
        int ordinal = zzh.zze(str).ordinal();
        if (ordinal == 1) {
            zzh.zzh(zzbl.AND.name(), 2, list);
            zzap zzb = zzgVar.zzb(list.get(0));
            return !zzb.zzg().booleanValue() ? zzb : zzgVar.zzb(list.get(1));
        }
        if (ordinal == 47) {
            zzh.zzh(zzbl.NOT.name(), 1, list);
            return new zzaf(Boolean.valueOf(!zzgVar.zzb(list.get(0)).zzg().booleanValue()));
        }
        if (ordinal != 50) {
            return super.zzb(str);
        }
        zzh.zzh(zzbl.OR.name(), 2, list);
        zzap zzb2 = zzgVar.zzb(list.get(0));
        return zzb2.zzg().booleanValue() ? zzb2 : zzgVar.zzb(list.get(1));
    }
}
