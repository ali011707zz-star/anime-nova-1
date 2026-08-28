package tc;

import java.util.ArrayList;
import java.util.concurrent.CancellationException;
import rc.i1;
import rc.o;
import rc.u0;
import rc.v0;
import tc.j;
import vb.j;
import wc.a0;
import wc.o;

/* compiled from: AbstractChannel.kt */
/* loaded from: classes2.dex */
public abstract class a<E> extends tc.c<E> implements tc.f<E> {

    /* compiled from: AbstractChannel.kt */
    /* renamed from: tc.a$a, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0355a<E> implements tc.h<E> {

        /* renamed from: a, reason: collision with root package name */
        public final a<E> f14115a;

        /* renamed from: b, reason: collision with root package name */
        public Object f14116b = tc.b.f14137d;

        public C0355a(a<E> aVar) {
            this.f14115a = aVar;
        }

        @Override // tc.h
        public Object a(ac.d<? super Boolean> dVar) {
            Object b10 = b();
            a0 a0Var = tc.b.f14137d;
            if (b10 != a0Var) {
                return cc.b.a(c(b()));
            }
            e(this.f14115a.V());
            return b() != a0Var ? cc.b.a(c(b())) : d(dVar);
        }

        public final Object b() {
            return this.f14116b;
        }

        public final boolean c(Object obj) {
            if (!(obj instanceof m)) {
                return true;
            }
            m mVar = (m) obj;
            if (mVar.f14164i == null) {
                return false;
            }
            throw wc.z.k(mVar.b0());
        }

        public final Object d(ac.d<? super Boolean> dVar) {
            rc.p b10 = rc.r.b(bc.b.c(dVar));
            d dVar2 = new d(this, b10);
            while (true) {
                if (this.f14115a.K(dVar2)) {
                    this.f14115a.Z(b10, dVar2);
                    break;
                }
                Object V = this.f14115a.V();
                e(V);
                if (V instanceof m) {
                    m mVar = (m) V;
                    if (mVar.f14164i == null) {
                        Boolean a10 = cc.b.a(false);
                        j.a aVar = vb.j.f15020f;
                        b10.resumeWith(vb.j.a(a10));
                    } else {
                        Throwable b02 = mVar.b0();
                        j.a aVar2 = vb.j.f15020f;
                        b10.resumeWith(vb.j.a(vb.k.a(b02)));
                    }
                } else if (V != tc.b.f14137d) {
                    Boolean a11 = cc.b.a(true);
                    ic.l<E, vb.p> lVar = this.f14115a.f14141f;
                    b10.A(a11, lVar == null ? null : wc.v.a(lVar, V, b10.getContext()));
                }
            }
            Object v10 = b10.v();
            if (v10 == bc.c.d()) {
                cc.h.c(dVar);
            }
            return v10;
        }

        public final void e(Object obj) {
            this.f14116b = obj;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // tc.h
        public E next() {
            E e10 = (E) this.f14116b;
            if (!(e10 instanceof m)) {
                a0 a0Var = tc.b.f14137d;
                if (e10 != a0Var) {
                    this.f14116b = a0Var;
                    return e10;
                }
                throw new IllegalStateException("'hasNext' should be called prior to 'next' invocation");
            }
            throw wc.z.k(((m) e10).b0());
        }
    }

    /* compiled from: AbstractChannel.kt */
    /* loaded from: classes2.dex */
    public static class b<E> extends s<E> {

        /* renamed from: i, reason: collision with root package name */
        public final rc.o<Object> f14117i;

        /* renamed from: j, reason: collision with root package name */
        public final int f14118j;

        public b(rc.o<Object> oVar, int i10) {
            this.f14117i = oVar;
            this.f14118j = i10;
        }

        @Override // tc.s
        public void W(m<?> mVar) {
            if (this.f14118j == 1) {
                rc.o<Object> oVar = this.f14117i;
                tc.j b10 = tc.j.b(tc.j.f14160b.a(mVar.f14164i));
                j.a aVar = vb.j.f15020f;
                oVar.resumeWith(vb.j.a(b10));
                return;
            }
            rc.o<Object> oVar2 = this.f14117i;
            Throwable b02 = mVar.b0();
            j.a aVar2 = vb.j.f15020f;
            oVar2.resumeWith(vb.j.a(vb.k.a(b02)));
        }

