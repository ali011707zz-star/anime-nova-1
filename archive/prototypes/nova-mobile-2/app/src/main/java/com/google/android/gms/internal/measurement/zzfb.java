package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes.dex */
public final class zzfb extends zzjv<zzfc, zzfb> implements zzlh {
    private zzfb() {
        super(zzfc.zzf());
    }

    public final int zza() {
        return ((zzfc) this.zza).zzb();
    }

    public final zzfa zzb(int i10) {
        return ((zzfc) this.zza).zzd(i10);
    }

    public final zzfb zzc() {
        if (this.zzb) {
            zzaE();
            this.zzb = false;
        }
        zzfc.zzn((zzfc) this.zza);
        return this;
    }

    public final zzfb zzd(int i10, zzez zzezVar) {
        if (this.zzb) {
            zzaE();
            this.zzb = false;
        }
        zzfc.zzm((zzfc) this.zza, i10, zzezVar.zzaA());
        return this;
    }

    public final List<zzeh> zze() {
        return Collections.unmodifiableList(((zzfc) this.zza).zzi());
    }

    public /* synthetic */ zzfb(zzey zzeyVar) {
        super(zzfc.zzf());
    }
}
