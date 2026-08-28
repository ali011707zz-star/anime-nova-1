package rc;

import ac.g;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlinx.coroutines.CompletionHandlerException;
import kotlinx.coroutines.JobCancellationException;
import kotlinx.coroutines.TimeoutCancellationException;
import rc.c2;
import wc.o;

/* compiled from: JobSupport.kt */
/* loaded from: classes2.dex */
public class j2 implements c2, w, r2 {

    /* renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f13273f = AtomicReferenceFieldUpdater.newUpdater(j2.class, Object.class, "_state");
    private volatile /* synthetic */ Object _parentHandle;
    private volatile /* synthetic */ Object _state;

    /* compiled from: JobSupport.kt */
    /* loaded from: classes2.dex */
    public static final class a<T> extends p<T> {

        /* renamed from: n, reason: collision with root package name */
        public final j2 f13274n;

        public a(ac.d<? super T> dVar, j2 j2Var) {
            super(dVar, 1);
            this.f13274n = j2Var;
        }

        @Override // rc.p
        public String H() {
            return "AwaitContinuation";
        }

        @Override // rc.p
        public Throwable u(c2 c2Var) {
            Throwable e10;
            Object b02 = this.f13274n.b0();
            return (!(b02 instanceof c) || (e10 = ((c) b02).e()) == null) ? b02 instanceof f0 ? ((f0) b02).f13254a : c2Var.a0() : e10;
        }
    }

    /* compiled from: JobSupport.kt */
    /* loaded from: classes2.dex */
    public static final class b extends i2 {

        /* renamed from: j, reason: collision with root package name */
        public final j2 f13275j;

        /* renamed from: k, reason: collision with root package name */
        public final c f13276k;

        /* renamed from: l, reason: collision with root package name */
        public final v f13277l;

        /* renamed from: m, reason: collision with root package name */
        public final Object f13278m;

        public b(j2 j2Var, c cVar, v vVar, Object obj) {
            this.f13275j = j2Var;
            this.f13276k = cVar;
            this.f13277l = vVar;
            this.f13278m = obj;
        }

        @Override // rc.h0
        public void U(Throwable th) {
            this.f13275j.O(this.f13276k, this.f13277l, this.f13278m);
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ vb.p invoke(Throwable th) {
            U(th);
            return vb.p.f15031a;
        }
    }

    /* compiled from: JobSupport.kt */
    /* loaded from: classes2.dex */
    public static final class c implements x1 {
        private volatile /* synthetic */ Object _exceptionsHolder = null;
        private volatile /* synthetic */ int _isCompleting;
        private volatile /* synthetic */ Object _rootCause;

        /* renamed from: f, reason: collision with root package name */
        public final o2 f13279f;

        public c(o2 o2Var, boolean z10, Throwable th) {
            this.f13279f = o2Var;
            this._isCompleting = z10 ? 1 : 0;
            this._rootCause = th;
        }

        public final void a(Throwable th) {
            Throwable e10 = e();
            if (e10 == null) {
                l(th);
                return;
            }
            if (th == e10) {
                return;
            }
            Object d10 = d();
            if (d10 == null) {
                k(th);
                return;
            }
            if (!(d10 instanceof Throwable)) {
                if (!(d10 instanceof ArrayList)) {
                    throw new IllegalStateException(jc.l.m("State is ", d10).toString());
                }
                ((ArrayList) d10).add(th);
            } else {
                if (th == d10) {
                    return;
                }
                ArrayList<Throwable> c10 = c();
                c10.add(d10);
                c10.add(th);
                vb.p pVar = vb.p.f15031a;
                k(c10);
            }
        }

        @Override // rc.x1
        public boolean b() {
            return e() == null;
        }

        public final ArrayList<Throwable> c() {
            return new ArrayList<>(4);
        }

        public final Object d() {
            return this._exceptionsHolder;
        }

        public final Throwable e() {
            return (Throwable) this._rootCause;
        }

