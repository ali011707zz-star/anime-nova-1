package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.internal.BaseImplementation;
import java.util.Collections;
import java.util.Iterator;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;

/* compiled from: com.google.android.gms:play-services-base@@17.6.0 */
/* loaded from: classes.dex */
public final class zaas implements zaba {

    @NotOnlyInitialized
    private final zabd zaa;

    public zaas(zabd zabdVar) {
        this.zaa = zabdVar;
    }

    @Override // com.google.android.gms.common.api.internal.zaba
    public final void zaa() {
        Iterator<Api.Client> it2 = this.zaa.zaa.values().iterator();
        while (it2.hasNext()) {
            it2.next().disconnect();
        }
        this.zaa.zag.zad = Collections.emptySet();
    }

    @Override // com.google.android.gms.common.api.internal.zaba
    public final <A extends Api.AnyClient, R extends Result, T extends BaseImplementation.ApiMethodImpl<R, A>> T zab(T t10) {
        this.zaa.zag.zaa.add(t10);
        return t10;
    }

    @Override // com.google.android.gms.common.api.internal.zaba
    public final <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T zac(T t10) {
        throw new IllegalStateException("GoogleApiClient is not connected yet.");
    }

    @Override // com.google.android.gms.common.api.internal.zaba
    public final boolean zad() {
        return true;
    }

    @Override // com.google.android.gms.common.api.internal.zaba
    public final void zae() {
        this.zaa.zao();
    }

    @Override // com.google.android.gms.common.api.internal.zaba
    public final void zaf(Bundle bundle) {
    }

    @Override // com.google.android.gms.common.api.internal.zaba
    public final void zag(ConnectionResult connectionResult, Api<?> api, boolean z10) {
    }

    @Override // com.google.android.gms.common.api.internal.zaba
    public final void zah(int i10) {
    }
}
