package z5;

import android.content.Context;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.i0;
import androidx.lifecycle.j0;
import androidx.lifecycle.l0;
import androidx.lifecycle.y;
import com.anslayer.api.endpoint.CustomListEndPoint;
import com.twitter.sdk.android.core.identity.AuthHandler;
import g7.c;
import k1.o0;
import k1.p0;
import k1.q0;
import k1.t0;
import vb.p;

/* compiled from: CustomListDetailsViewModel.kt */
/* loaded from: classes.dex */
public final class n extends i0 {

    /* renamed from: a, reason: collision with root package name */
    public final CustomListEndPoint f17394a;

    /* renamed from: b, reason: collision with root package name */
    public final long f17395b;

    /* renamed from: c, reason: collision with root package name */
    public String f17396c;

    /* renamed from: d, reason: collision with root package name */
    public String f17397d;

    /* renamed from: e, reason: collision with root package name */
    public final long f17398e;

    /* renamed from: f, reason: collision with root package name */
    public final vb.e f17399f;

    /* renamed from: g, reason: collision with root package name */
    public y<g7.a<g7.c<p>>> f17400g;

    /* renamed from: h, reason: collision with root package name */
    public final LiveData<g7.a<g7.c<p>>> f17401h;

    /* renamed from: i, reason: collision with root package name */
    public y<g7.a<g7.c<p>>> f17402i;

    /* renamed from: j, reason: collision with root package name */
    public final LiveData<g7.a<g7.c<p>>> f17403j;

    /* renamed from: k, reason: collision with root package name */
    public final vb.e f17404k;

    /* renamed from: l, reason: collision with root package name */
    public final uc.f<q0<p4.p>> f17405l;

    /* compiled from: CustomListDetailsViewModel.kt */
    /* loaded from: classes.dex */
    public static final class a extends l0.d {

        /* renamed from: b, reason: collision with root package name */
        public final k f17406b;

        /* renamed from: c, reason: collision with root package name */
        public final long f17407c;

        /* renamed from: d, reason: collision with root package name */
        public final String f17408d;

        /* renamed from: e, reason: collision with root package name */
        public final String f17409e;

        /* renamed from: f, reason: collision with root package name */
        public final long f17410f;

        /* renamed from: g, reason: collision with root package name */
        public final CustomListEndPoint f17411g;

        public a(k kVar) {
            jc.l.f(kVar, "fragment");
            this.f17406b = kVar;
            this.f17407c = kVar.requireArguments().getLong("id", -1L);
            this.f17408d = kVar.requireArguments().getString("title");
            this.f17409e = kVar.requireArguments().getString("desc");
            this.f17410f = kVar.requireArguments().getLong(AuthHandler.EXTRA_USER_ID);
            Context requireContext = kVar.requireContext();
            jc.l.e(requireContext, "fragment.requireContext()");
            this.f17411g = (CustomListEndPoint) z3.b.f17284d.getInstance(requireContext).b(CustomListEndPoint.class);
        }

        @Override // androidx.lifecycle.l0.d, androidx.lifecycle.l0.b
        public <T extends i0> T a(Class<T> cls) {
            jc.l.f(cls, "modelClass");
            long j10 = this.f17407c;
            if (j10 != -1) {
                CustomListEndPoint customListEndPoint = this.f17411g;
                String str = this.f17408d;
                if (str == null) {
                    str = "";
                }
                return new n(customListEndPoint, j10, str, this.f17409e, this.f17410f);
            }
            throw new IllegalStateException("customList id are required");
        }
    }

    /* compiled from: CustomListDetailsViewModel.kt */
    /* loaded from: classes.dex */
    public static final class b extends jc.m implements ic.a<t0<Integer, p4.p>> {
        public b() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final t0<Integer, p4.p> invoke() {
            return new m(n.this.m(), n.this.k(), n.this.l());
        }
    }

