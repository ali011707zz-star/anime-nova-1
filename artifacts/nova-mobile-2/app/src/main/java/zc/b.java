package zc;

import ac.g;
import ic.l;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import rc.b1;
import rc.c2;
import rc.d2;
import rc.f0;
import rc.i0;
import rc.i1;
import rc.n0;
import rc.q;
import rc.u0;
import vb.j;
import vb.k;
import vb.p;
import wc.m;
import wc.o;
import wc.w;
import wc.z;

/* compiled from: Select.kt */
/* loaded from: classes2.dex */
public final class b<R> extends m implements zc.a<R>, zc.d<R>, ac.d<R>, cc.e {

    /* renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f17456j = AtomicReferenceFieldUpdater.newUpdater(b.class, Object.class, "_state");

    /* renamed from: k, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f17457k = AtomicReferenceFieldUpdater.newUpdater(b.class, Object.class, "_result");
    private volatile /* synthetic */ Object _parentHandle;
    public volatile /* synthetic */ Object _result;
    public volatile /* synthetic */ Object _state = zc.e.e();

    /* renamed from: i, reason: collision with root package name */
    public final ac.d<R> f17458i;

    /* compiled from: Select.kt */
    /* loaded from: classes2.dex */
    public static final class a extends wc.d<Object> {

        /* renamed from: b, reason: collision with root package name */
        public final b<?> f17459b;

        /* renamed from: c, reason: collision with root package name */
        public final wc.b f17460c;

        /* renamed from: d, reason: collision with root package name */
        public final long f17461d;

        public a(b<?> bVar, wc.b bVar2) {
            f fVar;
            this.f17459b = bVar;
            this.f17460c = bVar2;
            fVar = zc.e.f17471e;
            this.f17461d = fVar.a();
            bVar2.d(this);
        }

        @Override // wc.d
        public void d(Object obj, Object obj2) {
            j(obj2);
            this.f17460c.a(this, obj2);
        }

        @Override // wc.d
        public long g() {
            return this.f17461d;
        }

        @Override // wc.d
        public Object i(Object obj) {
            Object k10;
            if (obj == null && (k10 = k()) != null) {
                return k10;
            }
            try {
                return this.f17460c.c(this);
            } catch (Throwable th) {
                if (obj == null) {
                    l();
                }
                throw th;
            }
        }

        public final void j(Object obj) {
            boolean z10 = obj == null;
            if (ad.c.a(b.f17456j, this.f17459b, this, z10 ? null : zc.e.e()) && z10) {
                this.f17459b.W();
            }
        }

        public final Object k() {
            b<?> bVar = this.f17459b;
            while (true) {
                Object obj = bVar._state;
                if (obj == this) {
                    return null;
                }
                if (obj instanceof w) {
                    ((w) obj).c(this.f17459b);
                } else if (obj == zc.e.e()) {
                    if (ad.c.a(b.f17456j, this.f17459b, zc.e.e(), this)) {
                        return null;
                    }
                } else {
                    return zc.e.d();
                }
            }
        }

        public final void l() {
            ad.c.a(b.f17456j, this.f17459b, this, zc.e.e());
        }

        @Override // wc.w
        public String toString() {
            return "AtomicSelectOp(sequence=" + g() + ')';
        }
    }

    /* compiled from: Select.kt */
    /* renamed from: zc.b$b, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0448b extends o {

        /* renamed from: i, reason: collision with root package name */
        public final i1 f17462i;

