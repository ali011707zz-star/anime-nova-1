package com.google.android.gms.common.api.internal;

import android.content.Context;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.Api;
import java.util.ArrayList;
import java.util.Map;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-base@@17.6.0 */
/* loaded from: classes.dex */
public final class zaal extends zaaq {
    public final /* synthetic */ zaar zaa;
    private final Map<Api.Client, zaai> zac;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zaal(zaar zaarVar, Map<Api.Client, zaai> map) {
        super(zaarVar, null);
        this.zaa = zaarVar;
        this.zac = map;
    }

    @Override // com.google.android.gms.common.api.internal.zaaq
    @GuardedBy("mLock")
    public final void zaa() {
        GoogleApiAvailabilityLight googleApiAvailabilityLight;
        Context context;
        boolean z10;
        Context context2;
        zabd zabdVar;
        com.google.android.gms.signin.zae zaeVar;
        com.google.android.gms.signin.zae zaeVar2;
        zabd zabdVar2;
        Context context3;
        boolean z11;
        googleApiAvailabilityLight = this.zaa.zad;
        com.google.android.gms.common.internal.zal zalVar = new com.google.android.gms.common.internal.zal(googleApiAvailabilityLight);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Api.Client client : this.zac.keySet()) {
            if (client.requiresGooglePlayServices()) {
                z11 = this.zac.get(client).zac;
                if (!z11) {
                    arrayList.add(client);
                }
            }
            arrayList2.add(client);
        }
        int i10 = -1;
        int i11 = 0;
        if (!arrayList.isEmpty()) {
            int size = arrayList.size();
            while (i11 < size) {
                Api.Client client2 = (Api.Client) arrayList.get(i11);
                context = this.zaa.zac;
                i10 = zalVar.zaa(context, client2);
                i11++;
                if (i10 != 0) {
                    break;
                }
            }
        } else {
            int size2 = arrayList2.size();
            while (i11 < size2) {
                Api.Client client3 = (Api.Client) arrayList2.get(i11);
                context3 = this.zaa.zac;
                i10 = zalVar.zaa(context3, client3);
                i11++;
                if (i10 == 0) {
                    break;
                }
            }
        }
        if (i10 != 0) {
            ConnectionResult connectionResult = new ConnectionResult(i10, null);
            zabdVar2 = this.zaa.zaa;
            zabdVar2.zar(new zaaj(this, this.zaa, connectionResult));
            return;
        }
        z10 = this.zaa.zam;
        if (z10) {
            zaeVar = this.zaa.zak;
            if (zaeVar != null) {
                zaeVar2 = this.zaa.zak;
                zaeVar2.zad();
            }
        }
        for (Api.Client client4 : this.zac.keySet()) {
            zaai zaaiVar = this.zac.get(client4);
            if (client4.requiresGooglePlayServices()) {
                context2 = this.zaa.zac;
                if (zalVar.zaa(context2, client4) != 0) {
                    zabdVar = this.zaa.zaa;
                    zabdVar.zar(new zaak(this, this.zaa, zaaiVar));
                }
            }
            client4.connect(zaaiVar);
        }
    }
}
