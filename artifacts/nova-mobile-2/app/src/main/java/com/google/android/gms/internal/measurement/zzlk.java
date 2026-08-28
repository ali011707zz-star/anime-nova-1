package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* compiled from: com.google.android.gms:play-services-measurement-base@@19.0.2 */
/* loaded from: classes.dex */
final class zzlk<T> implements zzlr<T> {
    private final zzlg zza;
    private final zzmi<?, ?> zzb;
    private final boolean zzc;
    private final zzjm<?> zzd;

    private zzlk(zzmi<?, ?> zzmiVar, zzjm<?> zzjmVar, zzlg zzlgVar) {
        this.zzb = zzmiVar;
        this.zzc = zzjmVar.zzc(zzlgVar);
        this.zzd = zzjmVar;
        this.zza = zzlgVar;
    }

    public static <T> zzlk<T> zzc(zzmi<?, ?> zzmiVar, zzjm<?> zzjmVar, zzlg zzlgVar) {
        return new zzlk<>(zzmiVar, zzjmVar, zzlgVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzlr
    public final int zza(T t10) {
        zzmi<?, ?> zzmiVar = this.zzb;
        int zzb = zzmiVar.zzb(zzmiVar.zzc(t10));
        if (!this.zzc) {
            return zzb;
        }
        this.zzd.zza(t10);
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzlr
    public final int zzb(T t10) {
        int hashCode = this.zzb.zzc(t10).hashCode();
        if (!this.zzc) {
            return hashCode;
        }
        this.zzd.zza(t10);
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzlr
    public final T zze() {
        return (T) this.zza.zzbC().zzaC();
    }

    @Override // com.google.android.gms.internal.measurement.zzlr
    public final void zzf(T t10) {
        this.zzb.zzg(t10);
        this.zzd.zzb(t10);
    }

    @Override // com.google.android.gms.internal.measurement.zzlr
    public final void zzg(T t10, T t11) {
        zzlt.zzF(this.zzb, t10, t11);
        if (this.zzc) {
            zzlt.zzE(this.zzd, t10, t11);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.zzlr
    public final void zzh(T t10, byte[] bArr, int i10, int i11, zzik zzikVar) throws IOException {
        zzjz zzjzVar = (zzjz) t10;
        if (zzjzVar.zzc == zzmj.zzc()) {
            zzjzVar.zzc = zzmj.zze();
        }
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzlr
    public final boolean zzi(T t10, T t11) {
        if (!this.zzb.zzc(t10).equals(this.zzb.zzc(t11))) {
            return false;
        }
        if (!this.zzc) {
            return true;
        }
        this.zzd.zza(t10);
        this.zzd.zza(t11);
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzlr
    public final boolean zzj(T t10) {
        this.zzd.zza(t10);
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzlr
    public final void zzm(T t10, zzjh zzjhVar) throws IOException {
        this.zzd.zza(t10);
        throw null;
    }
}