        public final Object X(E e10) {
            return this.f14118j == 1 ? tc.j.b(tc.j.f14160b.c(e10)) : e10;
        }

        @Override // tc.u
        public void h(E e10) {
            this.f14117i.B(rc.q.f13321a);
        }

        @Override // tc.u
        public a0 s(E e10, o.c cVar) {
            Object r10 = this.f14117i.r(X(e10), cVar == null ? null : cVar.f15519c, V(e10));
            if (r10 == null) {
                return null;
            }
            if (u0.a()) {
                if (!(r10 == rc.q.f13321a)) {
                    throw new AssertionError();
                }
            }
            if (cVar != null) {
                cVar.d();
            }
            return rc.q.f13321a;
        }

        @Override // wc.o
        public String toString() {
            return "ReceiveElement@" + v0.b(this) + "[receiveMode=" + this.f14118j + ']';
        }
    }

    /* compiled from: AbstractChannel.kt */
    /* loaded from: classes2.dex */
    public static final class c<E> extends b<E> {

        /* renamed from: k, reason: collision with root package name */
        public final ic.l<E, vb.p> f14119k;

        /* JADX WARN: Multi-variable type inference failed */
        public c(rc.o<Object> oVar, int i10, ic.l<? super E, vb.p> lVar) {
            super(oVar, i10);
            this.f14119k = lVar;
        }

        @Override // tc.s
        public ic.l<Throwable, vb.p> V(E e10) {
            return wc.v.a(this.f14119k, e10, this.f14117i.getContext());
        }
    }

    /* compiled from: AbstractChannel.kt */
    /* loaded from: classes2.dex */
    public static class d<E> extends s<E> {

        /* renamed from: i, reason: collision with root package name */
        public final C0355a<E> f14120i;

        /* renamed from: j, reason: collision with root package name */
        public final rc.o<Boolean> f14121j;

        /* JADX WARN: Multi-variable type inference failed */
        public d(C0355a<E> c0355a, rc.o<? super Boolean> oVar) {
            this.f14120i = c0355a;
            this.f14121j = oVar;
        }

        @Override // tc.s
        public ic.l<Throwable, vb.p> V(E e10) {
            ic.l<E, vb.p> lVar = this.f14120i.f14115a.f14141f;
            if (lVar == null) {
                return null;
            }
            return wc.v.a(lVar, e10, this.f14121j.getContext());
        }

        @Override // tc.s
        public void W(m<?> mVar) {
            Object y10;
            if (mVar.f14164i == null) {
                y10 = o.a.a(this.f14121j, Boolean.FALSE, null, 2, null);
            } else {
                y10 = this.f14121j.y(mVar.b0());
            }
            if (y10 != null) {
                this.f14120i.e(mVar);
                this.f14121j.B(y10);
            }
        }

        @Override // tc.u
        public void h(E e10) {
            this.f14120i.e(e10);
            this.f14121j.B(rc.q.f13321a);
        }

        @Override // tc.u
        public a0 s(E e10, o.c cVar) {
            Object r10 = this.f14121j.r(Boolean.TRUE, cVar == null ? null : cVar.f15519c, V(e10));
            if (r10 == null) {
                return null;
            }
            if (u0.a()) {
                if (!(r10 == rc.q.f13321a)) {
                    throw new AssertionError();
                }
            }
            if (cVar != null) {
                cVar.d();
            }
            return rc.q.f13321a;
        }

        @Override // wc.o
        public String toString() {
            return jc.l.m("ReceiveHasNext@", v0.b(this));
        }
    }

    /* compiled from: AbstractChannel.kt */
    /* loaded from: classes2.dex */
    public static final class e<R, E> extends s<E> implements i1 {

        /* renamed from: i, reason: collision with root package name */
        public final a<E> f14122i;

        /* renamed from: j, reason: collision with root package name */
        public final zc.d<R> f14123j;

        /* renamed from: k, reason: collision with root package name */
        public final ic.p<Object, ac.d<? super R>, Object> f14124k;

        /* renamed from: l, reason: collision with root package name */
        public final int f14125l;

