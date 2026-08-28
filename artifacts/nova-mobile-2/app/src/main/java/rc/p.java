package rc;

import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.KotlinNothingValueException;
import kotlinx.coroutines.CompletionHandlerException;
import rc.c2;

/* compiled from: CancellableContinuationImpl.kt */
/* loaded from: classes2.dex */
public class p<T> extends d1<T> implements o<T>, cc.e {

    /* renamed from: l, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f13313l = AtomicIntegerFieldUpdater.newUpdater(p.class, "_decision");

    /* renamed from: m, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f13314m = AtomicReferenceFieldUpdater.newUpdater(p.class, Object.class, "_state");
    private volatile /* synthetic */ int _decision;
    private volatile /* synthetic */ Object _state;

    /* renamed from: i, reason: collision with root package name */
    public final ac.d<T> f13315i;

    /* renamed from: j, reason: collision with root package name */
    public final ac.g f13316j;

    /* renamed from: k, reason: collision with root package name */
    public i1 f13317k;

    /* JADX WARN: Multi-variable type inference failed */
    public p(ac.d<? super T> dVar, int i10) {
        super(i10);
        this.f13315i = dVar;
        if (u0.a()) {
            if (!(i10 != -1)) {
                throw new AssertionError();
            }
        }
        this.f13316j = dVar.getContext();
        this._decision = 0;
        this._state = d.f13239f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void M(p pVar, Object obj, int i10, ic.l lVar, int i11, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: resumeImpl");
        }
        if ((i11 & 4) != 0) {
            lVar = null;
        }
        pVar.L(obj, i10, lVar);
    }

    @Override // rc.o
    public void A(T t10, ic.l<? super Throwable, vb.p> lVar) {
        L(t10, this.f13240h, lVar);
    }

    @Override // rc.o
    public void B(Object obj) {
        if (u0.a()) {
            if (!(obj == q.f13321a)) {
                throw new AssertionError();
            }
        }
        t(this.f13240h);
    }

    public final i1 C() {
        c2 c2Var = (c2) getContext().get(c2.f13236c);
        if (c2Var == null) {
            return null;
        }
        i1 d10 = c2.a.d(c2Var, true, false, new t(this), 2, null);
        this.f13317k = d10;
        return d10;
    }

    public boolean D() {
        return !(w() instanceof q2);
    }

    public final boolean E() {
        return e1.c(this.f13240h) && ((wc.g) this.f13315i).o();
    }

    public final m F(ic.l<? super Throwable, vb.p> lVar) {
        return lVar instanceof m ? (m) lVar : new z1(lVar);
    }

    public final void G(ic.l<? super Throwable, vb.p> lVar, Object obj) {
        throw new IllegalStateException(("It's prohibited to register multiple handlers, tried to register " + lVar + ", already has " + obj).toString());
    }

    public String H() {
        return "CancellableContinuation";
    }

    public final void I(Throwable th) {
        if (p(th)) {
            return;
        }
        o(th);
        s();
    }

    public final void J() {
        ac.d<T> dVar = this.f13315i;
        wc.g gVar = dVar instanceof wc.g ? (wc.g) dVar : null;
        Throwable s10 = gVar != null ? gVar.s(this) : null;
        if (s10 == null) {
            return;
        }
        q();
        o(s10);
    }

    public final boolean K() {
        if (u0.a()) {
            if (!(this.f13240h == 2)) {
                throw new AssertionError();
            }
        }
        if (u0.a()) {
            if (!(this.f13317k != p2.f13320f)) {
                throw new AssertionError();
            }
        }
        Object obj = this._state;
        if (u0.a() && !(!(obj instanceof q2))) {
            throw new AssertionError();
        }
        if ((obj instanceof e0) && ((e0) obj).f13249d != null) {
            q();
            return false;
        }
        this._decision = 0;
        this._state = d.f13239f;
        return true;
    }

    public final void L(Object obj, int i10, ic.l<? super Throwable, vb.p> lVar) {
        Object obj2;
        do {
            obj2 = this._state;
            if (obj2 instanceof q2) {
            } else {
                if (obj2 instanceof s) {
                    s sVar = (s) obj2;
                    if (sVar.c()) {
                        if (lVar == null) {
                            return;
                        }
                        m(lVar, sVar.f13254a);
                        return;
                    }
                }
                i(obj);
                throw new KotlinNothingValueException();
            }
        } while (!ad.c.a(f13314m, this, obj2, N((q2) obj2, obj, i10, lVar, null)));
        s();
        t(i10);
    }

