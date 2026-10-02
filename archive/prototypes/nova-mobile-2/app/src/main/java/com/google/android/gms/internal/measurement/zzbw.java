package com.google.android.gms.internal.measurement;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* compiled from: com.google.android.gms:play-services-measurement-sdk-api@@19.0.2 */
/* loaded from: classes.dex */
final class zzbw implements zzbu {
    private zzbw() {
    }

    public /* synthetic */ zzbw(zzbv zzbvVar) {
    }

    public static final ExecutorService zzc(int i10, ThreadFactory threadFactory, int i11) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), threadFactory);
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return Executors.unconfigurableExecutorService(threadPoolExecutor);
    }

    @Override // com.google.android.gms.internal.measurement.zzbu
    public final ExecutorService zza(int i10) {
        return zzc(1, Executors.defaultThreadFactory(), 1);
    }

    @Override // com.google.android.gms.internal.measurement.zzbu
    public final ExecutorService zzb(ThreadFactory threadFactory, int i10) {
        return zzc(1, threadFactory, 1);
    }
}