        /* JADX WARN: Multi-variable type inference failed */
        public e(a<E> aVar, zc.d<? super R> dVar, ic.p<Object, ? super ac.d<? super R>, ? extends Object> pVar, int i10) {
            this.f14122i = aVar;
            this.f14123j = dVar;
            this.f14124k = pVar;
            this.f14125l = i10;
        }

        @Override // tc.s
        public ic.l<Throwable, vb.p> V(E e10) {
            ic.l<E, vb.p> lVar = this.f14122i.f14141f;
            if (lVar == null) {
                return null;
            }
            return wc.v.a(lVar, e10, this.f14123j.f().getContext());
        }

        @Override // tc.s
        public void W(m<?> mVar) {
            if (this.f14123j.p()) {
                int i10 = this.f14125l;
                if (i10 == 0) {
                    this.f14123j.k(mVar.b0());
                } else {
                    if (i10 != 1) {
                        return;
                    }
                    xc.a.f(this.f14124k, tc.j.b(tc.j.f14160b.a(mVar.f14164i)), this.f14123j.f(), null, 4, null);
                }
            }
        }

        @Override // rc.i1
        public void e() {
            if (P()) {
                this.f14122i.T();
            }
        }

        @Override // tc.u
        public void h(E e10) {
            xc.a.e(this.f14124k, this.f14125l == 1 ? tc.j.b(tc.j.f14160b.c(e10)) : e10, this.f14123j.f(), V(e10));
        }

        @Override // tc.u
        public a0 s(E e10, o.c cVar) {
            return (a0) this.f14123j.u(cVar);
        }

        @Override // wc.o
        public String toString() {
            return "ReceiveSelect@" + v0.b(this) + '[' + this.f14123j + ",receiveMode=" + this.f14125l + ']';
        }
    }

    /* compiled from: AbstractChannel.kt */
    /* loaded from: classes2.dex */
    public final class f extends rc.f {

        /* renamed from: f, reason: collision with root package name */
        public final s<?> f14126f;

        public f(s<?> sVar) {
            this.f14126f = sVar;
        }

        @Override // rc.n
        public void a(Throwable th) {
            if (this.f14126f.P()) {
                a.this.T();
            }
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ vb.p invoke(Throwable th) {
            a(th);
            return vb.p.f15031a;
        }

        public String toString() {
            return "RemoveReceiveOnCancel[" + this.f14126f + ']';
        }
    }

    /* compiled from: AbstractChannel.kt */
    /* loaded from: classes2.dex */
    public static final class g<E> extends o.d<w> {
        public g(wc.m mVar) {
            super(mVar);
        }

        @Override // wc.o.d, wc.o.a
        public Object e(wc.o oVar) {
            if (oVar instanceof m) {
                return oVar;
            }
            if (oVar instanceof w) {
                return null;
            }
            return tc.b.f14137d;
        }

        @Override // wc.o.a
        public Object j(o.c cVar) {
            a0 X = ((w) cVar.f15517a).X(cVar);
            if (X == null) {
                return wc.p.f15523a;
            }
            Object obj = wc.c.f15475b;
            if (X == obj) {
                return obj;
            }
            if (!u0.a()) {
                return null;
            }
            if (X == rc.q.f13321a) {
                return null;
            }
            throw new AssertionError();
        }

        @Override // wc.o.a
        public void k(wc.o oVar) {
            ((w) oVar).Y();
        }
    }

    /* compiled from: LockFreeLinkedList.kt */
    /* loaded from: classes2.dex */
    public static final class h extends o.b {

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ wc.o f14128d;

        /* renamed from: e, reason: collision with root package name */
        public final /* synthetic */ a f14129e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(wc.o oVar, a aVar) {
            super(oVar);
            this.f14128d = oVar;
            this.f14129e = aVar;
        }

        @Override // wc.d
        /* renamed from: k, reason: merged with bridge method [inline-methods] */
        public Object i(wc.o oVar) {
            if (this.f14129e.O()) {
                return null;
            }
            return wc.n.a();
        }
    }

    /* compiled from: AbstractChannel.kt */
    /* loaded from: classes2.dex */
    public static final class i implements zc.c<tc.j<? extends E>> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ a<E> f14130f;

        public i(a<E> aVar) {
            this.f14130f = aVar;
        }

