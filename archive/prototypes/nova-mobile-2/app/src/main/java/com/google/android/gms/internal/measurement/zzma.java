package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-measurement-base@@19.0.2 */
/* loaded from: classes.dex */
final class zzma implements Iterator<Map.Entry> {
    public final /* synthetic */ zzme zza;
    private int zzb = -1;
    private boolean zzc;
    private Iterator<Map.Entry> zzd;

    public /* synthetic */ zzma(zzme zzmeVar, zzlz zzlzVar) {
        this.zza = zzmeVar;
    }

    private final Iterator<Map.Entry> zza() {
        Map map;
        if (this.zzd == null) {
            map = this.zza.zzc;
            this.zzd = map.entrySet().iterator();
        }
        return this.zzd;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        List list;
        Map map;
        int i10 = this.zzb + 1;
        list = this.zza.zzb;
        if (i10 < list.size()) {
            return true;
        }
        map = this.zza.zzc;
        return !map.isEmpty() && zza().hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Map.Entry next() {
        List list;
        List list2;
        this.zzc = true;
        int i10 = this.zzb + 1;
        this.zzb = i10;
        list = this.zza.zzb;
        if (i10 < list.size()) {
            list2 = this.zza.zzb;
            return (Map.Entry) list2.get(this.zzb);
        }
        return zza().next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        List list;
        if (this.zzc) {
            this.zzc = false;
            this.zza.zzn();
            int i10 = this.zzb;
            list = this.zza.zzb;
            if (i10 < list.size()) {
                zzme zzmeVar = this.zza;
                int i11 = this.zzb;
                this.zzb = i11 - 1;
                zzmeVar.zzl(i11);
                return;
            }
            zza().remove();
            return;
        }
        throw new IllegalStateException("remove() was called before next()");
    }
}
