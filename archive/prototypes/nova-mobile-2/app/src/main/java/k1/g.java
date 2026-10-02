package k1;

import k1.u;

/* compiled from: CombinedLoadStates.kt */
/* loaded from: classes.dex */
public final class g {

    /* renamed from: f, reason: collision with root package name */
    public static final g f9414f;

    /* renamed from: g, reason: collision with root package name */
    public static final a f9415g = new a(null);

    /* renamed from: a, reason: collision with root package name */
    public final u f9416a;

    /* renamed from: b, reason: collision with root package name */
    public final u f9417b;

    /* renamed from: c, reason: collision with root package name */
    public final u f9418c;

    /* renamed from: d, reason: collision with root package name */
    public final w f9419d;

    /* renamed from: e, reason: collision with root package name */
    public final w f9420e;

    /* compiled from: CombinedLoadStates.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }
    }

    static {
        u.c.a aVar = u.c.f9818d;
        f9414f = new g(aVar.b(), aVar.b(), aVar.b(), w.f9826e.a(), null, 16, null);
    }

    public g(u uVar, u uVar2, u uVar3, w wVar, w wVar2) {
        jc.l.f(uVar, "refresh");
        jc.l.f(uVar2, "prepend");
        jc.l.f(uVar3, "append");
        jc.l.f(wVar, "source");
        this.f9416a = uVar;
        this.f9417b = uVar2;
        this.f9418c = uVar3;
        this.f9419d = wVar;
        this.f9420e = wVar2;
    }

    public final void a(ic.q<? super y, ? super Boolean, ? super u, vb.p> qVar) {
        jc.l.f(qVar, "op");
        w wVar = this.f9419d;
        y yVar = y.REFRESH;
        u g10 = wVar.g();
        Boolean bool = Boolean.FALSE;
        qVar.i(yVar, bool, g10);
        y yVar2 = y.PREPEND;
        qVar.i(yVar2, bool, wVar.f());
        y yVar3 = y.APPEND;
        qVar.i(yVar3, bool, wVar.e());
        w wVar2 = this.f9420e;
        if (wVar2 != null) {
            u g11 = wVar2.g();
            Boolean bool2 = Boolean.TRUE;
            qVar.i(yVar, bool2, g11);
            qVar.i(yVar2, bool2, wVar2.f());
            qVar.i(yVar3, bool2, wVar2.e());
        }
    }

    public final u b() {
        return this.f9418c;
    }

    public final w c() {
        return this.f9420e;
    }

    public final u d() {
        return this.f9417b;
    }

    public final u e() {
        return this.f9416a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!jc.l.a(g.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        if (obj != null) {
            g gVar = (g) obj;
            return ((jc.l.a(this.f9416a, gVar.f9416a) ^ true) || (jc.l.a(this.f9417b, gVar.f9417b) ^ true) || (jc.l.a(this.f9418c, gVar.f9418c) ^ true) || (jc.l.a(this.f9419d, gVar.f9419d) ^ true) || (jc.l.a(this.f9420e, gVar.f9420e) ^ true)) ? false : true;
        }
        throw new NullPointerException("null cannot be cast to non-null type androidx.paging.CombinedLoadStates");
    }

    public final w f() {
        return this.f9419d;
    }

    public int hashCode() {
        int hashCode = ((((((this.f9416a.hashCode() * 31) + this.f9417b.hashCode()) * 31) + this.f9418c.hashCode()) * 31) + this.f9419d.hashCode()) * 31;
        w wVar = this.f9420e;
        return hashCode + (wVar != null ? wVar.hashCode() : 0);
    }

    public String toString() {
        return "CombinedLoadStates(refresh=" + this.f9416a + ", prepend=" + this.f9417b + ", append=" + this.f9418c + ", source=" + this.f9419d + ", mediator=" + this.f9420e + ')';
    }

    public /* synthetic */ g(u uVar, u uVar2, u uVar3, w wVar, w wVar2, int i10, jc.g gVar) {
        this(uVar, uVar2, uVar3, wVar, (i10 & 16) != 0 ? null : wVar2);
    }
}
