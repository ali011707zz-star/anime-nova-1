package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import android.os.DeadObjectException;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Iterator;
import java.util.Set;

/* compiled from: com.google.android.gms:play-services-base@@17.6.0 */
/* loaded from: classes.dex */
public final class zaag implements zaba {
    private final zabd zaa;
    private boolean zab = false;

    public zaag(zabd zabdVar) {
        this.zaa = zabdVar;
    }

    @Override // com.google.android.gms.common.api.internal.zaba
    public final void zaa() {
    }

    @Override // com.google.android.gms.common.api.internal.zaba
    public final <A extends Api.AnyClient, R extends Result, T extends BaseImplementation.ApiMethodImpl<R, A>> T zab(T t10) {
        zac(t10);
        return t10;
    }

    @Override // com.google.android.gms.common.api.internal.zaba
    public final <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T zac(T t10) {
        try {
            this.zaa.zag.zai.zaa(t10);
            zaaz zaazVar = this.zaa.zag;
            Api.Client client = zaazVar.zac.get(t10.getClientKey());
            Preconditions.checkNotNull(client, "Appropriate Api was not requested.");
            if (!client.isConnected() && this.zaa.zab.containsKey(t10.getClientKey())) {
                t10.setFailedResult(new Status(17));
            } else {
                t10.run(client);
            }
        } catch (DeadObjectException unused) {
            this.zaa.zar(new zaae(this, this));
        }
        return t10;
    }

    @Override // com.google.android.gms.common.api.internal.zaba
    public final boolean zad() {
        if (this.zab) {
            return false;
        }
        Set<zacv> set = this.zaa.zag.zah;
        if (set != null && !set.isEmpty()) {
            this.zab = true;
            Iterator<zacv> it2 = set.iterator();
            while (it2.hasNext()) {
                it2.next().zab();
            }
            return false;
        }
        this.zaa.zaq(null);
        return true;
    }

    @Override // com.google.android.gms.common.api.internal.zaba
    public final void zae() {
        if (this.zab) {
            this.zab = false;
            this.zaa.zar(new zaaf(this, this));
        }
    }

    @Override // com.google.android.gms.common.api.internal.zaba
    public final void zaf(Bundle bundle) {
    }

    @Override // com.google.android.gms.common.api.internal.zaba
    public final void zag(ConnectionResult connectionResult, Api<?> api, boolean z10) {
    }

    @Override // com.google.android.gms.common.api.internal.zaba
    public final void zah(int i10) {
        this.zaa.zaq(null);
        this.zaa.zah.zac(i10, this.zab);
    }

    public final void zai() {
        if (this.zab) {
            this.zab = false;
            this.zaa.zag.zai.zab();
            zad();
        }
    }
}
