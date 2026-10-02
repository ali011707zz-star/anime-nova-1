package k1;

import k1.u;

/* compiled from: MutableLoadStateCollection.kt */
/* loaded from: classes.dex */
public final class a0 {

    /* renamed from: a, reason: collision with root package name */
    public u f9249a;

    /* renamed from: b, reason: collision with root package name */
    public u f9250b;

    /* renamed from: c, reason: collision with root package name */
    public u f9251c;

    /* renamed from: d, reason: collision with root package name */
    public w f9252d;

    /* renamed from: e, reason: collision with root package name */
    public w f9253e;

    public a0() {
        u.c.a aVar = u.c.f9818d;
        this.f9249a = aVar.b();
        this.f9250b = aVar.b();
        this.f9251c = aVar.b();
        this.f9252d = w.f9826e.a();
    }

    public final u c(u uVar, u uVar2, u uVar3, u uVar4) {
        return uVar4 == null ? uVar3 : (!(uVar instanceof u.b) || ((uVar2 instanceof u.c) && (uVar4 instanceof u.c)) || (uVar4 instanceof u.a)) ? uVar4 : uVar;
    }

    public final u d(y yVar, boolean z10) {
        jc.l.f(yVar, "type");
        w wVar = z10 ? this.f9253e : this.f9252d;
        if (wVar != null) {
            return wVar.d(yVar);
        }
        return null;
    }

    public final void e(g gVar) {
        jc.l.f(gVar, "combinedLoadStates");
        this.f9249a = gVar.e();
        this.f9250b = gVar.d();
        this.f9251c = gVar.b();
        this.f9252d = gVar.f();
        this.f9253e = gVar.c();
    }

    public final void f(w wVar, w wVar2) {
        jc.l.f(wVar, "sourceLoadStates");
        this.f9252d = wVar;
        this.f9253e = wVar2;
        i();
    }

    public final boolean g(y yVar, boolean z10, u uVar) {
        boolean a10;
        jc.l.f(yVar, "type");
        jc.l.f(uVar, "state");
        if (z10) {
            w wVar = this.f9253e;
            w h10 = (wVar != null ? wVar : w.f9826e.a()).h(yVar, uVar);
            this.f9253e = h10;
            a10 = jc.l.a(h10, wVar);
        } else {
            w wVar2 = this.f9252d;
            w h11 = wVar2.h(yVar, uVar);
            this.f9252d = h11;
            a10 = jc.l.a(h11, wVar2);
        }
        boolean z11 = !a10;
        i();
        return z11;
    }

    public final g h() {
        return new g(this.f9249a, this.f9250b, this.f9251c, this.f9252d, this.f9253e);
    }

    public final void i() {
        u uVar = this.f9249a;
        u g10 = this.f9252d.g();
        u g11 = this.f9252d.g();
        w wVar = this.f9253e;
        this.f9249a = c(uVar, g10, g11, wVar != null ? wVar.g() : null);
        u uVar2 = this.f9250b;
        u g12 = this.f9252d.g();
        u f10 = this.f9252d.f();
        w wVar2 = this.f9253e;
        this.f9250b = c(uVar2, g12, f10, wVar2 != null ? wVar2.f() : null);
        u uVar3 = this.f9251c;
        u g13 = this.f9252d.g();
        u e10 = this.f9252d.e();
        w wVar3 = this.f9253e;
        this.f9251c = c(uVar3, g13, e10, wVar3 != null ? wVar3.e() : null);
    }
}
