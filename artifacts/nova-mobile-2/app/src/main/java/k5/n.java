package k5;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import com.anslayer.R;
import com.anslayer.api.endpoint.UserEndpoint;
import com.twitter.sdk.android.core.identity.AuthHandler;
import ic.p;
import io.wax911.support.base.dao.SupportRepository;
import io.wax911.support.model.ModelWrapper;
import io.wax911.support.util.InstanceUtilNoArg;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import okhttp3.ResponseBody;
import rc.g1;
import rc.l0;
import rc.n2;
import rc.q0;
import rc.v1;
import rc.y0;
import rd.q;
import retrofit2.HttpException;
import z3.a;

/* compiled from: UserRepository.kt */
/* loaded from: classes.dex */
public final class n extends SupportRepository<Bundle, w4.e> {

    /* renamed from: c, reason: collision with root package name */
    public static final a f9987c = new a(null);

    /* renamed from: a, reason: collision with root package name */
    public final vb.e f9988a;

    /* renamed from: b, reason: collision with root package name */
    public final z3.a f9989b;

    /* compiled from: UserRepository.kt */
    /* loaded from: classes.dex */
    public static final class a extends InstanceUtilNoArg<n> {

        /* compiled from: UserRepository.kt */
        /* renamed from: k5.n$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0210a extends jc.m implements ic.a<n> {

            /* renamed from: f, reason: collision with root package name */
            public static final C0210a f9990f = new C0210a();

            public C0210a() {
                super(0);
            }

            @Override // ic.a
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final n invoke() {
                return new n(null);
            }
        }