        public C0448b(i1 i1Var) {
            this.f17462i = i1Var;
        }
    }

    /* compiled from: Select.kt */
    /* loaded from: classes2.dex */
    public static final class c extends w {

        /* renamed from: a, reason: collision with root package name */
        public final o.c f17463a;

        public c(o.c cVar) {
            this.f17463a = cVar;
        }

        @Override // wc.w
        public wc.d<?> a() {
            return this.f17463a.a();
        }

        @Override // wc.w
        public Object c(Object obj) {
            if (obj != null) {
                b bVar = (b) obj;
                this.f17463a.d();
                Object e10 = this.f17463a.a().e(null);
                ad.c.a(b.f17456j, bVar, this, e10 == null ? this.f17463a.f15519c : zc.e.e());
                return e10;
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlinx.coroutines.selects.SelectBuilderImpl<*>");
        }
    }

    /* compiled from: Select.kt */
    /* loaded from: classes2.dex */
    public final class d extends d2 {
        public d() {
        }

        @Override // rc.h0
        public void U(Throwable th) {
            if (b.this.p()) {
                b.this.k(V().a0());
            }
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ p invoke(Throwable th) {
            U(th);
            return p.f15031a;
        }
    }

    /* compiled from: Runnable.kt */
    /* loaded from: classes2.dex */
    public static final class e implements Runnable {

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ l f17466g;

        public e(l lVar) {
            this.f17466g = lVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (b.this.p()) {
                xc.a.d(this.f17466g, b.this.f());
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public b(ac.d<? super R> dVar) {
        Object obj;
        this.f17458i = dVar;
        obj = zc.e.f17469c;
        this._result = obj;
        this._parentHandle = null;
    }

    public final void W() {
        i1 X = X();
        if (X != null) {
            X.e();
        }
        for (o oVar = (o) J(); !jc.l.a(oVar, this); oVar = oVar.K()) {
            if (oVar instanceof C0448b) {
                ((C0448b) oVar).f17462i.e();
            }
        }
    }

    public final i1 X() {
        return (i1) this._parentHandle;
    }

    public final Object Y() {
        Object obj;
        Object obj2;
        Object obj3;
        if (!w()) {
            a0();
        }
        Object obj4 = this._result;
        obj = zc.e.f17469c;
        if (obj4 == obj) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f17457k;
            obj3 = zc.e.f17469c;
            if (ad.c.a(atomicReferenceFieldUpdater, this, obj3, bc.c.d())) {
                return bc.c.d();
            }
            obj4 = this._result;
        }
        obj2 = zc.e.f17470d;
        if (obj4 != obj2) {
            if (obj4 instanceof f0) {
                throw ((f0) obj4).f13254a;
            }
            return obj4;
        }
        throw new IllegalStateException("Already resumed");
    }

    public final void Z(Throwable th) {
        if (p()) {
            j.a aVar = j.f15020f;
            resumeWith(j.a(k.a(th)));
        } else {
            if (th instanceof CancellationException) {
                return;
            }
            Object Y = Y();
            if (Y instanceof f0) {
                Throwable th2 = ((f0) Y).f13254a;
                if (u0.d()) {
                    th2 = z.n(th2);
                }
                if (th2 == (!u0.d() ? th : z.n(th))) {
                    return;
                }
            }
            n0.a(getContext(), th);
        }
    }

    @Override // zc.a
    public void a(long j10, l<? super ac.d<? super R>, ? extends Object> lVar) {
        if (j10 <= 0) {
            if (p()) {
                xc.b.b(lVar, f());
            }
        } else {
            d(b1.b(getContext()).w0(j10, new e(lVar), getContext()));
        }
    }

    public final void a0() {
        c2 c2Var = (c2) getContext().get(c2.f13236c);
        if (c2Var == null) {
            return;
        }
        i1 d10 = c2.a.d(c2Var, true, false, new d(), 2, null);
        b0(d10);
        if (w()) {
            d10.e();
        }
    }

    public final void b0(i1 i1Var) {
        this._parentHandle = i1Var;
    }

    @Override // zc.d
    public void d(i1 i1Var) {
        C0448b c0448b = new C0448b(i1Var);
        if (!w()) {
            D(c0448b);
            if (!w()) {
                return;
            }
        }
        i1Var.e();
    }

    @Override // zc.d
    public ac.d<R> f() {
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // zc.a
    public <Q> void g(zc.c<? extends Q> cVar, ic.p<? super Q, ? super ac.d<? super R>, ? extends Object> pVar) {
        cVar.a(this, pVar);
    }

    @Override // cc.e
    public cc.e getCallerFrame() {
        ac.d<R> dVar = this.f17458i;
        if (dVar instanceof cc.e) {
            return (cc.e) dVar;
        }
        return null;
    }

    @Override // ac.d
    public g getContext() {
        return this.f17458i.getContext();
    }

    @Override // cc.e
    public StackTraceElement getStackTraceElement() {
        return null;
    }

    @Override // zc.d
    public void k(Throwable th) {
        Object obj;
        Object obj2;
        Object obj3;
        if (u0.a() && !w()) {
            throw new AssertionError();
        }
        while (true) {
            Object obj4 = this._result;
            obj = zc.e.f17469c;
            if (obj4 == obj) {
                ac.d<R> dVar = this.f17458i;
                f0 f0Var = new f0((u0.d() && (dVar instanceof cc.e)) ? z.j(th, (cc.e) dVar) : th, false, 2, null);
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f17457k;
                obj2 = zc.e.f17469c;
                if (ad.c.a(atomicReferenceFieldUpdater, this, obj2, f0Var)) {
                    return;
                }
            } else if (obj4 == bc.c.d()) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f17457k;
                Object d10 = bc.c.d();
                obj3 = zc.e.f17470d;
                if (ad.c.a(atomicReferenceFieldUpdater2, this, d10, obj3)) {
                    ac.d c10 = bc.b.c(this.f17458i);
                    j.a aVar = j.f15020f;
                    c10.resumeWith(j.a(k.a(th)));
                    return;
                }
            } else {
                throw new IllegalStateException("Already resumed");
            }
        }
    }

    @Override // zc.d
    public Object m(wc.b bVar) {
        return new a(this, bVar).c(null);
    }

    @Override // zc.d
    public boolean p() {
        Object u10 = u(null);
        if (u10 == q.f13321a) {
            return true;
        }
        if (u10 == null) {
            return false;
        }
        throw new IllegalStateException(jc.l.m("Unexpected trySelectIdempotent result ", u10).toString());
    }

    @Override // ac.d
    public void resumeWith(Object obj) {
        Object obj2;
        Object obj3;
        Object obj4;
        if (u0.a() && !w()) {
            throw new AssertionError();
        }
        while (true) {
            Object obj5 = this._result;
            obj2 = zc.e.f17469c;
            if (obj5 == obj2) {
                Object d10 = i0.d(obj, null, 1, null);
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f17457k;
                obj3 = zc.e.f17469c;
                if (ad.c.a(atomicReferenceFieldUpdater, this, obj3, d10)) {
                    return;
                }
            } else if (obj5 == bc.c.d()) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f17457k;
                Object d11 = bc.c.d();
                obj4 = zc.e.f17470d;
                if (ad.c.a(atomicReferenceFieldUpdater2, this, d11, obj4)) {
                    if (j.c(obj)) {
                        ac.d<R> dVar = this.f17458i;
                        Throwable b10 = j.b(obj);
                        jc.l.c(b10);
                        j.a aVar = j.f15020f;
                        if (u0.d() && (dVar instanceof cc.e)) {
                            b10 = z.j(b10, (cc.e) dVar);
                        }
                        dVar.resumeWith(j.a(k.a(b10)));
                        return;
                    }
                    this.f17458i.resumeWith(obj);
                    return;
                }
            } else {
                throw new IllegalStateException("Already resumed");
            }
        }
    }

    @Override // wc.o
    public String toString() {
        return "SelectInstance(state=" + this._state + ", result=" + this._result + ')';
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x0031, code lost:
    
        W();
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0036, code lost:
    
        return rc.q.f13321a;
     */
    @Override // zc.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object u(o.c cVar) {
        while (true) {
            Object obj = this._state;
            if (obj == zc.e.e()) {
                if (cVar == null) {
                    if (ad.c.a(f17456j, this, zc.e.e(), null)) {
                        break;
                    }
                } else {
                    c cVar2 = new c(cVar);
                    if (ad.c.a(f17456j, this, zc.e.e(), cVar2)) {
                        Object c10 = cVar2.c(this);
                        if (c10 != null) {
                            return c10;
                        }
                    }
                }
            } else if (obj instanceof w) {
                if (cVar != null) {
                    wc.d<?> a10 = cVar.a();
                    if ((a10 instanceof a) && ((a) a10).f17459b == this) {
                        throw new IllegalStateException("Cannot use matching select clauses on the same object".toString());
                    }
                    if (a10.b((w) obj)) {
                        return wc.c.f15475b;
                    }
                }
                ((w) obj).c(this);
            } else {
                if (cVar != null && obj == cVar.f15519c) {
                    return q.f13321a;
                }
                return null;
            }
        }
    }

    @Override // zc.d
    public boolean w() {
        while (true) {
            Object obj = this._state;
            if (obj == zc.e.e()) {
                return false;
            }
            if (!(obj instanceof w)) {
                return true;
            }
            ((w) obj).c(this);
        }
    }
}
