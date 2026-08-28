package com.google.android.gms.internal.p000authapi;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
final class zzm extends zzp<Status> {
    private final /* synthetic */ Credential zzao;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzm(zzi zziVar, GoogleApiClient googleApiClient, Credential credential) {
        super(googleApiClient);
        this.zzao = credential;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* synthetic */ Result createFailedResult(Status status) {
        return status;
    }

    @Override // com.google.android.gms.internal.p000authapi.zzp
    public final void zzc(Context context, zzw zzwVar) throws RemoteException {
        zzwVar.zzc(new zzo(this), new zzs(this.zzao));
    }
}