    /* compiled from: CustomListDetailsViewModel.kt */
    @cc.f(c = "com.anslayer.ui.customlist.details.CustomListDetailsViewModel$deleteList$1", f = "CustomListDetailsViewModel.kt", l = {65}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class c extends cc.k implements ic.p<rc.q0, ac.d<? super p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f17413f;

        public c(ac.d<? super c> dVar) {
            super(2, dVar);
        }

        @Override // cc.a
        public final ac.d<p> create(Object obj, ac.d<?> dVar) {
            return new c(dVar);
        }

        @Override // ic.p
        public final Object invoke(rc.q0 q0Var, ac.d<? super p> dVar) {
            return ((c) create(q0Var, dVar)).invokeSuspend(p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f17413f;
            try {
                if (i10 == 0) {
                    vb.k.b(obj);
                    CustomListEndPoint m10 = n.this.m();
                    long k10 = n.this.k();
                    this.f17413f = 1;
                    if (m10.deleteCustomList(k10, this) == d10) {
                        return d10;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    vb.k.b(obj);
                }
                n.this.f17402i.o(new g7.a(new c.C0133c(p.f15031a)));
            } catch (Exception e10) {
                n.this.f17402i.o(new g7.a(new c.a(e10)));
            }
            return p.f15031a;
        }
    }

    /* compiled from: CustomListDetailsViewModel.kt */
    @cc.f(c = "com.anslayer.ui.customlist.details.CustomListDetailsViewModel$deleteUserAnime$1", f = "CustomListDetailsViewModel.kt", l = {54}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class d extends cc.k implements ic.p<rc.q0, ac.d<? super p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f17415f;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ String f17417h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(String str, ac.d<? super d> dVar) {
            super(2, dVar);
            this.f17417h = str;
        }

        @Override // cc.a
        public final ac.d<p> create(Object obj, ac.d<?> dVar) {
            return new d(this.f17417h, dVar);
        }

        @Override // ic.p
        public final Object invoke(rc.q0 q0Var, ac.d<? super p> dVar) {
            return ((d) create(q0Var, dVar)).invokeSuspend(p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f17415f;
            try {
                if (i10 == 0) {
                    vb.k.b(obj);
                    CustomListEndPoint m10 = n.this.m();
                    long k10 = n.this.k();
                    String str = this.f17417h;
                    this.f17415f = 1;
                    if (m10.deleteAnimeFromCustomList(k10, str, this) == d10) {
                        return d10;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    vb.k.b(obj);
                }
                n.this.f17400g.o(new g7.a(new c.C0133c(p.f15031a)));
            } catch (Exception e10) {
                n.this.f17400g.o(new g7.a(new c.a(e10)));
            }
            return p.f15031a;
        }
    }

    /* compiled from: CustomListDetailsViewModel.kt */
    /* loaded from: classes.dex */
    public static final class e extends jc.m implements ic.a<Boolean> {
        public e() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke() {
            return Boolean.valueOf(n.this.l().N().get().D() != n.this.o());
        }
    }

    /* compiled from: Injekt.kt */
    /* loaded from: classes.dex */
    public static final class f extends jc.m implements ic.a<f4.d> {

        /* renamed from: f, reason: collision with root package name */
        public static final f f17419f = new f();

        /* compiled from: TypeInfo.kt */
        /* loaded from: classes.dex */
        public static final class a extends zd.a<f4.d> {
        }

        public f() {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, f4.d] */
        @Override // ic.a
        public final f4.d invoke() {
            return yd.a.a().a(new a().getType());
        }
    }

    public n(CustomListEndPoint customListEndPoint, long j10, String str, String str2, long j11) {
        jc.l.f(customListEndPoint, "service");
        jc.l.f(str, "title");
        this.f17394a = customListEndPoint;
        this.f17395b = j10;
        this.f17396c = str;
        this.f17397d = str2;
        this.f17398e = j11;
        this.f17399f = vb.f.a(f.f17419f);
        y<g7.a<g7.c<p>>> yVar = new y<>();
        this.f17400g = yVar;
        this.f17401h = yVar;
        y<g7.a<g7.c<p>>> yVar2 = new y<>();
        this.f17402i = yVar2;
        this.f17403j = yVar2;
        this.f17404k = vb.f.a(new e());
        this.f17405l = k1.d.a(new o0(new p0(30, 5, false, 30, 0, 0, 48, null), null, new b(), 2, null).a(), j0.a(this));
    }

    public final void d() {
        rc.k.d(j0.a(this), null, null, new c(null), 3, null);
    }

    public final void e(String str) {
        jc.l.f(str, "animeIds");
        rc.k.d(j0.a(this), null, null, new d(str, null), 3, null);
    }

    public final uc.f<q0<p4.p>> f() {
        return this.f17405l;
    }

    public final LiveData<g7.a<g7.c<p>>> g() {
        return this.f17401h;
    }

    public final LiveData<g7.a<g7.c<p>>> h() {
        return this.f17403j;
    }

    public final String i() {
        return this.f17397d;
    }

    public final boolean j() {
        return ((Boolean) this.f17404k.getValue()).booleanValue();
    }

    public final long k() {
        return this.f17395b;
    }

    public final f4.d l() {
        return (f4.d) this.f17399f.getValue();
    }

    public final CustomListEndPoint m() {
        return this.f17394a;
    }

    public final String n() {
        return this.f17396c;
    }

    public final long o() {
        return this.f17398e;
    }

    public final void p(String str) {
        this.f17397d = str;
    }

    public final void q(String str) {
        jc.l.f(str, "<set-?>");
        this.f17396c = str;
    }

    public final void r() {
        q4.a aVar;
        f4.d l10 = l();
        if (l().H()) {
            aVar = q4.a.GRID;
        } else {
            aVar = q4.a.LIST;
        }
        l10.c0(aVar);
    }
}
