package yc;

import java.util.concurrent.TimeUnit;
import wc.b0;
import wc.d0;

/* compiled from: Tasks.kt */
/* loaded from: classes2.dex */
public final class l {

    /* renamed from: a, reason: collision with root package name */
    public static final long f16844a;

    /* renamed from: b, reason: collision with root package name */
    public static final int f16845b;

    /* renamed from: c, reason: collision with root package name */
    public static final int f16846c;

    /* renamed from: d, reason: collision with root package name */
    public static final int f16847d;

    /* renamed from: e, reason: collision with root package name */
    public static final long f16848e;

    /* renamed from: f, reason: collision with root package name */
    public static h f16849f;

    static {
        long e10;
        int d10;
        int d11;
        int d12;
        long e11;
        e10 = d0.e("kotlinx.coroutines.scheduler.resolution.ns", 100000L, 0L, 0L, 12, null);
        f16844a = e10;
        d10 = d0.d("kotlinx.coroutines.scheduler.blocking.parallelism", 16, 0, 0, 12, null);
        f16845b = d10;
        d11 = d0.d("kotlinx.coroutines.scheduler.core.pool.size", nc.g.a(b0.a(), 2), 1, 0, 8, null);
        f16846c = d11;
        d12 = d0.d("kotlinx.coroutines.scheduler.max.pool.size", nc.g.e(b0.a() * 128, d11, 2097150), 0, 2097150, 4, null);
        f16847d = d12;
        TimeUnit timeUnit = TimeUnit.SECONDS;
        e11 = d0.e("kotlinx.coroutines.scheduler.keep.alive.sec", 60L, 0L, 0L, 12, null);
        f16848e = timeUnit.toNanos(e11);
        f16849f = f.f16838a;
    }
}
