package com.google.android.gms.common.internal;

import android.app.Activity;
import android.content.Intent;

/* compiled from: com.google.android.gms:play-services-base@@17.6.0 */
/* loaded from: classes.dex */
final class zad extends zag {
    public final /* synthetic */ Intent zaa;
    public final /* synthetic */ Activity zab;
    public final /* synthetic */ int zac;

    public zad(Intent intent, Activity activity, int i10) {
        this.zaa = intent;
        this.zab = activity;
        this.zac = i10;
    }

    @Override // com.google.android.gms.common.internal.zag
    public final void zaa() {
        Intent intent = this.zaa;
        if (intent != null) {
            this.zab.startActivityForResult(intent, this.zac);
        }
    }
}
