package com.google.android.gms.common.api;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Result;

/* compiled from: com.google.android.gms:play-services-basement@@17.6.0 */
/* loaded from: classes.dex */
public abstract class ResultCallbacks<R extends Result> implements ResultCallback<R> {
    public abstract void onFailure(@RecentlyNonNull Status status);

    @Override // com.google.android.gms.common.api.ResultCallback
    @KeepForSdk
    public final void onResult(@RecentlyNonNull R r10) {
        Status status = r10.getStatus();
        if (status.isSuccess()) {
            onSuccess(r10);
            return;
        }
        onFailure(status);
        if (r10 instanceof Releasable) {
            try {
                ((Releasable) r10).release();
            } catch (RuntimeException unused) {
                String valueOf = String.valueOf(r10);
                StringBuilder sb2 = new StringBuilder(valueOf.length() + 18);
                sb2.append("Unable to release ");
                sb2.append(valueOf);
            }
        }
    }

    public abstract void onSuccess(@RecentlyNonNull R r10);
}
