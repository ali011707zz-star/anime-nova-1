package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Iterator;

/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes.dex */
public final class zzao {
    public final String zza;
    public final String zzb;
    public final String zzc;
    public final long zzd;
    public final long zze;
    public final zzar zzf;

    public zzao(zzfv zzfvVar, String str, String str2, String str3, long j10, long j11, Bundle bundle) {
        zzar zzarVar;
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkNotEmpty(str3);
        this.zza = str2;
        this.zzb = str3;
        this.zzc = true == TextUtils.isEmpty(str) ? null : str;
        this.zzd = j10;
        this.zze = j11;
        if (j11 != 0 && j11 > j10) {
            zzfvVar.zzay().zzk().zzb("Event created with reverse previous/current timestamps. appId", zzel.zzn(str2));
        }
        if (bundle != null && !bundle.isEmpty()) {
            Bundle bundle2 = new Bundle(bundle);
            Iterator<String> it2 = bundle2.keySet().iterator();
            while (it2.hasNext()) {
                String next = it2.next();
                if (next == null) {
                    zzfvVar.zzay().zzd().zza("Param name can't be null");
                    it2.remove();
                } else {
                    Object zzA = zzfvVar.zzv().zzA(next, bundle2.get(next));
                    if (zzA == null) {
                        zzfvVar.zzay().zzk().zzb("Param value can't be null", zzfvVar.zzj().zze(next));
                        it2.remove();
                    } else {
                        zzfvVar.zzv().zzN(bundle2, next, zzA);
                    }
                }
            }
            zzarVar = new zzar(bundle2);
        } else {
            zzarVar = new zzar(new Bundle());
        }
        this.zzf = zzarVar;
    }

    public final String toString() {
        String str = this.zza;
        String str2 = this.zzb;
        String valueOf = String.valueOf(this.zzf);
        int length = String.valueOf(str).length();
        StringBuilder sb2 = new StringBuilder(length + 33 + String.valueOf(str2).length() + valueOf.length());
        sb2.append("Event{appId='");
        sb2.append(str);
        sb2.append("', name='");
        sb2.append(str2);
        sb2.append("', params=");
        sb2.append(valueOf);
        sb2.append('}');
        return sb2.toString();
    }

    public final zzao zza(zzfv zzfvVar, long j10) {
        return new zzao(zzfvVar, this.zzc, this.zza, this.zzb, this.zzd, j10, this.zzf);
    }

    private zzao(zzfv zzfvVar, String str, String str2, String str3, long j10, long j11, zzar zzarVar) {
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkNotEmpty(str3);
        Preconditions.checkNotNull(zzarVar);
        this.zza = str2;
        this.zzb = str3;
        this.zzc = true == TextUtils.isEmpty(str) ? null : str;
        this.zzd = j10;
        this.zze = j11;
        if (j11 != 0 && j11 > j10) {
            zzfvVar.zzay().zzk().zzc("Event created with reverse previous/current timestamps. appId, name", zzel.zzn(str2), zzel.zzn(str3));
        }
        this.zzf = zzarVar;
    }
}
