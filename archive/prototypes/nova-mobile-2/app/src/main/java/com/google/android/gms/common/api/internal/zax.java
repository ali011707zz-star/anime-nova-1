package com.google.android.gms.common.api.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.signin.SignInOptions;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Lock;
import javax.annotation.concurrent.GuardedBy;
import s.a;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-base@@17.6.0 */
/* loaded from: classes.dex */
public final class zax implements zabu {
    private final Context zaa;
    private final zaaz zab;
    private final Looper zac;
    private final zabd zad;
    private final zabd zae;
    private final Map<Api.AnyClientKey<?>, zabd> zaf;
    private final Api.Client zah;
    private Bundle zai;
    private final Lock zam;
    private final Set<SignInConnectionListener> zag = Collections.newSetFromMap(new WeakHashMap());
    private ConnectionResult zaj = null;
    private ConnectionResult zak = null;
    private boolean zal = false;

    @GuardedBy("mLock")
    private int zan = 0;

    private zax(Context context, zaaz zaazVar, Lock lock, Looper looper, GoogleApiAvailabilityLight googleApiAvailabilityLight, Map<Api.AnyClientKey<?>, Api.Client> map, Map<Api.AnyClientKey<?>, Api.Client> map2, ClientSettings clientSettings, Api.AbstractClientBuilder<? extends com.google.android.gms.signin.zae, SignInOptions> abstractClientBuilder, Api.Client client, ArrayList<zas> arrayList, ArrayList<zas> arrayList2, Map<Api<?>, Boolean> map3, Map<Api<?>, Boolean> map4) {
        this.zaa = context;
        this.zab = zaazVar;
        this.zam = lock;
        this.zac = looper;
        this.zah = client;
        this.zad = new zabd(context, zaazVar, lock, looper, googleApiAvailabilityLight, map2, null, map4, null, arrayList2, new zav(this, null));
        this.zae = new zabd(context, zaazVar, lock, looper, googleApiAvailabilityLight, map, clientSettings, map3, abstractClientBuilder, arrayList, new zaw(this, null));
        a aVar = new a();
        Iterator<Api.AnyClientKey<?>> it2 = map2.keySet().iterator();
        while (it2.hasNext()) {
            aVar.put(it2.next(), this.zad);
        }
        Iterator<Api.AnyClientKey<?>> it3 = map.keySet().iterator();
        while (it3.hasNext()) {
            aVar.put(it3.next(), this.zae);
        }
        this.zaf = Collections.unmodifiableMap(aVar);
    }

    @GuardedBy("mLock")
    private final void zaA() {
        Iterator<SignInConnectionListener> it2 = this.zag.iterator();
        while (it2.hasNext()) {
            it2.next().onComplete();
        }
        this.zag.clear();
    }

    @GuardedBy("mLock")
    private final boolean zaB() {
        ConnectionResult connectionResult = this.zak;
        return connectionResult != null && connectionResult.getErrorCode() == 4;
    }

    private final boolean zaC(BaseImplementation.ApiMethodImpl<? extends Result, ? extends Api.AnyClient> apiMethodImpl) {
        zabd zabdVar = this.zaf.get(apiMethodImpl.getClientKey());
        Preconditions.checkNotNull(zabdVar, "GoogleApiClient is not configured to use the API required for this call.");
        return zabdVar.equals(this.zae);
    }

    private final PendingIntent zaD() {
        if (this.zah == null) {
            return null;
        }
        return PendingIntent.getActivity(this.zaa, System.identityHashCode(this.zab), this.zah.getSignInIntent(), 134217728);
    }

    private static boolean zaE(ConnectionResult connectionResult) {
        return connectionResult != null && connectionResult.isSuccess();
    }

