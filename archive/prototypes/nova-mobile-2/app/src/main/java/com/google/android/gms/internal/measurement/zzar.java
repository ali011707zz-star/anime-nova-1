package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes.dex */
final class zzar implements Iterator<zzap> {
    public final /* synthetic */ zzat zza;
    private int zzb = 0;

    public zzar(zzat zzatVar) {
        this.zza = zzatVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        String str;
        int i10 = this.zzb;
        str = this.zza.zza;
        return i10 < str.length();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ zzap next() {
        String str;
        int i10 = this.zzb;
        str = this.zza.zza;
        if (i10 < str.length()) {
            int i11 = this.zzb;
            this.zzb = i11 + 1;
            return new zzat(String.valueOf(i11));
        }
        throw new NoSuchElementException();
    }
}
