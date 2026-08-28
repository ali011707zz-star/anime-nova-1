package rc;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* compiled from: Builders.common.kt */
/* loaded from: classes2.dex */
public final class c1<T> extends wc.y<T> {

    /* renamed from: i, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f13235i = AtomicIntegerFieldUpdater.newUpdater(c1.class, "_decision");
    private volatile /* synthetic */ int _decision;

    public c1(ac.g gVar, ac.d<? super T> dVar) {
        super(gVar, dVar);
        this._decision = 0;
    }

    @Override // wc.y, rc.a
    public void N0(Object obj) {
        if (T0()) {
            return;
        }
        wc.h.c(bc.b.c(this.f15544h), i0.a(obj, this.f15544h), null, 2, null);
    }

    public final Object S0() {
        if (U0()) {
            return bc.c.d();
        }
        Object h10 = k2.h(b0());
        if (h10 instanceof f0) {
            throw ((f0) h10).f13254a;
        }
        return h10;
    }

    public final boolean T0() {
        do {
            int i10 = this._decision;
            if (i10 != 0) {
                if (i10 == 1) {
                    return false;
                }
                throw new IllegalStateException("Already resumed".toString());
            }
        } while (!f13235i.compareAndSet(this, 0, 2));
        return true;
    }

    public final boolean U0() {
        do {
            int i10 = this._decision;
            if (i10 != 0) {
                if (i10 == 2) {
                    return false;
                }
                throw new IllegalStateException("Already suspended".toString());
            }
        } while (!f13235i.compareAndSet(this, 0, 1));
        return true;
    }

    @Override // wc.y, rc.j2
    public void v(Object obj) {
        N0(obj);
    }
}
