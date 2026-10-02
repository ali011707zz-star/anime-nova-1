package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.signin.SignInOptions;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import javax.annotation.concurrent.GuardedBy;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;

/* compiled from: com.google.android.gms:play-services-base@@17.6.0 */
/* loaded from: classes.dex */
public final class zabd implements zabu, zat {
    public final Map<Api.AnyClientKey<?>, Api.Client> zaa;
    public final ClientSettings zac;
    public final Map<Api<?>, Boolean> zad;
    public final Api.AbstractClientBuilder<? extends com.google.android.gms.signin.zae, SignInOptions> zae;
    public int zaf;
    public final zaaz zag;
    public final zabt zah;
    private final Lock zai;
    private final Condition zaj;
    private final Context zak;
    private final GoogleApiAvailabilityLight zal;
    private final zabc zam;

    @NotOnlyInitialized
    private volatile zaba zan;
    public final Map<Api.AnyClientKey<?>, ConnectionResult> zab = new HashMap();
    private ConnectionResult zao = null;

    public zabd(Context context, zaaz zaazVar, Lock lock, Looper looper, GoogleApiAvailabilityLight googleApiAvailabilityLight, Map<Api.AnyClientKey<?>, Api.Client> map, ClientSettings clientSettings, Map<Api<?>, Boolean> map2, Api.AbstractClientBuilder<? extends com.google.android.gms.signin.zae, SignInOptions> abstractClientBuilder, ArrayList<zas> arrayList, zabt zabtVar) {
        this.zak = context;
        this.zai = lock;
        this.zal = googleApiAvailabilityLight;
        this.zaa = map;
        this.zac = clientSettings;
        this.zad = map2;
        this.zae = abstractClientBuilder;
        this.zag = zaazVar;
        this.zah = zabtVar;
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            arrayList.get(i10).zaa(this);
        }
        this.zam = new zabc(this, looper);
        this.zaj = lock.newCondition();
        this.zan = new zaas(this);
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        this.zai.lock();
        try {
            this.zan.zaf(bundle);
        } finally {
            this.zai.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnectionSuspended(int i10) {
        this.zai.lock();
        try {
            this.zan.zah(i10);
        } finally {
            this.zai.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zat
    public final void zaa(ConnectionResult connectionResult, Api<?> api, boolean z10) {
        this.zai.lock();
        try {
            this.zan.zag(connectionResult, api, z10);
        } finally {
            this.zai.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    @GuardedBy("mLock")
    public final <A extends Api.AnyClient, R extends Result, T extends BaseImplementation.ApiMethodImpl<R, A>> T zab(T t10) {
        t10.zak();
        this.zan.zab(t10);
        return t10;
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    @GuardedBy("mLock")
    public final <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T zac(T t10) {
        t10.zak();
        return (T) this.zan.zac(t10);
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    @GuardedBy("mLock")
    public final ConnectionResult zad(Api<?> api) {
        Api.AnyClientKey<?> zac = api.zac();
        if (!this.zaa.containsKey(zac)) {
            return null;
        }
        if (this.zaa.get(zac).isConnected()) {
            return ConnectionResult.RESULT_SUCCESS;
        }
        if (this.zab.containsKey(zac)) {
            return this.zab.get(zac);
        }
        return null;
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    @GuardedBy("mLock")
    public final void zae() {
        this.zan.zae();
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    @GuardedBy("mLock")
    public final ConnectionResult zaf() {
        zae();
        while (this.zan instanceof zaar) {
            try {
                this.zaj.await();
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
                return new ConnectionResult(15, null);
            }
        }
        if (this.zan instanceof zaag) {
            return ConnectionResult.RESULT_SUCCESS;
        }
        ConnectionResult connectionResult = this.zao;
        return connectionResult != null ? connectionResult : new ConnectionResult(13, null);
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    @GuardedBy("mLock")
    public final ConnectionResult zag(long j10, TimeUnit timeUnit) {
        zae();
        long nanos = timeUnit.toNanos(j10);
        while (this.zan instanceof zaar) {
            if (nanos <= 0) {
                zah();
                return new ConnectionResult(14, null);
            }
            try {
                nanos = this.zaj.awaitNanos(nanos);
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
                return new ConnectionResult(15, null);
            }
            Thread.currentThread().interrupt();
            return new ConnectionResult(15, null);
        }
        if (this.zan instanceof zaag) {
            return ConnectionResult.RESULT_SUCCESS;
        }
        ConnectionResult connectionResult = this.zao;
        return connectionResult != null ? connectionResult : new ConnectionResult(13, null);
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    @GuardedBy("mLock")
    public final void zah() {
        if (this.zan.zad()) {
            this.zab.clear();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    public final boolean zai() {
        return this.zan instanceof zaag;
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    public final boolean zaj() {
        return this.zan instanceof zaar;
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    public final boolean zak(SignInConnectionListener signInConnectionListener) {
        return false;
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    @GuardedBy("mLock")
    public final void zal() {
        if (this.zan instanceof zaag) {
            ((zaag) this.zan).zai();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    public final void zam() {
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    public final void zan(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        String concat = String.valueOf(str).concat("  ");
        printWriter.append((CharSequence) str).append("mState=").println(this.zan);
        for (Api<?> api : this.zad.keySet()) {
            printWriter.append((CharSequence) str).append((CharSequence) api.zad()).println(":");
            ((Api.Client) Preconditions.checkNotNull(this.zaa.get(api.zac()))).dump(concat, fileDescriptor, printWriter, strArr);
        }
    }

    public final void zao() {
        this.zai.lock();
        try {
            this.zan = new zaar(this, this.zac, this.zad, this.zal, this.zae, this.zai, this.zak);
            this.zan.zaa();
            this.zaj.signalAll();
        } finally {
            this.zai.unlock();
        }
    }

    public final void zap() {
        this.zai.lock();
        try {
            this.zag.zad();
            this.zan = new zaag(this);
            this.zan.zaa();
            this.zaj.signalAll();
        } finally {
            this.zai.unlock();
        }
    }

    public final void zaq(ConnectionResult connectionResult) {
        this.zai.lock();
        try {
            this.zao = connectionResult;
            this.zan = new zaas(this);
            this.zan.zaa();
            this.zaj.signalAll();
        } finally {
            this.zai.unlock();
        }
    }

    public final void zar(zabb zabbVar) {
        this.zam.sendMessage(this.zam.obtainMessage(1, zabbVar));
    }

    public final void zas(RuntimeException runtimeException) {
        this.zam.sendMessage(this.zam.obtainMessage(2, runtimeException));
    }
}
