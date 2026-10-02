package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;

/* compiled from: com.google.android.gms:play-services-base@@17.6.0 */
/* loaded from: classes.dex */
public final class zak implements Handler.Callback {

    @NotOnlyInitialized
    private final zaj zab;
    private final Handler zah;
    private final ArrayList<GoogleApiClient.ConnectionCallbacks> zac = new ArrayList<>();

    @VisibleForTesting
    public final ArrayList<GoogleApiClient.ConnectionCallbacks> zaa = new ArrayList<>();
    private final ArrayList<GoogleApiClient.OnConnectionFailedListener> zad = new ArrayList<>();
    private volatile boolean zae = false;
    private final AtomicInteger zaf = new AtomicInteger(0);
    private boolean zag = false;
    private final Object zai = new Object();

    public zak(Looper looper, zaj zajVar) {
        this.zab = zajVar;
        this.zah = new com.google.android.gms.internal.base.zap(looper, this);
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i10 = message.what;
        if (i10 == 1) {
            GoogleApiClient.ConnectionCallbacks connectionCallbacks = (GoogleApiClient.ConnectionCallbacks) message.obj;
            synchronized (this.zai) {
                if (this.zae && this.zab.isConnected() && this.zac.contains(connectionCallbacks)) {
                    connectionCallbacks.onConnected(null);
                }
            }
            return true;
        }
        StringBuilder sb2 = new StringBuilder(45);
        sb2.append("Don't know how to handle message: ");
        sb2.append(i10);
        Log.wtf("GmsClientEvents", sb2.toString(), new Exception());
        return false;
    }

    public final void zaa() {
        this.zae = false;
        this.zaf.incrementAndGet();
    }

    public final void zab() {
        this.zae = true;
    }

    @VisibleForTesting
    public final void zac(Bundle bundle) {
        Preconditions.checkHandlerThread(this.zah, "onConnectionSuccess must only be called on the Handler thread");
        synchronized (this.zai) {
            boolean z10 = true;
            Preconditions.checkState(!this.zag);
            this.zah.removeMessages(1);
            this.zag = true;
            if (this.zaa.size() != 0) {
                z10 = false;
            }
            Preconditions.checkState(z10);
            ArrayList arrayList = new ArrayList(this.zac);
            int i10 = this.zaf.get();
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                GoogleApiClient.ConnectionCallbacks connectionCallbacks = (GoogleApiClient.ConnectionCallbacks) it2.next();
                if (!this.zae || !this.zab.isConnected() || this.zaf.get() != i10) {
                    break;
                } else if (!this.zaa.contains(connectionCallbacks)) {
                    connectionCallbacks.onConnected(bundle);
                }
            }
            this.zaa.clear();
            this.zag = false;
        }
    }

    @VisibleForTesting
    public final void zad(int i10) {
        Preconditions.checkHandlerThread(this.zah, "onUnintentionalDisconnection must only be called on the Handler thread");
        this.zah.removeMessages(1);
        synchronized (this.zai) {
            this.zag = true;
            ArrayList arrayList = new ArrayList(this.zac);
            int i11 = this.zaf.get();
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                GoogleApiClient.ConnectionCallbacks connectionCallbacks = (GoogleApiClient.ConnectionCallbacks) it2.next();
                if (!this.zae || this.zaf.get() != i11) {
                    break;
                } else if (this.zac.contains(connectionCallbacks)) {
                    connectionCallbacks.onConnectionSuspended(i10);
                }
            }
            this.zaa.clear();
            this.zag = false;
        }
    }

    @VisibleForTesting
    public final void zae(ConnectionResult connectionResult) {
        Preconditions.checkHandlerThread(this.zah, "onConnectionFailure must only be called on the Handler thread");
        this.zah.removeMessages(1);
        synchronized (this.zai) {
            ArrayList arrayList = new ArrayList(this.zad);
            int i10 = this.zaf.get();
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener = (GoogleApiClient.OnConnectionFailedListener) it2.next();
                if (this.zae && this.zaf.get() == i10) {
                    if (this.zad.contains(onConnectionFailedListener)) {
                        onConnectionFailedListener.onConnectionFailed(connectionResult);
                    }
                }
                return;
            }
        }
    }

    public final void zaf(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        Preconditions.checkNotNull(connectionCallbacks);
        synchronized (this.zai) {
            if (this.zac.contains(connectionCallbacks)) {
                String valueOf = String.valueOf(connectionCallbacks);
                StringBuilder sb2 = new StringBuilder(valueOf.length() + 62);
                sb2.append("registerConnectionCallbacks(): listener ");
                sb2.append(valueOf);
                sb2.append(" is already registered");
            } else {
                this.zac.add(connectionCallbacks);
            }
        }
        if (this.zab.isConnected()) {
            Handler handler = this.zah;
            handler.sendMessage(handler.obtainMessage(1, connectionCallbacks));
        }
    }

    public final boolean zag(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        boolean contains;
        Preconditions.checkNotNull(connectionCallbacks);
        synchronized (this.zai) {
            contains = this.zac.contains(connectionCallbacks);
        }
        return contains;
    }

    public final void zah(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        Preconditions.checkNotNull(connectionCallbacks);
        synchronized (this.zai) {
            if (!this.zac.remove(connectionCallbacks)) {
                String valueOf = String.valueOf(connectionCallbacks);
                StringBuilder sb2 = new StringBuilder(valueOf.length() + 52);
                sb2.append("unregisterConnectionCallbacks(): listener ");
                sb2.append(valueOf);
                sb2.append(" not found");
            } else if (this.zag) {
                this.zaa.add(connectionCallbacks);
            }
        }
    }

    public final void zai(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        Preconditions.checkNotNull(onConnectionFailedListener);
        synchronized (this.zai) {
            if (this.zad.contains(onConnectionFailedListener)) {
                String valueOf = String.valueOf(onConnectionFailedListener);
                StringBuilder sb2 = new StringBuilder(valueOf.length() + 67);
                sb2.append("registerConnectionFailedListener(): listener ");
                sb2.append(valueOf);
                sb2.append(" is already registered");
            } else {
                this.zad.add(onConnectionFailedListener);
            }
        }
    }

    public final boolean zaj(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        boolean contains;
        Preconditions.checkNotNull(onConnectionFailedListener);
        synchronized (this.zai) {
            contains = this.zad.contains(onConnectionFailedListener);
        }
        return contains;
    }

    public final void zak(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        Preconditions.checkNotNull(onConnectionFailedListener);
        synchronized (this.zai) {
            if (!this.zad.remove(onConnectionFailedListener)) {
                String valueOf = String.valueOf(onConnectionFailedListener);
                StringBuilder sb2 = new StringBuilder(valueOf.length() + 57);
                sb2.append("unregisterConnectionFailedListener(): listener ");
                sb2.append(valueOf);
                sb2.append(" not found");
            }
        }
    }
}
