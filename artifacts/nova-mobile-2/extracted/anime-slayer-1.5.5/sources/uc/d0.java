package uc;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import rc.u0;
import vb.j;

/* compiled from: StateFlow.kt */
/* loaded from: classes2.dex */
public final class d0 extends vc.c<b0<?>> {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f14536a = AtomicReferenceFieldUpdater.newUpdater(d0.class, Object.class, "_state");
    public volatile /* synthetic */ Object _state = null;

    @Override // vc.c
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public boolean a(b0<?> b0Var) {
        wc.a0 a0Var;
        if (this._state != null) {
            return false;
        }
        a0Var = c0.f14533a;
        this._state = a0Var;
        return true;
    }

    public final Object d(ac.d<? super vb.p> dVar) {
        wc.a0 a0Var;
        wc.a0 a0Var2;
        rc.p pVar = new rc.p(bc.b.c(dVar), 1);
        pVar.z();
        if (u0.a() && !(!(this._state instanceof rc.p))) {
            throw new AssertionError();
        }
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f14536a;
        a0Var = c0.f14533a;
        if (!ad.c.a(atomicReferenceFieldUpdater, this, a0Var, pVar)) {
            if (u0.a()) {
                Object obj = this._state;
                a0Var2 = c0.f14534b;
                if (!(obj == a0Var2)) {
                    throw new AssertionError();
                }
            }
            vb.p pVar2 = vb.p.f15031a;
            j.a aVar = vb.j.f15020f;
            pVar.resumeWith(vb.j.a(pVar2));
        }
        Object v10 = pVar.v();
        if (v10 == bc.c.d()) {
            cc.h.c(dVar);
        }
        return v10 == bc.c.d() ? v10 : vb.p.f15031a;
    }

    @Override // vc.c
    /* renamed from: e, reason: merged with bridge method [inline-methods] */
    public ac.d<vb.p>[] b(b0<?> b0Var) {
        this._state = null;
        return vc.b.f15038a;
    }

    public final void f() {
        wc.a0 a0Var;
        wc.a0 a0Var2;
        wc.a0 a0Var3;
        wc.a0 a0Var4;
        while (true) {
            Object obj = this._state;
            if (obj == null) {
                return;
            }
            a0Var = c0.f14534b;
            if (obj == a0Var) {
                return;
            }
            a0Var2 = c0.f14533a;
            if (obj == a0Var2) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f14536a;
                a0Var3 = c0.f14534b;
                if (ad.c.a(atomicReferenceFieldUpdater, this, obj, a0Var3)) {
                    return;
                }
            } else {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f14536a;
                a0Var4 = c0.f14533a;
                if (ad.c.a(atomicReferenceFieldUpdater2, this, obj, a0Var4)) {
                    vb.p pVar = vb.p.f15031a;
                    j.a aVar = vb.j.f15020f;
                    ((rc.p) obj).resumeWith(vb.j.a(pVar));
                    return;
                }
            }
        }
    }

    public final boolean g() {
        wc.a0 a0Var;
        wc.a0 a0Var2;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f14536a;
        a0Var = c0.f14533a;
        Object andSet = atomicReferenceFieldUpdater.getAndSet(this, a0Var);
        jc.l.c(andSet);
        if (u0.a() && !(!(andSet instanceof rc.p))) {
            throw new AssertionError();
        }
        a0Var2 = c0.f14534b;
        return andSet == a0Var2;
    }
}