        @Override // zc.c
        public <R> void a(zc.d<? super R> dVar, ic.p<? super tc.j<? extends E>, ? super ac.d<? super R>, ? extends Object> pVar) {
            this.f14130f.Y(dVar, 1, pVar);
        }
    }

    /* compiled from: AbstractChannel.kt */
    @cc.f(c = "kotlinx.coroutines.channels.AbstractChannel", f = "AbstractChannel.kt", l = {633}, m = "receiveCatching-JP2dKIU")
    /* loaded from: classes2.dex */
    public static final class j extends cc.d {

        /* renamed from: f, reason: collision with root package name */
        public /* synthetic */ Object f14131f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ a<E> f14132g;

        /* renamed from: h, reason: collision with root package name */
        public int f14133h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public j(a<E> aVar, ac.d<? super j> dVar) {
            super(dVar);
            this.f14132g = aVar;
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            this.f14131f = obj;
            this.f14133h |= Integer.MIN_VALUE;
            Object i10 = this.f14132g.i(this);
            return i10 == bc.c.d() ? i10 : tc.j.b(i10);
        }
    }

    public a(ic.l<? super E, vb.p> lVar) {
        super(lVar);
    }

    @Override // tc.c
    public u<E> D() {
        u<E> D = super.D();
        if (D != null && !(D instanceof m)) {
            T();
        }
        return D;
    }

    public final boolean I(Throwable th) {
        boolean g10 = g(th);
        R(g10);
        return g10;
    }

    public final g<E> J() {
        return new g<>(q());
    }

    public final boolean K(s<? super E> sVar) {
        boolean L = L(sVar);
        if (L) {
            U();
        }
        return L;
    }

    public boolean L(s<? super E> sVar) {
        int T;
        wc.o L;
        if (N()) {
            wc.o q10 = q();
            do {
                L = q10.L();
                if (!(!(L instanceof w))) {
                    return false;
                }
            } while (!L.E(sVar, q10));
        } else {
            wc.o q11 = q();
            h hVar = new h(sVar, this);
            do {
                wc.o L2 = q11.L();
                if (!(!(L2 instanceof w))) {
                    return false;
                }
                T = L2.T(sVar, q11, hVar);
                if (T != 1) {
                }
            } while (T != 2);
            return false;
        }
        return true;
    }

    public final <R> boolean M(zc.d<? super R> dVar, ic.p<Object, ? super ac.d<? super R>, ? extends Object> pVar, int i10) {
        e eVar = new e(this, dVar, pVar, i10);
        boolean K = K(eVar);
        if (K) {
            dVar.d(eVar);
        }
        return K;
    }

    public abstract boolean N();

    public abstract boolean O();

    public boolean P() {
        return l() != null && O();
    }

    public final boolean Q() {
        return !(q().K() instanceof w) && O();
    }

    public void R(boolean z10) {
        m<?> n10 = n();
        if (n10 != null) {
            Object b10 = wc.l.b(null, 1, null);
            while (true) {
                wc.o L = n10.L();
                if (L instanceof wc.m) {
                    S(b10, n10);
                    return;
                } else {
                    if (u0.a() && !(L instanceof w)) {
                        throw new AssertionError();
                    }
                    if (!L.P()) {
                        L.M();
                    } else {
                        b10 = wc.l.c(b10, (w) L);
                    }
                }
            }
        } else {
            throw new IllegalStateException("Cannot happen".toString());
        }
    }

    public void S(Object obj, m<?> mVar) {
        if (obj == null) {
            return;
        }
        if (!(obj instanceof ArrayList)) {
            ((w) obj).W(mVar);
            return;
        }
        ArrayList arrayList = (ArrayList) obj;
        int size = arrayList.size() - 1;
        if (size < 0) {
            return;
        }
        while (true) {
            int i10 = size - 1;
            ((w) arrayList.get(size)).W(mVar);
            if (i10 < 0) {
                return;
            } else {
                size = i10;
            }
        }
    }

    public void T() {
    }

    public void U() {
    }

    public Object V() {
        while (true) {
            w E = E();
            if (E == null) {
                return tc.b.f14137d;
            }
            a0 X = E.X(null);
            if (X != null) {
                if (u0.a()) {
                    if (!(X == rc.q.f13321a)) {
                        throw new AssertionError();
                    }
                }
                E.U();
                return E.V();
            }
            E.Y();
        }
    }

