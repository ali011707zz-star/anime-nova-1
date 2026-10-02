package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.internal.IAccountAccessor;
import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-base@@17.6.0 */
/* loaded from: classes.dex */
public final class zaam extends zaaq {
    public final /* synthetic */ zaar zaa;
    private final ArrayList<Api.Client> zac;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zaam(zaar zaarVar, ArrayList<Api.Client> arrayList) {
        super(zaarVar, null);
        this.zaa = zaarVar;
        this.zac = arrayList;
    }

    @Override // com.google.android.gms.common.api.internal.zaaq
    public final void zaa() {
        zabd zabdVar;
        IAccountAccessor iAccountAccessor;
        zabd zabdVar2;
        zabdVar = this.zaa.zaa;
        zabdVar.zag.zad = zaar.zap(this.zaa);
        ArrayList<Api.Client> arrayList = this.zac;
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            Api.Client client = arrayList.get(i10);
            iAccountAccessor = this.zaa.zao;
            zabdVar2 = this.zaa.zaa;
            client.getRemoteService(iAccountAccessor, zabdVar2.zag.zad);
        }
    }
}
