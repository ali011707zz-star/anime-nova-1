package x5;

import android.app.Application;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.j0;
import androidx.lifecycle.y;
import com.anslayer.api.endpoint.CustomListEndPoint;
import jc.l;
import jc.m;
import k1.o0;
import k1.p0;
import k1.q0;
import k1.t0;
import vb.p;

/* compiled from: CustomListViewModel.kt */
/* loaded from: classes.dex */
public final class k extends androidx.lifecycle.b {

    /* renamed from: b, reason: collision with root package name */
    public y<g7.a<p>> f16031b;

    /* renamed from: c, reason: collision with root package name */
    public final LiveData<g7.a<p>> f16032c;

    /* renamed from: d, reason: collision with root package name */
    public y<g7.a<p>> f16033d;

    /* renamed from: e, reason: collision with root package name */
    public final LiveData<g7.a<p>> f16034e;

    /* renamed from: f, reason: collision with root package name */
    public final CustomListEndPoint f16035f;

    /* renamed from: g, reason: collision with root package name */
    public uc.f<q0<p4.j>> f16036g;

    /* compiled from: CustomListViewModel.kt */
    @cc.f(c = "com.anslayer.ui.customlist.CustomListViewModel$addAnimeToCustomList$1", f = "CustomListViewModel.kt", l = {53}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class a extends cc.k implements ic.p<rc.q0, ac.d<? super p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f16037f;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ p4.j f16039h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ long f16040i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(p4.j jVar, long j10, ac.d<? super a> dVar) {
            super(2, dVar);
            this.f16039h = jVar;
            this.f16040i = j10;
        }

        @Override // cc.a
        public final ac.d<p> create(Object obj, ac.d<?> dVar) {
            return new a(this.f16039h, this.f16040i, dVar);
        }

        @Override // ic.p
        public final Object invoke(rc.q0 q0Var, ac.d<? super p> dVar) {
            return ((a) create(q0Var, dVar)).invokeSuspend(p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f16037f;
            try {
                if (i10 == 0) {
                    vb.k.b(obj);
                    CustomListEndPoint h10 = k.this.h();
                    long c10 = this.f16039h.c();
                    long j10 = this.f16040i;
                    this.f16037f = 1;
                    if (h10.addAnimeToCustomList(c10, j10, this) == d10) {
                        return d10;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    vb.k.b(obj);
                }
                this.f16039h.g(true);
                k.this.f16031b.o(new g7.a(p.f15031a));
            } catch (Exception unused) {
            }
            return p.f15031a;
        }
    }

    /* compiled from: CustomListViewModel.kt */
    /* loaded from: classes.dex */
    public static final class b extends m implements ic.a<t0<Integer, p4.j>> {

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ long f16042g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(long j10) {
            super(0);
            this.f16042g = j10;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final t0<Integer, p4.j> invoke() {
            return new j(k.this.h(), this.f16042g);
        }
    }

    /* compiled from: CustomListViewModel.kt */
    @cc.f(c = "com.anslayer.ui.customlist.CustomListViewModel$removeAnimeFromCustomList$1", f = "CustomListViewModel.kt", l = {66}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class c extends cc.k implements ic.p<rc.q0, ac.d<? super p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f16043f;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ p4.j f16045h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ long f16046i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(p4.j jVar, long j10, ac.d<? super c> dVar) {
            super(2, dVar);
            this.f16045h = jVar;
            this.f16046i = j10;
        }

        @Override // cc.a
        public final ac.d<p> create(Object obj, ac.d<?> dVar) {
            return new c(this.f16045h, this.f16046i, dVar);
        }

        @Override // ic.p
        public final Object invoke(rc.q0 q0Var, ac.d<? super p> dVar) {
            return ((c) create(q0Var, dVar)).invokeSuspend(p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f16043f;
            try {
                if (i10 == 0) {
                    vb.k.b(obj);
                    CustomListEndPoint h10 = k.this.h();
                    long c10 = this.f16045h.c();
                    String valueOf = String.valueOf(this.f16046i);
                    this.f16043f = 1;
                    if (h10.deleteAnimeFromCustomList(c10, valueOf, this) == d10) {
                        return d10;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    vb.k.b(obj);
                }
                this.f16045h.g(false);
                k.this.f16033d.o(new g7.a(p.f15031a));
            } catch (Exception unused) {
            }
            return p.f15031a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(Application application) {
        super(application);
        l.f(application, "application");
        y<g7.a<p>> yVar = new y<>();
        this.f16031b = yVar;
        this.f16032c = yVar;
        y<g7.a<p>> yVar2 = new y<>();
        this.f16033d = yVar2;
        this.f16034e = yVar2;
        this.f16035f = (CustomListEndPoint) z3.b.f17284d.getInstance(application).b(CustomListEndPoint.class);
    }

    public final void d(p4.j jVar, long j10) {
        l.f(jVar, "customList");
        if (j10 != -1) {
            rc.k.d(j0.a(this), null, null, new a(jVar, j10, null), 3, null);
            return;
        }
        throw new IllegalStateException("animeId are required");
    }

    public final LiveData<g7.a<p>> e() {
        return this.f16032c;
    }

    public final uc.f<q0<p4.j>> f(long j10) {
        uc.f<q0<p4.j>> fVar = this.f16036g;
        if (fVar != null) {
            return fVar;
        }
        uc.f<q0<p4.j>> a10 = k1.d.a(new o0(new p0(20, 5, false, 20, 0, 0, 48, null), null, new b(j10), 2, null).a(), j0.a(this));
        this.f16036g = a10;
        return a10;
    }

    public final LiveData<g7.a<p>> g() {
        return this.f16034e;
    }

    public final CustomListEndPoint h() {
        return this.f16035f;
    }

    public final void i(p4.j jVar, long j10) {
        l.f(jVar, "customList");
        if (j10 != -1) {
            rc.k.d(j0.a(this), null, null, new c(jVar, j10, null), 3, null);
            return;
        }
        throw new IllegalStateException("animeId are required");
    }
}
