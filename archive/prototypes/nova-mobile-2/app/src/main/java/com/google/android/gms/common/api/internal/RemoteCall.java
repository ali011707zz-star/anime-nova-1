package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;

/* compiled from: com.google.android.gms:play-services-base@@17.6.0 */
@KeepForSdk
/* loaded from: classes.dex */
public interface RemoteCall<T, U> {
    @KeepForSdk
    void accept(@RecentlyNonNull T t10, @RecentlyNonNull U u10) throws RemoteException;
}
