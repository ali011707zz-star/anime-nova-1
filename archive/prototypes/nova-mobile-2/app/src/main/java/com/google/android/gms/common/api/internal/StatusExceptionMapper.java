package com.google.android.gms.common.api.internal;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Status;

/* compiled from: com.google.android.gms:play-services-basement@@17.6.0 */
@KeepForSdk
/* loaded from: classes.dex */
public interface StatusExceptionMapper {
    @RecentlyNonNull
    @KeepForSdk
    Exception getException(@RecentlyNonNull Status status);
}
