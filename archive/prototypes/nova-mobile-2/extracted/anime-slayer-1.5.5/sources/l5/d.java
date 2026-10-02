package l5;

import android.content.Context;
import android.os.Bundle;
import cc.f;
import cc.k;
import com.anslayer.R;
import com.anslayer.api.endpoint.AuthEndpoint;
import ic.p;
import io.wax911.support.base.dao.SupportRepository;
import io.wax911.support.util.InstanceUtilNoArg;
import ja.l;
import ja.n;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import jc.g;
import jc.m;
import okhttp3.ResponseBody;
import rc.g1;
import rc.i;
import rc.l0;
import rc.n2;
import rc.q0;
import rc.v1;
import rc.y0;
import rd.q;
import retrofit2.HttpException;

/* compiled from: LoginRepository.kt */
/* loaded from: classes.dex */
public final class d extends SupportRepository<Bundle, t4.a> {

    /* renamed from: b, reason: collision with root package name */
    public static final a f10435b = new a(null);

    /* renamed from: a, reason: collision with root package name */
    public final vb.e f10436a;

    /* compiled from: LoginRepository.kt */
    /* loaded from: classes.dex */
    public static final class a extends InstanceUtilNoArg<d> {

        /* compiled from: LoginRepository.kt */
        /* renamed from: l5.d$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0237a extends m implements ic.a<d> {

            /* renamed from: f, reason: collision with root package name */
            public static final C0237a f10437f = new C0237a();

            public C0237a() {
                super(0);
            }

            @Override // ic.a
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final d invoke() {
                return new d(null);
            }
        }

        public a() {
            super(C0237a.f10437f);
        }

