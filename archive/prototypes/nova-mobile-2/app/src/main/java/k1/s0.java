package k1;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import k1.f0;
import k1.m0;
import rc.i3;

/* compiled from: PagingDataDiffer.kt */
/* loaded from: classes.dex */
public abstract class s0<T> {

    /* renamed from: a, reason: collision with root package name */
    public m0<T> f9772a;

    /* renamed from: b, reason: collision with root package name */
    public g1 f9773b;

    /* renamed from: c, reason: collision with root package name */
    public final a0 f9774c;

    /* renamed from: d, reason: collision with root package name */
    public final CopyOnWriteArrayList<ic.l<g, vb.p>> f9775d;

    /* renamed from: e, reason: collision with root package name */
    public final c1 f9776e;

    /* renamed from: f, reason: collision with root package name */
    public volatile boolean f9777f;

    /* renamed from: g, reason: collision with root package name */
    public volatile int f9778g;

    /* renamed from: h, reason: collision with root package name */
    public final c f9779h;

    /* renamed from: i, reason: collision with root package name */
    public final uc.u<g> f9780i;

    /* renamed from: j, reason: collision with root package name */
    public final j f9781j;

    /* renamed from: k, reason: collision with root package name */
    public final rc.l0 f9782k;

    /* compiled from: PagingDataDiffer.kt */
    /* loaded from: classes.dex */
    public static final class a extends jc.m implements ic.l<g, vb.p> {
        public a() {
            super(1);
        }

        public final void a(g gVar) {
            jc.l.f(gVar, "it");
            s0.this.f9780i.setValue(gVar);
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ vb.p invoke(g gVar) {
            a(gVar);
            return vb.p.f15031a;
        }
    }

