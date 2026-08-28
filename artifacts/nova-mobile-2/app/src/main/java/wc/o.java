package wc;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import rc.u0;

/* compiled from: LockFreeLinkedList.kt */
/* loaded from: classes2.dex */
public class o {

    /* renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f15512f = AtomicReferenceFieldUpdater.newUpdater(o.class, Object.class, "_next");

    /* renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f15513g = AtomicReferenceFieldUpdater.newUpdater(o.class, Object.class, "_prev");

    /* renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f15514h = AtomicReferenceFieldUpdater.newUpdater(o.class, Object.class, "_removedRef");
    public volatile /* synthetic */ Object _next = this;
    public volatile /* synthetic */ Object _prev = this;
    private volatile /* synthetic */ Object _removedRef = null;

    /* compiled from: LockFreeLinkedList.kt */
    /* loaded from: classes2.dex */
    public static abstract class a extends wc.b {
        @Override // wc.b
        public final void a(wc.d<?> dVar, Object obj) {
            boolean z10 = obj == null;
            o h10 = h();
            if (h10 == null) {
                if (u0.a() && !(!z10)) {
                    throw new AssertionError();
                }
                return;
            }
            o i10 = i();
            if (i10 == null) {
                if (u0.a() && !(!z10)) {
                    throw new AssertionError();
                }
            } else {
                if (ad.c.a(o.f15512f, h10, dVar, z10 ? n(h10, i10) : i10) && z10) {
                    f(h10, i10);
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:25:0x0054, code lost:
        
            if (rc.u0.a() == false) goto L39;
         */
        /* JADX WARN: Code restructure failed: missing block: B:26:0x0056, code lost:
        
            if (r4 != null) goto L34;
         */
        /* JADX WARN: Code restructure failed: missing block: B:27:0x0058, code lost:
        
            r7 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x005b, code lost:
        
            if (r7 == false) goto L37;
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x0063, code lost:
        
            throw new java.lang.AssertionError();
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x005a, code lost:
        
            r7 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x0064, code lost:
        
            return null;
         */
        @Override // wc.b
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object c(wc.d<?> dVar) {
            while (true) {
                o m10 = m(dVar);
                if (m10 == null) {
                    return wc.c.f15475b;
                }
                Object obj = m10._next;
                if (obj == dVar || dVar.h()) {
                    return null;
                }
                if (obj instanceof w) {
                    w wVar = (w) obj;
                    if (dVar.b(wVar)) {
                        return wc.c.f15475b;
                    }
                    wVar.c(m10);
                } else {
                    Object e10 = e(m10);
                    if (e10 != null) {
                        return e10;
                    }
                    if (l(m10, obj)) {
                        continue;
                    } else {
                        c cVar = new c(m10, (o) obj, this);
                        if (ad.c.a(o.f15512f, m10, obj, cVar)) {
                            try {
                                Object c10 = cVar.c(m10);
                                if (c10 != p.f15523a) {
                                    break;
                                }
                            } catch (Throwable th) {
                                ad.c.a(o.f15512f, m10, cVar, obj);
                                throw th;
                            }
                        } else {
                            continue;
                        }
                    }
                }
            }
        }

        public abstract Object e(o oVar);

        public abstract void f(o oVar, o oVar2);

        public abstract void g(c cVar);

        public abstract o h();

        public abstract o i();

        public Object j(c cVar) {
            g(cVar);
            return null;
        }

        public void k(o oVar) {
        }

        public abstract boolean l(o oVar, Object obj);

        public abstract o m(w wVar);

        public abstract Object n(o oVar, o oVar2);
    }

    /* compiled from: LockFreeLinkedList.kt */
    /* loaded from: classes2.dex */
    public static abstract class b extends wc.d<o> {

        /* renamed from: b, reason: collision with root package name */
        public final o f15515b;

        /* renamed from: c, reason: collision with root package name */
        public o f15516c;

        public b(o oVar) {
            this.f15515b = oVar;
        }

        @Override // wc.d
        /* renamed from: j, reason: merged with bridge method [inline-methods] */
        public void d(o oVar, Object obj) {
            boolean z10 = obj == null;
            o oVar2 = z10 ? this.f15515b : this.f15516c;
            if (oVar2 != null && ad.c.a(o.f15512f, oVar, this, oVar2) && z10) {
                o oVar3 = this.f15515b;
                o oVar4 = this.f15516c;
                jc.l.c(oVar4);
                oVar3.I(oVar4);
            }
        }
    }

    /* compiled from: LockFreeLinkedList.kt */
    /* loaded from: classes2.dex */
    public static final class c extends w {

        /* renamed from: a, reason: collision with root package name */
        public final o f15517a;

        /* renamed from: b, reason: collision with root package name */
        public final o f15518b;

        /* renamed from: c, reason: collision with root package name */
        public final a f15519c;

        public c(o oVar, o oVar2, a aVar) {
            this.f15517a = oVar;
            this.f15518b = oVar2;
            this.f15519c = aVar;
        }

        @Override // wc.w
        public wc.d<?> a() {
            return this.f15519c.b();
        }

        @Override // wc.w
        public Object c(Object obj) {
            Object f10;
            Object obj2;
            if (u0.a()) {
                if (!(obj == this.f15517a)) {
                    throw new AssertionError();
                }
            }
            if (obj != null) {
                o oVar = (o) obj;
                Object j10 = this.f15519c.j(this);
                Object obj3 = p.f15523a;
                if (j10 == obj3) {
                    o oVar2 = this.f15518b;
                    if (ad.c.a(o.f15512f, oVar, this, oVar2.S())) {
                        this.f15519c.k(oVar);
                        oVar2.G(null);
                    }
                    return obj3;
                }
                if (j10 != null) {
                    f10 = a().e(j10);
                } else {
                    f10 = a().f();
                }
                if (f10 == wc.c.f15474a) {
                    obj2 = a();
                } else if (f10 == null) {
                    obj2 = this.f15519c.n(oVar, this.f15518b);
                } else {
                    obj2 = this.f15518b;
                }
                ad.c.a(o.f15512f, oVar, this, obj2);
                return null;
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
        }

        public final void d() {
            this.f15519c.g(this);
        }

        @Override // wc.w
        public String toString() {
            return "PrepareOp(op=" + a() + ')';
        }
    }

    /* compiled from: LockFreeLinkedList.kt */
    /* loaded from: classes2.dex */
    public static class d<T> extends a {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ AtomicReferenceFieldUpdater f15520c = AtomicReferenceFieldUpdater.newUpdater(d.class, Object.class, "_affectedNode");

        /* renamed from: d, reason: collision with root package name */
        public static final /* synthetic */ AtomicReferenceFieldUpdater f15521d = AtomicReferenceFieldUpdater.newUpdater(d.class, Object.class, "_originalNext");
        private volatile /* synthetic */ Object _affectedNode = null;
        private volatile /* synthetic */ Object _originalNext = null;

        /* renamed from: b, reason: collision with root package name */
        public final o f15522b;

        public d(o oVar) {
            this.f15522b = oVar;
        }

        @Override // wc.o.a
        public Object e(o oVar) {
            if (oVar == this.f15522b) {
                return n.b();
            }
            return null;
        }

        @Override // wc.o.a
        public final void f(o oVar, o oVar2) {
            oVar2.G(null);
        }

        @Override // wc.o.a
        public void g(c cVar) {
            ad.c.a(f15520c, this, null, cVar.f15517a);
            ad.c.a(f15521d, this, null, cVar.f15518b);
        }

        @Override // wc.o.a
        public final o h() {
            return (o) this._affectedNode;
        }

        @Override // wc.o.a
        public final o i() {
            return (o) this._originalNext;
        }

        @Override // wc.o.a
        public final boolean l(o oVar, Object obj) {
            if (!(obj instanceof x)) {
                return false;
            }
            ((x) obj).f15543a.N();
            return true;
        }

        @Override // wc.o.a
        public final o m(w wVar) {
            o oVar = this.f15522b;
            while (true) {
                Object obj = oVar._next;
                if (obj instanceof w) {
                    w wVar2 = (w) obj;
                    if (wVar.b(wVar2)) {
                        return null;
                    }
                    wVar2.c(this.f15522b);
                } else {
                    return (o) obj;
                }
            }
        }

        @Override // wc.o.a
        public final Object n(o oVar, o oVar2) {
            return oVar2.S();
        }

        public final T o() {
            T t10 = (T) h();
            jc.l.c(t10);
            return t10;
        }
    }

    public final void D(o oVar) {
        do {
        } while (!L().E(oVar, this));
    }

    public final boolean E(o oVar, o oVar2) {
        f15513g.lazySet(oVar, this);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f15512f;
        atomicReferenceFieldUpdater.lazySet(oVar, oVar2);
        if (!ad.c.a(atomicReferenceFieldUpdater, this, oVar2, oVar)) {
            return false;
        }
        oVar.I(oVar2);
        return true;
    }

    public final boolean F(o oVar) {
        f15513g.lazySet(oVar, this);
        f15512f.lazySet(oVar, this);
        while (J() == this) {
            if (ad.c.a(f15512f, this, this, oVar)) {
                oVar.I(this);
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0048, code lost:
    
        if (ad.c.a(wc.o.f15512f, r3, r2, ((wc.x) r4).f15543a) != false) goto L30;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final o G(w wVar) {
        while (true) {
            o oVar = (o) this._prev;
            o oVar2 = oVar;
            while (true) {
                o oVar3 = null;
                while (true) {
                    Object obj = oVar2._next;
                    if (obj == this) {
                        if (oVar == oVar2 || ad.c.a(f15513g, this, oVar, oVar2)) {
                            return oVar2;
                        }
                    } else {
                        if (O()) {
                            return null;
                        }
                        if (obj == wVar) {
                            return oVar2;
                        }
                        if (obj instanceof w) {
                            if (wVar != null && wVar.b((w) obj)) {
                                return null;
                            }
                            ((w) obj).c(oVar2);
                        } else if (!(obj instanceof x)) {
                            oVar3 = oVar2;
                            oVar2 = (o) obj;
                        } else {
                            if (oVar3 != null) {
                                break;
                            }
                            oVar2 = (o) oVar2._prev;
                        }
                    }
                }
                oVar2 = oVar3;
            }
        }
    }

    public final o H(o oVar) {
        while (oVar.O()) {
            oVar = (o) oVar._prev;
        }
        return oVar;
    }

    public final void I(o oVar) {
        o oVar2;
        do {
            oVar2 = (o) oVar._prev;
            if (J() != oVar) {
                return;
            }
        } while (!ad.c.a(f15513g, oVar, oVar2, this));
        if (O()) {
            oVar.G(null);
        }
    }

    public final Object J() {
        while (true) {
            Object obj = this._next;
            if (!(obj instanceof w)) {
                return obj;
            }
            ((w) obj).c(this);
        }
    }

    public final o K() {
        return n.c(J());
    }

    public final o L() {
        o G = G(null);
        return G == null ? H((o) this._prev) : G;
    }

    public final void M() {
        ((x) J()).f15543a.N();
    }

    public final void N() {
        o oVar = this;
        while (true) {
            Object J = oVar.J();
            if (!(J instanceof x)) {
                oVar.G(null);
                return;
            }
            oVar = ((x) J).f15543a;
        }
    }

    public boolean O() {
        return J() instanceof x;
    }

    public boolean P() {
        return R() == null;
    }

    public final o Q() {
        while (true) {
            o oVar = (o) J();
            if (oVar == this) {
                return null;
            }
            if (oVar.P()) {
                return oVar;
            }
            oVar.M();
        }
    }

    public final o R() {
        Object J;
        o oVar;
        do {
            J = J();
            if (J instanceof x) {
                return ((x) J).f15543a;
            }
            if (J == this) {
                return (o) J;
            }
            oVar = (o) J;
        } while (!ad.c.a(f15512f, this, J, oVar.S()));
        oVar.G(null);
        return null;
    }

    public final x S() {
        x xVar = (x) this._removedRef;
        if (xVar != null) {
            return xVar;
        }
        x xVar2 = new x(this);
        f15514h.lazySet(this, xVar2);
        return xVar2;
    }

    public final int T(o oVar, o oVar2, b bVar) {
        f15513g.lazySet(oVar, this);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f15512f;
        atomicReferenceFieldUpdater.lazySet(oVar, oVar2);
        bVar.f15516c = oVar2;
        if (ad.c.a(atomicReferenceFieldUpdater, this, oVar2, bVar)) {
            return bVar.c(this) == null ? 1 : 2;
        }
        return 0;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append((Object) getClass().getSimpleName());
        sb2.append('@');
        sb2.append((Object) Integer.toHexString(System.identityHashCode(this)));
        return sb2.toString();
    }
}
