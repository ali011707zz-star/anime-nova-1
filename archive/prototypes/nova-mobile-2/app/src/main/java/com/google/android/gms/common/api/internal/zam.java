package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.Preconditions;

/* compiled from: com.google.android.gms:play-services-base@@17.6.0 */
/* loaded from: classes.dex */
final class zam {
    private final int zaa;
    private final ConnectionResult zab;

    public zam(ConnectionResult connectionResult, int i10) {
        Preconditions.checkNotNull(connectionResult);
        this.zab = connectionResult;
        this.zaa = i10;
    }

    public final int zaa() {
        return this.zaa;
    }

    public final ConnectionResult zab() {
        return this.zab;
    }
}
