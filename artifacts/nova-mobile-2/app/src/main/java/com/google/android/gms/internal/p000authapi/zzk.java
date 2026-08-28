package com.google.android.gms.internal.p000authapi;

import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
final class zzk extends zzg {
    private final /* synthetic */ zzj zzan;

    public zzk(zzj zzjVar) {
        this.zzan = zzjVar;
    }

    @Override // com.google.android.gms.internal.p000authapi.zzg, com.google.android.gms.internal.p000authapi.zzu
    public final void zzc(Status status, Credential credential) {
        this.zzan.setResult((zzj) new zzh(status, credential));
    }

    @Override // com.google.android.gms.internal.p000authapi.zzg, com.google.android.gms.internal.p000authapi.zzu
    public final void zzc(Status status) {
        this.zzan.setResult((zzj) zzh.zzd(status));
    }
}
