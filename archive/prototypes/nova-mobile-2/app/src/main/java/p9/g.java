package p9;

/* compiled from: SchedulingConfigModule_ConfigFactory.java */
/* loaded from: classes.dex */
public final class g implements m9.b<q9.g> {

    /* renamed from: a, reason: collision with root package name */
    public final ub.a<t9.a> f12143a;

    public g(ub.a<t9.a> aVar) {
        this.f12143a = aVar;
    }

    public static q9.g a(t9.a aVar) {
        return (q9.g) m9.d.c(f.a(aVar), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static g b(ub.a<t9.a> aVar) {
        return new g(aVar);
    }

    @Override // ub.a
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public q9.g get() {
        return a(this.f12143a.get());
    }
}
