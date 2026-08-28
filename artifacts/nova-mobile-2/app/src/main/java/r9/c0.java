package r9;

/* compiled from: SQLiteEventStore_Factory.java */
/* loaded from: classes.dex */
public final class c0 implements m9.b<b0> {

    /* renamed from: a, reason: collision with root package name */
    public final ub.a<t9.a> f13109a;

    /* renamed from: b, reason: collision with root package name */
    public final ub.a<t9.a> f13110b;

    /* renamed from: c, reason: collision with root package name */
    public final ub.a<d> f13111c;

    /* renamed from: d, reason: collision with root package name */
    public final ub.a<h0> f13112d;

    public c0(ub.a<t9.a> aVar, ub.a<t9.a> aVar2, ub.a<d> aVar3, ub.a<h0> aVar4) {
        this.f13109a = aVar;
        this.f13110b = aVar2;
        this.f13111c = aVar3;
        this.f13112d = aVar4;
    }

    public static c0 a(ub.a<t9.a> aVar, ub.a<t9.a> aVar2, ub.a<d> aVar3, ub.a<h0> aVar4) {
        return new c0(aVar, aVar2, aVar3, aVar4);
    }

    public static b0 c(t9.a aVar, t9.a aVar2, Object obj, Object obj2) {
        return new b0(aVar, aVar2, (d) obj, (h0) obj2);
    }

    @Override // ub.a
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public b0 get() {
        return c(this.f13109a.get(), this.f13110b.get(), this.f13111c.get(), this.f13112d.get());
    }
}
