package t9;

/* compiled from: TimeModule_UptimeClockFactory.java */
/* loaded from: classes.dex */
public final class d implements m9.b<t9.a> {

    /* compiled from: TimeModule_UptimeClockFactory.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public static final d f14100a = new d();
    }

    public static d a() {
        return a.f14100a;
    }

    public static t9.a c() {
        return (t9.a) m9.d.c(b.b(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // ub.a
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public t9.a get() {
        return c();
    }
}
