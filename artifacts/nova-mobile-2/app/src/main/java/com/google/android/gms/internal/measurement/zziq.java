package com.google.android.gms.internal.measurement;

import java.util.Comparator;

/* compiled from: com.google.android.gms:play-services-measurement-base@@19.0.2 */
/* loaded from: classes.dex */
final class zziq implements Comparator<zziy> {
    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(zziy zziyVar, zziy zziyVar2) {
        zziy zziyVar3 = zziyVar;
        zziy zziyVar4 = zziyVar2;
        zzio zzioVar = new zzio(zziyVar3);
        zzio zzioVar2 = new zzio(zziyVar4);
        while (zzioVar.hasNext() && zzioVar2.hasNext()) {
            int zza = zzip.zza(zzioVar.zza() & 255, zzioVar2.zza() & 255);
            if (zza != 0) {
                return zza;
            }
        }
        return zzip.zza(zziyVar3.zzd(), zziyVar4.zzd());
    }
}