    public Object W(zc.d<?> dVar) {
        g<E> J = J();
        Object m10 = dVar.m(J);
        if (m10 != null) {
            return m10;
        }
        J.o().U();
        return J.o().V();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <R> Object X(int i10, ac.d<? super R> dVar) {
        b bVar;
        rc.p b10 = rc.r.b(bc.b.c(dVar));
        if (this.f14141f == null) {
            bVar = new b(b10, i10);
        } else {
            bVar = new c(b10, i10, this.f14141f);
        }
        while (true) {
            if (K(bVar)) {
                Z(b10, bVar);
                break;
            }
            Object V = V();
            if (V instanceof m) {
                bVar.W((m) V);
                break;
            }
            if (V != tc.b.f14137d) {
                b10.A(bVar.X(V), bVar.V(V));
                break;
            }
        }
        Object v10 = b10.v();
        if (v10 == bc.c.d()) {
            cc.h.c(dVar);
        }
        return v10;
    }

    public final <R> void Y(zc.d<? super R> dVar, int i10, ic.p<Object, ? super ac.d<? super R>, ? extends Object> pVar) {
        while (!dVar.w()) {
            if (Q()) {
                if (M(dVar, pVar, i10)) {
                    return;
                }
            } else {
                Object W = W(dVar);
                if (W == zc.e.d()) {
                    return;
                }
                if (W != tc.b.f14137d && W != wc.c.f15475b) {
                    a0(pVar, dVar, i10, W);
                }
            }
        }
    }

    public final void Z(rc.o<?> oVar, s<?> sVar) {
        oVar.n(new f(sVar));
    }

    public final <R> void a0(ic.p<Object, ? super ac.d<? super R>, ? extends Object> pVar, zc.d<? super R> dVar, int i10, Object obj) {
        boolean z10 = obj instanceof m;
        if (!z10) {
            if (i10 == 1) {
                j.b bVar = tc.j.f14160b;
                xc.b.c(pVar, tc.j.b(z10 ? bVar.a(((m) obj).f14164i) : bVar.c(obj)), dVar.f());
                return;
            } else {
                xc.b.c(pVar, obj, dVar.f());
                return;
            }
        }
        if (i10 != 0) {
            if (i10 == 1 && dVar.p()) {
                xc.b.c(pVar, tc.j.b(tc.j.f14160b.a(((m) obj).f14164i)), dVar.f());
                return;
            }
            return;
        }
        throw wc.z.k(((m) obj).b0());
    }

    @Override // tc.t
    public final void d(CancellationException cancellationException) {
        if (P()) {
            return;
        }
        if (cancellationException == null) {
            cancellationException = new CancellationException(jc.l.m(v0.a(this), " was cancelled"));
        }
        I(cancellationException);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Override // tc.t
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object i(ac.d<? super tc.j<? extends E>> dVar) {
        j jVar;
        int i10;
        if (dVar instanceof j) {
            jVar = (j) dVar;
            int i11 = jVar.f14133h;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                jVar.f14133h = i11 - Integer.MIN_VALUE;
                Object obj = jVar.f14131f;
                Object d10 = bc.c.d();
                i10 = jVar.f14133h;
                if (i10 != 0) {
                    vb.k.b(obj);
                    Object V = V();
                    if (V != tc.b.f14137d) {
                        return V instanceof m ? tc.j.f14160b.a(((m) V).f14164i) : tc.j.f14160b.c(V);
                    }
                    jVar.f14133h = 1;
                    obj = X(1, jVar);
                    if (obj == d10) {
                        return d10;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    vb.k.b(obj);
                }
                return ((tc.j) obj).k();
            }
        }
        jVar = new j(this, dVar);
        Object obj2 = jVar.f14131f;
        Object d102 = bc.c.d();
        i10 = jVar.f14133h;
        if (i10 != 0) {
        }
        return ((tc.j) obj2).k();
    }

    @Override // tc.t
    public final tc.h<E> iterator() {
        return new C0355a(this);
    }

    @Override // tc.t
    public final zc.c<tc.j<E>> j() {
        return new i(this);
    }
}