        public final boolean f() {
            return e() != null;
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [boolean, int] */
        public final boolean g() {
            return this._isCompleting;
        }

        public final boolean h() {
            wc.a0 a0Var;
            Object d10 = d();
            a0Var = k2.f13289e;
            return d10 == a0Var;
        }

        public final List<Throwable> i(Throwable th) {
            ArrayList<Throwable> arrayList;
            wc.a0 a0Var;
            Object d10 = d();
            if (d10 == null) {
                arrayList = c();
            } else if (d10 instanceof Throwable) {
                ArrayList<Throwable> c10 = c();
                c10.add(d10);
                arrayList = c10;
            } else {
                if (!(d10 instanceof ArrayList)) {
                    throw new IllegalStateException(jc.l.m("State is ", d10).toString());
                }
                arrayList = (ArrayList) d10;
            }
            Throwable e10 = e();
            if (e10 != null) {
                arrayList.add(0, e10);
            }
            if (th != null && !jc.l.a(th, e10)) {
                arrayList.add(th);
            }
            a0Var = k2.f13289e;
            k(a0Var);
            return arrayList;
        }

        public final void j(boolean z10) {
            this._isCompleting = z10 ? 1 : 0;
        }

        public final void k(Object obj) {
            this._exceptionsHolder = obj;
        }

        public final void l(Throwable th) {
            this._rootCause = th;
        }

        @Override // rc.x1
        public o2 t() {
            return this.f13279f;
        }

        public String toString() {
            return "Finishing[cancelling=" + f() + ", completing=" + g() + ", rootCause=" + e() + ", exceptions=" + d() + ", list=" + t() + ']';
        }
    }

    /* compiled from: LockFreeLinkedList.kt */
    /* loaded from: classes2.dex */
    public static final class d extends o.b {

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ wc.o f13280d;

        /* renamed from: e, reason: collision with root package name */
        public final /* synthetic */ j2 f13281e;

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Object f13282f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(wc.o oVar, j2 j2Var, Object obj) {
            super(oVar);
            this.f13280d = oVar;
            this.f13281e = j2Var;
            this.f13282f = obj;
        }

        @Override // wc.d
        /* renamed from: k, reason: merged with bridge method [inline-methods] */
        public Object i(wc.o oVar) {
            if (this.f13281e.b0() == this.f13282f) {
                return null;
            }
            return wc.n.a();
        }
    }

    public j2(boolean z10) {
        this._state = z10 ? k2.f13291g : k2.f13290f;
        this._parentHandle = null;
    }

    public static /* synthetic */ CancellationException G0(j2 j2Var, Throwable th, String str, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: toCancellationException");
        }
        if ((i10 & 1) != 0) {
            str = null;
        }
        return j2Var.F0(th, str);
    }

    public final void A0(i2 i2Var) {
        Object b02;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        l1 l1Var;
        do {
            b02 = b0();
            if (!(b02 instanceof i2)) {
                if (!(b02 instanceof x1) || ((x1) b02).t() == null) {
                    return;
                }
                i2Var.P();
                return;
            }
            if (b02 != i2Var) {
                return;
            }
            atomicReferenceFieldUpdater = f13273f;
            l1Var = k2.f13291g;
        } while (!ad.c.a(atomicReferenceFieldUpdater, this, b02, l1Var));
    }

    public final <T, R> void B0(zc.d<? super R> dVar, ic.p<? super T, ? super ac.d<? super R>, ? extends Object> pVar) {
        Object b02 = b0();
        if (b02 instanceof f0) {
            dVar.k(((f0) b02).f13254a);
        } else {
            xc.a.f(pVar, k2.h(b02), dVar.f(), null, 4, null);
        }
    }

    public final Object C(ac.d<Object> dVar) {
        a aVar = new a(bc.b.c(dVar), this);
        aVar.z();
        r.a(aVar, h0(new t2(aVar)));
        Object v10 = aVar.v();
        if (v10 == bc.c.d()) {
            cc.h.c(dVar);
        }
        return v10;
    }

    public final void C0(u uVar) {
        this._parentHandle = uVar;
    }

    public final boolean D(Throwable th) {
        return E(th);
    }

    public final int D0(Object obj) {
        l1 l1Var;
        if (obj instanceof l1) {
            if (((l1) obj).b()) {
                return 0;
            }
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f13273f;
            l1Var = k2.f13291g;
            if (!ad.c.a(atomicReferenceFieldUpdater, this, obj, l1Var)) {
                return -1;
            }
            w0();
            return 1;
        }
        if (!(obj instanceof w1)) {
            return 0;
        }
        if (!ad.c.a(f13273f, this, obj, ((w1) obj).t())) {
            return -1;
        }
        w0();
        return 1;
    }

