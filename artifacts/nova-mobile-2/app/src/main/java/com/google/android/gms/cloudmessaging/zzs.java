package com.google.android.gms.cloudmessaging;

import android.os.Bundle;

/* compiled from: com.google.android.gms:play-services-cloud-messaging@@16.0.0 */
/* loaded from: classes.dex */
final class zzs extends zzq<Bundle> {
    public zzs(int i10, int i11, Bundle bundle) {
        super(i10, 1, bundle);
    }

    @Override // com.google.android.gms.cloudmessaging.zzq
    public final void zza(Bundle bundle) {
        Bundle bundle2 = bundle.getBundle("data");
        if (bundle2 == null) {
            bundle2 = Bundle.EMPTY;
        }
        zza((zzs) bundle2);
    }

    @Override // com.google.android.gms.cloudmessaging.zzq
    public final boolean zza() {
        return false;
    }
}
