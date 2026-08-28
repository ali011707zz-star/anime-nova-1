package k5;

import android.app.Application;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.j0;
import androidx.lifecycle.y;
import com.anslayer.api.endpoint.AuthEndpoint;
import com.anslayer.api.endpoint.UserEndpoint;
import com.google.android.gms.common.Scopes;
import ic.p;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import k5.l;
import k5.m;
import okhttp3.ResponseBody;
import rc.g1;
import rc.l0;
import rc.q0;
import rd.q;
import retrofit2.HttpException;

/* compiled from: AuthSelectionViewModel.kt */
/* loaded from: classes.dex */
public final class k extends androidx.lifecycle.b {

    /* renamed from: b, reason: collision with root package name */
    public final Application f9950b;

    /* renamed from: c, reason: collision with root package name */
    public final vb.e f9951c;

    /* renamed from: d, reason: collision with root package name */
    public final vb.e f9952d;

    /* renamed from: e, reason: collision with root package name */
    public final vb.e f9953e;

    /* renamed from: f, reason: collision with root package name */
    public final vb.e f9954f;

    /* renamed from: g, reason: collision with root package name */
    public y<m> f9955g;

    /* renamed from: h, reason: collision with root package name */
    public y<l> f9956h;

    /* renamed from: i, reason: collision with root package name */
    public final vb.e f9957i;

    /* renamed from: j, reason: collision with root package name */
    public final y<g7.a<g7.c<String>>> f9958j;

    /* renamed from: k, reason: collision with root package name */
    public final LiveData<g7.a<g7.c<String>>> f9959k;

    /* compiled from: AuthSelectionViewModel.kt */
    /* loaded from: classes.dex */
    public static final class a extends jc.m implements ic.a<AuthEndpoint> {
        public a() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final AuthEndpoint invoke() {
            return (AuthEndpoint) z3.b.f17284d.getInstance(k.this.j()).b(AuthEndpoint.class);
        }
    }

