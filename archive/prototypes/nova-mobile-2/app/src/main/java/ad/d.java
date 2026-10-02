package ad;

import cc.h;
import ic.l;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import jc.m;
import rc.i1;
import rc.o;
import rc.q;
import rc.r;
import vb.p;
import wc.a0;
import wc.w;

/* compiled from: Mutex.kt */
/* loaded from: classes2.dex */
public final class d implements ad.b {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f545a = AtomicReferenceFieldUpdater.newUpdater(d.class, Object.class, "_state");
    public volatile /* synthetic */ Object _state;

    /* compiled from: Mutex.kt */
    /* loaded from: classes2.dex */
    public final class a extends b {

        /* renamed from: l, reason: collision with root package name */
        public final o<p> f546l;

        /* compiled from: Mutex.kt */
        /* renamed from: ad.d$a$a, reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static final class C0016a extends m implements l<Throwable, p> {

            /* renamed from: f, reason: collision with root package name */
            public final /* synthetic */ d f548f;

            /* renamed from: g, reason: collision with root package name */
            public final /* synthetic */ a f549g;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0016a(d dVar, a aVar) {
                super(1);
                this.f548f = dVar;
                this.f549g = aVar;
            }

            @Override // ic.l
            public /* bridge */ /* synthetic */ p invoke(Throwable th) {
                invoke2(th);
                return p.f15031a;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable th) {
                this.f548f.a(this.f549g.f551i);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public a(Object obj, o<? super p> oVar) {
            super(obj);
            this.f546l = oVar;
        }

        @Override // ad.d.b
        public void U() {
            this.f546l.B(q.f13321a);
        }

        @Override // ad.d.b
        public boolean W() {
            return V() && this.f546l.r(p.f15031a, null, new C0016a(d.this, this)) != null;
        }

        @Override // wc.o
        public String toString() {
            return "LockCont[" + this.f551i + ", " + this.f546l + "] for " + d.this;
        }
    }

    /* compiled from: Mutex.kt */
    /* loaded from: classes2.dex */
    public abstract class b extends wc.o implements i1 {

        /* renamed from: k, reason: collision with root package name */
        public static final /* synthetic */ AtomicReferenceFieldUpdater f550k = AtomicReferenceFieldUpdater.newUpdater(b.class, Object.class, "isTaken");

        /* renamed from: i, reason: collision with root package name */
        public final Object f551i;
        private volatile /* synthetic */ Object isTaken = Boolean.FALSE;

        public b(Object obj) {
            this.f551i = obj;
        }

        public abstract void U();

        public final boolean V() {
            return ad.c.a(f550k, this, Boolean.FALSE, Boolean.TRUE);
        }

        public abstract boolean W();

        @Override // rc.i1
        public final void e() {
            P();
        }
    }

    /* compiled from: Mutex.kt */
    /* loaded from: classes2.dex */
    public static final class c extends wc.m {

        /* renamed from: i, reason: collision with root package name */
        public Object f553i;

        public c(Object obj) {
            this.f553i = obj;
        }

        @Override // wc.o
        public String toString() {
            return "LockedQueue[" + this.f553i + ']';
        }
    }

    /* compiled from: Mutex.kt */
    /* renamed from: ad.d$d, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0017d extends wc.d<d> {

        /* renamed from: b, reason: collision with root package name */
        public final c f554b;

        public C0017d(c cVar) {
            this.f554b = cVar;
        }

        @Override // wc.d
        /* renamed from: j, reason: merged with bridge method [inline-methods] */
        public void d(d dVar, Object obj) {
            ad.c.a(d.f545a, dVar, this, obj == null ? ad.e.f562f : this.f554b);
        }

        @Override // wc.d
        /* renamed from: k, reason: merged with bridge method [inline-methods] */
        public Object i(d dVar) {
            a0 a0Var;
            if (this.f554b.U()) {
                return null;
            }
            a0Var = ad.e.f558b;
            return a0Var;
        }
    }

    /* compiled from: Mutex.kt */
    /* loaded from: classes2.dex */
    public static final class e extends m implements l<Throwable, p> {

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ Object f556g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(Object obj) {
            super(1);
            this.f556g = obj;
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ p invoke(Throwable th) {
            invoke2(th);
            return p.f15031a;
        }

        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(Throwable th) {
            d.this.a(this.f556g);
        }
    }

    public d(boolean z10) {
        this._state = z10 ? ad.e.f561e : ad.e.f562f;
    }

