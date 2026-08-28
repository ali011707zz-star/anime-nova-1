package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import java.util.concurrent.locks.Lock;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-base@@17.6.0 */
/* loaded from: classes.dex */
public final class zaw implements zabt {
    public final /* synthetic */ zax zaa;

    public /* synthetic */ zaw(zax zaxVar, zau zauVar) {
        this.zaa = zaxVar;
    }

    @Override // com.google.android.gms.common.api.internal.zabt
    public final void zaa(Bundle bundle) {
        Lock lock;
        Lock lock2;
        lock = this.zaa.zam;
        lock.lock();
        try {
            this.zaa.zak = ConnectionResult.RESULT_SUCCESS;
            zax.zap(this.zaa);
        } finally {
            lock2 = this.zaa.zam;
            lock2.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabt
    public final void zab(ConnectionResult connectionResult) {
        Lock lock;
        Lock lock2;
        lock = this.zaa.zam;
        lock.lock();
        try {
            this.zaa.zak = connectionResult;
            zax.zap(this.zaa);
        } finally {
            lock2 = this.zaa.zam;
            lock2.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabt
    public final void zac(int i10, boolean z10) {
        Lock lock;
        Lock lock2;
        boolean z11;
        zabd zabdVar;
        Lock lock3;
        lock = this.zaa.zam;
        lock.lock();
        try {
            z11 = this.zaa.zal;
            if (z11) {
                this.zaa.zal = false;
                zax.zav(this.zaa, i10, z10);
                lock3 = this.zaa.zam;
            } else {
                this.zaa.zal = true;
                zabdVar = this.zaa.zad;
                zabdVar.onConnectionSuspended(i10);
                lock3 = this.zaa.zam;
            }
            lock3.unlock();
        } catch (Throwable th) {
            lock2 = this.zaa.zam;
            lock2.unlock();
            throw th;
        }
    }
}
