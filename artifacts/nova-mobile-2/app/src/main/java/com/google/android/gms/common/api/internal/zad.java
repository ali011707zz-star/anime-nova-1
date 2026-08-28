package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-base@@17.6.0 */
/* loaded from: classes.dex */
public abstract class zad<T> extends zac {
    public final TaskCompletionSource<T> zaa;

    public zad(int i10, TaskCompletionSource<T> taskCompletionSource) {
        super(i10);
        this.zaa = taskCompletionSource;
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public final void zac(Status status) {
        this.zaa.trySetException(new ApiException(status));
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public final void zad(Exception exc) {
        this.zaa.trySetException(exc);
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public void zae(zaaa zaaaVar, boolean z10) {
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public final void zaf(zabl<?> zablVar) throws DeadObjectException {
        try {
            zag(zablVar);
        } catch (DeadObjectException e10) {
            zac(zai.zah(e10));
            throw e10;
        } catch (RemoteException e11) {
            zac(zai.zah(e11));
        } catch (RuntimeException e12) {
            this.zaa.trySetException(e12);
        }
    }

    public abstract void zag(zabl<?> zablVar) throws RemoteException;
}
