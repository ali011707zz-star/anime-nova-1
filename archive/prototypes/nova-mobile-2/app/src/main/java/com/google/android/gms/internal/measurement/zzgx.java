package com.google.android.gms.internal.measurement;

import android.content.Context;
import javax.annotation.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes.dex */
public final class zzgx extends zzhs {
    private final Context zza;
    private final zzib<zzhz<zzhi>> zzb;

    public zzgx(Context context, @Nullable zzib<zzhz<zzhi>> zzibVar) {
        if (context == null) {
            throw new NullPointerException("Null context");
        }
        this.zza = context;
        this.zzb = zzibVar;
    }

    public final boolean equals(Object obj) {
        zzib<zzhz<zzhi>> zzibVar;
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzhs) {
            zzhs zzhsVar = (zzhs) obj;
            if (this.zza.equals(zzhsVar.zza()) && ((zzibVar = this.zzb) != null ? zzibVar.equals(zzhsVar.zzb()) : zzhsVar.zzb() == null)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = (this.zza.hashCode() ^ 1000003) * 1000003;
        zzib<zzhz<zzhi>> zzibVar = this.zzb;
        return hashCode ^ (zzibVar == null ? 0 : zzibVar.hashCode());
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zza);
        String valueOf2 = String.valueOf(this.zzb);
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 46 + valueOf2.length());
        sb2.append("FlagsContext{context=");
        sb2.append(valueOf);
        sb2.append(", hermeticFileOverrides=");
        sb2.append(valueOf2);
        sb2.append("}");
        return sb2.toString();
    }

    @Override // com.google.android.gms.internal.measurement.zzhs
    public final Context zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.measurement.zzhs
    @Nullable
    public final zzib<zzhz<zzhi>> zzb() {
        return this.zzb;
    }
}
