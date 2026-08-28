package a4;

import android.content.Context;
import bd.e;
import cc.k;
import com.anslayer.api.endpoint.AuthEndpoint;
import com.anslayer.data.comment_notification.NotificationWorker;
import ic.p;
import io.wax911.support.common.ICommonAuth;
import io.wax911.support.google.GoogleAuth;
import io.wax911.support.twitter.TwitterAuth;
import ja.f;
import java.util.concurrent.CancellationException;
import jc.g;
import jc.l;
import okhttp3.Interceptor;
import okhttp3.Response;
import org.apache.http.HttpStatus;
import rc.c2;
import rc.j;
import rc.q0;
import rc.r0;
import retrofit2.HttpException;
import wb.i;

/* compiled from: RenewingInterceptor.kt */
/* loaded from: classes.dex */
public final class b implements Interceptor {

    /* renamed from: a, reason: collision with root package name */
    public final Context f370a;

    /* renamed from: b, reason: collision with root package name */
    public final f4.d f371b;

    /* renamed from: c, reason: collision with root package name */
    public final f f372c;

    /* renamed from: d, reason: collision with root package name */
    public c2 f373d;

    /* compiled from: RenewingInterceptor.kt */
    @cc.f(c = "com.anslayer.api.interceptor.RenewingInterceptor$intercept$1", f = "RenewingInterceptor.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class a extends k implements p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f374f;

        /* compiled from: RenewingInterceptor.kt */
        @cc.f(c = "com.anslayer.api.interceptor.RenewingInterceptor$intercept$1$1", f = "RenewingInterceptor.kt", l = {53}, m = "invokeSuspend")
        /* renamed from: a4.b$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0006a extends k implements p<q0, ac.d<? super vb.p>, Object> {

            /* renamed from: f, reason: collision with root package name */
            public int f376f;

            /* renamed from: g, reason: collision with root package name */
            public /* synthetic */ Object f377g;

            /* renamed from: h, reason: collision with root package name */
            public final /* synthetic */ b f378h;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0006a(b bVar, ac.d<? super C0006a> dVar) {
                super(2, dVar);
                this.f378h = bVar;
            }

            @Override // cc.a
            public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
                C0006a c0006a = new C0006a(this.f378h, dVar);
                c0006a.f377g = obj;
                return c0006a;
            }

            @Override // ic.p
            public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
                return ((C0006a) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
            }