    public final Object N(q2 q2Var, Object obj, int i10, ic.l<? super Throwable, vb.p> lVar, Object obj2) {
        if (obj instanceof f0) {
            if (u0.a()) {
                if (!(obj2 == null)) {
                    throw new AssertionError();
                }
            }
            if (!u0.a()) {
                return obj;
            }
            if (lVar == null) {
                return obj;
            }
            throw new AssertionError();
        }
        if (!e1.b(i10) && obj2 == null) {
            return obj;
        }
        if (lVar != null || (((q2Var instanceof m) && !(q2Var instanceof f)) || obj2 != null)) {
            return new e0(obj, q2Var instanceof m ? (m) q2Var : null, lVar, obj2, null, 16, null);
        }
        return obj;
    }

    public final boolean O() {
        do {
            int i10 = this._decision;
            if (i10 != 0) {
                if (i10 == 1) {
                    return false;
                }
                throw new IllegalStateException("Already resumed".toString());
            }
        } while (!f13313l.compareAndSet(this, 0, 2));
        return true;
    }

    public final wc.a0 P(Object obj, Object obj2, ic.l<? super Throwable, vb.p> lVar) {
        Object obj3;
        do {
            obj3 = this._state;
            if (obj3 instanceof q2) {
            } else {
                if (!(obj3 instanceof e0) || obj2 == null) {
                    return null;
                }
                e0 e0Var = (e0) obj3;
                if (e0Var.f13249d != obj2) {
                    return null;
                }
                if (!u0.a() || jc.l.a(e0Var.f13246a, obj)) {
                    return q.f13321a;
                }
                throw new AssertionError();
            }
        } while (!ad.c.a(f13314m, this, obj3, N((q2) obj3, obj, this.f13240h, lVar, obj2)));
        s();
        return q.f13321a;
    }

    public final boolean Q() {
        do {
            int i10 = this._decision;
            if (i10 != 0) {
                if (i10 == 2) {
                    return false;
                }
                throw new IllegalStateException("Already suspended".toString());
            }
        } while (!f13313l.compareAndSet(this, 0, 1));
        return true;
    }

    @Override // rc.d1
    public void a(Object obj, Throwable th) {
        while (true) {
            Object obj2 = this._state;
            if (!(obj2 instanceof q2)) {
                if (obj2 instanceof f0) {
                    return;
                }
                if (obj2 instanceof e0) {
                    e0 e0Var = (e0) obj2;
                    if (!e0Var.c()) {
                        if (ad.c.a(f13314m, this, obj2, e0.b(e0Var, null, null, null, null, th, 15, null))) {
                            e0Var.d(this, th);
                            return;
                        }
                    } else {
                        throw new IllegalStateException("Must be called at most once".toString());
                    }
                } else if (ad.c.a(f13314m, this, obj2, new e0(obj2, null, null, null, th, 14, null))) {
                    return;
                }
            } else {
                throw new IllegalStateException("Not completed".toString());
            }
        }
    }

    @Override // rc.o
    public boolean b() {
        return w() instanceof q2;
    }

    @Override // rc.o
    public Object c(T t10, Object obj) {
        return P(t10, obj, null);
    }

    @Override // rc.d1
    public final ac.d<T> d() {
        return this.f13315i;
    }

