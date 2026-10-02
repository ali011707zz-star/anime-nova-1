package com.google.android.gms.internal.auth;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzi extends BaseImplementation.ApiMethodImpl<Result, zzr> {
    private final /* synthetic */ boolean zzae;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzi(zzh zzhVar, Api api, GoogleApiClient googleApiClient, boolean z10) {
        super((Api<?>) api, googleApiClient);
        this.zzae = z10;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final Result createFailedResult(Status status) {
        return new zzp(status);
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    public final /* synthetic */ void doExecute(zzr zzrVar) throws RemoteException {
        ((com.google.android.gms.auth.account.zzc) zzrVar.getService()).zzb(this.zzae);
        setResult((zzi) new zzp(Status.RESULT_SUCCESS));
    }
}
