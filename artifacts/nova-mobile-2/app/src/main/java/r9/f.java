package r9;

/* compiled from: EventStoreModule_DbNameFactory.java */
/* loaded from: classes.dex */
public final class f implements m9.b<String> {

    /* compiled from: EventStoreModule_DbNameFactory.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public static final f f13116a = new f();
    }

    public static f a() {
        return a.f13116a;
    }

    public static String b() {
        return (String) m9.d.c(e.a(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // ub.a
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public String get() {
        return b();
    }
}