    public static zax zaa(Context context, zaaz zaazVar, Lock lock, Looper looper, GoogleApiAvailabilityLight googleApiAvailabilityLight, Map<Api.AnyClientKey<?>, Api.Client> map, ClientSettings clientSettings, Map<Api<?>, Boolean> map2, Api.AbstractClientBuilder<? extends com.google.android.gms.signin.zae, SignInOptions> abstractClientBuilder, ArrayList<zas> arrayList) {
        a aVar = new a();
        a aVar2 = new a();
        Api.Client client = null;
        for (Map.Entry<Api.AnyClientKey<?>, Api.Client> entry : map.entrySet()) {
            Api.Client value = entry.getValue();
            if (true == value.providesSignIn()) {
                client = value;
            }
            if (value.requiresSignIn()) {
                aVar.put(entry.getKey(), value);
            } else {
                aVar2.put(entry.getKey(), value);
            }
        }
        Preconditions.checkState(!aVar.isEmpty(), "CompositeGoogleApiClient should not be used without any APIs that require sign-in.");
        a aVar3 = new a();
        a aVar4 = new a();
        for (Api<?> api : map2.keySet()) {
            Api.AnyClientKey<?> zac = api.zac();
            if (aVar.containsKey(zac)) {
                aVar3.put(api, map2.get(api));
            } else if (aVar2.containsKey(zac)) {
                aVar4.put(api, map2.get(api));
            } else {
                throw new IllegalStateException("Each API in the isOptionalMap must have a corresponding client in the clients map.");
            }
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            zas zasVar = arrayList.get(i10);
            if (aVar3.containsKey(zasVar.zaa)) {
                arrayList2.add(zasVar);
            } else if (aVar4.containsKey(zasVar.zaa)) {
                arrayList3.add(zasVar);
            } else {
                throw new IllegalStateException("Each ClientCallbacks must have a corresponding API in the isOptionalMap");
            }
        }
        return new zax(context, zaazVar, lock, looper, googleApiAvailabilityLight, aVar, aVar2, clientSettings, abstractClientBuilder, client, arrayList2, arrayList3, aVar3, aVar4);
    }

    public static /* synthetic */ void zap(zax zaxVar) {
        ConnectionResult connectionResult;
        if (!zaE(zaxVar.zaj)) {
            if (zaxVar.zaj != null && zaE(zaxVar.zak)) {
                zaxVar.zae.zah();
                zaxVar.zaz((ConnectionResult) Preconditions.checkNotNull(zaxVar.zaj));
                return;
            }
            ConnectionResult connectionResult2 = zaxVar.zaj;
            if (connectionResult2 == null || (connectionResult = zaxVar.zak) == null) {
                return;
            }
            if (zaxVar.zae.zaf < zaxVar.zad.zaf) {
                connectionResult2 = connectionResult;
            }
            zaxVar.zaz(connectionResult2);
            return;
        }
        if (!zaE(zaxVar.zak) && !zaxVar.zaB()) {
            ConnectionResult connectionResult3 = zaxVar.zak;
            if (connectionResult3 != null) {
                if (zaxVar.zan == 1) {
                    zaxVar.zaA();
                    return;
                } else {
                    zaxVar.zaz(connectionResult3);
                    zaxVar.zad.zah();
                    return;
                }
            }
            return;
        }
        int i10 = zaxVar.zan;
        if (i10 != 1) {
            if (i10 != 2) {
                Log.wtf("CompositeGAC", "Attempted to call success callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor", new AssertionError());
                zaxVar.zan = 0;
            }
            ((zaaz) Preconditions.checkNotNull(zaxVar.zab)).zaa(zaxVar.zai);
        }
        zaxVar.zaA();
        zaxVar.zan = 0;
    }

    public static /* synthetic */ void zaq(zax zaxVar, Bundle bundle) {
        Bundle bundle2 = zaxVar.zai;
        if (bundle2 == null) {
            zaxVar.zai = bundle;
        } else if (bundle != null) {
            bundle2.putAll(bundle);
        }
    }

    public static /* synthetic */ void zav(zax zaxVar, int i10, boolean z10) {
        zaxVar.zab.zac(i10, z10);
        zaxVar.zak = null;
        zaxVar.zaj = null;
    }