    public final boolean E(Object obj) {
        Object obj2;
        wc.a0 a0Var;
        wc.a0 a0Var2;
        wc.a0 a0Var3;
        obj2 = k2.f13285a;
        if (X() && (obj2 = I(obj)) == k2.f13286b) {
            return true;
        }
        a0Var = k2.f13285a;
        if (obj2 == a0Var) {
            obj2 = m0(obj);
        }
        a0Var2 = k2.f13285a;
        if (obj2 == a0Var2 || obj2 == k2.f13286b) {
            return true;
        }
        a0Var3 = k2.f13288d;
        if (obj2 == a0Var3) {
            return false;
        }
        v(obj2);
        return true;
    }

    public final String E0(Object obj) {
        if (!(obj instanceof c)) {
            return obj instanceof x1 ? ((x1) obj).b() ? "Active" : "New" : obj instanceof f0 ? "Cancelled" : "Completed";
        }
        c cVar = (c) obj;
        return cVar.f() ? "Cancelling" : cVar.g() ? "Completing" : "Active";
    }

    public final CancellationException F0(Throwable th, String str) {
        CancellationException cancellationException = th instanceof CancellationException ? (CancellationException) th : null;
        if (cancellationException == null) {
            if (str == null) {
                str = K();
            }
            cancellationException = new JobCancellationException(str, th, this);
        }
        return cancellationException;
    }

    @Override // rc.c2
    public final i1 G(boolean z10, boolean z11, ic.l<? super Throwable, vb.p> lVar) {
        i2 p02 = p0(lVar, z10);
        while (true) {
            Object b02 = b0();
            if (b02 instanceof l1) {
                l1 l1Var = (l1) b02;
                if (l1Var.b()) {
                    if (ad.c.a(f13273f, this, b02, p02)) {
                        return p02;
                    }
                } else {
                    x0(l1Var);
                }
            } else {
                if (b02 instanceof x1) {
                    o2 t10 = ((x1) b02).t();
                    if (t10 != null) {
                        i1 i1Var = p2.f13320f;
                        if (z10 && (b02 instanceof c)) {
                            synchronized (b02) {
                                r3 = ((c) b02).e();
                                if (r3 == null || ((lVar instanceof v) && !((c) b02).g())) {
                                    if (t(b02, t10, p02)) {
                                        if (r3 == null) {
                                            return p02;
                                        }
                                        i1Var = p02;
                                    }
                                }
                                vb.p pVar = vb.p.f15031a;
                            }
                        }
                        if (r3 != null) {
                            if (z11) {
                                lVar.invoke(r3);
                            }
                            return i1Var;
                        }
                        if (t(b02, t10, p02)) {
                            return p02;
                        }
                    } else {
                        if (b02 == null) {
                            throw new NullPointerException("null cannot be cast to non-null type kotlinx.coroutines.JobNode");
                        }
                        y0((i2) b02);
                    }
                } else {
                    if (z11) {
                        f0 f0Var = b02 instanceof f0 ? (f0) b02 : null;
                        lVar.invoke(f0Var != null ? f0Var.f13254a : null);
                    }
                    return p2.f13320f;
                }
            }
        }
    }

    public void H(Throwable th) {
        E(th);
    }

    public final String H0() {
        return q0() + '{' + E0(b0()) + '}';
    }

    public final Object I(Object obj) {
        wc.a0 a0Var;
        Object K0;
        wc.a0 a0Var2;
        do {
            Object b02 = b0();
            if (!(b02 instanceof x1) || ((b02 instanceof c) && ((c) b02).g())) {
                a0Var = k2.f13285a;
                return a0Var;
            }
            K0 = K0(b02, new f0(P(obj), false, 2, null));
            a0Var2 = k2.f13287c;
        } while (K0 == a0Var2);
        return K0;
    }

    public final boolean I0(x1 x1Var, Object obj) {
        if (u0.a()) {
            if (!((x1Var instanceof l1) || (x1Var instanceof i2))) {
                throw new AssertionError();
            }
        }
        if (u0.a() && !(!(obj instanceof f0))) {
            throw new AssertionError();
        }
        if (!ad.c.a(f13273f, this, x1Var, k2.g(obj))) {
            return false;
        }
        u0(null);
        v0(obj);
        M(x1Var, obj);
        return true;
    }

