package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes.dex */
final class zzas implements Iterator<zzap> {
    public final /* synthetic */ zzat zza;
    private int zzb = 0;

    public zzas(zzat zzatVar) {
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
        String str2;
        int i10 = this.zzb;
        str = this.zza.zza;
        if (i10 < str.length()) {
            str2 = this.zza.zza;
            int i11 = this.zzb;
            this.zzb = i11 + 1;
            return new zzat(String.valueOf(str2.charAt(i11)));
        }
        throw new NoSuchElementException();
    }
}
