package tc;

import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import jc.b0;
import kotlinx.coroutines.internal.UndeliveredElementException;
import rc.u0;
import rc.v0;
import tc.x;
import vb.j;
import wc.a0;
import wc.o;

/* compiled from: AbstractChannel.kt */
/* loaded from: classes2.dex */
public abstract class c<E> implements x<E> {

    /* renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f14140h = AtomicReferenceFieldUpdater.newUpdater(c.class, Object.class, "onCloseHandler");

    /* renamed from: f, reason: collision with root package name */
    public final ic.l<E, vb.p> f14141f;

    /* renamed from: g, reason: collision with root package name */
    public final wc.m f14142g = new wc.m();
    private volatile /* synthetic */ Object onCloseHandler = null;

    /* compiled from: AbstractChannel.kt */
    /* loaded from: classes2.dex */
    public static final class a<E> extends w {

        /* renamed from: i, reason: collision with root package name */
        public final E f14143i;

        public a(E e10) {
            this.f14143i = e10;
        }

        @Override // tc.w
        public void U() {
        }

        @Override // tc.w
        public Object V() {
            return this.f14143i;
        }

        @Override // tc.w
        public void W(m<?> mVar) {
            if (u0.a()) {
                throw new AssertionError();
            }
        }

        @Override // tc.w
        public a0 X(o.c cVar) {
            a0 a0Var = rc.q.f13321a;
            if (cVar != null) {
                cVar.d();
            }
            return a0Var;
        }

        @Override // wc.o
        public String toString() {
            return "SendBuffered@" + v0.b(this) + '(' + this.f14143i + ')';
        }
    }

    /* compiled from: LockFreeLinkedList.kt */
    /* loaded from: classes2.dex */
    public static final class b extends o.b {

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ wc.o f14144d;

        /* renamed from: e, reason: collision with root package name */
        public final /* synthetic */ c f14145e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(wc.o oVar, c cVar) {
            super(oVar);
            this.f14144d = oVar;
            this.f14145e = cVar;
        }

