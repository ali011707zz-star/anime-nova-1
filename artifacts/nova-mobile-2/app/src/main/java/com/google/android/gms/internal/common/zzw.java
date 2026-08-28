package com.google.android.gms.internal.common;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-basement@@17.6.0 */
/* loaded from: classes.dex */
public final class zzw<E> extends zzu<E> {
    public static final zzu<Object> zza = new zzw(new Object[0], 0);
    public final transient Object[] zzb;
    private final transient int zzc;

    public zzw(Object[] objArr, int i10) {
        this.zzb = objArr;
        this.zzc = i10;
    }

    @Override // java.util.List
    public final E get(int i10) {
        zzl.zza(i10, this.zzc, "index");
        return (E) this.zzb[i10];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.common.zzq
    public final Object[] zzb() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.common.zzq
    public final int zzc() {
        return 0;
    }

    @Override // com.google.android.gms.internal.common.zzq
    public final int zzd() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.common.zzq
    public final boolean zzf() {
        return false;
    }

    @Override // com.google.android.gms.internal.common.zzu, com.google.android.gms.internal.common.zzq
    public final int zzg(Object[] objArr, int i10) {
        System.arraycopy(this.zzb, 0, objArr, 0, this.zzc);
        return this.zzc;
    }
}
