package com.google.android.gms.internal.measurement;

/* compiled from: com.google.android.gms:play-services-measurement-base@@19.0.2 */
/* loaded from: classes.dex */
final class zzks extends zzku {
    private zzks() {
        super(null);
    }

    public /* synthetic */ zzks(zzkr zzkrVar) {
        super(null);
    }

    @Override // com.google.android.gms.internal.measurement.zzku
    public final void zza(Object obj, long j10) {
        ((zzkg) zzms.zzf(obj, j10)).zzb();
    }

    @Override // com.google.android.gms.internal.measurement.zzku
    public final <E> void zzb(Object obj, Object obj2, long j10) {
        zzkg zzkgVar = (zzkg) zzms.zzf(obj, j10);
        zzkg zzkgVar2 = (zzkg) zzms.zzf(obj2, j10);
        int size = zzkgVar.size();
        int size2 = zzkgVar2.size();
        if (size > 0 && size2 > 0) {
            if (!zzkgVar.zzc()) {
                zzkgVar = zzkgVar.zzd(size2 + size);
            }
            zzkgVar.addAll(zzkgVar2);
        }
        if (size > 0) {
            zzkgVar2 = zzkgVar;
        }
        zzms.zzs(obj, j10, zzkgVar2);
    }
}