        @Override // wc.d
        /* renamed from: k, reason: merged with bridge method [inline-methods] */
        public Object i(wc.o oVar) {
            if (this.f14145e.x()) {
                return null;
            }
            return wc.n.a();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public c(ic.l<? super E, vb.p> lVar) {
        this.f14141f = lVar;
    }

    public void A(wc.o oVar) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final u<?> B(E e10) {
        wc.o L;
        wc.m mVar = this.f14142g;
        a aVar = new a(e10);
        do {
            L = mVar.L();
            if (L instanceof u) {
                return (u) L;
            }
        } while (!L.E(aVar, mVar));
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x006f, code lost:
    
        r4 = r0.v();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0077, code lost:
    
        if (r4 != bc.c.d()) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0079, code lost:
    
        cc.h.c(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0080, code lost:
    
        if (r4 != bc.c.d()) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0082, code lost:
    
        return r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0085, code lost:
    
        return vb.p.f15031a;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object C(E e10, ac.d<? super vb.p> dVar) {
        w zVar;
        rc.p b10 = rc.r.b(bc.b.c(dVar));
        while (true) {
            if (y()) {
                if (this.f14141f == null) {
                    zVar = new y(e10, b10);
                } else {
                    zVar = new z(e10, b10, this.f14141f);
                }
                Object h10 = h(zVar);
                if (h10 == null) {
                    rc.r.c(b10, zVar);
                    break;
                }
                if (h10 instanceof m) {
                    u(b10, e10, (m) h10);
                    break;
                }
                if (h10 != tc.b.f14138e && !(h10 instanceof s)) {
                    throw new IllegalStateException(jc.l.m("enqueueSend returned ", h10).toString());
                }
            }
            Object z10 = z(e10);
            if (z10 == tc.b.f14135b) {
                vb.p pVar = vb.p.f15031a;
                j.a aVar = vb.j.f15020f;
                b10.resumeWith(vb.j.a(pVar));
                break;
            }
            if (z10 != tc.b.f14136c) {
                if (z10 instanceof m) {
                    u(b10, e10, (m) z10);
                } else {
                    throw new IllegalStateException(jc.l.m("offerInternal returned ", z10).toString());
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [wc.o] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3 */
    public u<E> D() {
        wc.o r12;
        wc.o R;
        wc.m mVar = this.f14142g;
        while (true) {
            r12 = (wc.o) mVar.J();
            if (r12 != mVar && (r12 instanceof u)) {
                if (((((u) r12) instanceof m) && !r12.O()) || (R = r12.R()) == null) {
                    break;
                }
                R.N();
            }
        }
        r12 = 0;
        return (u) r12;
    }

    public final w E() {
        wc.o oVar;
        wc.o R;
        wc.m mVar = this.f14142g;
        while (true) {
            oVar = (wc.o) mVar.J();
            if (oVar != mVar && (oVar instanceof w)) {
                if (((((w) oVar) instanceof m) && !oVar.O()) || (R = oVar.R()) == null) {
                    break;
                }
                R.N();
            }
        }
        oVar = null;
        return (w) oVar;
    }

    public final int c() {
        wc.m mVar = this.f14142g;
        int i10 = 0;
        for (wc.o oVar = (wc.o) mVar.J(); !jc.l.a(oVar, mVar); oVar = oVar.K()) {
            if (oVar instanceof wc.o) {
                i10++;
            }
        }
        return i10;
    }

    @Override // tc.x
    public void e(ic.l<? super Throwable, vb.p> lVar) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f14140h;
        if (!ad.c.a(atomicReferenceFieldUpdater, this, null, lVar)) {
            Object obj = this.onCloseHandler;
            if (obj == tc.b.f14139f) {
                throw new IllegalStateException("Another handler was already registered and successfully invoked");
            }
            throw new IllegalStateException(jc.l.m("Another handler was already registered: ", obj));
        }
        m<?> n10 = n();
        if (n10 == null || !ad.c.a(atomicReferenceFieldUpdater, this, lVar, tc.b.f14139f)) {
            return;
        }
        lVar.invoke(n10.f14164i);
    }

    @Override // tc.x
    public boolean f(E e10) {
        UndeliveredElementException d10;
        try {
            return x.a.b(this, e10);
        } catch (Throwable th) {
            ic.l<E, vb.p> lVar = this.f14141f;
            if (lVar != null && (d10 = wc.v.d(lVar, e10, null, 2, null)) != null) {
                vb.a.a(d10, th);
                throw d10;
            }
            throw th;
        }
    }

    @Override // tc.x
    public boolean g(Throwable th) {
        boolean z10;
        m<?> mVar = new m<>(th);
        wc.o oVar = this.f14142g;
        while (true) {
            wc.o L = oVar.L();
            z10 = true;
            if (!(!(L instanceof m))) {
                z10 = false;
                break;
            }
            if (L.E(mVar, oVar)) {
                break;
            }
        }
        if (!z10) {
            mVar = (m) this.f14142g.L();
        }
        s(mVar);
        if (z10) {
            v(th);
        }
        return z10;
    }

    public Object h(w wVar) {
        boolean z10;
        wc.o L;
        if (w()) {
            wc.o oVar = this.f14142g;
            do {
                L = oVar.L();
                if (L instanceof u) {
                    return L;
                }
            } while (!L.E(wVar, oVar));
            return null;
        }
        wc.o oVar2 = this.f14142g;
        b bVar = new b(wVar, this);
        while (true) {
            wc.o L2 = oVar2.L();
            if (!(L2 instanceof u)) {
                int T = L2.T(wVar, oVar2, bVar);
                z10 = true;
                if (T != 1) {
                    if (T == 2) {
                        z10 = false;
                        break;
                    }
                } else {
                    break;
                }
            } else {
                return L2;
            }
        }
        if (z10) {
            return null;
        }
        return tc.b.f14138e;
    }

    public String k() {
        return "";
    }

    public final m<?> l() {
        wc.o K = this.f14142g.K();
        m<?> mVar = K instanceof m ? (m) K : null;
        if (mVar == null) {
            return null;
        }
        s(mVar);
        return mVar;
    }

    @Override // tc.x
    public final Object m(E e10) {
        Object z10 = z(e10);
        if (z10 == tc.b.f14135b) {
            return j.f14160b.c(vb.p.f15031a);
        }
        if (z10 == tc.b.f14136c) {
            m<?> n10 = n();
            return n10 == null ? j.f14160b.b() : j.f14160b.a(t(n10));
        }
        if (z10 instanceof m) {
            return j.f14160b.a(t((m) z10));
        }
        throw new IllegalStateException(jc.l.m("trySend returned ", z10).toString());
    }

    public final m<?> n() {
        wc.o L = this.f14142g.L();
        m<?> mVar = L instanceof m ? (m) L : null;
        if (mVar == null) {
            return null;
        }
        s(mVar);
        return mVar;
    }

    @Override // tc.x
    public final boolean o() {
        return n() != null;
    }

    @Override // tc.x
    public final Object p(E e10, ac.d<? super vb.p> dVar) {
        Object C;
        return (z(e10) != tc.b.f14135b && (C = C(e10, dVar)) == bc.c.d()) ? C : vb.p.f15031a;
    }

    public final wc.m q() {
        return this.f14142g;
    }

    public final String r() {
        String m10;
        wc.o K = this.f14142g.K();
        if (K == this.f14142g) {
            return "EmptyQueue";
        }
        if (K instanceof m) {
            m10 = K.toString();
        } else if (K instanceof s) {
            m10 = "ReceiveQueued";
        } else {
            m10 = K instanceof w ? "SendQueued" : jc.l.m("UNEXPECTED:", K);
        }
        wc.o L = this.f14142g.L();
        if (L == K) {
            return m10;
        }
        String str = m10 + ",queueSize=" + c();
        if (!(L instanceof m)) {
            return str;
        }
        return str + ",closedForSend=" + L;
    }

    public final void s(m<?> mVar) {
        Object b10 = wc.l.b(null, 1, null);
        while (true) {
            wc.o L = mVar.L();
            s sVar = L instanceof s ? (s) L : null;
            if (sVar == null) {
                break;
            } else if (!sVar.P()) {
                sVar.M();
            } else {
                b10 = wc.l.c(b10, sVar);
            }
        }
        if (b10 != null) {
            if (!(b10 instanceof ArrayList)) {
                ((s) b10).W(mVar);
            } else {
                ArrayList arrayList = (ArrayList) b10;
                int size = arrayList.size() - 1;
                if (size >= 0) {
                    while (true) {
                        int i10 = size - 1;
                        ((s) arrayList.get(size)).W(mVar);
                        if (i10 < 0) {
                            break;
                        } else {
                            size = i10;
                        }
                    }
                }
            }
        }
        A(mVar);
    }

    public final Throwable t(m<?> mVar) {
        s(mVar);
        return mVar.c0();
    }

    public String toString() {
        return v0.a(this) + '@' + v0.b(this) + '{' + r() + '}' + k();
    }

    public final void u(ac.d<?> dVar, E e10, m<?> mVar) {
        UndeliveredElementException d10;
        s(mVar);
        Throwable c02 = mVar.c0();
        ic.l<E, vb.p> lVar = this.f14141f;
        if (lVar == null || (d10 = wc.v.d(lVar, e10, null, 2, null)) == null) {
            j.a aVar = vb.j.f15020f;
            dVar.resumeWith(vb.j.a(vb.k.a(c02)));
        } else {
            vb.a.a(d10, c02);
            j.a aVar2 = vb.j.f15020f;
            dVar.resumeWith(vb.j.a(vb.k.a(d10)));
        }
    }

    public final void v(Throwable th) {
        a0 a0Var;
        Object obj = this.onCloseHandler;
        if (obj == null || obj == (a0Var = tc.b.f14139f) || !ad.c.a(f14140h, this, obj, a0Var)) {
            return;
        }
        ((ic.l) b0.a(obj, 1)).invoke(th);
    }

    public abstract boolean w();

    public abstract boolean x();

    public final boolean y() {
        return !(this.f14142g.K() instanceof u) && x();
    }

    public Object z(E e10) {
        u<E> D;
        a0 s10;
        do {
            D = D();
            if (D == null) {
                return tc.b.f14136c;
            }
            s10 = D.s(e10, null);
        } while (s10 == null);
        if (u0.a()) {
            if (!(s10 == rc.q.f13321a)) {
                throw new AssertionError();
            }
        }
        D.h(e10);
        return D.o();
    }
}
