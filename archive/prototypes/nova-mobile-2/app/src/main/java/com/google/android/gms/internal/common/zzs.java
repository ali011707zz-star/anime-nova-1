package com.google.android.gms.internal.common;

/* compiled from: com.google.android.gms:play-services-basement@@17.6.0 */
/* loaded from: classes.dex */
final class zzs<E> extends zzn<E> {
    private final zzu<E> zza;

    public zzs(zzu<E> zzuVar, int i10) {
        super(zzuVar.size(), i10);
        this.zza = zzuVar;
    }

    @Override // com.google.android.gms.internal.common.zzn
    public final E zza(int i10) {
        return this.zza.get(i10);
    }
}