    @Override // rc.d1
    public Throwable e(Object obj) {
        Throwable j10;
        Throwable e10 = super.e(obj);
        if (e10 == null) {
            return null;
        }
        ac.d<T> d10 = d();
        if (!u0.d() || !(d10 instanceof cc.e)) {
            return e10;
        }
        j10 = wc.z.j(e10, (cc.e) d10);
        return j10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // rc.d1
    public <T> T f(Object obj) {
        return obj instanceof e0 ? (T) ((e0) obj).f13246a : obj;
    }

    @Override // cc.e
    public cc.e getCallerFrame() {
        ac.d<T> dVar = this.f13315i;
        if (dVar instanceof cc.e) {
            return (cc.e) dVar;
        }
        return null;
    }

    @Override // ac.d
    public ac.g getContext() {
        return this.f13316j;
    }

    @Override // cc.e
    public StackTraceElement getStackTraceElement() {
        return null;
    }

    @Override // rc.d1
    public Object h() {
        return w();
    }

    public final Void i(Object obj) {
        throw new IllegalStateException(jc.l.m("Already resumed, but proposed with update ", obj).toString());
    }

    @Override // rc.o
    public boolean isCancelled() {
        return w() instanceof s;
    }

    public final void j(ic.l<? super Throwable, vb.p> lVar, Throwable th) {
        try {
            lVar.invoke(th);
        } catch (Throwable th2) {
            n0.a(getContext(), new CompletionHandlerException(jc.l.m("Exception in invokeOnCancellation handler for ", this), th2));
        }
    }

    public final void k(m mVar, Throwable th) {
        try {
            mVar.a(th);
        } catch (Throwable th2) {
            n0.a(getContext(), new CompletionHandlerException(jc.l.m("Exception in invokeOnCancellation handler for ", this), th2));
        }
    }

    @Override // rc.o
    public void l(l0 l0Var, T t10) {
        ac.d<T> dVar = this.f13315i;
        wc.g gVar = dVar instanceof wc.g ? (wc.g) dVar : null;
        M(this, t10, (gVar != null ? gVar.f15489i : null) == l0Var ? 4 : this.f13240h, null, 4, null);
    }

    public final void m(ic.l<? super Throwable, vb.p> lVar, Throwable th) {
        try {
            lVar.invoke(th);
        } catch (Throwable th2) {
            n0.a(getContext(), new CompletionHandlerException(jc.l.m("Exception in resume onCancellation handler for ", this), th2));
        }
    }

    @Override // rc.o
    public void n(ic.l<? super Throwable, vb.p> lVar) {
        m F = F(lVar);
        while (true) {
            Object obj = this._state;
            if (obj instanceof d) {
                if (ad.c.a(f13314m, this, obj, F)) {
                    return;
                }
            } else if (obj instanceof m) {
                G(lVar, obj);
            } else {
                boolean z10 = obj instanceof f0;
                if (z10) {
                    f0 f0Var = (f0) obj;
                    if (!f0Var.b()) {
                        G(lVar, obj);
                    }
                    if (obj instanceof s) {
                        if (!z10) {
                            f0Var = null;
                        }
                        j(lVar, f0Var != null ? f0Var.f13254a : null);
                        return;
                    }
                    return;
                }
                if (obj instanceof e0) {
                    e0 e0Var = (e0) obj;
                    if (e0Var.f13247b != null) {
                        G(lVar, obj);
                    }
                    if (F instanceof f) {
                        return;
                    }
                    if (e0Var.c()) {
                        j(lVar, e0Var.f13250e);
                        return;
                    } else {
                        if (ad.c.a(f13314m, this, obj, e0.b(e0Var, null, F, null, null, null, 29, null))) {
                            return;
                        }
                    }
                } else {
                    if (F instanceof f) {
                        return;
                    }
                    if (ad.c.a(f13314m, this, obj, new e0(obj, F, null, null, null, 28, null))) {
                        return;
                    }
                }
            }
        }
    }

    public boolean o(Throwable th) {
        Object obj;
        boolean z10;
        do {
            obj = this._state;
            if (!(obj instanceof q2)) {
                return false;
            }
            z10 = obj instanceof m;
        } while (!ad.c.a(f13314m, this, obj, new s(this, th, z10)));
        m mVar = z10 ? (m) obj : null;
        if (mVar != null) {
            k(mVar, th);
        }
        s();
        t(this.f13240h);
        return true;
    }

    public final boolean p(Throwable th) {
        if (E()) {
            return ((wc.g) this.f13315i).p(th);
        }
        return false;
    }

    public final void q() {
        i1 i1Var = this.f13317k;
        if (i1Var == null) {
            return;
        }
        i1Var.e();
        this.f13317k = p2.f13320f;
    }

    @Override // rc.o
    public Object r(T t10, Object obj, ic.l<? super Throwable, vb.p> lVar) {
        return P(t10, obj, lVar);
    }

    @Override // ac.d
    public void resumeWith(Object obj) {
        M(this, i0.c(obj, this), this.f13240h, null, 4, null);
    }

    public final void s() {
        if (E()) {
            return;
        }
        q();
    }

    public final void t(int i10) {
        if (O()) {
            return;
        }
        e1.a(this, i10);
    }

    public String toString() {
        return H() + '(' + v0.c(this.f13315i) + "){" + x() + "}@" + v0.b(this);
    }

    public Throwable u(c2 c2Var) {
        return c2Var.a0();
    }

    public final Object v() {
        c2 c2Var;
        Throwable j10;
        Throwable j11;
        boolean E = E();
        if (Q()) {
            if (this.f13317k == null) {
                C();
            }
            if (E) {
                J();
            }
            return bc.c.d();
        }
        if (E) {
            J();
        }
        Object w10 = w();
        if (w10 instanceof f0) {
            Throwable th = ((f0) w10).f13254a;
            if (!u0.d()) {
                throw th;
            }
            j11 = wc.z.j(th, this);
            throw j11;
        }
        if (e1.b(this.f13240h) && (c2Var = (c2) getContext().get(c2.f13236c)) != null && !c2Var.b()) {
            CancellationException a02 = c2Var.a0();
            a(w10, a02);
            if (!u0.d()) {
                throw a02;
            }
            j10 = wc.z.j(a02, this);
            throw j10;
        }
        return f(w10);
    }

    public final Object w() {
        return this._state;
    }

    public final String x() {
        Object w10 = w();
        return w10 instanceof q2 ? "Active" : w10 instanceof s ? "Cancelled" : "Completed";
    }

    @Override // rc.o
    public Object y(Throwable th) {
        return P(new f0(th, false, 2, null), null, null);
    }

    public void z() {
        i1 C = C();
        if (C != null && D()) {
            C.e();
            this.f13317k = p2.f13320f;
        }
    }
}
