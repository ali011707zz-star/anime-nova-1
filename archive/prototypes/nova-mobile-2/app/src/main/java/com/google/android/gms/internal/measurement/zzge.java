package com.google.android.gms.internal.measurement;

/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes.dex */
public final class zzge extends zzjv<zzgf, zzge> implements zzlh {
    private zzge() {
        super(zzgf.zze());
    }

    public final zzge zza(Iterable<? extends Long> iterable) {
        if (this.zzb) {
            zzaE();
            this.zzb = false;
        }
        zzgf.zzh((zzgf) this.zza, iterable);
        return this;
    }

    public final zzge zzb(int i10) {
        if (this.zzb) {
            zzaE();
            this.zzb = false;
        }
        zzgf.zzg((zzgf) this.zza, i10);
        return this;
    }

    public /* synthetic */ zzge(zzff zzffVar) {
        super(zzgf.zze());
    }
}
