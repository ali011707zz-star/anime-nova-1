package l1;

import cc.k;
import ic.q;
import java.util.concurrent.atomic.AtomicBoolean;
import jc.l;
import rc.a0;
import rc.c0;
import rc.q0;
import tc.i;
import tc.x;
import vb.p;

/* compiled from: StoreRealActor.kt */
/* loaded from: classes.dex */
public abstract class h<T> {

    /* renamed from: a, reason: collision with root package name */
    public final tc.f<Object> f10277a;

    /* renamed from: b, reason: collision with root package name */
    public final a0<p> f10278b;

    /* renamed from: c, reason: collision with root package name */
    public final AtomicBoolean f10279c;

    /* renamed from: e, reason: collision with root package name */
    public static final c f10276e = new c(null);

    /* renamed from: d, reason: collision with root package name */
    public static final Object f10275d = new Object();

    /* compiled from: StoreRealActor.kt */
    @cc.f(c = "androidx.paging.multicast.StoreRealActor$1", f = "StoreRealActor.kt", l = {45}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class a extends k implements ic.p<Object, ac.d<? super p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public /* synthetic */ Object f10280f;

        /* renamed from: g, reason: collision with root package name */
        public int f10281g;

        public a(ac.d dVar) {
            super(2, dVar);
        }

        @Override // cc.a
        public final ac.d<p> create(Object obj, ac.d<?> dVar) {
            l.f(dVar, "completion");
            a aVar = new a(dVar);
            aVar.f10280f = obj;
            return aVar;
        }

        @Override // ic.p
        public final Object invoke(Object obj, ac.d<? super p> dVar) {
            return ((a) create(obj, dVar)).invokeSuspend(p.f15031a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f10281g;
            if (i10 == 0) {
                vb.k.b(obj);
                Object obj2 = this.f10280f;
                if (obj2 == h.f10276e.a()) {
                    h.this.d();
                } else {
                    h hVar = h.this;
                    this.f10281g = 1;
                    if (hVar.e(obj2, this) == d10) {
                        return d10;
                    }
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                vb.k.b(obj);
            }
            return p.f15031a;
        }
    }

    /* compiled from: StoreRealActor.kt */
    @cc.f(c = "androidx.paging.multicast.StoreRealActor$2", f = "StoreRealActor.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class b extends k implements q<uc.g<? super Object>, Throwable, ac.d<? super p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f10283f;

        public b(ac.d dVar) {
            super(3, dVar);
        }

        public final ac.d<p> f(uc.g<Object> gVar, Throwable th, ac.d<? super p> dVar) {
            l.f(gVar, "$this$create");
            l.f(dVar, "continuation");
            return new b(dVar);
        }

        @Override // ic.q
        public final Object i(uc.g<? super Object> gVar, Throwable th, ac.d<? super p> dVar) {
            return ((b) f(gVar, th, dVar)).invokeSuspend(p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            bc.c.d();
            if (this.f10283f != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            vb.k.b(obj);
            h.this.d();
            return p.f15031a;
        }
    }

    /* compiled from: StoreRealActor.kt */
    /* loaded from: classes.dex */
    public static final class c {
        public c() {
        }

        public final Object a() {
            return h.f10275d;
        }

        public /* synthetic */ c(jc.g gVar) {
            this();
        }
    }

    /* compiled from: StoreRealActor.kt */
    @cc.f(c = "androidx.paging.multicast.StoreRealActor", f = "StoreRealActor.kt", l = {74, 76}, m = "close")
    /* loaded from: classes.dex */
    public static final class d extends cc.d {

        /* renamed from: f, reason: collision with root package name */
        public /* synthetic */ Object f10285f;

        /* renamed from: g, reason: collision with root package name */
        public int f10286g;

        /* renamed from: i, reason: collision with root package name */
        public Object f10288i;

        public d(ac.d dVar) {
            super(dVar);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            this.f10285f = obj;
            this.f10286g |= Integer.MIN_VALUE;
            return h.this.c(this);
        }
    }

    public h(q0 q0Var) {
        l.f(q0Var, "scope");
        tc.f<Object> b10 = i.b(0, null, null, 6, null);
        this.f10277a = b10;
        this.f10278b = c0.b(null, 1, null);
        this.f10279c = new AtomicBoolean(false);
        uc.h.t(uc.h.v(uc.h.w(uc.h.i(b10), new a(null)), new b(null)), q0Var);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x005c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object c(ac.d<? super p> dVar) {
        d dVar2;
        Object d10;
        int i10;
        h<T> hVar;
        a0<p> a0Var;
        if (dVar instanceof d) {
            dVar2 = (d) dVar;
            int i11 = dVar2.f10286g;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                dVar2.f10286g = i11 - Integer.MIN_VALUE;
                Object obj = dVar2.f10285f;
                d10 = bc.c.d();
                i10 = dVar2.f10286g;
                if (i10 != 0) {
                    vb.k.b(obj);
                    tc.f<Object> fVar = this.f10277a;
                    Object obj2 = f10275d;
                    dVar2.f10288i = this;
                    dVar2.f10286g = 1;
                    if (fVar.p(obj2, dVar2) == d10) {
                        return d10;
                    }
                    hVar = this;
                } else {
                    if (i10 != 1) {
                        if (i10 != 2) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        vb.k.b(obj);
                        return p.f15031a;
                    }
                    hVar = (h) dVar2.f10288i;
                    vb.k.b(obj);
                }
                a0Var = hVar.f10278b;
                dVar2.f10288i = null;
                dVar2.f10286g = 2;
                if (a0Var.k0(dVar2) == d10) {
                    return d10;
                }
                return p.f15031a;
            }
        }
        dVar2 = new d(dVar);
        Object obj3 = dVar2.f10285f;
        d10 = bc.c.d();
        i10 = dVar2.f10286g;
        if (i10 != 0) {
        }
        a0Var = hVar.f10278b;
        dVar2.f10288i = null;
        dVar2.f10286g = 2;
        if (a0Var.k0(dVar2) == d10) {
        }
        return p.f15031a;
    }

    public final void d() {
        if (this.f10279c.compareAndSet(false, true)) {
            try {
                f();
            } finally {
                x.a.a(this.f10277a, null, 1, null);
                this.f10278b.N(p.f15031a);
            }
        }
    }

    public abstract Object e(T t10, ac.d<? super p> dVar);

    public void f() {
    }

    public final Object g(T t10, ac.d<? super p> dVar) {
        Object p10 = this.f10277a.p(t10, dVar);
        return p10 == bc.c.d() ? p10 : p.f15031a;
    }
}
