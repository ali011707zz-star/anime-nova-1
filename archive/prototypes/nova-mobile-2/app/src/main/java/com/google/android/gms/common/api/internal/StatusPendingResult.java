package com.google.android.gms.common.api.internal;

import android.os.Looper;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;

/* compiled from: com.google.android.gms:play-services-base@@17.6.0 */
@KeepForSdk
/* loaded from: classes.dex */
public class StatusPendingResult extends BasePendingResult<Status> {
    @Deprecated
    public StatusPendingResult(@RecentlyNonNull Looper looper) {
        super(looper);
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    @RecentlyNonNull
    public final /* bridge */ /* synthetic */ Status createFailedResult(@RecentlyNonNull Status status) {
        return status;
    }

    @KeepForSdk
    public StatusPendingResult(@RecentlyNonNull GoogleApiClient googleApiClient) {
        super(googleApiClient);
    }
}