        public /* synthetic */ a(g gVar) {
            this();
        }
    }

    /* compiled from: LoginRepository.kt */
    @f(c = "com.anslayer.ui.authintication.login.LoginRepository$createNetworkClientRequest$1", f = "LoginRepository.kt", l = {38, 59, 63, 66, 68, 70}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class b extends k implements p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f10438f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ Context f10439g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ Bundle f10440h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ d f10441i;

        /* compiled from: LoginRepository.kt */
        @f(c = "com.anslayer.ui.authintication.login.LoginRepository$createNetworkClientRequest$1$1", f = "LoginRepository.kt", l = {}, m = "invokeSuspend")
        /* loaded from: classes.dex */
        public static final class a extends k implements p<q0, ac.d<? super vb.p>, Object> {

            /* renamed from: f, reason: collision with root package name */
            public int f10442f;

            /* renamed from: g, reason: collision with root package name */
            public final /* synthetic */ Context f10443g;

            /* renamed from: h, reason: collision with root package name */
            public final /* synthetic */ n f10444h;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(Context context, n nVar, ac.d<? super a> dVar) {
                super(2, dVar);
                this.f10443g = context;
                this.f10444h = nVar;
            }

            @Override // cc.a
            public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
                return new a(this.f10443g, this.f10444h, dVar);
            }

            @Override // ic.p
            public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
                return ((a) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
            }

            @Override // cc.a
            public final Object invokeSuspend(Object obj) {
                bc.c.d();
                if (this.f10442f != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                vb.k.b(obj);
                Context context = this.f10443g;
                l l10 = this.f10444h.l("detail");
                jc.l.e(l10, "message[\"detail\"]");
                k7.b.p(context, com.github.salomonbrys.kotson.b.f(l10), 1);
                return vb.p.f15031a;
            }
        }

        /* compiled from: LoginRepository.kt */
        @f(c = "com.anslayer.ui.authintication.login.LoginRepository$createNetworkClientRequest$1$2", f = "LoginRepository.kt", l = {}, m = "invokeSuspend")
        /* renamed from: l5.d$b$b, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0238b extends k implements p<q0, ac.d<? super vb.p>, Object> {

            /* renamed from: f, reason: collision with root package name */
            public int f10445f;

            /* renamed from: g, reason: collision with root package name */
            public final /* synthetic */ Context f10446g;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0238b(Context context, ac.d<? super C0238b> dVar) {
                super(2, dVar);
                this.f10446g = context;
            }

            @Override // cc.a
            public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
                return new C0238b(this.f10446g, dVar);
            }

            @Override // ic.p
            public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
                return ((C0238b) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
            }

            @Override // cc.a
            public final Object invokeSuspend(Object obj) {
                bc.c.d();
                if (this.f10445f != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                vb.k.b(obj);
                k7.b.q(this.f10446g, R.string.text_request_error, 0, 2, null);
                return vb.p.f15031a;
            }
        }

        /* compiled from: LoginRepository.kt */
        @f(c = "com.anslayer.ui.authintication.login.LoginRepository$createNetworkClientRequest$1$error$1", f = "LoginRepository.kt", l = {}, m = "invokeSuspend")
        /* loaded from: classes.dex */
        public static final class c extends k implements p<q0, ac.d<? super String>, Object> {

            /* renamed from: f, reason: collision with root package name */
            public int f10447f;

            /* renamed from: g, reason: collision with root package name */
            public final /* synthetic */ Exception f10448g;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public c(Exception exc, ac.d<? super c> dVar) {
                super(2, dVar);
                this.f10448g = exc;
            }

            @Override // cc.a
            public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
                return new c(this.f10448g, dVar);
            }

            @Override // ic.p
            public final Object invoke(q0 q0Var, ac.d<? super String> dVar) {
                return ((c) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
            }

            @Override // cc.a
            public final Object invokeSuspend(Object obj) {
                q<?> c10;
                ResponseBody d10;
                bc.c.d();
                if (this.f10447f != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                vb.k.b(obj);
                Exception exc = this.f10448g;
                if (!(exc instanceof HttpException) || (c10 = ((HttpException) exc).c()) == null || (d10 = c10.d()) == null) {
                    return null;
                }
                return d10.string();
            }
        }

        /* compiled from: GsonBuilder.kt */
        /* renamed from: l5.d$b$d, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0239d extends oa.a<n> {
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Context context, Bundle bundle, d dVar, ac.d<? super b> dVar2) {
            super(2, dVar2);
            this.f10439g = context;
            this.f10440h = bundle;
            this.f10441i = dVar;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new b(this.f10439g, this.f10440h, this.f10441i, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((b) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:3:0x000a. Please report as an issue. */
        /* JADX WARN: Removed duplicated region for block: B:13:0x0173 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:31:0x00e6 A[RETURN] */
        @Override // cc.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            Object g10;
            Type b10;
            d dVar;
            Object login;
            t4.a aVar;
            d dVar2;
            Object d10 = bc.c.d();
            try {
                try {
                } catch (Exception e10) {
                    e10.printStackTrace();
                    l0 b11 = g1.b();
                    c cVar = new c(e10, null);
                    this.f10438f = 3;
                    g10 = i.g(b11, cVar, this);
                    if (g10 == d10) {
                        return d10;
                    }
                }
            } catch (Exception unused) {
                n2 c10 = g1.c();
                C0238b c0238b = new C0238b(this.f10439g, null);
                this.f10438f = 5;
                if (i.g(c10, c0238b, this) == d10) {
                    return d10;
                }
            }
            switch (this.f10438f) {
                case 0:
                    vb.k.b(obj);
                    AuthEndpoint authEndpoint = (AuthEndpoint) z3.b.f17284d.getInstance(this.f10439g).b(AuthEndpoint.class);
                    String string = this.f10440h.getString("userEmail");
                    String string2 = this.f10440h.getString("userPassword");
                    String string3 = this.f10440h.getString("userDeviceId");
                    this.f10438f = 1;
                    login = authEndpoint.login(string, string2, string3, this);
                    if (login == d10) {
                        return d10;
                    }
                    Object a10 = ((n4.c) login).a();
                    jc.l.c(a10);
                    aVar = (t4.a) a10;
                    f4.d newInstance = f4.d.f6409r.newInstance(this.f10439g);
                    newInstance.c(true);
                    newInstance.T(aVar.b().D());
                    t4.b bVar = new t4.b(0L, aVar.a(), aVar.c(), 0L, aVar.f(), aVar.e(), aVar.d(), 9, null);
                    bVar.a(System.currentTimeMillis());
                    String t10 = this.f10441i.d().t(bVar);
                    newInstance.N().set(aVar.b());
                    jc.l.e(t10, "jsonStrAuth");
                    newInstance.R(t10);
                    dVar2 = this.f10441i;
                    this.f10438f = 2;
                    if (dVar2.publishResult(aVar, this) == d10) {
                        return d10;
                    }
                    return vb.p.f15031a;
                case 1:
                    vb.k.b(obj);
                    login = obj;
                    Object a102 = ((n4.c) login).a();
                    jc.l.c(a102);
                    aVar = (t4.a) a102;
                    f4.d newInstance2 = f4.d.f6409r.newInstance(this.f10439g);
                    newInstance2.c(true);
                    newInstance2.T(aVar.b().D());
                    t4.b bVar2 = new t4.b(0L, aVar.a(), aVar.c(), 0L, aVar.f(), aVar.e(), aVar.d(), 9, null);
                    bVar2.a(System.currentTimeMillis());
                    String t102 = this.f10441i.d().t(bVar2);
                    newInstance2.N().set(aVar.b());
                    jc.l.e(t102, "jsonStrAuth");
                    newInstance2.R(t102);
                    dVar2 = this.f10441i;
                    this.f10438f = 2;
                    if (dVar2.publishResult(aVar, this) == d10) {
                    }
                    return vb.p.f15031a;
                case 2:
                    vb.k.b(obj);
                    return vb.p.f15031a;
                case 3:
                    vb.k.b(obj);
                    g10 = obj;
                    String str = (String) g10;
                    ja.f d11 = this.f10441i.d();
                    jc.l.c(str);
                    Type type = new C0239d().getType();
                    jc.l.b(type, "object : TypeToken<T>() {} .type");
                    if ((type instanceof ParameterizedType) && com.github.salomonbrys.kotson.c.a((ParameterizedType) type)) {
                        b10 = ((ParameterizedType) type).getRawType();
                        jc.l.b(b10, "type.rawType");
                    } else {
                        b10 = com.github.salomonbrys.kotson.c.b(type);
                    }
                    Object l10 = d11.l(str, b10);
                    jc.l.b(l10, "fromJson(json, typeToken<T>())");
                    n2 c11 = g1.c();
                    a aVar2 = new a(this.f10439g, (n) l10, null);
                    this.f10438f = 4;
                    if (i.g(c11, aVar2, this) == d10) {
                        return d10;
                    }
                    dVar = this.f10441i;
                    this.f10438f = 6;
                    if (dVar.publishResult(null, this) == d10) {
                        return d10;
                    }
                    return vb.p.f15031a;
                case 4:
                    vb.k.b(obj);
                    dVar = this.f10441i;
                    this.f10438f = 6;
                    if (dVar.publishResult(null, this) == d10) {
                    }
                    return vb.p.f15031a;
                case 5:
                    vb.k.b(obj);
                    dVar = this.f10441i;
                    this.f10438f = 6;
                    if (dVar.publishResult(null, this) == d10) {
                    }
                    return vb.p.f15031a;
                case 6:
                    vb.k.b(obj);
                    return vb.p.f15031a;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    /* compiled from: LoginRepository.kt */
    @f(c = "com.anslayer.ui.authintication.login.LoginRepository$requestFromCache$1", f = "LoginRepository.kt", l = {75}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class c extends k implements p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f10449f;

        public c(ac.d<? super c> dVar) {
            super(2, dVar);
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new c(dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((c) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f10449f;
            if (i10 == 0) {
                vb.k.b(obj);
                d dVar = d.this;
                this.f10449f = 1;
                if (dVar.publishResult(null, this) == d10) {
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

    /* compiled from: Injekt.kt */
    /* renamed from: l5.d$d, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0240d extends m implements ic.a<ja.f> {

        /* renamed from: f, reason: collision with root package name */
        public static final C0240d f10451f = new C0240d();

        /* compiled from: TypeInfo.kt */
        /* renamed from: l5.d$d$a */
        /* loaded from: classes.dex */
        public static final class a extends zd.a<ja.f> {
        }

        public C0240d() {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, ja.f] */
        @Override // ic.a
        public final ja.f invoke() {
            return yd.a.a().a(new a().getType());
        }
    }

    public d() {
        this.f10436a = vb.f.a(C0240d.f10451f);
    }

    public /* synthetic */ d(g gVar) {
        this();
    }

    @Override // io.wax911.support.base.dao.SupportRepository
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public y0<vb.p> createNetworkClientRequest(Bundle bundle, Context context) {
        y0<vb.p> b10;
        jc.l.f(bundle, "bundle");
        jc.l.f(context, "context");
        b10 = rc.k.b(v1.f13343f, null, null, new b(context, bundle, this, null), 3, null);
        return b10;
    }

    public final ja.f d() {
        return (ja.f) this.f10436a.getValue();
    }

    @Override // io.wax911.support.base.dao.SupportRepository
    /* renamed from: e, reason: merged with bridge method [inline-methods] */
    public z3.a getNetworkClient() {
        return z3.a.f17279b.a(false);
    }

    @Override // io.wax911.support.base.dao.SupportRepository
    /* renamed from: f, reason: merged with bridge method [inline-methods] */
    public y0<vb.p> requestFromCache(Bundle bundle, Context context) {
        y0<vb.p> b10;
        jc.l.f(bundle, "bundle");
        jc.l.f(context, "context");
        b10 = rc.k.b(v1.f13343f, null, null, new c(null), 3, null);
        return b10;
    }
}
