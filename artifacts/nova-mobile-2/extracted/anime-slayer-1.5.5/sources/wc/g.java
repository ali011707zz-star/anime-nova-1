package wc;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import rc.b3;
import rc.d1;
import rc.i0;
import rc.l0;
import rc.m1;
import rc.u0;
import rc.v0;

/* compiled from: DispatchedContinuation.kt */
/* loaded from: classes2.dex */
public final class g<T> extends d1<T> implements cc.e, ac.d<T> {

    /* renamed from: m, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f15488m = AtomicReferenceFieldUpdater.newUpdater(g.class, Object.class, "_reusableCancellableContinuation");
    private volatile /* synthetic */ Object _reusableCancellableContinuation;

    /* renamed from: i, reason: collision with root package name */
    public final l0 f15489i;

    /* renamed from: j, reason: collision with root package name */
    public final ac.d<T> f15490j;

    /* renamed from: k, reason: collision with root package name */
    public Object f15491k;

    /* renamed from: l, reason: collision with root package name */
    public final Object f15492l;

    /* JADX WARN: Multi-variable type inference failed */
    public g(l0 l0Var, ac.d<? super T> dVar) {
        super(-1);
        this.f15489i = l0Var;
        this.f15490j = dVar;
        this.f15491k = h.a();
        this.f15492l = e0.b(getContext());
        this._reusableCancellableContinuation = null;
    }

    @Override // rc.d1
    public void a(Object obj, Throwable th) {
        if (obj instanceof rc.g0) {
            ((rc.g0) obj).f13261b.invoke(th);
        }
    }

    @Override // rc.d1
    public ac.d<T> d() {
        return this;
    }

    @Override // cc.e
    public cc.e getCallerFrame() {
        ac.d<T> dVar = this.f15490j;
        if (dVar instanceof cc.e) {
            return (cc.e) dVar;
        }
        return null;
    }

    @Override // ac.d
    public ac.g getContext() {
        return this.f15490j.getContext();
    }

    @Override // cc.e
    public StackTraceElement getStackTraceElement() {
        return null;
    }

    @Override // rc.d1
    public Object h() {
        Object obj = this.f15491k;
        if (u0.a()) {
            if (!(obj != h.a())) {
                throw new AssertionError();
            }
        }
        this.f15491k = h.a();
        return obj;
    }

    public final void i() {
        do {
        } while (this._reusableCancellableContinuation == h.f15494b);
    }

    public final rc.p<T> j() {
        while (true) {
            Object obj = this._reusableCancellableContinuation;
            if (obj == null) {
                this._reusableCancellableContinuation = h.f15494b;
                return null;
            }
            if (obj instanceof rc.p) {
                if (ad.c.a(f15488m, this, obj, h.f15494b)) {
                    return (rc.p) obj;
                }
            } else if (obj != h.f15494b && !(obj instanceof Throwable)) {
                throw new IllegalStateException(jc.l.m("Inconsistent state ", obj).toString());
            }
        }
    }

    public final void k(ac.g gVar, T t10) {
        this.f15491k = t10;
        this.f13240h = 1;
        this.f15489i.I0(gVar, this);
    }

    public final rc.p<?> m() {
        Object obj = this._reusableCancellableContinuation;
        if (obj instanceof rc.p) {
            return (rc.p) obj;
        }
        return null;
    }

    public final boolean o() {
        return this._reusableCancellableContinuation != null;
    }

    public final boolean p(Throwable th) {
        while (true) {
            Object obj = this._reusableCancellableContinuation;
            a0 a0Var = h.f15494b;
            if (jc.l.a(obj, a0Var)) {
                if (ad.c.a(f15488m, this, a0Var, th)) {
                    return true;
                }
            } else {
                if (obj instanceof Throwable) {
                    return true;
                }
                if (ad.c.a(f15488m, this, obj, null)) {
                    return false;
                }
            }
        }
    }

    public final void q() {
        i();
        rc.p<?> m10 = m();
        if (m10 == null) {
            return;
        }
        m10.q();
    }

    @Override // ac.d
    public void resumeWith(Object obj) {
        ac.g context = this.f15490j.getContext();
        Object d10 = i0.d(obj, null, 1, null);
        if (this.f15489i.J0(context)) {
            this.f15491k = d10;
            this.f13240h = 0;
            this.f15489i.H0(context, this);
            return;
        }
        u0.a();
        m1 b10 = b3.f13232a.b();
        if (b10.R0()) {
            this.f15491k = d10;
            this.f13240h = 0;
            b10.N0(this);
            return;
        }
        b10.P0(true);
        try {
            ac.g context2 = getContext();
            Object c10 = e0.c(context2, this.f15492l);
            try {
                this.f15490j.resumeWith(obj);
                vb.p pVar = vb.p.f15031a;
                do {
                } while (b10.U0());
            } finally {
                e0.a(context2, c10);
            }
        } finally {
            try {
            } finally {
            }
        }
    }

    public final Throwable s(rc.o<?> oVar) {
        a0 a0Var;
        do {
            Object obj = this._reusableCancellableContinuation;
            a0Var = h.f15494b;
            if (obj != a0Var) {
                if (obj instanceof Throwable) {
                    if (ad.c.a(f15488m, this, obj, null)) {
                        return (Throwable) obj;
                    }
                    throw new IllegalArgumentException("Failed requirement.".toString());
                }
                throw new IllegalStateException(jc.l.m("Inconsistent state ", obj).toString());
            }
        } while (!ad.c.a(f15488m, this, a0Var, oVar));
        return null;
    }

    public String toString() {
        return "DispatchedContinuation[" + this.f15489i + ", " + v0.c(this.f15490j) + ']';
    }
}
