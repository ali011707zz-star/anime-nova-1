package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-measurement-base@@19.0.2 */
/* loaded from: classes.dex */
final class zzkq extends zzku {
    private static final Class<?> zza = Collections.unmodifiableList(Collections.emptyList()).getClass();

    private zzkq() {
        super(null);
    }

    public /* synthetic */ zzkq(zzkp zzkpVar) {
        super(null);
    }

    @Override // com.google.android.gms.internal.measurement.zzku
    public final void zza(Object obj, long j10) {
        Object unmodifiableList;
        List list = (List) zzms.zzf(obj, j10);
        if (list instanceof zzko) {
            unmodifiableList = ((zzko) list).zze();
        } else {
            if (zza.isAssignableFrom(list.getClass())) {
                return;
            }
            if ((list instanceof zzln) && (list instanceof zzkg)) {
                zzkg zzkgVar = (zzkg) list;
                if (zzkgVar.zzc()) {
                    zzkgVar.zzb();
                    return;
                }
                return;
            }
            unmodifiableList = Collections.unmodifiableList(list);
        }
        zzms.zzs(obj, j10, unmodifiableList);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.zzku
    public final <E> void zzb(Object obj, Object obj2, long j10) {
        zzkn zzknVar;
        List list = (List) zzms.zzf(obj2, j10);
        int size = list.size();
        List list2 = (List) zzms.zzf(obj, j10);
        if (list2.isEmpty()) {
            if (list2 instanceof zzko) {
                list2 = new zzkn(size);
            } else if ((list2 instanceof zzln) && (list2 instanceof zzkg)) {
                list2 = ((zzkg) list2).zzd(size);
            } else {
                list2 = new ArrayList(size);
            }
            zzms.zzs(obj, j10, list2);
        } else {
            if (zza.isAssignableFrom(list2.getClass())) {
                ArrayList arrayList = new ArrayList(list2.size() + size);
                arrayList.addAll(list2);
                zzms.zzs(obj, j10, arrayList);
                zzknVar = arrayList;
            } else if (list2 instanceof zzmn) {
                zzkn zzknVar2 = new zzkn(list2.size() + size);
                zzknVar2.addAll(zzknVar2.size(), (zzmn) list2);
                zzms.zzs(obj, j10, zzknVar2);
                zzknVar = zzknVar2;
            } else if ((list2 instanceof zzln) && (list2 instanceof zzkg)) {
                zzkg zzkgVar = (zzkg) list2;
                if (!zzkgVar.zzc()) {
                    list2 = zzkgVar.zzd(list2.size() + size);
                    zzms.zzs(obj, j10, list2);
                }
            }
            list2 = zzknVar;
        }
        int size2 = list2.size();
        int size3 = list.size();
        if (size2 > 0 && size3 > 0) {
            list2.addAll(list);
        }
        if (size2 > 0) {
            list = list2;
        }
        zzms.zzs(obj, j10, list);
    }
}
