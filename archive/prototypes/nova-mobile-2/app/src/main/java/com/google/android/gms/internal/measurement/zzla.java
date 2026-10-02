package com.google.android.gms.internal.measurement;

import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* compiled from: com.google.android.gms:play-services-measurement-base@@19.0.2 */
/* loaded from: classes.dex */
public final class zzla<K, V> extends LinkedHashMap<K, V> {
    private static final zzla zza;
    private boolean zzb;

    static {
        zzla zzlaVar = new zzla();
        zza = zzlaVar;
        zzlaVar.zzb = false;
    }

    private zzla() {
        this.zzb = true;
    }

    public static <K, V> zzla<K, V> zza() {
        return zza;
    }

    private static int zzf(Object obj) {
        if (obj instanceof byte[]) {
            return zzkh.zzb((byte[]) obj);
        }
        if (!(obj instanceof zzkb)) {
            return obj.hashCode();
        }
        throw new UnsupportedOperationException();
    }

    private final void zzg() {
        if (!this.zzb) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void clear() {
        zzg();
        super.clear();
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        return isEmpty() ? Collections.emptySet() : super.entrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        boolean equals;
        if (!(obj instanceof Map)) {
            return false;
        }
        Map map = (Map) obj;
        if (this == map) {
            return true;
        }
        if (size() != map.size()) {
            return false;
        }
        for (Map.Entry<K, V> entry : entrySet()) {
            if (!map.containsKey(entry.getKey())) {
                return false;
            }
            V value = entry.getValue();
            Object obj2 = map.get(entry.getKey());
            if ((value instanceof byte[]) && (obj2 instanceof byte[])) {
                equals = Arrays.equals((byte[]) value, (byte[]) obj2);
            } else {
                equals = value.equals(obj2);
            }
            if (!equals) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int i10 = 0;
        for (Map.Entry<K, V> entry : entrySet()) {
            i10 += zzf(entry.getValue()) ^ zzf(entry.getKey());
        }
        return i10;
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V put(K k10, V v10) {
        zzg();
        zzkh.zze(k10);
        zzkh.zze(v10);
        return (V) super.put(k10, v10);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void putAll(Map<? extends K, ? extends V> map) {
        zzg();
        for (K k10 : map.keySet()) {
            zzkh.zze(k10);
            zzkh.zze(map.get(k10));
        }
        super.putAll(map);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        zzg();
        return (V) super.remove(obj);
    }

    public final zzla<K, V> zzb() {
        return isEmpty() ? new zzla<>() : new zzla<>(this);
    }

    public final void zzc() {
        this.zzb = false;
    }

    public final void zzd(zzla<K, V> zzlaVar) {
        zzg();
        if (zzlaVar.isEmpty()) {
            return;
        }
        putAll(zzlaVar);
    }

    public final boolean zze() {
        return this.zzb;
    }

    private zzla(Map<K, V> map) {
        super(map);
        this.zzb = true;
    }
}