    /* compiled from: AuthSelectionViewModel.kt */
    @cc.f(c = "com.anslayer.ui.authintication.AuthSelectionViewModel$checkEmailStatus$1", f = "AuthSelectionViewModel.kt", l = {106}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class b extends cc.k implements p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f9961f;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ String f9963h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(String str, ac.d<? super b> dVar) {
            super(2, dVar);
            this.f9963h = str;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new b(this.f9963h, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((b) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f9961f;
            try {
                if (i10 == 0) {
                    vb.k.b(obj);
                    UserEndpoint q10 = k.this.q();
                    String str = this.f9963h;
                    this.f9961f = 1;
                    if (q10.userExists(str, this) == d10) {
                        return d10;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    vb.k.b(obj);
                }
                k.this.f9956h.o(new l.b(this.f9963h));
            } catch (Exception e10) {
                if (!(e10 instanceof HttpException) || ((HttpException) e10).a() != 404) {
                    k.this.f9956h.o(l.a.f9981a);
                } else {
                    k.this.f9956h.o(new l.c(this.f9963h));
                }
            }
            return vb.p.f15031a;
        }
    }

    /* compiled from: AuthSelectionViewModel.kt */
    /* loaded from: classes.dex */
    public static final class c extends jc.m implements ic.a<String> {
        public c() {
            super(0);
        }

        @Override // ic.a
        public final String invoke() {
            return k7.b.e(k.this.j());
        }
    }

    /* compiled from: AuthSelectionViewModel.kt */
    @cc.f(c = "com.anslayer.ui.authintication.AuthSelectionViewModel$googleLogin$1", f = "AuthSelectionViewModel.kt", l = {95, 98}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class d extends cc.k implements p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f9965f;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ String f9967h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(String str, ac.d<? super d> dVar) {
            super(2, dVar);
            this.f9967h = str;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new d(this.f9967h, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((d) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f9965f;
            try {
            } catch (Exception e10) {
                k kVar = k.this;
                this.f9965f = 2;
                if (kVar.s(e10, this) == d10) {
                    return d10;
                }
            }
            if (i10 == 0) {
                vb.k.b(obj);
                AuthEndpoint k10 = k.this.k();
                String str = this.f9967h;
                String l10 = k.this.l();
                this.f9965f = 1;
                obj = k10.googleLogin(str, l10, this);
                if (obj == d10) {
                    return d10;
                }
            } else {
                if (i10 != 1) {
                    if (i10 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    vb.k.b(obj);
                    return vb.p.f15031a;
                }
                vb.k.b(obj);
            }
            Object a10 = ((n4.c) obj).a();
            jc.l.c(a10);
            k.this.t((t4.a) a10);
            return vb.p.f15031a;
        }
    }

    /* compiled from: GsonBuilder.kt */
    /* loaded from: classes.dex */
    public static final class e extends oa.a<ja.n> {
    }

    /* compiled from: AuthSelectionViewModel.kt */
    @cc.f(c = "com.anslayer.ui.authintication.AuthSelectionViewModel", f = "AuthSelectionViewModel.kt", l = {136}, m = "onSocialLoginFailed")
    /* loaded from: classes.dex */
    public static final class f extends cc.d {

        /* renamed from: f, reason: collision with root package name */
        public Object f9968f;

        /* renamed from: g, reason: collision with root package name */
        public /* synthetic */ Object f9969g;

        /* renamed from: i, reason: collision with root package name */
        public int f9971i;

        public f(ac.d<? super f> dVar) {
            super(dVar);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            this.f9969g = obj;
            this.f9971i |= Integer.MIN_VALUE;
            return k.this.s(null, this);
        }
    }

    /* compiled from: AuthSelectionViewModel.kt */
    @cc.f(c = "com.anslayer.ui.authintication.AuthSelectionViewModel$onSocialLoginFailed$error$1", f = "AuthSelectionViewModel.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class g extends cc.k implements p<q0, ac.d<? super String>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f9972f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ Exception f9973g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(Exception exc, ac.d<? super g> dVar) {
            super(2, dVar);
            this.f9973g = exc;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new g(this.f9973g, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super String> dVar) {
            return ((g) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            q<?> c10;
            ResponseBody d10;
            bc.c.d();
            if (this.f9972f != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            vb.k.b(obj);
            Exception exc = this.f9973g;
            if (!(exc instanceof HttpException) || (c10 = ((HttpException) exc).c()) == null || (d10 = c10.d()) == null) {
                return null;
            }
            return d10.string();
        }
    }

    /* compiled from: Injekt.kt */
    /* loaded from: classes.dex */
    public static final class h extends jc.m implements ic.a<f4.d> {

        /* renamed from: f, reason: collision with root package name */
        public static final h f9974f = new h();

        /* compiled from: TypeInfo.kt */
        /* loaded from: classes.dex */
        public static final class a extends zd.a<f4.d> {
        }

        public h() {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, f4.d] */
        @Override // ic.a
        public final f4.d invoke() {
            return yd.a.a().a(new a().getType());
        }
    }

    /* compiled from: Injekt.kt */
    /* loaded from: classes.dex */
    public static final class i extends jc.m implements ic.a<ja.f> {

        /* renamed from: f, reason: collision with root package name */
        public static final i f9975f = new i();

        /* compiled from: TypeInfo.kt */
        /* loaded from: classes.dex */
        public static final class a extends zd.a<ja.f> {
        }

        public i() {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, ja.f] */
        @Override // ic.a
        public final ja.f invoke() {
            return yd.a.a().a(new a().getType());
        }
    }

    /* compiled from: AuthSelectionViewModel.kt */
    @cc.f(c = "com.anslayer.ui.authintication.AuthSelectionViewModel$twitterLogin$1", f = "AuthSelectionViewModel.kt", l = {82, 85}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class j extends cc.k implements p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f9976f;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ String f9978h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ String f9979i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public j(String str, String str2, ac.d<? super j> dVar) {
            super(2, dVar);
            this.f9978h = str;
            this.f9979i = str2;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new j(this.f9978h, this.f9979i, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((j) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f9976f;
            try {
            } catch (Exception e10) {
                k kVar = k.this;
                this.f9976f = 2;
                if (kVar.s(e10, this) == d10) {
                    return d10;
                }
            }
            if (i10 == 0) {
                vb.k.b(obj);
                AuthEndpoint k10 = k.this.k();
                String str = this.f9978h;
                String str2 = this.f9979i;
                String l10 = k.this.l();
                this.f9976f = 1;
                obj = k10.twitterLogin(str, str2, l10, this);
                if (obj == d10) {
                    return d10;
                }
            } else {
                if (i10 != 1) {
                    if (i10 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    vb.k.b(obj);
                    return vb.p.f15031a;
                }
                vb.k.b(obj);
            }
            Object a10 = ((n4.c) obj).a();
            jc.l.c(a10);
            k.this.t((t4.a) a10);
            return vb.p.f15031a;
        }
    }

    /* compiled from: AuthSelectionViewModel.kt */
    /* renamed from: k5.k$k, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0209k extends jc.m implements ic.a<UserEndpoint> {
        public C0209k() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UserEndpoint invoke() {
            return (UserEndpoint) z3.b.f17284d.getInstance(k.this.j()).b(UserEndpoint.class);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(Application application) {
        super(application);
        jc.l.f(application, "app");
        this.f9950b = application;
        this.f9951c = vb.f.a(new C0209k());
        this.f9952d = vb.f.a(new a());
        this.f9953e = vb.f.a(new c());
        this.f9954f = vb.f.a(h.f9974f);
        this.f9955g = new y<>();
        this.f9956h = new y<>();
        this.f9957i = vb.f.a(i.f9975f);
        y<g7.a<g7.c<String>>> yVar = new y<>();
        this.f9958j = yVar;
        this.f9959k = yVar;
    }

    public final void h(String str) {
        jc.l.f(str, Scopes.EMAIL);
        rc.k.d(j0.a(this), null, null, new b(str, null), 3, null);
    }

    public final LiveData<g7.a<g7.c<String>>> i() {
        return this.f9959k;
    }

    public final Application j() {
        return this.f9950b;
    }

    public final AuthEndpoint k() {
        return (AuthEndpoint) this.f9952d.getValue();
    }

    public final String l() {
        return (String) this.f9953e.getValue();
    }

    public final y<l> m() {
        return this.f9956h;
    }

    public final ja.f n() {
        return (ja.f) this.f9957i.getValue();
    }

    public final f4.d o() {
        return (f4.d) this.f9954f.getValue();
    }

    public final y<m> p() {
        return this.f9955g;
    }

    public final UserEndpoint q() {
        return (UserEndpoint) this.f9951c.getValue();
    }

    public final void r(String str) {
        this.f9955g.o(m.b.f9985a);
        o().S("LOGIN_WITH_GOOGLE");
        rc.k.d(j0.a(this), null, null, new d(str, null), 3, null);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(13:1|(2:3|(10:5|6|(1:(1:9)(2:24|25))(2:26|(1:28)(1:29))|10|11|12|(1:22)(1:16)|17|18|19))|30|6|(0)(0)|10|11|12|(1:14)|22|17|18|19) */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00a7, code lost:
    
        r6.f9955g.o(new k5.m.a(null));
     */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object s(Exception exc, ac.d<? super vb.p> dVar) {
        f fVar;
        int i10;
        k kVar;
        Type type;
        Type b10;
        if (dVar instanceof f) {
            fVar = (f) dVar;
            int i11 = fVar.f9971i;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                fVar.f9971i = i11 - Integer.MIN_VALUE;
                Object obj = fVar.f9969g;
                Object d10 = bc.c.d();
                i10 = fVar.f9971i;
                if (i10 != 0) {
                    vb.k.b(obj);
                    l0 b11 = g1.b();
                    g gVar = new g(exc, null);
                    fVar.f9968f = this;
                    fVar.f9971i = 1;
                    obj = rc.i.g(b11, gVar, fVar);
                    if (obj == d10) {
                        return d10;
                    }
                    kVar = this;
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    kVar = (k) fVar.f9968f;
                    vb.k.b(obj);
                }
                String str = (String) obj;
                ja.f n10 = kVar.n();
                jc.l.c(str);
                type = new e().getType();
                jc.l.b(type, "object : TypeToken<T>() {} .type");
                if (!(type instanceof ParameterizedType) && com.github.salomonbrys.kotson.c.a((ParameterizedType) type)) {
                    b10 = ((ParameterizedType) type).getRawType();
                    jc.l.b(b10, "type.rawType");
                } else {
                    b10 = com.github.salomonbrys.kotson.c.b(type);
                }
                Object l10 = n10.l(str, b10);
                jc.l.b(l10, "fromJson(json, typeToken<T>())");
                y<m> yVar = kVar.f9955g;
                ja.l l11 = ((ja.n) l10).l("detail");
                jc.l.e(l11, "message[\"detail\"]");
                yVar.o(new m.a(com.github.salomonbrys.kotson.b.f(l11)));
                return vb.p.f15031a;
            }
        }
        fVar = new f(dVar);
        Object obj2 = fVar.f9969g;
        Object d102 = bc.c.d();
        i10 = fVar.f9971i;
        if (i10 != 0) {
        }
        String str2 = (String) obj2;
        ja.f n102 = kVar.n();
        jc.l.c(str2);
        type = new e().getType();
        jc.l.b(type, "object : TypeToken<T>() {} .type");
        if (!(type instanceof ParameterizedType)) {
        }
        b10 = com.github.salomonbrys.kotson.c.b(type);
        Object l102 = n102.l(str2, b10);
        jc.l.b(l102, "fromJson(json, typeToken<T>())");
        y<m> yVar2 = kVar.f9955g;
        ja.l l112 = ((ja.n) l102).l("detail");
        jc.l.e(l112, "message[\"detail\"]");
        yVar2.o(new m.a(com.github.salomonbrys.kotson.b.f(l112)));
        return vb.p.f15031a;
    }

    public final void t(t4.a aVar) {
        o().c(true);
        o().T(aVar.b().D());
        o().d0(true);
        t4.b bVar = new t4.b(0L, aVar.a(), aVar.c(), 0L, aVar.f(), aVar.e(), aVar.d(), 9, null);
        bVar.a(System.currentTimeMillis());
        String t10 = n().t(bVar);
        o().N().set(aVar.b());
        f4.d o10 = o();
        jc.l.e(t10, "jsonStrAuth");
        o10.R(t10);
        this.f9955g.o(m.c.f9986a);
    }

    public final void u(String str, String str2) {
        this.f9955g.o(m.b.f9985a);
        o().S("LOGIN_WITH_TWITTER");
        rc.k.d(j0.a(this), null, null, new j(str, str2, null), 3, null);
    }
}
