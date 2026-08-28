package com.google.android.gms.common.api.internal;

import android.content.Context;
import com.google.android.gms.auth.api.signin.internal.Storage;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-base@@17.6.0 */
/* loaded from: classes.dex */
public final class zaaw implements ResultCallback<Status> {
    public final /* synthetic */ StatusPendingResult zaa;
    public final /* synthetic */ boolean zab;
    public final /* synthetic */ GoogleApiClient zac;
    public final /* synthetic */ zaaz zad;

    public zaaw(zaaz zaazVar, StatusPendingResult statusPendingResult, boolean z10, GoogleApiClient googleApiClient) {
        this.zad = zaazVar;
        this.zaa = statusPendingResult;
        this.zab = z10;
        this.zac = googleApiClient;
    }

    @Override // com.google.android.gms.common.api.ResultCallback
    public final /* bridge */ /* synthetic */ void onResult(Status status) {
        Context context;
        Status status2 = status;
        context = this.zad.zan;
        Storage.getInstance(context).zac();
        if (status2.isSuccess() && this.zad.isConnected()) {
            zaaz zaazVar = this.zad;
            zaazVar.disconnect();
            zaazVar.connect();
        }
        this.zaa.setResult(status2);
        if (this.zab) {
            this.zac.disconnect();
        }
    }
}