        public a() {
            super(C0210a.f9990f);
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }
    }

    /* compiled from: UserRepository.kt */
    @cc.f(c = "com.anslayer.ui.authintication.UserRepository$createNetworkClientRequest$1", f = "UserRepository.kt", l = {52, 60, 63, 66, 68, 70, 75, 77}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class b extends cc.k implements p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public Object f9991f;

        /* renamed from: g, reason: collision with root package name */
        public int f9992g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ Context f9993h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ Bundle f9994i;

        /* renamed from: j, reason: collision with root package name */
        public final /* synthetic */ n f9995j;

        /* compiled from: UserRepository.kt */
        @cc.f(c = "com.anslayer.ui.authintication.UserRepository$createNetworkClientRequest$1$1", f = "UserRepository.kt", l = {}, m = "invokeSuspend")
        /* loaded from: classes.dex */
        public static final class a extends cc.k implements p<q0, ac.d<? super vb.p>, Object> {

            /* renamed from: f, reason: collision with root package name */
            public int f9996f;

            /* renamed from: g, reason: collision with root package name */
            public final /* synthetic */ Context f9997g;

            /* renamed from: h, reason: collision with root package name */
            public final /* synthetic */ ja.n f9998h;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(Context context, ja.n nVar, ac.d<? super a> dVar) {
                super(2, dVar);
                this.f9997g = context;
                this.f9998h = nVar;
            }

            @Override // cc.a
            public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
                return new a(this.f9997g, this.f9998h, dVar);
            }

            @Override // ic.p
            public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
                return ((a) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
            }

            @Override // cc.a
            public final Object invokeSuspend(Object obj) {
                bc.c.d();
                if (this.f9996f != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                vb.k.b(obj);
                Context context = this.f9997g;
                ja.l l10 = this.f9998h.l("detail");
                jc.l.e(l10, "message[\"detail\"]");
                k7.b.r(context, com.github.salomonbrys.kotson.b.f(l10), 0, 2, null);
                return vb.p.f15031a;
            }
        }

        /* compiled from: UserRepository.kt */
        @cc.f(c = "com.anslayer.ui.authintication.UserRepository$createNetworkClientRequest$1$2", f = "UserRepository.kt", l = {}, m = "invokeSuspend")
        /* renamed from: k5.n$b$b, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0211b extends cc.k implements p<q0, ac.d<? super vb.p>, Object> {

            /* renamed from: f, reason: collision with root package name */
            public int f9999f;

            /* renamed from: g, reason: collision with root package name */
            public final /* synthetic */ Context f10000g;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0211b(Context context, ac.d<? super C0211b> dVar) {
                super(2, dVar);
                this.f10000g = context;
            }

            @Override // cc.a
            public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
                return new C0211b(this.f10000g, dVar);
            }

            @Override // ic.p
            public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
                return ((C0211b) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
            }

            @Override // cc.a
            public final Object invokeSuspend(Object obj) {
                bc.c.d();
                if (this.f9999f != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                vb.k.b(obj);
                k7.b.q(this.f10000g, R.string.text_request_error, 0, 2, null);
                return vb.p.f15031a;
            }
        }

        /* compiled from: UserRepository.kt */
        @cc.f(c = "com.anslayer.ui.authintication.UserRepository$createNetworkClientRequest$1$error$1", f = "UserRepository.kt", l = {}, m = "invokeSuspend")
        /* loaded from: classes.dex */
        public static final class c extends cc.k implements p<q0, ac.d<? super String>, Object> {

            /* renamed from: f, reason: collision with root package name */
            public int f10001f;

            /* renamed from: g, reason: collision with root package name */
            public final /* synthetic */ Exception f10002g;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public c(Exception exc, ac.d<? super c> dVar) {
                super(2, dVar);
                this.f10002g = exc;
            }

            @Override // cc.a
            public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
                return new c(this.f10002g, dVar);
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
                if (this.f10001f != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                vb.k.b(obj);
                Exception exc = this.f10002g;
                if (!(exc instanceof HttpException) || (c10 = ((HttpException) exc).c()) == null || (d10 = c10.d()) == null) {
                    return null;
                }
                return d10.string();
            }
        }

        /* compiled from: GsonBuilder.kt */
        /* loaded from: classes.dex */
        public static final class d extends oa.a<ja.n> {
        }

        /* compiled from: UserRepository.kt */
        /* loaded from: classes.dex */
        public static final class e extends jc.m implements ic.a<SharedPreferences> {

            /* renamed from: f, reason: collision with root package name */
            public final /* synthetic */ Context f10003f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public e(Context context) {
                super(0);
                this.f10003f = context;
            }

            @Override // ic.a
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final SharedPreferences invoke() {
                return this.f10003f.getSharedPreferences("authCustom", 0);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Context context, Bundle bundle, n nVar, ac.d<? super b> dVar) {
            super(2, dVar);
            this.f9993h = context;
            this.f9994i = bundle;
            this.f9995j = nVar;
        }

        public static final SharedPreferences f(vb.e<? extends SharedPreferences> eVar) {
            return eVar.getValue();
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new b(this.f9993h, this.f9994i, this.f9995j, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((b) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:3:0x0007. Please report as an issue. */
        /* JADX WARN: Removed duplicated region for block: B:10:0x01b5  */
        /* JADX WARN: Removed duplicated region for block: B:13:0x01c8 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:20:0x0180 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:38:0x00c1  */
        /* JADX WARN: Removed duplicated region for block: B:41:0x00f1 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:42:0x00c3 A[Catch: Exception -> 0x0033, TryCatch #1 {Exception -> 0x0033, blocks: (B:33:0x002e, B:35:0x003a, B:36:0x00b7, B:39:0x00c9, B:42:0x00c3, B:52:0x008a), top: B:2:0x0007 }] */
        @Override // cc.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            Type b10;
            n nVar;
            vb.e a10;
            w4.e eVar;
            n nVar2;
            w4.e eVar2;
            n nVar3;
            Object d10 = bc.c.d();
            try {
                try {
                } catch (Exception unused) {
                    n2 c10 = g1.c();
                    C0211b c0211b = new C0211b(this.f9993h, null);
                    this.f9992g = 5;
                    if (rc.i.g(c10, c0211b, this) == d10) {
                        return d10;
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                l0 b11 = g1.b();
                c cVar = new c(e10, null);
                this.f9991f = null;
                this.f9992g = 3;
                obj = rc.i.g(b11, cVar, this);
                if (obj == d10) {
                    return d10;
                }
            }
            switch (this.f9992g) {
                case 0:
                    vb.k.b(obj);
                    UserEndpoint userEndpoint = (UserEndpoint) z3.b.f17284d.getInstance(this.f9993h).b(UserEndpoint.class);
                    a10 = vb.f.a(new e(this.f9993h));
                    String string = this.f9994i.getString("arg_request_type");
                    if (string != null) {
                        int hashCode = string.hashCode();
                        if (hashCode != -22125731) {
                            if (hashCode == 1688978734 && string.equals("CREATE_USER")) {
                                String e11 = k7.b.e(this.f9993h);
                                String string2 = this.f9994i.getString("userEmail");
                                String string3 = this.f9994i.getString("userPassword");
                                String string4 = this.f9994i.getString("userPasswordConfirm");
                                String string5 = this.f9994i.getString("userFullName");
                                this.f9991f = a10;
                                this.f9992g = 1;
                                obj = userEndpoint.createUser(string2, string3, string4, string5, e11, this);
                                if (obj == d10) {
                                    return d10;
                                }
                                n4.d dVar = (n4.d) ((n4.c) obj).a();
                                eVar = dVar != null ? null : (w4.e) dVar.b();
                                f(a10).edit().putString("loggedUser", this.f9995j.d().t(eVar)).apply();
                                nVar2 = this.f9995j;
                                this.f9991f = null;
                                this.f9992g = 2;
                                if (nVar2.publishResult(eVar, this) == d10) {
                                    return d10;
                                }
                            }
                        } else if (string.equals("GET_USER_STATUS")) {
                            y0 executeUsing = this.f9995j.getNetworkClient().executeUsing(userEndpoint.getUserStatus(this.f9994i.getString(AuthHandler.EXTRA_USER_ID)));
                            this.f9992g = 7;
                            obj = executeUsing.k0(this);
                            if (obj == d10) {
                                return d10;
                            }
                            n4.c cVar2 = (n4.c) ((ModelWrapper) obj).getModel();
                            eVar2 = cVar2 != null ? (w4.e) cVar2.a() : null;
                            nVar3 = this.f9995j;
                            this.f9992g = 8;
                            if (nVar3.publishResult(eVar2, this) == d10) {
                                return d10;
                            }
                        }
                    }
                    return vb.p.f15031a;
                case 1:
                    a10 = (vb.e) this.f9991f;
                    vb.k.b(obj);
                    n4.d dVar2 = (n4.d) ((n4.c) obj).a();
                    if (dVar2 != null) {
                    }
                    f(a10).edit().putString("loggedUser", this.f9995j.d().t(eVar)).apply();
                    nVar2 = this.f9995j;
                    this.f9991f = null;
                    this.f9992g = 2;
                    if (nVar2.publishResult(eVar, this) == d10) {
                    }
                    return vb.p.f15031a;
                case 2:
                    vb.k.b(obj);
                    return vb.p.f15031a;
                case 3:
                    vb.k.b(obj);
                    String str = (String) obj;
                    ja.f d11 = this.f9995j.d();
                    jc.l.c(str);
                    Type type = new d().getType();
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
                    a aVar = new a(this.f9993h, (ja.n) l10, null);
                    this.f9992g = 4;
                    if (rc.i.g(c11, aVar, this) == d10) {
                        return d10;
                    }
                    nVar = this.f9995j;
                    this.f9992g = 6;
                    if (nVar.publishResult(null, this) == d10) {
                        return d10;
                    }
                    return vb.p.f15031a;
                case 4:
                    vb.k.b(obj);
                    nVar = this.f9995j;
                    this.f9992g = 6;
                    if (nVar.publishResult(null, this) == d10) {
                    }
                    return vb.p.f15031a;
                case 5:
                    vb.k.b(obj);
                    nVar = this.f9995j;
                    this.f9992g = 6;
                    if (nVar.publishResult(null, this) == d10) {
                    }
                    return vb.p.f15031a;
                case 6:
                case 8:
                    vb.k.b(obj);
                    return vb.p.f15031a;
                case 7:
                    vb.k.b(obj);
                    n4.c cVar22 = (n4.c) ((ModelWrapper) obj).getModel();
                    if (cVar22 != null) {
                    }
                    nVar3 = this.f9995j;
                    this.f9992g = 8;
                    if (nVar3.publishResult(eVar2, this) == d10) {
                    }
                    return vb.p.f15031a;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    /* compiled from: UserRepository.kt */
    @cc.f(c = "com.anslayer.ui.authintication.UserRepository$requestFromCache$1", f = "UserRepository.kt", l = {95, 97, 101}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class c extends cc.k implements p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f10004f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ Bundle f10005g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ Context f10006h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ n f10007i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Bundle bundle, Context context, n nVar, ac.d<? super c> dVar) {
            super(2, dVar);
            this.f10005g = bundle;
            this.f10006h = context;
            this.f10007i = nVar;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new c(this.f10005g, this.f10006h, this.f10007i, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((c) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f10004f;
            if (i10 == 0) {
                vb.k.b(obj);
                String string = this.f10005g.getString("arg_request_type");
                if (string != null && string.hashCode() == -1506075852 && string.equals("GET_USER")) {
                    w4.e eVar = (w4.e) this.f10007i.d().k(this.f10006h.getSharedPreferences("authCustom", 0).getString("loggedUser", null), w4.e.class);
                    if (eVar != null) {
                        n nVar = this.f10007i;
                        this.f10004f = 1;
                        if (nVar.publishResult(eVar, this) == d10) {
                            return d10;
                        }
                    } else {
                        n nVar2 = this.f10007i;
                        this.f10004f = 2;
                        if (nVar2.publishResult(null, this) == d10) {
                            return d10;
                        }
                    }
                } else {
                    n nVar3 = this.f10007i;
                    this.f10004f = 3;
                    if (nVar3.publishResult(null, this) == d10) {
                        return d10;
                    }
                }
            } else {
                if (i10 != 1 && i10 != 2 && i10 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                vb.k.b(obj);
            }
            return vb.p.f15031a;
        }
    }

    /* compiled from: Injekt.kt */
    /* loaded from: classes.dex */
    public static final class d extends jc.m implements ic.a<ja.f> {

        /* renamed from: f, reason: collision with root package name */
        public static final d f10008f = new d();

        /* compiled from: TypeInfo.kt */
        /* loaded from: classes.dex */
        public static final class a extends zd.a<ja.f> {
        }

        public d() {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, ja.f] */
        @Override // ic.a
        public final ja.f invoke() {
            return yd.a.a().a(new a().getType());
        }
    }

    public n() {
        this.f9988a = vb.f.a(d.f10008f);
        this.f9989b = a.C0435a.b(z3.a.f17279b, false, 1, null);
    }

    public /* synthetic */ n(jc.g gVar) {
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
        return (ja.f) this.f9988a.getValue();
    }

    @Override // io.wax911.support.base.dao.SupportRepository
    /* renamed from: e, reason: merged with bridge method [inline-methods] */
    public z3.a getNetworkClient() {
        return this.f9989b;
    }

    @Override // io.wax911.support.base.dao.SupportRepository
    /* renamed from: f, reason: merged with bridge method [inline-methods] */
    public y0<vb.p> requestFromCache(Bundle bundle, Context context) {
        y0<vb.p> b10;
        jc.l.f(bundle, "bundle");
        jc.l.f(context, "context");
        b10 = rc.k.b(v1.f13343f, null, null, new c(bundle, context, this, null), 3, null);
        return b10;
    }
}
