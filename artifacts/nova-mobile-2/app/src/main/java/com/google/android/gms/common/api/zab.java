package com.google.android.gms.common.api;

import com.google.android.gms.common.api.PendingResult;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-base@@17.6.0 */
/* loaded from: classes.dex */
public final class zab implements PendingResult.StatusListener {
    public final /* synthetic */ Batch zaa;

    public zab(Batch batch) {
        this.zaa = batch;
    }

    @Override // com.google.android.gms.common.api.PendingResult.StatusListener
    public final void onComplete(Status status) {
        Object obj;
        int i10;
        boolean z10;
        boolean z11;
        Status status2;
        PendingResult[] pendingResultArr;
        obj = this.zaa.zai;
        synchronized (obj) {
            if (this.zaa.isCanceled()) {
                return;
            }
            if (status.isCanceled()) {
                Batch.zab(this.zaa, true);
            } else if (!status.isSuccess()) {
                Batch.zac(this.zaa, true);
            }
            Batch.zad(this.zaa);
            i10 = this.zaa.zae;
            if (i10 == 0) {
                z10 = this.zaa.zag;
                if (z10) {
                    super/*com.google.android.gms.common.api.internal.BasePendingResult*/.cancel();
                } else {
                    z11 = this.zaa.zaf;
                    if (z11) {
                        status2 = new Status(13);
                    } else {
                        status2 = Status.RESULT_SUCCESS;
                    }
                    Batch batch = this.zaa;
                    pendingResultArr = batch.zah;
                    batch.setResult(new BatchResult(status2, pendingResultArr));
                }
            }
        }
    }
}
