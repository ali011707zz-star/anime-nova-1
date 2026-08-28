package com.google.android.gms.dynamite;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;

/* compiled from: com.google.android.gms:play-services-basement@@17.6.0 */
/* loaded from: classes.dex */
final class zzh implements DynamiteModule.VersionPolicy {
    @Override // com.google.android.gms.dynamite.DynamiteModule.VersionPolicy
    public final zzn zza(Context context, String str, zzm zzmVar) throws DynamiteModule.LoadingException {
        int zza;
        zzn zznVar = new zzn();
        int zzb = zzmVar.zzb(context, str);
        zznVar.zza = zzb;
        int i10 = 0;
        if (zzb != 0) {
            zza = zzmVar.zza(context, str, false);
            zznVar.zzb = zza;
        } else {
            zza = zzmVar.zza(context, str, true);
            zznVar.zzb = zza;
        }
        int i11 = zznVar.zza;
        if (i11 != 0) {
            i10 = i11;
        } else if (zza == 0) {
            zznVar.zzc = 0;
            return zznVar;
        }
        if (i10 >= zza) {
            zznVar.zzc = -1;
        } else {
            zznVar.zzc = 1;
        }
        return zznVar;
    }
}
