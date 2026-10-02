package androidx.lifecycle;

import androidx.lifecycle.k;
import rc.c2;

/* compiled from: LifecycleController.kt */
/* loaded from: classes.dex */
public final class LifecycleController {

    /* renamed from: a, reason: collision with root package name */
    public final k f2389a;

    /* renamed from: b, reason: collision with root package name */
    public final k.c f2390b;

    /* renamed from: c, reason: collision with root package name */
    public final g f2391c;

    /* renamed from: d, reason: collision with root package name */
    public final n f2392d;

    public LifecycleController(k kVar, k.c cVar, g gVar, final c2 c2Var) {
        jc.l.f(kVar, "lifecycle");
        jc.l.f(cVar, "minState");
        jc.l.f(gVar, "dispatchQueue");
        jc.l.f(c2Var, "parentJob");
        this.f2389a = kVar;
        this.f2390b = cVar;
        this.f2391c = gVar;
        n nVar = new n() { // from class: androidx.lifecycle.LifecycleController$observer$1
            @Override // androidx.lifecycle.n
            public final void e(q qVar, k.b bVar) {
                k.c cVar2;
                g gVar2;
                g gVar3;
                jc.l.f(qVar, "source");
                jc.l.f(bVar, "$noName_1");
                if (qVar.getLifecycle().b() == k.c.DESTROYED) {
                    LifecycleController lifecycleController = LifecycleController.this;
                    c2.a.a(c2Var, null, 1, null);
                    lifecycleController.c();
                    return;
                }
                k.c b10 = qVar.getLifecycle().b();
                cVar2 = LifecycleController.this.f2390b;
                if (b10.compareTo(cVar2) < 0) {
                    gVar3 = LifecycleController.this.f2391c;
                    gVar3.g();
                } else {
                    gVar2 = LifecycleController.this.f2391c;
                    gVar2.h();
                }
            }
        };
        this.f2392d = nVar;
        if (kVar.b() == k.c.DESTROYED) {
            c2.a.a(c2Var, null, 1, null);
            c();
        } else {
            kVar.a(nVar);
        }
    }

    public final void c() {
        this.f2389a.c(this.f2392d);
        this.f2391c.f();
    }
}