    @Override // ad.b
    public void a(Object obj) {
        ad.a aVar;
        a0 a0Var;
        while (true) {
            Object obj2 = this._state;
            if (obj2 instanceof ad.a) {
                if (obj == null) {
                    Object obj3 = ((ad.a) obj2).f544a;
                    a0Var = ad.e.f560d;
                    if (!(obj3 != a0Var)) {
                        throw new IllegalStateException("Mutex is not locked".toString());
                    }
                } else {
                    ad.a aVar2 = (ad.a) obj2;
                    if (!(aVar2.f544a == obj)) {
                        throw new IllegalStateException(("Mutex is locked by " + aVar2.f544a + " but expected " + obj).toString());
                    }
                }
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f545a;
                aVar = ad.e.f562f;
                if (ad.c.a(atomicReferenceFieldUpdater, this, obj2, aVar)) {
                    return;
                }
            } else if (obj2 instanceof w) {
                ((w) obj2).c(this);
            } else if (obj2 instanceof c) {
                if (obj != null) {
                    c cVar = (c) obj2;
                    if (!(cVar.f553i == obj)) {
                        throw new IllegalStateException(("Mutex is locked by " + cVar.f553i + " but expected " + obj).toString());
                    }
                }
                c cVar2 = (c) obj2;
                wc.o Q = cVar2.Q();
                if (Q == null) {
                    C0017d c0017d = new C0017d(cVar2);
                    if (ad.c.a(f545a, this, obj2, c0017d) && c0017d.c(this) == null) {
                        return;
                    }
                } else {
                    b bVar = (b) Q;
                    if (bVar.W()) {
                        Object obj4 = bVar.f551i;
                        if (obj4 == null) {
                            obj4 = ad.e.f559c;
                        }
                        cVar2.f553i = obj4;
                        bVar.U();
                        return;
                    }
                }
            } else {
                throw new IllegalStateException(jc.l.m("Illegal state ", obj2).toString());
            }
        }
    }

    @Override // ad.b
    public Object b(Object obj, ac.d<? super p> dVar) {
        Object c10;
        return (!d(obj) && (c10 = c(obj, dVar)) == bc.c.d()) ? c10 : p.f15031a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x006e, code lost:
    
        rc.r.c(r0, r1);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object c(Object obj, ac.d<? super p> dVar) {
        a0 a0Var;
        rc.p b10 = r.b(bc.b.c(dVar));
        a aVar = new a(obj, b10);
        while (true) {
            Object obj2 = this._state;
            if (obj2 instanceof ad.a) {
                ad.a aVar2 = (ad.a) obj2;
                Object obj3 = aVar2.f544a;
                a0Var = ad.e.f560d;
                if (obj3 != a0Var) {
                    ad.c.a(f545a, this, obj2, new c(aVar2.f544a));
                } else {
                    if (ad.c.a(f545a, this, obj2, obj == null ? ad.e.f561e : new ad.a(obj))) {
                        b10.A(p.f15031a, new e(obj));
                        break;
                    }
                }
            } else if (obj2 instanceof c) {
                c cVar = (c) obj2;
                if (cVar.f553i != obj) {
                    cVar.D(aVar);
                    if (this._state == obj2 || !aVar.V()) {
                        break;
                    }
                    aVar = new a(obj, b10);
                } else {
                    throw new IllegalStateException(jc.l.m("Already locked by ", obj).toString());
                }
            } else {
                if (!(obj2 instanceof w)) {
                    throw new IllegalStateException(jc.l.m("Illegal state ", obj2).toString());
                }
                ((w) obj2).c(this);
            }
        }
        Object v10 = b10.v();
        if (v10 == bc.c.d()) {
            h.c(dVar);
        }
        return v10 == bc.c.d() ? v10 : p.f15031a;
    }

    public boolean d(Object obj) {
        a0 a0Var;
        while (true) {
            Object obj2 = this._state;
            if (obj2 instanceof ad.a) {
                Object obj3 = ((ad.a) obj2).f544a;
                a0Var = ad.e.f560d;
                if (obj3 != a0Var) {
                    return false;
                }
                if (ad.c.a(f545a, this, obj2, obj == null ? ad.e.f561e : new ad.a(obj))) {
                    return true;
                }
            } else {
                if (obj2 instanceof c) {
                    if (((c) obj2).f553i != obj) {
                        return false;
                    }
                    throw new IllegalStateException(jc.l.m("Already locked by ", obj).toString());
                }
                if (!(obj2 instanceof w)) {
                    throw new IllegalStateException(jc.l.m("Illegal state ", obj2).toString());
                }
                ((w) obj2).c(this);
            }
        }
    }

    public String toString() {
        while (true) {
            Object obj = this._state;
            if (obj instanceof ad.a) {
                return "Mutex[" + ((ad.a) obj).f544a + ']';
            }
            if (!(obj instanceof w)) {
                if (!(obj instanceof c)) {
                    throw new IllegalStateException(jc.l.m("Illegal state ", obj).toString());
                }
                return "Mutex[" + ((c) obj).f553i + ']';
            }
            ((w) obj).c(this);
        }
    }
}
