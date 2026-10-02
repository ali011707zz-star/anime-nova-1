package t9;

/* compiled from: TimeModule_EventClockFactory.java */
/* loaded from: classes.dex */
public final class c implements m9.b<t9.a> {

    /* compiled from: TimeModule_EventClockFactory.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public static final c f14099a = new c();
    }

    public static c a() {
        return a.f14099a;
    }

    public static t9.a b() {
        return (t9.a) m9.d.c(b.a(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // ub.a
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public t9.a get() {
        return b();
    }
}
