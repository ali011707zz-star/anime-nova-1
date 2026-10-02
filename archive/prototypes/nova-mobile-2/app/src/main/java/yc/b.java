package yc;

import rc.l0;
import wc.b0;
import wc.d0;

/* compiled from: Dispatcher.kt */
/* loaded from: classes2.dex */
public final class b extends c {

    /* renamed from: m, reason: collision with root package name */
    public static final b f16825m;

    /* renamed from: n, reason: collision with root package name */
    public static final l0 f16826n;

    static {
        int d10;
        b bVar = new b();
        f16825m = bVar;
        d10 = d0.d("kotlinx.coroutines.io.parallelism", nc.g.a(64, b0.a()), 0, 0, 12, null);
        f16826n = new e(bVar, d10, "Dispatchers.IO", 1);
    }

    public b() {
        super(0, 0, null, 7, null);
    }

    public final l0 N0() {
        return f16826n;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        throw new UnsupportedOperationException("Dispatchers.Default cannot be closed");
    }

    @Override // rc.l0
    public String toString() {
        return "Dispatchers.Default";
    }
}
