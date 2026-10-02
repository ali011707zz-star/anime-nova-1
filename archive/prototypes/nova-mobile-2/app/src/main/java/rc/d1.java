package rc;

import vb.j;

/* compiled from: DispatchedTask.kt */
/* loaded from: classes2.dex */
public abstract class d1<T> extends yc.i {

    /* renamed from: h, reason: collision with root package name */
    public int f13240h;

    public d1(int i10) {
        this.f13240h = i10;
    }

    public void a(Object obj, Throwable th) {
    }

    public abstract ac.d<T> d();

    public Throwable e(Object obj) {
        f0 f0Var = obj instanceof f0 ? (f0) obj : null;
        if (f0Var == null) {
            return null;
        }
        return f0Var.f13254a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> T f(Object obj) {
        return obj;
    }

    public final void g(Throwable th, Throwable th2) {
        if (th == null && th2 == null) {
            return;
        }
        if (th != null && th2 != null) {
            vb.a.a(th, th2);
        }
        if (th == null) {
            th = th2;
        }
        jc.l.c(th);
        n0.a(d().getContext(), new t0("Fatal exception in coroutines machinery for " + this + ". Please read KDoc to 'handleFatalException' method and report this incident to maintainers", th));
    }

    public abstract Object h();

    @Override // java.lang.Runnable
    public final void run() {
        Object a10;
        Object a11;
        if (u0.a()) {
            if (!(this.f13240h != -1)) {
                throw new AssertionError();
            }
        }
        yc.j jVar = this.f16842g;
        try {
            wc.g gVar = (wc.g) d();
            ac.d<T> dVar = gVar.f15490j;
            Object obj = gVar.f15492l;
            ac.g context = dVar.getContext();
            Object c10 = wc.e0.c(context, obj);
            f3<?> e10 = c10 != wc.e0.f15479a ? k0.e(dVar, context, c10) : null;
            try {
                ac.g context2 = dVar.getContext();
                Object h10 = h();
                Throwable e11 = e(h10);
                c2 c2Var = (e11 == null && e1.b(this.f13240h)) ? (c2) context2.get(c2.f13236c) : null;
                if (c2Var != null && !c2Var.b()) {
                    Throwable a02 = c2Var.a0();
                    a(h10, a02);
                    j.a aVar = vb.j.f15020f;
                    if (u0.d() && (dVar instanceof cc.e)) {
                        a02 = wc.z.j(a02, (cc.e) dVar);
                    }
                    dVar.resumeWith(vb.j.a(vb.k.a(a02)));
                } else if (e11 != null) {
                    j.a aVar2 = vb.j.f15020f;
                    dVar.resumeWith(vb.j.a(vb.k.a(e11)));
                } else {
                    T f10 = f(h10);
                    j.a aVar3 = vb.j.f15020f;
                    dVar.resumeWith(vb.j.a(f10));
                }
                vb.p pVar = vb.p.f15031a;
                try {
                    j.a aVar4 = vb.j.f15020f;
                    jVar.R();
                    a11 = vb.j.a(pVar);
                } catch (Throwable th) {
                    j.a aVar5 = vb.j.f15020f;
                    a11 = vb.j.a(vb.k.a(th));
                }
                g(null, vb.j.b(a11));
            } finally {
                if (e10 == null || e10.S0()) {
                    wc.e0.a(context, c10);
                }
            }
        } catch (Throwable th2) {
            try {
                j.a aVar6 = vb.j.f15020f;
                jVar.R();
                a10 = vb.j.a(vb.p.f15031a);
            } catch (Throwable th3) {
                j.a aVar7 = vb.j.f15020f;
                a10 = vb.j.a(vb.k.a(th3));
            }
            g(th2, vb.j.b(a10));
        }
    }
}
