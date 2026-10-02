package com.google.android.gms.internal.measurement;

/* compiled from: com.google.android.gms:play-services-measurement-base@@19.0.2 */
/* loaded from: classes.dex */
public class zzkm {
    private static final zzjl zzb = zzjl.zza();
    public volatile zzlg zza;
    private volatile zziy zzc;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzkm)) {
            return false;
        }
        zzkm zzkmVar = (zzkm) obj;
        zzlg zzlgVar = this.zza;
        zzlg zzlgVar2 = zzkmVar.zza;
        if (zzlgVar == null && zzlgVar2 == null) {
            return zzb().equals(zzkmVar.zzb());
        }
        if (zzlgVar != null && zzlgVar2 != null) {
            return zzlgVar.equals(zzlgVar2);
        }
        if (zzlgVar != null) {
            zzkmVar.zzc(zzlgVar.zzbL());
            return zzlgVar.equals(zzkmVar.zza);
        }
        zzc(zzlgVar2.zzbL());
        return this.zza.equals(zzlgVar2);
    }

    public int hashCode() {
        return 1;
    }

    public final int zza() {
        if (this.zzc != null) {
            return ((zziv) this.zzc).zza.length;
        }
        if (this.zza != null) {
            return this.zza.zzbt();
        }
        return 0;
    }

    public final zziy zzb() {
        if (this.zzc != null) {
            return this.zzc;
        }
        synchronized (this) {
            if (this.zzc != null) {
                return this.zzc;
            }
            if (this.zza == null) {
                this.zzc = zziy.zzb;
            } else {
                this.zzc = this.zza.zzbp();
            }
            return this.zzc;
        }
    }

    public final void zzc(zzlg zzlgVar) {
        if (this.zza != null) {
            return;
        }
        synchronized (this) {
            if (this.zza == null) {
                try {
                    this.zza = zzlgVar;
                    this.zzc = zziy.zzb;
                } catch (zzkj unused) {
                    this.zza = zzlgVar;
                    this.zzc = zziy.zzb;
                }
            }
        }
    }
}
