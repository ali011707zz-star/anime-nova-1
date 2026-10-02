package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultTransform;
import com.google.android.gms.common.internal.Preconditions;
import java.lang.ref.WeakReference;

/* compiled from: com.google.android.gms:play-services-base@@17.6.0 */
/* loaded from: classes.dex */
final class zact implements Runnable {
    public final /* synthetic */ Result zaa;
    public final /* synthetic */ zacv zab;

    public zact(zacv zacvVar, Result result) {
        this.zab = zacvVar;
        this.zaa = result;
    }

    @Override // java.lang.Runnable
    public final void run() {
        WeakReference weakReference;
        zacu zacuVar;
        zacu zacuVar2;
        WeakReference weakReference2;
        GoogleApiClient googleApiClient;
        ResultTransform resultTransform;
        zacu zacuVar3;
        zacu zacuVar4;
        WeakReference weakReference3;
        try {
            try {
                ThreadLocal<Boolean> threadLocal = BasePendingResult.zaa;
                threadLocal.set(Boolean.TRUE);
                resultTransform = this.zab.zaa;
                PendingResult onSuccess = ((ResultTransform) Preconditions.checkNotNull(resultTransform)).onSuccess(this.zaa);
                zacuVar3 = this.zab.zah;
                zacuVar4 = this.zab.zah;
                zacuVar3.sendMessage(zacuVar4.obtainMessage(0, onSuccess));
                threadLocal.set(Boolean.FALSE);
                zacv zacvVar = this.zab;
                zacv.zan(this.zaa);
                weakReference3 = this.zab.zag;
                googleApiClient = (GoogleApiClient) weakReference3.get();
                if (googleApiClient == null) {
                    return;
                }
            } catch (RuntimeException e10) {
                zacuVar = this.zab.zah;
                zacuVar2 = this.zab.zah;
                zacuVar.sendMessage(zacuVar2.obtainMessage(1, e10));
                BasePendingResult.zaa.set(Boolean.FALSE);
                zacv zacvVar2 = this.zab;
                zacv.zan(this.zaa);
                weakReference2 = this.zab.zag;
                googleApiClient = (GoogleApiClient) weakReference2.get();
                if (googleApiClient == null) {
                    return;
                }
            }
            googleApiClient.zap(this.zab);
        } catch (Throwable th) {
            BasePendingResult.zaa.set(Boolean.FALSE);
            zacv zacvVar3 = this.zab;
            zacv.zan(this.zaa);
            weakReference = this.zab.zag;
            GoogleApiClient googleApiClient2 = (GoogleApiClient) weakReference.get();
            if (googleApiClient2 != null) {
                googleApiClient2.zap(this.zab);
            }
            throw th;
        }
    }
}
