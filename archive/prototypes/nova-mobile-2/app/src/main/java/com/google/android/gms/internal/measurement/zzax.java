package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes.dex */
public final class zzax {
    public final Map<String, zzaw> zza = new HashMap();
    public final zzbj zzb = new zzbj();

    public zzax() {
        zzb(new zzav());
        zzb(new zzay());
        zzb(new zzaz());
        zzb(new zzbc());
        zzb(new zzbh());
        zzb(new zzbi());
        zzb(new zzbk());
    }

    public final zzap zza(zzg zzgVar, zzap zzapVar) {
        zzaw zzawVar;
        zzh.zzc(zzgVar);
        if (!(zzapVar instanceof zzaq)) {
            return zzapVar;
        }
        zzaq zzaqVar = (zzaq) zzapVar;
        ArrayList<zzap> zzc = zzaqVar.zzc();
        String zzb = zzaqVar.zzb();
        if (this.zza.containsKey(zzb)) {
            zzawVar = this.zza.get(zzb);
        } else {
            zzawVar = this.zzb;
        }
        return zzawVar.zza(zzb, zzgVar, zzc);
    }

    public final void zzb(zzaw zzawVar) {
        Iterator<zzbl> it2 = zzawVar.zza.iterator();
        while (it2.hasNext()) {
            this.zza.put(it2.next().zzb().toString(), zzawVar);
        }
    }
}
