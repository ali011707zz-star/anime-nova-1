package rc;

/* compiled from: EventLoop.common.kt */
/* loaded from: classes2.dex */
public final class b3 {

    /* renamed from: a, reason: collision with root package name */
    public static final b3 f13232a = new b3();

    /* renamed from: b, reason: collision with root package name */
    public static final ThreadLocal<m1> f13233b = new ThreadLocal<>();

    public final m1 a() {
        return f13233b.get();
    }

    public final m1 b() {
        ThreadLocal<m1> threadLocal = f13233b;
        m1 m1Var = threadLocal.get();
        if (m1Var != null) {
            return m1Var;
        }
        m1 a10 = p1.a();
        threadLocal.set(a10);
        return a10;
    }

    public final void c() {
        f13233b.set(null);
    }

    public final void d(m1 m1Var) {
        f13233b.set(m1Var);
    }
}
