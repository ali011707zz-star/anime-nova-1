package com.google.android.gms.auth.api.accounttransfer;

import com.google.android.gms.auth.api.accounttransfer.AccountTransferClient;
import com.google.android.gms.common.api.Status;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzk extends com.google.android.gms.internal.auth.zzs {
    private final /* synthetic */ AccountTransferClient.zzc zzay;

    public zzk(AccountTransferClient.zzc zzcVar) {
        this.zzay = zzcVar;
    }

    @Override // com.google.android.gms.internal.auth.zzs, com.google.android.gms.internal.auth.zzx
    public final void onFailure(Status status) {
        this.zzay.zza(status);
    }

    @Override // com.google.android.gms.internal.auth.zzs, com.google.android.gms.internal.auth.zzx
    public final void zzd() {
        this.zzay.setResult(null);
    }
}
