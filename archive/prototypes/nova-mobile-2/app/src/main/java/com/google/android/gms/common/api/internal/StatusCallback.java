package com.google.android.gms.common.api.internal;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.api.internal.IStatusCallback;

/* compiled from: com.google.android.gms:play-services-base@@17.6.0 */
@KeepForSdk
/* loaded from: classes.dex */
public class StatusCallback extends IStatusCallback.Stub {

    @KeepForSdk
    private final BaseImplementation.ResultHolder<Status> mResultHolder;

    @KeepForSdk
    public StatusCallback(@RecentlyNonNull BaseImplementation.ResultHolder<Status> resultHolder) {
        this.mResultHolder = resultHolder;
    }

    @Override // com.google.android.gms.common.api.internal.IStatusCallback
    @KeepForSdk
    public void onResult(@RecentlyNonNull Status status) {
        this.mResultHolder.setResult(status);
    }
}
