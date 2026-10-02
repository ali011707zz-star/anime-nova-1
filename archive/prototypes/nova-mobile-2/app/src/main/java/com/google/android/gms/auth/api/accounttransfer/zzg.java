package com.google.android.gms.auth.api.accounttransfer;

import android.os.RemoteException;
import com.google.android.gms.auth.api.accounttransfer.AccountTransferClient;
import com.google.android.gms.internal.auth.zzz;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzg extends AccountTransferClient.zzb<DeviceMetaData> {
    private final /* synthetic */ com.google.android.gms.internal.auth.zzv zzar;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzg(AccountTransferClient accountTransferClient, com.google.android.gms.internal.auth.zzv zzvVar) {
        super(null);
        this.zzar = zzvVar;
    }

    @Override // com.google.android.gms.auth.api.accounttransfer.AccountTransferClient.zzb
    public final void zza(zzz zzzVar) throws RemoteException {
        zzzVar.zza(new zzh(this, this), this.zzar);
    }
}
