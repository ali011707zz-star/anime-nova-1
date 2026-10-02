package k1;

import androidx.recyclerview.widget.j;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: AsyncPagingDataDiffer.kt */
/* loaded from: classes.dex */
public final class b<T> {

    /* renamed from: a, reason: collision with root package name */
    public final j f9254a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f9255b;

    /* renamed from: c, reason: collision with root package name */
    public final a f9256c;

    /* renamed from: d, reason: collision with root package name */
    public final AtomicInteger f9257d;

    /* renamed from: e, reason: collision with root package name */
    public final uc.f<g> f9258e;

    /* renamed from: f, reason: collision with root package name */
    public final j.f<T> f9259f;

    /* renamed from: g, reason: collision with root package name */
    public final androidx.recyclerview.widget.p f9260g;

    /* renamed from: h, reason: collision with root package name */
    public final rc.l0 f9261h;

    /* renamed from: i, reason: collision with root package name */
    public final rc.l0 f9262i;

    /* compiled from: AsyncPagingDataDiffer.kt */
    /* loaded from: classes.dex */
    public static final class a extends s0<T> {

        /* compiled from: AsyncPagingDataDiffer.kt */
        @cc.f(c = "androidx.paging.AsyncPagingDataDiffer$differBase$1", f = "AsyncPagingDataDiffer.kt", l = {99}, m = "presentNewList")
        /* renamed from: k1.b$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0170a extends cc.d {

            /* renamed from: f, reason: collision with root package name */
            public /* synthetic */ Object f9264f;

            /* renamed from: g, reason: collision with root package name */
            public int f9265g;

            /* renamed from: i, reason: collision with root package name */
            public Object f9267i;

            /* renamed from: j, reason: collision with root package name */
            public Object f9268j;

            /* renamed from: k, reason: collision with root package name */
            public Object f9269k;

            /* renamed from: l, reason: collision with root package name */
            public Object f9270l;

            /* renamed from: m, reason: collision with root package name */
            public int f9271m;

            public C0170a(ac.d dVar) {
                super(dVar);
            }

            @Override // cc.a
            public final Object invokeSuspend(Object obj) {
                this.f9264f = obj;
                this.f9265g |= Integer.MIN_VALUE;
                return a.this.w(null, null, null, 0, null, this);
            }
        }

        /* compiled from: AsyncPagingDataDiffer.kt */
        @cc.f(c = "androidx.paging.AsyncPagingDataDiffer$differBase$1$presentNewList$diffResult$1", f = "AsyncPagingDataDiffer.kt", l = {}, m = "invokeSuspend")
        /* renamed from: k1.b$a$b, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0171b extends cc.k implements ic.p<rc.q0, ac.d<? super b0>, Object> {

            /* renamed from: f, reason: collision with root package name */
            public int f9272f;

            /* renamed from: h, reason: collision with root package name */
            public final /* synthetic */ c0 f9274h;

            /* renamed from: i, reason: collision with root package name */
            public final /* synthetic */ c0 f9275i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0171b(c0 c0Var, c0 c0Var2, ac.d dVar) {
                super(2, dVar);
                this.f9274h = c0Var;
                this.f9275i = c0Var2;
            }

