package k9;

/* compiled from: TransportRuntime_Factory.java */
/* loaded from: classes.dex */
public final class t implements m9.b<r> {

    /* renamed from: a, reason: collision with root package name */
    public final ub.a<t9.a> f10121a;

    /* renamed from: b, reason: collision with root package name */
    public final ub.a<t9.a> f10122b;

    /* renamed from: c, reason: collision with root package name */
    public final ub.a<p9.e> f10123c;

    /* renamed from: d, reason: collision with root package name */
    public final ub.a<q9.p> f10124d;

    /* renamed from: e, reason: collision with root package name */
    public final ub.a<q9.t> f10125e;

    public t(ub.a<t9.a> aVar, ub.a<t9.a> aVar2, ub.a<p9.e> aVar3, ub.a<q9.p> aVar4, ub.a<q9.t> aVar5) {
        this.f10121a = aVar;
        this.f10122b = aVar2;
        this.f10123c = aVar3;
        this.f10124d = aVar4;
        this.f10125e = aVar5;
    }

    public static t a(ub.a<t9.a> aVar, ub.a<t9.a> aVar2, ub.a<p9.e> aVar3, ub.a<q9.p> aVar4, ub.a<q9.t> aVar5) {
        return new t(aVar, aVar2, aVar3, aVar4, aVar5);
    }

    public static r c(t9.a aVar, t9.a aVar2, p9.e eVar, q9.p pVar, q9.t tVar) {
        return new r(aVar, aVar2, eVar, pVar, tVar);
    }

    @Override // ub.a
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public r get() {
        return c(this.f10121a.get(), this.f10122b.get(), this.f10123c.get(), this.f10124d.get(), this.f10125e.get());
    }
}
