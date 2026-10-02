package r9;

/* compiled from: EventStoreModule_StoreConfigFactory.java */
/* loaded from: classes.dex */
public final class h implements m9.b<d> {

    /* compiled from: EventStoreModule_StoreConfigFactory.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public static final h f13120a = new h();
    }

    public static h a() {
        return a.f13120a;
    }

    public static d c() {
        return (d) m9.d.c(e.c(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // ub.a
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public d get() {
        return c();
    }
}