            @Override // cc.a
            public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
                jc.l.f(dVar, "completion");
                return new C0171b(this.f9274h, this.f9275i, dVar);
            }

            @Override // ic.p
            public final Object invoke(rc.q0 q0Var, ac.d<? super b0> dVar) {
                return ((C0171b) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
            }

            @Override // cc.a
            public final Object invokeSuspend(Object obj) {
                bc.c.d();
                if (this.f9272f != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                vb.k.b(obj);
                return d0.a(this.f9274h, this.f9275i, b.this.f9259f);
            }
        }

        public a(j jVar, rc.l0 l0Var) {
            super(jVar, l0Var);
        }

        @Override // k1.s0
        public boolean v() {
            return b.this.f();
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x0046  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
        @Override // k1.s0
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Object w(c0<T> c0Var, c0<T> c0Var2, g gVar, int i10, ic.a<vb.p> aVar, ac.d<? super Integer> dVar) {
            C0170a c0170a;
            int i11;
            a aVar2;
            if (dVar instanceof C0170a) {
                c0170a = (C0170a) dVar;
                int i12 = c0170a.f9265g;
                if ((i12 & Integer.MIN_VALUE) != 0) {
                    c0170a.f9265g = i12 - Integer.MIN_VALUE;
                    Object obj = c0170a.f9264f;
                    Object d10 = bc.c.d();
                    i11 = c0170a.f9265g;
                    if (i11 != 0) {
                        vb.k.b(obj);
                        if (c0Var.a() == 0) {
                            aVar.invoke();
                            b.this.e().b(0, c0Var2.a());
                            return null;
                        }
                        if (c0Var2.a() != 0) {
                            rc.l0 l0Var = b.this.f9262i;
                            C0171b c0171b = new C0171b(c0Var, c0Var2, null);
                            c0170a.f9267i = this;
                            c0170a.f9268j = c0Var;
                            c0170a.f9269k = c0Var2;
                            c0170a.f9270l = aVar;
                            c0170a.f9271m = i10;
                            c0170a.f9265g = 1;
                            obj = rc.i.g(l0Var, c0171b, c0170a);
                            if (obj == d10) {
                                return d10;
                            }
                            aVar2 = this;
                        } else {
                            aVar.invoke();
                            b.this.e().a(0, c0Var.a());
                            return null;
                        }
                    } else {
                        if (i11 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        i10 = c0170a.f9271m;
                        aVar = (ic.a) c0170a.f9270l;
                        c0Var2 = (c0) c0170a.f9269k;
                        c0Var = (c0) c0170a.f9268j;
                        aVar2 = (a) c0170a.f9267i;
                        vb.k.b(obj);
                    }
                    b0 b0Var = (b0) obj;
                    aVar.invoke();
                    d0.b(c0Var, b.this.f9260g, c0Var2, b0Var);
                    return cc.b.b(d0.c(c0Var, b0Var, c0Var2, i10));
                }
            }
            c0170a = new C0170a(dVar);
            Object obj2 = c0170a.f9264f;
            Object d102 = bc.c.d();
            i11 = c0170a.f9265g;
            if (i11 != 0) {
            }
            b0 b0Var2 = (b0) obj2;
            aVar.invoke();
            d0.b(c0Var, b.this.f9260g, c0Var2, b0Var2);
            return cc.b.b(d0.c(c0Var, b0Var2, c0Var2, i10));
        }
    }

    /* compiled from: AsyncPagingDataDiffer.kt */
    /* renamed from: k1.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0172b implements j {
        public C0172b() {
        }

        @Override // k1.j
        public void a(int i10, int i11) {
            if (i11 > 0) {
                b.this.f9260g.a(i10, i11);
            }
        }

        @Override // k1.j
        public void b(int i10, int i11) {
            if (i11 > 0) {
                b.this.f9260g.b(i10, i11);
            }
        }

        @Override // k1.j
        public void c(int i10, int i11) {
            if (i11 > 0) {
                b.this.f9260g.d(i10, i11, null);
            }
        }
    }

    public b(j.f<T> fVar, androidx.recyclerview.widget.p pVar, rc.l0 l0Var, rc.l0 l0Var2) {
        jc.l.f(fVar, "diffCallback");
        jc.l.f(pVar, "updateCallback");
        jc.l.f(l0Var, "mainDispatcher");
        jc.l.f(l0Var2, "workerDispatcher");
        this.f9259f = fVar;
        this.f9260g = pVar;
        this.f9261h = l0Var;
        this.f9262i = l0Var2;
        C0172b c0172b = new C0172b();
        this.f9254a = c0172b;
        a aVar = new a(c0172b, l0Var);
        this.f9256c = aVar;
        this.f9257d = new AtomicInteger(0);
        this.f9258e = aVar.t();
    }

    public final void d(ic.l<? super g, vb.p> lVar) {
        jc.l.f(lVar, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        this.f9256c.p(lVar);
    }

    public final j e() {
        return this.f9254a;
    }

    public final boolean f() {
        return this.f9255b;
    }

    public final T g(int i10) {
        try {
            this.f9255b = true;
            return this.f9256c.s(i10);
        } finally {
            this.f9255b = false;
        }
    }

    public final int h() {
        return this.f9256c.u();
    }

    public final uc.f<g> i() {
        return this.f9258e;
    }

    public final void j() {
        this.f9256c.x();
    }

    public final void k(ic.l<? super g, vb.p> lVar) {
        jc.l.f(lVar, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        this.f9256c.y(lVar);
    }

    public final void l() {
        this.f9256c.z();
    }

    public final Object m(q0<T> q0Var, ac.d<? super vb.p> dVar) {
        this.f9257d.incrementAndGet();
        Object q10 = this.f9256c.q(q0Var, dVar);
        return q10 == bc.c.d() ? q10 : vb.p.f15031a;
    }
}
