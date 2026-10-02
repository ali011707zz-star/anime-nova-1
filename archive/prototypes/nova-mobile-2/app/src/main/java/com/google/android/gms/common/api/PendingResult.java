package com.google.android.gms.common.api;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Result;
import java.util.concurrent.TimeUnit;

/* compiled from: com.google.android.gms:play-services-base@@17.6.0 */
@KeepForSdk
/* loaded from: classes.dex */
public abstract class PendingResult<R extends Result> {

    /* compiled from: com.google.android.gms:play-services-base@@17.6.0 */
    @KeepForSdk
    /* loaded from: classes.dex */
    public interface StatusListener {
        @KeepForSdk
        void onComplete(@RecentlyNonNull Status status);
    }

    @KeepForSdk
    public void addStatusListener(@RecentlyNonNull StatusListener statusListener) {
        throw new UnsupportedOperationException();
    }

    public abstract R await();

    public abstract R await(long j10, @RecentlyNonNull TimeUnit timeUnit);

    public abstract void cancel();

    public abstract boolean isCanceled();

    public abstract void setResultCallback(@RecentlyNonNull ResultCallback<? super R> resultCallback);

    public abstract void setResultCallback(@RecentlyNonNull ResultCallback<? super R> resultCallback, long j10, @RecentlyNonNull TimeUnit timeUnit);

    public <S extends Result> TransformedResult<S> then(@RecentlyNonNull ResultTransform<? super R, ? extends S> resultTransform) {
        throw new UnsupportedOperationException();
    }
}