            @Override // cc.a
            public final Object invokeSuspend(Object obj) {
                Object d10 = bc.c.d();
                int i10 = this.f376f;
                if (i10 == 0) {
                    vb.k.b(obj);
                    r0.f((q0) this.f377g);
                    b bVar = this.f378h;
                    this.f376f = 1;
                    if (bVar.h(this) == d10) {
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

        public a(ac.d<? super a> dVar) {
            super(2, dVar);
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new a(dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((a) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            bc.c.d();
            if (this.f374f != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            vb.k.b(obj);
            c2 c2Var = b.this.f373d;
            if (c2Var != null) {
                c2.a.a(c2Var, null, 1, null);
            }
            b bVar = b.this;
            bVar.f373d = e7.b.b(new C0006a(bVar, null));
            return vb.p.f15031a;
        }
    }

    /* compiled from: RenewingInterceptor.kt */
    @cc.f(c = "com.anslayer.api.interceptor.RenewingInterceptor$renew$2", f = "RenewingInterceptor.kt", l = {66, 77}, m = "invokeSuspend")
    /* renamed from: a4.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0007b extends k implements p<q0, ac.d<? super Boolean>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public Object f379f;

        /* renamed from: g, reason: collision with root package name */
        public Object f380g;

        /* renamed from: h, reason: collision with root package name */
        public int f381h;

        /* renamed from: i, reason: collision with root package name */
        public /* synthetic */ Object f382i;

        public C0007b(ac.d<? super C0007b> dVar) {
            super(2, dVar);
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            C0007b c0007b = new C0007b(dVar);
            c0007b.f382i = obj;
            return c0007b;
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super Boolean> dVar) {
            return ((C0007b) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v0, types: [int] */
        /* JADX WARN: Type inference failed for: r1v11 */
        /* JADX WARN: Type inference failed for: r1v12 */
        /* JADX WARN: Type inference failed for: r1v8 */
        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            q0 q0Var;
            t4.b g10;
            Object d10 = bc.c.d();
            AuthEndpoint authEndpoint = this.f381h;
            try {
                try {
                } catch (Exception e10) {
                    if (!(e10 instanceof CancellationException)) {
                        if ((e10 instanceof HttpException) && ((HttpException) e10).a() == 409) {
                            bd.c cVar = bd.c.DEBUG;
                            e a10 = e.f3616a.a();
                            if (a10.b(cVar)) {
                                a10.a(cVar, bd.d.a(q0Var), "error code 409");
                            }
                            String d11 = g10.d();
                            String e11 = g10.e();
                            this.f382i = null;
                            this.f379f = null;
                            this.f380g = null;
                            this.f381h = 2;
                            if (authEndpoint.logout(d11, e11, this) == d10) {
                                return d10;
                            }
                        }
                    } else {
                        throw e10;
                    }
                }
            } catch (Exception unused) {
            }
            if (authEndpoint == 0) {
                vb.k.b(obj);
                q0Var = (q0) this.f382i;
                g10 = b.this.g();
                if (g10 == null) {
                    return cc.b.a(false);
                }
                AuthEndpoint authEndpoint2 = (AuthEndpoint) z3.b.f17284d.getInstance(b.this.d()).b(AuthEndpoint.class);
                r0.f(q0Var);
                String e12 = g10.e();
                this.f382i = q0Var;
                this.f379f = g10;
                this.f380g = authEndpoint2;
                this.f381h = 1;
                obj = authEndpoint2.refreshTokenSuspend(e12, this);
                authEndpoint = authEndpoint2;
                if (obj == d10) {
                    return d10;
                }
            } else {
                if (authEndpoint != 1) {
                    if (authEndpoint != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    vb.k.b(obj);
                    NotificationWorker.f4072s.a(b.this.d());
                    try {
                        if (b.this.f().I()) {
                            try {
                                String r10 = b.this.f().r();
                                if (l.a(r10, "LOGIN_WITH_GOOGLE")) {
                                    ICommonAuth.DefaultImpls.revokeProvider$default(GoogleAuth.INSTANCE, b.this.d(), null, 2, null);
                                } else if (l.a(r10, "LOGIN_WITH_TWITTER")) {
                                    TwitterAuth.INSTANCE.disconnectProvider(b.this.d());
                                }
                            } catch (Exception unused2) {
                            }
                        }
                        f4.d f10 = b.this.f();
                        f10.c(false);
                        f10.d0(false);
                        f10.S(null);
                        f4.d.U(f10, 0L, 1, null);
                        f10.N().set(w4.e.Companion.a());
                        f10.b0(0);
                        f10.i0(false);
                    } catch (Exception unused3) {
                    }
                    return cc.b.a(false);
                }
                AuthEndpoint authEndpoint3 = (AuthEndpoint) this.f380g;
                g10 = (t4.b) this.f379f;
                q0Var = (q0) this.f382i;
                vb.k.b(obj);
                authEndpoint = authEndpoint3;
            }
            Object a11 = ((n4.c) obj).a();
            l.c(a11);
            f4.d f11 = b.this.f();
            String t10 = b.this.e().t((t4.b) a11);
            l.e(t10, "gson.toJson(newToken)");
            f11.R(t10);
            bd.c cVar2 = bd.c.DEBUG;
            e a12 = e.f3616a.a();
            if (a12.b(cVar2)) {
                a12.a(cVar2, bd.d.a(q0Var), "setting renewed token");
            }
            return cc.b.a(true);
        }
    }

    /* compiled from: TypeInfo.kt */
    /* loaded from: classes.dex */
    public static final class c extends zd.a<f4.d> {
    }

    /* compiled from: TypeInfo.kt */
    /* loaded from: classes.dex */
    public static final class d extends zd.a<f> {
    }

    public b(Context context, f4.d dVar, f fVar) {
        l.f(context, "context");
        l.f(dVar, "prefs");
        l.f(fVar, "gson");
        this.f370a = context;
        this.f371b = dVar;
        this.f372c = fVar;
    }

    public final Context d() {
        return this.f370a;
    }

    public final f e() {
        return this.f372c;
    }

    public final f4.d f() {
        return this.f371b;
    }

    public final t4.b g() {
        String q10 = this.f371b.q();
        if (q10 == null || q10.length() == 0) {
            return null;
        }
        try {
            return (t4.b) this.f372c.k(q10, t4.b.class);
        } catch (Exception unused) {
            return null;
        }
    }

    public final Object h(ac.d<? super Boolean> dVar) {
        return e7.b.c(new C0007b(null), dVar);
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) {
        t4.b b10;
        l.f(chain, "chain");
        Response proceed = chain.proceed(chain.request());
        if (i.n(new int[]{HttpStatus.SC_UNAUTHORIZED, HttpStatus.SC_FORBIDDEN}, proceed.code())) {
            t4.b g10 = g();
            if (g10 != null) {
                b10 = g10.b((r22 & 1) != 0 ? g10.f14014id : 0L, (r22 & 2) != 0 ? g10.access_token : "", (r22 & 4) != 0 ? g10.expires_in : 0L, (r22 & 8) != 0 ? g10.expiry_time : 0L, (r22 & 16) != 0 ? g10.token_type : null, (r22 & 32) != 0 ? g10.scope : null, (r22 & 64) != 0 ? g10.refresh_token : null);
                f4.d dVar = this.f371b;
                String t10 = this.f372c.t(b10);
                l.e(t10, "gson.toJson(withoutAccessToken)");
                dVar.R(t10);
            }
            z3.b.f17284d.getInstance(this.f370a).d().dispatcher().cancelAll();
            j.b(null, new a(null), 1, null);
        }
        l.e(proceed, "response");
        return proceed;
    }

    public /* synthetic */ b(Context context, f4.d dVar, f fVar, int i10, g gVar) {
        this(context, (i10 & 2) != 0 ? (f4.d) yd.a.a().a(new c().getType()) : dVar, (i10 & 4) != 0 ? (f) yd.a.a().a(new d().getType()) : fVar);
    }
}
