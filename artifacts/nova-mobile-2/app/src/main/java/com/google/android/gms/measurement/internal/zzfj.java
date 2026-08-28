package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import s.e;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes.dex */
public final class zzfj extends e<String, com.google.android.gms.internal.measurement.zzc> {
    public final /* synthetic */ zzfm zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfj(zzfm zzfmVar, int i10) {
        super(20);
        this.zza = zzfmVar;
    }

    @Override // s.e
    public final /* bridge */ /* synthetic */ com.google.android.gms.internal.measurement.zzc create(String str) {
        String str2 = str;
        Preconditions.checkNotEmpty(str2);
        return zzfm.zzd(this.zza, str2);
    }
}
