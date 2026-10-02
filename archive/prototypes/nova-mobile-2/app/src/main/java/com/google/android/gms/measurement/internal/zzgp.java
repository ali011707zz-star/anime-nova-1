package com.google.android.gms.measurement.internal;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes.dex */
public abstract class zzgp extends zzgo {
    private boolean zza;

    public zzgp(zzfv zzfvVar) {
        super(zzfvVar);
        this.zzs.zzD();
    }

    public void zzaA() {
    }

    public abstract boolean zzf();

    public final void zzu() {
        if (!zzx()) {
            throw new IllegalStateException("Not initialized");
        }
    }

    public final void zzv() {
        if (!this.zza) {
            if (zzf()) {
                return;
            }
            this.zzs.zzB();
            this.zza = true;
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }

    public final void zzw() {
        if (!this.zza) {
            zzaA();
            this.zzs.zzB();
            this.zza = true;
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }

    public final boolean zzx() {
        return this.zza;
    }
}
