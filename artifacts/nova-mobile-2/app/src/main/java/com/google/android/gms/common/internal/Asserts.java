package com.google.android.gms.common.internal;

import android.os.Looper;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;

/* compiled from: com.google.android.gms:play-services-basement@@17.6.0 */
@KeepForSdk
/* loaded from: classes.dex */
public final class Asserts {
    private Asserts() {
        throw new AssertionError("Uninstantiable");
    }

    @KeepForSdk
    public static void checkMainThread(@RecentlyNonNull String str) {
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            return;
        }
        String valueOf = String.valueOf(Thread.currentThread());
        String valueOf2 = String.valueOf(Looper.getMainLooper().getThread());
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 57 + valueOf2.length());
        sb2.append("checkMainThread: current thread ");
        sb2.append(valueOf);
        sb2.append(" IS NOT the main thread ");
        sb2.append(valueOf2);
        sb2.append("!");
        throw new IllegalStateException(str);
    }

    @KeepForSdk
    public static void checkNotMainThread(@RecentlyNonNull String str) {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            return;
        }
        String valueOf = String.valueOf(Thread.currentThread());
        String valueOf2 = String.valueOf(Looper.getMainLooper().getThread());
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 56 + valueOf2.length());
        sb2.append("checkNotMainThread: current thread ");
        sb2.append(valueOf);
        sb2.append(" IS the main thread ");
        sb2.append(valueOf2);
        sb2.append("!");
        throw new IllegalStateException(str);
    }

    @KeepForSdk
    public static void checkNotNull(@RecentlyNonNull Object obj) {
        if (obj == null) {
            throw new IllegalArgumentException("null reference");
        }
    }

    @KeepForSdk
    public static void checkNull(@RecentlyNonNull Object obj) {
        if (obj != null) {
            throw new IllegalArgumentException("non-null reference");
        }
    }

    @KeepForSdk
    public static void checkState(boolean z10) {
        if (!z10) {
            throw new IllegalStateException();
        }
    }

    @KeepForSdk
    public static void checkNotNull(@RecentlyNonNull Object obj, @RecentlyNonNull Object obj2) {
        if (obj == null) {
            throw new IllegalArgumentException(String.valueOf(obj2));
        }
    }

    @KeepForSdk
    public static void checkState(boolean z10, @RecentlyNonNull Object obj) {
        if (!z10) {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }
}
