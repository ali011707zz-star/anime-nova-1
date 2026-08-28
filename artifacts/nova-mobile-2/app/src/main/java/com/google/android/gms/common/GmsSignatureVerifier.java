package com.google.android.gms.common;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ShowFirstParty;

/* compiled from: com.google.android.gms:play-services-basement@@17.6.0 */
@ShowFirstParty
@KeepForSdk
/* loaded from: classes.dex */
public class GmsSignatureVerifier {
    private static final zzz zza;
    private static final zzz zzb;

    static {
        zzy zzyVar = new zzy();
        zzyVar.zza("com.google.android.gms");
        zzyVar.zzb(204200000L);
        zzk zzkVar = zzm.zzd;
        zzyVar.zzc(com.google.android.gms.internal.common.zzu.zzk(zzkVar.zzc(), zzm.zzb.zzc()));
        zzk zzkVar2 = zzm.zzc;
        zzyVar.zzd(com.google.android.gms.internal.common.zzu.zzk(zzkVar2.zzc(), zzm.zza.zzc()));
        zza = zzyVar.zze();
        zzy zzyVar2 = new zzy();
        zzyVar2.zza("com.android.vending");
        zzyVar2.zzb(82240000L);
        zzyVar2.zzc(com.google.android.gms.internal.common.zzu.zzj(zzkVar.zzc()));
        zzyVar2.zzd(com.google.android.gms.internal.common.zzu.zzj(zzkVar2.zzc()));
        zzb = zzyVar2.zze();
    }
}