    public final boolean J(Throwable th) {
        if (i0()) {
            return true;
        }
        boolean z10 = th instanceof CancellationException;
        u Z = Z();
        return (Z == null || Z == p2.f13320f) ? z10 : Z.q(th) || z10;
    }

    public final boolean J0(x1 x1Var, Throwable th) {
        if (u0.a() && !(!(x1Var instanceof c))) {
            throw new AssertionError();
        }
        if (u0.a() && !x1Var.b()) {
            throw new AssertionError();
        }
        o2 Y = Y(x1Var);
        if (Y == null) {
            return false;
        }
        if (!ad.c.a(f13273f, this, x1Var, new c(Y, false, th))) {
            return false;
        }
        s0(Y, th);
        return true;
    }

    public String K() {
        return "Job was cancelled";
    }

    public final Object K0(Object obj, Object obj2) {
        wc.a0 a0Var;
        wc.a0 a0Var2;
        if (!(obj instanceof x1)) {
            a0Var2 = k2.f13285a;
            return a0Var2;
        }
        if (((obj instanceof l1) || (obj instanceof i2)) && !(obj instanceof v) && !(obj2 instanceof f0)) {
            if (I0((x1) obj, obj2)) {
                return obj2;
            }
            a0Var = k2.f13287c;
            return a0Var;
        }
        return L0((x1) obj, obj2);
    }

    public boolean L(Throwable th) {
        if (th instanceof CancellationException) {
            return true;
        }
        return E(th) && W();
    }

    public final Object L0(x1 x1Var, Object obj) {
        wc.a0 a0Var;
        wc.a0 a0Var2;
        wc.a0 a0Var3;
        o2 Y = Y(x1Var);
        if (Y == null) {
            a0Var3 = k2.f13287c;
            return a0Var3;
        }
        c cVar = x1Var instanceof c ? (c) x1Var : null;
        if (cVar == null) {
            cVar = new c(Y, false, null);
        }
        synchronized (cVar) {
            if (cVar.g()) {
                a0Var2 = k2.f13285a;
                return a0Var2;
            }
            cVar.j(true);
            if (cVar != x1Var && !ad.c.a(f13273f, this, x1Var, cVar)) {
                a0Var = k2.f13287c;
                return a0Var;
            }
            if (u0.a() && !(!cVar.h())) {
                throw new AssertionError();
            }
            boolean f10 = cVar.f();
            f0 f0Var = obj instanceof f0 ? (f0) obj : null;
            if (f0Var != null) {
                cVar.a(f0Var.f13254a);
            }
            Throwable e10 = true ^ f10 ? cVar.e() : null;
            vb.p pVar = vb.p.f15031a;
            if (e10 != null) {
                s0(Y, e10);
            }
            v R = R(x1Var);
            if (R != null && M0(cVar, R, obj)) {
                return k2.f13286b;
            }
            return Q(cVar, obj);
        }
    }

    public final void M(x1 x1Var, Object obj) {
        u Z = Z();
        if (Z != null) {
            Z.e();
            C0(p2.f13320f);
        }
        f0 f0Var = obj instanceof f0 ? (f0) obj : null;
        Throwable th = f0Var != null ? f0Var.f13254a : null;
        if (x1Var instanceof i2) {
            try {
                ((i2) x1Var).U(th);
                return;
            } catch (Throwable th2) {
                e0(new CompletionHandlerException("Exception in completion handler " + x1Var + " for " + this, th2));
                return;
            }
        }
        o2 t10 = x1Var.t();
        if (t10 == null) {
            return;
        }
        t0(t10, th);
    }

    public final boolean M0(c cVar, v vVar, Object obj) {
        while (c2.a.d(vVar.f13342j, false, false, new b(this, cVar, vVar, obj), 1, null) == p2.f13320f) {
            vVar = r0(vVar);
            if (vVar == null) {
                return false;
            }
        }
        return true;
    }

    public final void O(c cVar, v vVar, Object obj) {
        if (u0.a()) {
            if (!(b0() == cVar)) {
                throw new AssertionError();
            }
        }
        v r02 = r0(vVar);
        if (r02 == null || !M0(cVar, r02, obj)) {
            v(Q(cVar, obj));
        }
    }

