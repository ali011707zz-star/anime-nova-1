package com.google.android.gms.internal.measurement;

import java.util.Iterator;

/* compiled from: com.google.android.gms:play-services-measurement-base@@19.0.2 */
/* loaded from: classes.dex */
final class zzmm implements Iterator<String> {
    public final Iterator<String> zza;
    public final /* synthetic */ zzmn zzb;

    public zzmm(zzmn zzmnVar) {
        zzko zzkoVar;
        this.zzb = zzmnVar;
        zzkoVar = zzmnVar.zza;
        this.zza = zzkoVar.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zza.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ String next() {
        return this.zza.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
