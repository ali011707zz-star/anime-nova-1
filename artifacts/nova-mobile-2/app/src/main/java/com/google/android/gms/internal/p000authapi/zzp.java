package com.google.android.gms.internal.p000authapi;

import android.content.Context;
import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.auth.api.Auth;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.internal.BaseImplementation;

/* loaded from: classes.dex */
abstract class zzp<R extends Result> extends BaseImplementation.ApiMethodImpl<R, zzr> {
    public zzp(GoogleApiClient googleApiClient) {
        super(Auth.CREDENTIALS_API, googleApiClient);
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    public /* synthetic */ void doExecute(zzr zzrVar) throws RemoteException {
        zzr zzrVar2 = zzrVar;
        zzc(zzrVar2.getContext(), (zzw) zzrVar2.getService());
    }

    public abstract void zzc(Context context, zzw zzwVar) throws DeadObjectException, RemoteException;
}