    public final Throwable P(Object obj) {
        if (obj == null ? true : obj instanceof Throwable) {
            Throwable th = (Throwable) obj;
            return th == null ? new JobCancellationException(K(), null, this) : th;
        }
        if (obj != null) {
            return ((r2) obj).V();
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlinx.coroutines.ParentJob");
    }

    public final Object Q(c cVar, Object obj) {
        boolean f10;
        Throwable T;
        boolean z10 = true;
        if (u0.a()) {
            if (!(b0() == cVar)) {
                throw new AssertionError();
            }
        }
        if (u0.a() && !(!cVar.h())) {
            throw new AssertionError();
        }
        if (u0.a() && !cVar.g()) {
            throw new AssertionError();
        }
        f0 f0Var = obj instanceof f0 ? (f0) obj : null;
        Throwable th = f0Var == null ? null : f0Var.f13254a;
        synchronized (cVar) {
            f10 = cVar.f();
            List<Throwable> i10 = cVar.i(th);
            T = T(cVar, i10);
            if (T != null) {
                u(T, i10);
            }
        }
        if (T != null && T != th) {
            obj = new f0(T, false, 2, null);
        }
        if (T != null) {
            if (!J(T) && !d0(T)) {
                z10 = false;
            }
            if (z10) {
                if (obj == null) {
                    throw new NullPointerException("null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally");
                }
                ((f0) obj).b();
            }
        }
        if (!f10) {
            u0(T);
        }
        v0(obj);
        boolean a10 = ad.c.a(f13273f, this, cVar, k2.g(obj));
        if (u0.a() && !a10) {
            throw new AssertionError();
        }
        M(cVar, obj);
        return obj;
    }

    public final v R(x1 x1Var) {
        v vVar = x1Var instanceof v ? (v) x1Var : null;
        if (vVar != null) {
            return vVar;
        }
        o2 t10 = x1Var.t();
        if (t10 == null) {
            return null;
        }
        return r0(t10);
    }

    public final Throwable S(Object obj) {
        f0 f0Var = obj instanceof f0 ? (f0) obj : null;
        if (f0Var == null) {
            return null;
        }
        return f0Var.f13254a;
    }

    public final Throwable T(c cVar, List<? extends Throwable> list) {
        Object obj;
        Object obj2 = null;
        if (list.isEmpty()) {
            if (cVar.f()) {
                return new JobCancellationException(K(), null, this);
            }
            return null;
        }
        Iterator<T> it2 = list.iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            if (!(((Throwable) obj) instanceof CancellationException)) {
                break;
            }
        }
        Throwable th = (Throwable) obj;
        if (th != null) {
            return th;
        }
        Throwable th2 = list.get(0);
        if (th2 instanceof TimeoutCancellationException) {
            Iterator<T> it3 = list.iterator();
            while (true) {
                if (!it3.hasNext()) {
                    break;
                }
                Object next = it3.next();
                Throwable th3 = (Throwable) next;
                if (th3 != th2 && (th3 instanceof TimeoutCancellationException)) {
                    obj2 = next;
                    break;
                }
            }
            Throwable th4 = (Throwable) obj2;
            if (th4 != null) {
                return th4;
            }
        }
        return th2;
    }

