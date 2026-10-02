package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes.dex */
final class zzac implements Iterator<zzap> {
    public final /* synthetic */ Iterator zza;
    public final /* synthetic */ Iterator zzb;

    public zzac(zzae zzaeVar, Iterator it2, Iterator it3) {
        this.zza = it2;
        this.zzb = it3;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.zza.hasNext()) {
            return true;
        }
        return this.zzb.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ zzap next() {
        if (this.zza.hasNext()) {
            return new zzat(((Integer) this.zza.next()).toString());
        }
        if (this.zzb.hasNext()) {
            return new zzat((String) this.zzb.next());
        }
        throw new NoSuchElementException();
    }
}