    /* compiled from: PagingDataDiffer.kt */
    @cc.f(c = "androidx.paging.PagingDataDiffer$collectFrom$2", f = "PagingDataDiffer.kt", l = {390}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class b extends cc.k implements ic.l<ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f9784f;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ q0 f9786h;

        /* compiled from: Collect.kt */
        /* loaded from: classes.dex */
        public static final class a implements uc.g<f0<T>> {

            /* compiled from: PagingDataDiffer.kt */
            @cc.f(c = "androidx.paging.PagingDataDiffer$collectFrom$2$1$1", f = "PagingDataDiffer.kt", l = {142, BaseTransientBottomBar.ANIMATION_FADE_DURATION}, m = "invokeSuspend")
            /* renamed from: k1.s0$b$a$a, reason: collision with other inner class name */
            /* loaded from: classes.dex */
            public static final class C0199a extends cc.k implements ic.p<rc.q0, ac.d<? super vb.p>, Object> {

                /* renamed from: f, reason: collision with root package name */
                public Object f9788f;

                /* renamed from: g, reason: collision with root package name */
                public Object f9789g;

                /* renamed from: h, reason: collision with root package name */
                public int f9790h;

                /* renamed from: i, reason: collision with root package name */
                public final /* synthetic */ f0 f9791i;

                /* renamed from: j, reason: collision with root package name */
                public final /* synthetic */ a f9792j;

                /* compiled from: PagingDataDiffer.kt */
                /* renamed from: k1.s0$b$a$a$a, reason: collision with other inner class name */
                /* loaded from: classes.dex */
                public static final class C0200a extends jc.m implements ic.a<vb.p> {

                    /* renamed from: g, reason: collision with root package name */
                    public final /* synthetic */ m0 f9794g;

                    /* renamed from: h, reason: collision with root package name */
                    public final /* synthetic */ jc.u f9795h;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    public C0200a(m0 m0Var, jc.u uVar) {
                        super(0);
                        this.f9794g = m0Var;
                        this.f9795h = uVar;
                    }

                    public final void a() {
                        s0.this.f9772a = this.f9794g;
                        this.f9795h.f9191f = true;
                    }

                    @Override // ic.a
                    public /* bridge */ /* synthetic */ vb.p invoke() {
                        a();
                        return vb.p.f15031a;
                    }
                }

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C0199a(f0 f0Var, ac.d dVar, a aVar) {
                    super(2, dVar);
                    this.f9791i = f0Var;
                    this.f9792j = aVar;
                }

                @Override // cc.a
                public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
                    jc.l.f(dVar, "completion");
                    return new C0199a(this.f9791i, dVar, this.f9792j);
                }

                @Override // ic.p
                public final Object invoke(rc.q0 q0Var, ac.d<? super vb.p> dVar) {
                    return ((C0199a) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
                }

                /* JADX WARN: Removed duplicated region for block: B:11:0x0129  */
                /* JADX WARN: Removed duplicated region for block: B:57:0x008c  */
                /* JADX WARN: Removed duplicated region for block: B:65:0x00da  */
                /* JADX WARN: Removed duplicated region for block: B:8:0x011a  */
                @Override // cc.a
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final Object invokeSuspend(Object obj) {
                    m0 m0Var;
                    jc.u uVar;
                    f0 f0Var;
                    boolean z10;
                    Object d10 = bc.c.d();
                    int i10 = this.f9790h;
                    boolean z11 = true;
                    if (i10 == 0) {
                        vb.k.b(obj);
                        f0 f0Var2 = this.f9791i;
                        if ((f0Var2 instanceof f0.b) && ((f0.b) f0Var2).e() == y.REFRESH) {
                            s0.this.f9777f = false;
                            m0Var = new m0((f0.b) this.f9791i);
                            jc.u uVar2 = new jc.u();
                            uVar2.f9191f = false;
                            s0 s0Var = s0.this;
                            m0 m0Var2 = s0Var.f9772a;
                            g d11 = ((f0.b) this.f9791i).d();
                            int i11 = s0.this.f9778g;
                            C0200a c0200a = new C0200a(m0Var, uVar2);
                            this.f9788f = m0Var;
                            this.f9789g = uVar2;
                            this.f9790h = 1;
                            Object w10 = s0Var.w(m0Var2, m0Var, d11, i11, c0200a, this);
                            if (w10 == d10) {
                                return d10;
                            }
                            uVar = uVar2;
                            obj = w10;
                            Integer num = (Integer) obj;
                            if (!uVar.f9191f) {
                            }
                        } else {
                            if (s0.this.v()) {
                                this.f9790h = 2;
                                if (i3.a(this) == d10) {
                                    return d10;
                                }
                            }
                            s0.this.f9772a.q(this.f9791i, s0.this.f9779h);
                            if (this.f9791i instanceof f0.a) {
                            }
                            f0Var = this.f9791i;
                            if (f0Var instanceof f0.b) {
                            }
                        }
                    } else if (i10 == 1) {
                        uVar = (jc.u) this.f9789g;
                        m0Var = (m0) this.f9788f;
                        vb.k.b(obj);
                        Integer num2 = (Integer) obj;
                        if (!uVar.f9191f) {
                            s0.this.r(((f0.b) this.f9791i).d());
                            if (num2 == null) {
                                g1 g1Var = s0.this.f9773b;
                                if (g1Var != null) {
                                    g1Var.b(m0Var.o());
                                }
                            } else {
                                s0.this.f9778g = num2.intValue();
                                g1 g1Var2 = s0.this.f9773b;
                                if (g1Var2 != null) {
                                    g1Var2.b(m0Var.g(num2.intValue()));
                                }
                            }
                        } else {
                            throw new IllegalStateException("Missing call to onListPresentable after new list was presented. If you are seeing this exception, it is generally an indication of an issue with Paging. Please file a bug so we can fix it at: https://issuetracker.google.com/issues/new?component=413106".toString());
                        }
                    } else if (i10 == 2) {
                        vb.k.b(obj);
                        s0.this.f9772a.q(this.f9791i, s0.this.f9779h);
                        if (this.f9791i instanceof f0.a) {
                            s0.this.f9777f = false;
                        }
                        f0Var = this.f9791i;
                        if (f0Var instanceof f0.b) {
                            boolean z12 = ((((f0.b) this.f9791i).e() == y.PREPEND && ((f0.b) f0Var).d().d().a()) || (((f0.b) this.f9791i).e() == y.APPEND && ((f0.b) this.f9791i).d().b().a())) ? false : true;
                            List<f1<T>> f10 = ((f0.b) this.f9791i).f();
                            if (!(f10 instanceof Collection) || !f10.isEmpty()) {
                                Iterator<T> it2 = f10.iterator();
                                while (it2.hasNext()) {
                                    if (!cc.b.a(((f1) it2.next()).b().isEmpty()).booleanValue()) {
                                        z10 = false;
                                        break;
                                    }
                                }
                            }
                            z10 = true;
                            if (!z12) {
                                s0.this.f9777f = false;
                            } else if (s0.this.f9777f || z10) {
                                if (!z10 && s0.this.f9778g >= s0.this.f9772a.c() && s0.this.f9778g <= s0.this.f9772a.c() + s0.this.f9772a.b()) {
                                    z11 = false;
                                }
                                if (z11) {
                                    g1 g1Var3 = s0.this.f9773b;
                                    if (g1Var3 != null) {
                                        g1Var3.b(s0.this.f9772a.g(s0.this.f9778g));
                                    }
                                } else {
                                    s0.this.f9777f = false;
                                }
                            }
                        }
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    return vb.p.f15031a;
                }
            }

            public a() {
            }

            @Override // uc.g
            public Object a(Object obj, ac.d dVar) {
                Object g10 = rc.i.g(s0.this.f9782k, new C0199a((f0) obj, null, this), dVar);
                return g10 == bc.c.d() ? g10 : vb.p.f15031a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(q0 q0Var, ac.d dVar) {
            super(1, dVar);
            this.f9786h = q0Var;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(ac.d<?> dVar) {
            jc.l.f(dVar, "completion");
            return new b(this.f9786h, dVar);
        }

        @Override // ic.l
        public final Object invoke(ac.d<? super vb.p> dVar) {
            return ((b) create(dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f9784f;
            if (i10 == 0) {
                vb.k.b(obj);
                s0.this.f9773b = this.f9786h.b();
                uc.f<f0<T>> a10 = this.f9786h.a();
                a aVar = new a();
                this.f9784f = 1;
                if (a10.b(aVar, this) == d10) {
                    return d10;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                vb.k.b(obj);
            }
            return vb.p.f15031a;
        }
    }

    /* compiled from: PagingDataDiffer.kt */
    /* loaded from: classes.dex */
    public static final class c implements m0.b {
        public c() {
        }

        @Override // k1.m0.b
        public void a(int i10, int i11) {
            s0.this.f9781j.a(i10, i11);
        }

        @Override // k1.m0.b
        public void b(int i10, int i11) {
            s0.this.f9781j.b(i10, i11);
        }

        @Override // k1.m0.b
        public void c(int i10, int i11) {
            s0.this.f9781j.c(i10, i11);
        }

        @Override // k1.m0.b
        public void d(y yVar, boolean z10, u uVar) {
            jc.l.f(yVar, "loadType");
            jc.l.f(uVar, "loadState");
            if (jc.l.a(s0.this.f9774c.d(yVar, z10), uVar)) {
                return;
            }
            s0.this.f9774c.g(yVar, z10, uVar);
            g h10 = s0.this.f9774c.h();
            Iterator<T> it2 = s0.this.f9775d.iterator();
            while (it2.hasNext()) {
                ((ic.l) it2.next()).invoke(h10);
            }
        }
    }

    public s0(j jVar, rc.l0 l0Var) {
        jc.l.f(jVar, "differCallback");
        jc.l.f(l0Var, "mainDispatcher");
        this.f9781j = jVar;
        this.f9782k = l0Var;
        this.f9772a = m0.f9688f.a();
        a0 a0Var = new a0();
        this.f9774c = a0Var;
        this.f9775d = new CopyOnWriteArrayList<>();
        this.f9776e = new c1(false, 1, null);
        this.f9779h = new c();
        this.f9780i = uc.c0.a(a0Var.h());
        p(new a());
    }

    public final void p(ic.l<? super g, vb.p> lVar) {
        jc.l.f(lVar, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        this.f9775d.add(lVar);
        lVar.invoke(this.f9774c.h());
    }

    public final Object q(q0<T> q0Var, ac.d<? super vb.p> dVar) {
        Object c10 = c1.c(this.f9776e, 0, new b(q0Var, null), dVar, 1, null);
        return c10 == bc.c.d() ? c10 : vb.p.f15031a;
    }

    public final void r(g gVar) {
        if (jc.l.a(this.f9774c.h(), gVar)) {
            return;
        }
        this.f9774c.e(gVar);
        Iterator<T> it2 = this.f9775d.iterator();
        while (it2.hasNext()) {
            ((ic.l) it2.next()).invoke(gVar);
        }
    }

    public final T s(int i10) {
        this.f9777f = true;
        this.f9778g = i10;
        g1 g1Var = this.f9773b;
        if (g1Var != null) {
            g1Var.b(this.f9772a.g(i10));
        }
        return this.f9772a.l(i10);
    }

    public final uc.f<g> t() {
        return this.f9780i;
    }

    public final int u() {
        return this.f9772a.a();
    }

    public abstract boolean v();

    public abstract Object w(c0<T> c0Var, c0<T> c0Var2, g gVar, int i10, ic.a<vb.p> aVar, ac.d<? super Integer> dVar);

    public final void x() {
        g1 g1Var = this.f9773b;
        if (g1Var != null) {
            g1Var.c();
        }
    }

    public final void y(ic.l<? super g, vb.p> lVar) {
        jc.l.f(lVar, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        this.f9775d.remove(lVar);
    }

    public final void z() {
        g1 g1Var = this.f9773b;
        if (g1Var != null) {
            g1Var.a();
        }
    }
}
