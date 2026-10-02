package com.google.android.gms.common.api.internal;

import android.app.Activity;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import s.b;

/* compiled from: com.google.android.gms:play-services-base@@17.6.0 */
/* loaded from: classes.dex */
public final class zaab extends zap {
    private final b<ApiKey<?>> zad;
    private final GoogleApiManager zae;

    @VisibleForTesting
    public zaab(LifecycleFragment lifecycleFragment, GoogleApiManager googleApiManager, GoogleApiAvailability googleApiAvailability) {
        super(lifecycleFragment, googleApiAvailability);
        this.zad = new b<>();
        this.zae = googleApiManager;
        this.mLifecycleFragment.addCallback("ConnectionlessLifecycleHelper", this);
    }

    public static void zaa(Activity activity, GoogleApiManager googleApiManager, ApiKey<?> apiKey) {
        LifecycleFragment fragment = LifecycleCallback.getFragment(activity);
        zaab zaabVar = (zaab) fragment.getCallbackOrNull("ConnectionlessLifecycleHelper", zaab.class);
        if (zaabVar == null) {
            zaabVar = new zaab(fragment, googleApiManager, GoogleApiAvailability.getInstance());
        }
        Preconditions.checkNotNull(apiKey, "ApiKey cannot be null");
        zaabVar.zad.add(apiKey);
        googleApiManager.zae(zaabVar);
    }

    private final void zac() {
        if (this.zad.isEmpty()) {
            return;
        }
        this.zae.zae(this);
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void onResume() {
        super.onResume();
        zac();
    }

    @Override // com.google.android.gms.common.api.internal.zap, com.google.android.gms.common.api.internal.LifecycleCallback
    public final void onStart() {
        super.onStart();
        zac();
    }

    @Override // com.google.android.gms.common.api.internal.zap, com.google.android.gms.common.api.internal.LifecycleCallback
    public final void onStop() {
        super.onStop();
        this.zae.zaf(this);
    }

    public final b<ApiKey<?>> zab() {
        return this.zad;
    }

    @Override // com.google.android.gms.common.api.internal.zap
    public final void zad(ConnectionResult connectionResult, int i10) {
        this.zae.zaq(connectionResult, i10);
    }

    @Override // com.google.android.gms.common.api.internal.zap
    public final void zae() {
        this.zae.zai();
    }
}