    @Override // rc.c2
    public final Object U(ac.d<? super vb.p> dVar) {
        if (!j0()) {
            f2.h(dVar.getContext());
            return vb.p.f15031a;
        }
        Object l02 = l0(dVar);
        return l02 == bc.c.d() ? l02 : vb.p.f15031a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v12, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r1v8, types: [java.lang.Throwable] */
    @Override // rc.r2
    public CancellationException V() {
        CancellationException cancellationException;
        Object b02 = b0();
        if (b02 instanceof c) {
            cancellationException = ((c) b02).e();
        } else if (b02 instanceof f0) {
            cancellationException = ((f0) b02).f13254a;
        } else {
            if (b02 instanceof x1) {
                throw new IllegalStateException(jc.l.m("Cannot be cancelling child in this state: ", b02).toString());
            }
            cancellationException = null;
        }
        CancellationException cancellationException2 = cancellationException instanceof CancellationException ? cancellationException : null;
        return cancellationException2 == null ? new JobCancellationException(jc.l.m("Parent job is ", E0(b02)), cancellationException, this) : cancellationException2;
    }

    public boolean W() {
        return true;
    }

    public boolean X() {
        return false;
    }

    public final o2 Y(x1 x1Var) {
        o2 t10 = x1Var.t();
        if (t10 != null) {
            return t10;
        }
        if (x1Var instanceof l1) {
            return new o2();
        }
        if (x1Var instanceof i2) {
            y0((i2) x1Var);
            return null;
        }
        throw new IllegalStateException(jc.l.m("State should have list: ", x1Var).toString());
    }

    public final u Z() {
        return (u) this._parentHandle;
    }

    @Override // rc.c2
    public final CancellationException a0() {
        Object b02 = b0();
        if (!(b02 instanceof c)) {
            if (b02 instanceof x1) {
                throw new IllegalStateException(jc.l.m("Job is still new or active: ", this).toString());
            }
            return b02 instanceof f0 ? G0(this, ((f0) b02).f13254a, null, 1, null) : new JobCancellationException(jc.l.m(v0.a(this), " has completed normally"), null, this);
        }
        Throwable e10 = ((c) b02).e();
        if (e10 != null) {
            return F0(e10, jc.l.m(v0.a(this), " is cancelling"));
        }
        throw new IllegalStateException(jc.l.m("Job is still new or active: ", this).toString());
    }

    @Override // rc.c2
    public boolean b() {
        Object b02 = b0();
        return (b02 instanceof x1) && ((x1) b02).b();
    }

    public final Object b0() {
        while (true) {
            Object obj = this._state;
            if (!(obj instanceof wc.w)) {
                return obj;
            }
            ((wc.w) obj).c(this);
        }
    }

    @Override // rc.c2
    public void d(CancellationException cancellationException) {
        if (cancellationException == null) {
            cancellationException = new JobCancellationException(K(), null, this);
        }
        H(cancellationException);
    }

    public boolean d0(Throwable th) {
        return false;
    }

    public void e0(Throwable th) {
        throw th;
    }

    public final void f0(c2 c2Var) {
        if (u0.a()) {
            if (!(Z() == null)) {
                throw new AssertionError();
            }
        }
        if (c2Var == null) {
            C0(p2.f13320f);
            return;
        }
        c2Var.start();
        u k10 = c2Var.k(this);
        C0(k10);
        if (g0()) {
            k10.e();
            C0(p2.f13320f);
        }
    }

    @Override // ac.g
    public <R> R fold(R r10, ic.p<? super R, ? super g.b, ? extends R> pVar) {
        return (R) c2.a.b(this, r10, pVar);
    }

    public final boolean g0() {
        return !(b0() instanceof x1);
    }

    @Override // ac.g.b, ac.g
    public <E extends g.b> E get(g.c<E> cVar) {
        return (E) c2.a.c(this, cVar);
    }

    @Override // ac.g.b
    public final g.c<?> getKey() {
        return c2.f13236c;
    }

    @Override // rc.c2
    public final i1 h0(ic.l<? super Throwable, vb.p> lVar) {
        return G(false, true, lVar);
    }

    public boolean i0() {
        return false;
    }

    @Override // rc.c2
    public final boolean isCancelled() {
        Object b02 = b0();
        return (b02 instanceof f0) || ((b02 instanceof c) && ((c) b02).f());
    }

    public final boolean j0() {
        Object b02;
        do {
            b02 = b0();
            if (!(b02 instanceof x1)) {
                return false;
            }
        } while (D0(b02) < 0);
        return true;
    }

    @Override // rc.c2
    public final u k(w wVar) {
        return (u) c2.a.d(this, true, false, new v(wVar), 2, null);
    }

    public final Object l0(ac.d<? super vb.p> dVar) {
        p pVar = new p(bc.b.c(dVar), 1);
        pVar.z();
        r.a(pVar, h0(new u2(pVar)));
        Object v10 = pVar.v();
        if (v10 == bc.c.d()) {
            cc.h.c(dVar);
        }
        return v10 == bc.c.d() ? v10 : vb.p.f15031a;
    }

    public final Object m0(Object obj) {
        wc.a0 a0Var;
        wc.a0 a0Var2;
        wc.a0 a0Var3;
        wc.a0 a0Var4;
        wc.a0 a0Var5;
        wc.a0 a0Var6;
        Throwable th = null;
        while (true) {
            Object b02 = b0();
            if (b02 instanceof c) {
                synchronized (b02) {
                    if (((c) b02).h()) {
                        a0Var2 = k2.f13288d;
                        return a0Var2;
                    }
                    boolean f10 = ((c) b02).f();
                    if (obj != null || !f10) {
                        if (th == null) {
                            th = P(obj);
                        }
                        ((c) b02).a(th);
                    }
                    Throwable e10 = f10 ^ true ? ((c) b02).e() : null;
                    if (e10 != null) {
                        s0(((c) b02).t(), e10);
                    }
                    a0Var = k2.f13285a;
                    return a0Var;
                }
            }
            if (!(b02 instanceof x1)) {
                a0Var3 = k2.f13288d;
                return a0Var3;
            }
            if (th == null) {
                th = P(obj);
            }
            x1 x1Var = (x1) b02;
            if (x1Var.b()) {
                if (J0(x1Var, th)) {
                    a0Var4 = k2.f13285a;
                    return a0Var4;
                }
            } else {
                Object K0 = K0(b02, new f0(th, false, 2, null));
                a0Var5 = k2.f13285a;
                if (K0 != a0Var5) {
                    a0Var6 = k2.f13287c;
                    if (K0 != a0Var6) {
                        return K0;
                    }
                } else {
                    throw new IllegalStateException(jc.l.m("Cannot happen in ", b02).toString());
                }
            }
        }
    }

    @Override // ac.g
    public ac.g minusKey(g.c<?> cVar) {
        return c2.a.e(this, cVar);
    }

    public final boolean n0(Object obj) {
        Object K0;
        wc.a0 a0Var;
        wc.a0 a0Var2;
        do {
            K0 = K0(b0(), obj);
            a0Var = k2.f13285a;
            if (K0 == a0Var) {
                return false;
            }
            if (K0 == k2.f13286b) {
                return true;
            }
            a0Var2 = k2.f13287c;
        } while (K0 == a0Var2);
        v(K0);
        return true;
    }

    public final Object o0(Object obj) {
        Object K0;
        wc.a0 a0Var;
        wc.a0 a0Var2;
        do {
            K0 = K0(b0(), obj);
            a0Var = k2.f13285a;
            if (K0 != a0Var) {
                a0Var2 = k2.f13287c;
            } else {
                throw new IllegalStateException("Job " + this + " is already complete or completing, but is being completed with " + obj, S(obj));
            }
        } while (K0 == a0Var2);
        return K0;
    }

    public final i2 p0(ic.l<? super Throwable, vb.p> lVar, boolean z10) {
        if (z10) {
            r0 = lVar instanceof d2 ? (d2) lVar : null;
            if (r0 == null) {
                r0 = new a2(lVar);
            }
        } else {
            i2 i2Var = lVar instanceof i2 ? (i2) lVar : null;
            if (i2Var != null) {
                if (u0.a() && !(!(i2Var instanceof d2))) {
                    throw new AssertionError();
                }
                r0 = i2Var;
            }
            if (r0 == null) {
                r0 = new b2(lVar);
            }
        }
        r0.W(this);
        return r0;
    }

    @Override // ac.g
    public ac.g plus(ac.g gVar) {
        return c2.a.f(this, gVar);
    }

    public String q0() {
        return v0.a(this);
    }

    public final v r0(wc.o oVar) {
        while (oVar.O()) {
            oVar = oVar.L();
        }
        while (true) {
            oVar = oVar.K();
            if (!oVar.O()) {
                if (oVar instanceof v) {
                    return (v) oVar;
                }
                if (oVar instanceof o2) {
                    return null;
                }
            }
        }
    }

    public final void s0(o2 o2Var, Throwable th) {
        CompletionHandlerException completionHandlerException;
        u0(th);
        CompletionHandlerException completionHandlerException2 = null;
        for (wc.o oVar = (wc.o) o2Var.J(); !jc.l.a(oVar, o2Var); oVar = oVar.K()) {
            if (oVar instanceof d2) {
                i2 i2Var = (i2) oVar;
                try {
                    i2Var.U(th);
                } catch (Throwable th2) {
                    if (completionHandlerException2 == null) {
                        completionHandlerException = null;
                    } else {
                        vb.a.a(completionHandlerException2, th2);
                        completionHandlerException = completionHandlerException2;
                    }
                    if (completionHandlerException == null) {
                        completionHandlerException2 = new CompletionHandlerException("Exception in completion handler " + i2Var + " for " + this, th2);
                    }
                }
            }
        }
        if (completionHandlerException2 != null) {
            e0(completionHandlerException2);
        }
        J(th);
    }

    @Override // rc.c2
    public final boolean start() {
        int D0;
        do {
            D0 = D0(b0());
            if (D0 == 0) {
                return false;
            }
        } while (D0 != 1);
        return true;
    }

    public final boolean t(Object obj, o2 o2Var, i2 i2Var) {
        int T;
        d dVar = new d(i2Var, this, obj);
        do {
            T = o2Var.L().T(i2Var, o2Var, dVar);
            if (T == 1) {
                return true;
            }
        } while (T != 2);
        return false;
    }

    public final void t0(o2 o2Var, Throwable th) {
        CompletionHandlerException completionHandlerException;
        CompletionHandlerException completionHandlerException2 = null;
        for (wc.o oVar = (wc.o) o2Var.J(); !jc.l.a(oVar, o2Var); oVar = oVar.K()) {
            if (oVar instanceof i2) {
                i2 i2Var = (i2) oVar;
                try {
                    i2Var.U(th);
                } catch (Throwable th2) {
                    if (completionHandlerException2 == null) {
                        completionHandlerException = null;
                    } else {
                        vb.a.a(completionHandlerException2, th2);
                        completionHandlerException = completionHandlerException2;
                    }
                    if (completionHandlerException == null) {
                        completionHandlerException2 = new CompletionHandlerException("Exception in completion handler " + i2Var + " for " + this, th2);
                    }
                }
            }
        }
        if (completionHandlerException2 == null) {
            return;
        }
        e0(completionHandlerException2);
    }

    public String toString() {
        return H0() + '@' + v0.b(this);
    }

    public final void u(Throwable th, List<? extends Throwable> list) {
        if (list.size() <= 1) {
            return;
        }
        Set newSetFromMap = Collections.newSetFromMap(new IdentityHashMap(list.size()));
        Throwable n10 = !u0.d() ? th : wc.z.n(th);
        for (Throwable th2 : list) {
            if (u0.d()) {
                th2 = wc.z.n(th2);
            }
            if (th2 != th && th2 != n10 && !(th2 instanceof CancellationException) && newSetFromMap.add(th2)) {
                vb.a.a(th, th2);
            }
        }
    }

    public void u0(Throwable th) {
    }

    public void v(Object obj) {
    }

    public void v0(Object obj) {
    }

    public final Object w(ac.d<Object> dVar) {
        Object b02;
        Throwable j10;
        do {
            b02 = b0();
            if (!(b02 instanceof x1)) {
                if (b02 instanceof f0) {
                    Throwable th = ((f0) b02).f13254a;
                    if (u0.d()) {
                        if (!(dVar instanceof cc.e)) {
                            throw th;
                        }
                        j10 = wc.z.j(th, (cc.e) dVar);
                        throw j10;
                    }
                    throw th;
                }
                return k2.h(b02);
            }
        } while (D0(b02) < 0);
        return C(dVar);
    }

    public void w0() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [rc.w1] */
    public final void x0(l1 l1Var) {
        o2 o2Var = new o2();
        if (!l1Var.b()) {
            o2Var = new w1(o2Var);
        }
        ad.c.a(f13273f, this, l1Var, o2Var);
    }

    public final void y0(i2 i2Var) {
        i2Var.F(new o2());
        ad.c.a(f13273f, this, i2Var, i2Var.K());
    }

    @Override // rc.w
    public final void z(r2 r2Var) {
        E(r2Var);
    }

    public final <T, R> void z0(zc.d<? super R> dVar, ic.p<? super T, ? super ac.d<? super R>, ? extends Object> pVar) {
        Object b02;
        do {
            b02 = b0();
            if (dVar.w()) {
                return;
            }
            if (!(b02 instanceof x1)) {
                if (dVar.p()) {
                    if (b02 instanceof f0) {
                        dVar.k(((f0) b02).f13254a);
                        return;
                    } else {
                        xc.b.c(pVar, k2.h(b02), dVar.f());
                        return;
                    }
                }
                return;
            }
        } while (D0(b02) != 0);
        dVar.d(h0(new w2(dVar, pVar)));
    }
}