    @GuardedBy("mLock")
    private final void zaz(ConnectionResult connectionResult) {
        int i10 = this.zan;
        if (i10 != 1) {
            if (i10 != 2) {
                Log.wtf("CompositeGAC", "Attempted to call failure callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor", new Exception());
                this.zan = 0;
            }
            this.zab.zab(connectionResult);
        }
        zaA();
        this.zan = 0;
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    @GuardedBy("mLock")
    public final <A extends Api.AnyClient, R extends Result, T extends BaseImplementation.ApiMethodImpl<R, A>> T zab(T t10) {
        if (zaC(t10)) {
            if (zaB()) {
                t10.setFailedResult(new Status(4, (String) null, zaD()));
                return t10;
            }
            this.zae.zab(t10);
            return t10;
        }
        this.zad.zab(t10);
        return t10;
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    @GuardedBy("mLock")
    public final <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T zac(T t10) {
        if (zaC(t10)) {
            if (zaB()) {
                t10.setFailedResult(new Status(4, (String) null, zaD()));
                return t10;
            }
            return (T) this.zae.zac(t10);
        }
        return (T) this.zad.zac(t10);
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    @GuardedBy("mLock")
    public final ConnectionResult zad(Api<?> api) {
        if (Objects.equal(this.zaf.get(api.zac()), this.zae)) {
            if (zaB()) {
                return new ConnectionResult(4, zaD());
            }
            return this.zae.zad(api);
        }
        return this.zad.zad(api);
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    @GuardedBy("mLock")
    public final void zae() {
        this.zan = 2;
        this.zal = false;
        this.zak = null;
        this.zaj = null;
        this.zad.zae();
        this.zae.zae();
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    @GuardedBy("mLock")
    public final ConnectionResult zaf() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    @GuardedBy("mLock")
    public final ConnectionResult zag(long j10, TimeUnit timeUnit) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    @GuardedBy("mLock")
    public final void zah() {
        this.zak = null;
        this.zaj = null;
        this.zan = 0;
        this.zad.zah();
        this.zae.zah();
        zaA();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001f, code lost:
    
        if (r3.zan == 1) goto L11;
     */
    @Override // com.google.android.gms.common.api.internal.zabu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean zai() {
        this.zam.lock();
        try {
            boolean z10 = false;
            if (this.zad.zai()) {
                if (!this.zae.zai() && !zaB()) {
                }
                z10 = true;
            }
            return z10;
        } finally {
            this.zam.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    public final boolean zaj() {
        this.zam.lock();
        try {
            return this.zan == 2;
        } finally {
            this.zam.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    public final boolean zak(SignInConnectionListener signInConnectionListener) {
        this.zam.lock();
        try {
            if ((zaj() || zai()) && !this.zae.zai()) {
                this.zag.add(signInConnectionListener);
                if (this.zan == 0) {
                    this.zan = 1;
                }
                this.zak = null;
                this.zae.zae();
                return true;
            }
            this.zam.unlock();
            return false;
        } finally {
            this.zam.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    @GuardedBy("mLock")
    public final void zal() {
        this.zad.zal();
        this.zae.zal();
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    public final void zam() {
        this.zam.lock();
        try {
            boolean zaj = zaj();
            this.zae.zah();
            this.zak = new ConnectionResult(4);
            if (zaj) {
                new com.google.android.gms.internal.base.zap(this.zac).post(new zau(this));
            } else {
                zaA();
            }
        } finally {
            this.zam.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    public final void zan(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.append((CharSequence) str).append("authClient").println(":");
        this.zae.zan(String.valueOf(str).concat("  "), fileDescriptor, printWriter, strArr);
        printWriter.append((CharSequence) str).append("anonClient").println(":");
        this.zad.zan(String.valueOf(str).concat("  "), fileDescriptor, printWriter, strArr);
    }
}
