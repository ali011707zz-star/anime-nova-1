package com.google.android.gms.internal.measurement;

import com.google.android.material.shadow.ShadowDrawableWrapper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.SortedMap;
import java.util.TreeMap;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes.dex */
public final class zzae implements Iterable<zzap>, zzap, zzal {
    public final SortedMap<Integer, zzap> zza;
    public final Map<String, zzap> zzb;

    public zzae() {
        this.zza = new TreeMap();
        this.zzb = new TreeMap();
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzae)) {
            return false;
        }
        zzae zzaeVar = (zzae) obj;
        if (zzc() != zzaeVar.zzc()) {
            return false;
        }
        if (this.zza.isEmpty()) {
            return zzaeVar.zza.isEmpty();
        }
        for (int intValue = this.zza.firstKey().intValue(); intValue <= this.zza.lastKey().intValue(); intValue++) {
            if (!zze(intValue).equals(zzaeVar.zze(intValue))) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        return this.zza.hashCode() * 31;
    }

    @Override // java.lang.Iterable
    public final Iterator<zzap> iterator() {
        return new zzad(this);
    }

    public final String toString() {
        return zzj(",");
    }

    public final int zzb() {
        return this.zza.size();
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final zzap zzbK(String str, zzg zzgVar, List<zzap> list) {
        if (!"concat".equals(str) && !"every".equals(str) && !"filter".equals(str) && !"forEach".equals(str) && !"indexOf".equals(str) && !"join".equals(str) && !"lastIndexOf".equals(str) && !"map".equals(str) && !"pop".equals(str) && !"push".equals(str) && !"reduce".equals(str) && !"reduceRight".equals(str) && !"reverse".equals(str) && !"shift".equals(str) && !"slice".equals(str) && !"some".equals(str) && !"sort".equals(str) && !"splice".equals(str) && !"toString".equals(str) && !"unshift".equals(str)) {
            return zzaj.zza(this, new zzat(str), zzgVar, list);
        }
        return zzbb.zza(str, this, zzgVar, list);
    }

    public final int zzc() {
        if (this.zza.isEmpty()) {
            return 0;
        }
        return this.zza.lastKey().intValue() + 1;
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final zzap zzd() {
        zzae zzaeVar = new zzae();
        for (Map.Entry<Integer, zzap> entry : this.zza.entrySet()) {
            if (entry.getValue() instanceof zzal) {
                zzaeVar.zza.put(entry.getKey(), entry.getValue());
            } else {
                zzaeVar.zza.put(entry.getKey(), entry.getValue().zzd());
            }
        }
        return zzaeVar;
    }

    public final zzap zze(int i10) {
        zzap zzapVar;
        if (i10 < zzc()) {
            return (!zzs(i10) || (zzapVar = this.zza.get(Integer.valueOf(i10))) == null) ? zzap.zzf : zzapVar;
        }
        throw new IndexOutOfBoundsException("Attempting to get element outside of current array");
    }

    @Override // com.google.android.gms.internal.measurement.zzal
    public final zzap zzf(String str) {
        zzap zzapVar;
        if ("length".equals(str)) {
            return new zzah(Double.valueOf(zzc()));
        }
        return (!zzt(str) || (zzapVar = this.zzb.get(str)) == null) ? zzap.zzf : zzapVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final Boolean zzg() {
        return Boolean.TRUE;
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final Double zzh() {
        if (this.zza.size() == 1) {
            return zze(0).zzh();
        }
        if (this.zza.size() <= 0) {
            return Double.valueOf(ShadowDrawableWrapper.COS_45);
        }
        return Double.valueOf(Double.NaN);
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final String zzi() {
        return zzj(",");
    }

    public final String zzj(String str) {
        if (str == null) {
            str = "";
        }
        StringBuilder sb2 = new StringBuilder();
        if (!this.zza.isEmpty()) {
            for (int i10 = 0; i10 < zzc(); i10++) {
                zzap zze = zze(i10);
                sb2.append(str);
                if (!(zze instanceof zzau) && !(zze instanceof zzan)) {
                    sb2.append(zze.zzi());
                }
            }
            sb2.delete(0, str.length());
        }
        return sb2.toString();
    }

    public final Iterator<Integer> zzk() {
        return this.zza.keySet().iterator();
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final Iterator<zzap> zzl() {
        return new zzac(this, this.zza.keySet().iterator(), this.zzb.keySet().iterator());
    }

    public final List<zzap> zzm() {
        ArrayList arrayList = new ArrayList(zzc());
        for (int i10 = 0; i10 < zzc(); i10++) {
            arrayList.add(zze(i10));
        }
        return arrayList;
    }

    public final void zzn() {
        this.zza.clear();
    }

    public final void zzo(int i10, zzap zzapVar) {
        if (i10 >= 0) {
            if (i10 >= zzc()) {
                zzq(i10, zzapVar);
                return;
            }
            for (int intValue = this.zza.lastKey().intValue(); intValue >= i10; intValue--) {
                SortedMap<Integer, zzap> sortedMap = this.zza;
                Integer valueOf = Integer.valueOf(intValue);
                zzap zzapVar2 = sortedMap.get(valueOf);
                if (zzapVar2 != null) {
                    zzq(intValue + 1, zzapVar2);
                    this.zza.remove(valueOf);
                }
            }
            zzq(i10, zzapVar);
            return;
        }
        StringBuilder sb2 = new StringBuilder(32);
        sb2.append("Invalid value index: ");
        sb2.append(i10);
        throw new IllegalArgumentException(sb2.toString());
    }

    public final void zzp(int i10) {
        int intValue = this.zza.lastKey().intValue();
        if (i10 > intValue || i10 < 0) {
            return;
        }
        this.zza.remove(Integer.valueOf(i10));
        if (i10 == intValue) {
            SortedMap<Integer, zzap> sortedMap = this.zza;
            int i11 = i10 - 1;
            Integer valueOf = Integer.valueOf(i11);
            if (sortedMap.containsKey(valueOf) || i11 < 0) {
                return;
            }
            this.zza.put(valueOf, zzap.zzf);
            return;
        }
        while (true) {
            i10++;
            if (i10 > this.zza.lastKey().intValue()) {
                return;
            }
            SortedMap<Integer, zzap> sortedMap2 = this.zza;
            Integer valueOf2 = Integer.valueOf(i10);
            zzap zzapVar = sortedMap2.get(valueOf2);
            if (zzapVar != null) {
                this.zza.put(Integer.valueOf(i10 - 1), zzapVar);
                this.zza.remove(valueOf2);
            }
        }
    }

    @RequiresNonNull({"elements"})
    public final void zzq(int i10, zzap zzapVar) {
        if (i10 > 32468) {
            throw new IllegalStateException("Array too large");
        }
        if (i10 < 0) {
            StringBuilder sb2 = new StringBuilder(32);
            sb2.append("Out of bounds index: ");
            sb2.append(i10);
            throw new IndexOutOfBoundsException(sb2.toString());
        }
        if (zzapVar == null) {
            this.zza.remove(Integer.valueOf(i10));
        } else {
            this.zza.put(Integer.valueOf(i10), zzapVar);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzal
    public final void zzr(String str, zzap zzapVar) {
        if (zzapVar == null) {
            this.zzb.remove(str);
        } else {
            this.zzb.put(str, zzapVar);
        }
    }

    public final boolean zzs(int i10) {
        if (i10 >= 0 && i10 <= this.zza.lastKey().intValue()) {
            return this.zza.containsKey(Integer.valueOf(i10));
        }
        StringBuilder sb2 = new StringBuilder(32);
        sb2.append("Out of bounds index: ");
        sb2.append(i10);
        throw new IndexOutOfBoundsException(sb2.toString());
    }

    @Override // com.google.android.gms.internal.measurement.zzal
    public final boolean zzt(String str) {
        return "length".equals(str) || this.zzb.containsKey(str);
    }

    public zzae(List<zzap> list) {
        this();
        if (list != null) {
            for (int i10 = 0; i10 < list.size(); i10++) {
                zzq(i10, list.get(i10));
            }
        }
    }
}
