package com.google.android.gms.internal.common;

import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-basement@@17.6.0 */
/* loaded from: classes.dex */
public final class zzt extends zzu {
    public final transient int zza;
    public final transient int zzb;
    public final /* synthetic */ zzu zzc;

    public zzt(zzu zzuVar, int i10, int i11) {
        this.zzc = zzuVar;
        this.zza = i10;
        this.zzb = i11;
    }

    @Override // java.util.List
    public final Object get(int i10) {
        zzl.zza(i10, this.zzb, "index");
        return this.zzc.get(i10 + this.zza);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.common.zzu, java.util.List
    public final /* bridge */ /* synthetic */ List subList(int i10, int i11) {
        return subList(i10, i11);
    }

    @Override // com.google.android.gms.internal.common.zzq
    public final Object[] zzb() {
        return this.zzc.zzb();
    }

    @Override // com.google.android.gms.internal.common.zzq
    public final int zzc() {
        return this.zzc.zzc() + this.zza;
    }

    @Override // com.google.android.gms.internal.common.zzq
    public final int zzd() {
        return this.zzc.zzc() + this.zza + this.zzb;
    }

    @Override // com.google.android.gms.internal.common.zzq
    public final boolean zzf() {
        return true;
    }

    @Override // com.google.android.gms.internal.common.zzu
    /* renamed from: zzh */
    public final zzu subList(int i10, int i11) {
        zzl.zzc(i10, i11, this.zzb);
        zzu zzuVar = this.zzc;
        int i12 = this.zza;
        return zzuVar.subList(i10 + i12, i11 + i12);
    }
}
