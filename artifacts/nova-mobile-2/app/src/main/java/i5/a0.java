package i5;

import android.content.Context;
import android.os.Bundle;
import android.util.Base64;
import com.anslayer.api.endpoint.SeriesEndpoint;
import com.twitter.sdk.android.core.identity.AuthHandler;
import io.wax911.support.base.dao.SupportRepository;
import io.wax911.support.model.ModelWrapper;
import io.wax911.support.util.InstanceUtilNoArg;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import okhttp3.Call;
import okhttp3.FormBody;
import rc.g1;
import rc.q0;
import rc.v1;
import rc.y0;
import z3.a;

/* compiled from: SeriesRepository.kt */
/* loaded from: classes.dex */
public final class a0 extends SupportRepository<Bundle, p4.p> {

    /* renamed from: e, reason: collision with root package name */
    public static final a f7572e = new a(null);

    /* renamed from: a, reason: collision with root package name */
    public final vb.e f7573a;

    /* renamed from: b, reason: collision with root package name */
    public final vb.e f7574b;

    /* renamed from: c, reason: collision with root package name */
    public final vb.e f7575c;

    /* renamed from: d, reason: collision with root package name */
    public final z3.a f7576d;

    /* compiled from: SeriesRepository.kt */
    /* loaded from: classes.dex */
    public static final class a extends InstanceUtilNoArg<a0> {

        /* compiled from: SeriesRepository.kt */
        /* renamed from: i5.a0$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0150a extends jc.m implements ic.a<a0> {

            /* renamed from: f, reason: collision with root package name */
            public static final C0150a f7577f = new C0150a();

            public C0150a() {
                super(0);
            }

            @Override // ic.a
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final a0 invoke() {
                return new a0(null);
            }
        }

        public a() {
            super(C0150a.f7577f);
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }
    }

    /* compiled from: SeriesRepository.kt */
    /* loaded from: classes.dex */
    public static final class b extends jc.m implements ic.a<r4.b> {

        /* compiled from: GsonBuilder.kt */
        /* loaded from: classes.dex */
        public static final class a extends oa.a<r4.b> {
        }

        public b() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final r4.b invoke() {
            Type b10;
            ja.f g10 = a0.this.g();
            String n10 = a0.this.i().n();
            jc.l.c(n10);
            Type type = new a().getType();
            jc.l.b(type, "object : TypeToken<T>() {} .type");
            if (type instanceof ParameterizedType) {
                ParameterizedType parameterizedType = (ParameterizedType) type;
                if (com.github.salomonbrys.kotson.c.a(parameterizedType)) {
                    b10 = parameterizedType.getRawType();
                    jc.l.b(b10, "type.rawType");
                    Object l10 = g10.l(n10, b10);
                    jc.l.b(l10, "fromJson(json, typeToken<T>())");
                    return (r4.b) l10;
                }
            }
            b10 = com.github.salomonbrys.kotson.c.b(type);
            Object l102 = g10.l(n10, b10);
            jc.l.b(l102, "fromJson(json, typeToken<T>())");
            return (r4.b) l102;
        }
    }

    /* compiled from: SeriesRepository.kt */
    @cc.f(c = "com.anslayer.ui.anime.info.SeriesRepository$createNetworkClientRequest$1", f = "SeriesRepository.kt", l = {68, 69}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class c extends cc.k implements ic.p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f7579f;

        /* renamed from: g, reason: collision with root package name */
        public /* synthetic */ Object f7580g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ Context f7581h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ Bundle f7582i;

        /* renamed from: j, reason: collision with root package name */
        public final /* synthetic */ a0 f7583j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Context context, Bundle bundle, a0 a0Var, ac.d<? super c> dVar) {
            super(2, dVar);
            this.f7581h = context;
            this.f7582i = bundle;
            this.f7583j = a0Var;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            c cVar = new c(this.f7581h, this.f7582i, this.f7583j, dVar);
            cVar.f7580g = obj;
            return cVar;
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((c) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x00b2  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x00c2 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:18:0x00b4  */
        @Override // cc.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            a0 a0Var;
            p4.p pVar;
            Object d10 = bc.c.d();
            int i10 = this.f7579f;
            if (i10 == 0) {
                vb.k.b(obj);
                q0 q0Var = (q0) this.f7580g;
                SeriesEndpoint seriesEndpoint = (SeriesEndpoint) z3.b.f17284d.getInstance(this.f7581h).b(SeriesEndpoint.class);
                long j10 = this.f7582i.getLong("anime_id");
                String string = this.f7582i.getString("arg_title");
                if (string == null) {
                    string = "";
                }
                this.f7583j.k(q0Var, this.f7581h, j10, string, this.f7583j.i().N().get().D());
                String string2 = this.f7582i.getString("arg_request_type");
                if (string2 != null && string2.hashCode() == 219052163 && string2.equals("GET_SERIES_DETAILS")) {
                    y0 executeUsing = this.f7583j.getNetworkClient().executeUsing(SeriesEndpoint.a.a(seriesEndpoint, j10, null, null, 6, null));
                    this.f7579f = 1;
                    obj = executeUsing.k0(this);
                    if (obj == d10) {
                        return d10;
                    }
                    a0Var = this.f7583j;
                    n4.c cVar = (n4.c) ((ModelWrapper) obj).getModel();
                    if (cVar != null) {
                    }
                    this.f7579f = 2;
                    if (a0Var.publishResult(pVar, this) == d10) {
                    }
                }
            } else if (i10 == 1) {
                vb.k.b(obj);
                a0Var = this.f7583j;
                n4.c cVar2 = (n4.c) ((ModelWrapper) obj).getModel();
                pVar = cVar2 != null ? null : (p4.p) cVar2.a();
                this.f7579f = 2;
                if (a0Var.publishResult(pVar, this) == d10) {
                    return d10;
                }
            } else {
                if (i10 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                vb.k.b(obj);
            }
            return vb.p.f15031a;
        }
    }

    /* compiled from: SeriesRepository.kt */
    @cc.f(c = "com.anslayer.ui.anime.info.SeriesRepository$requestFromCache$1", f = "SeriesRepository.kt", l = {112}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class d extends cc.k implements ic.p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f7584f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ Bundle f7585g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ a0 f7586h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(Bundle bundle, a0 a0Var, ac.d<? super d> dVar) {
            super(2, dVar);
            this.f7585g = bundle;
            this.f7586h = a0Var;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new d(this.f7585g, this.f7586h, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((d) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f7584f;
            if (i10 == 0) {
                vb.k.b(obj);
                String string = this.f7585g.getString("arg_request_type");
                if (string != null && string.hashCode() == 219052163 && string.equals("GET_SERIES_DETAILS")) {
                    a0 a0Var = this.f7586h;
                    this.f7584f = 1;
                    if (a0Var.publishResult(null, this) == d10) {
                        return d10;
                    }
                } else {
                    return vb.p.f15031a;
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

    /* compiled from: SeriesRepository.kt */
    @cc.f(c = "com.anslayer.ui.anime.info.SeriesRepository$sendAnimeAnalytics$1", f = "SeriesRepository.kt", l = {95}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class e extends cc.k implements ic.p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f7587f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ Context f7588g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ long f7589h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ String f7590i;

        /* renamed from: j, reason: collision with root package name */
        public final /* synthetic */ long f7591j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(Context context, long j10, String str, long j11, ac.d<? super e> dVar) {
            super(2, dVar);
            this.f7588g = context;
            this.f7589h = j10;
            this.f7590i = str;
            this.f7591j = j11;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new e(this.f7588g, this.f7589h, this.f7590i, this.f7591j, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((e) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f7587f;
            try {
                if (i10 == 0) {
                    vb.k.b(obj);
                    FormBody.Builder e10 = x4.e.e(this.f7588g);
                    long j10 = this.f7589h;
                    String str = this.f7590i;
                    long j11 = this.f7591j;
                    e10.add("anime_id", String.valueOf(j10));
                    e10.add("anime_name", str);
                    e10.add(AuthHandler.EXTRA_USER_ID, String.valueOf(j11));
                    FormBody build = e10.build();
                    byte[] decode = Base64.decode("aHR0cHM6Ly9hcHBzbHl0aWNzLmNvbS9hcGkvYW5hbHl0aWNz", 0);
                    jc.l.e(decode, "decode(Constants.analyticsBaseUrl, Base64.DEFAULT)");
                    String m10 = jc.l.m(new String(decode, qc.c.f12678b), "/anime");
                    jc.l.e(build, "formBody");
                    Call newCall = z3.b.f17284d.getInstance(this.f7588g).d().newCall(x4.e.d(m10, null, build, 2, null));
                    jc.l.e(newCall, "RetroFactory.getInstance…tpClient.newCall(request)");
                    this.f7587f = 1;
                    if (x4.b.a(newCall, this) == d10) {
                        return d10;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    vb.k.b(obj);
                }
            } catch (Exception unused) {
            }
            return vb.p.f15031a;
        }
    }

    /* compiled from: Injekt.kt */
    /* loaded from: classes.dex */
    public static final class f extends jc.m implements ic.a<f4.d> {

        /* renamed from: f, reason: collision with root package name */
        public static final f f7592f = new f();

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

    /* compiled from: Injekt.kt */
    /* loaded from: classes.dex */
    public static final class g extends jc.m implements ic.a<ja.f> {

        /* renamed from: f, reason: collision with root package name */
        public static final g f7593f = new g();

        /* compiled from: TypeInfo.kt */
        /* loaded from: classes.dex */
        public static final class a extends zd.a<ja.f> {
        }

        public g() {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, ja.f] */
        @Override // ic.a
        public final ja.f invoke() {
            return yd.a.a().a(new a().getType());
        }
    }

    public a0() {
        this.f7573a = vb.f.a(f.f7592f);
        this.f7574b = vb.f.a(g.f7593f);
        this.f7575c = vb.f.a(new b());
        this.f7576d = a.C0435a.b(z3.a.f17279b, false, 1, null);
    }

    public /* synthetic */ a0(jc.g gVar) {
        this();
    }

    @Override // io.wax911.support.base.dao.SupportRepository
    /* renamed from: e, reason: merged with bridge method [inline-methods] */
    public y0<vb.p> createNetworkClientRequest(Bundle bundle, Context context) {
        y0<vb.p> b10;
        jc.l.f(bundle, "bundle");
        jc.l.f(context, "context");
        b10 = rc.k.b(v1.f13343f, null, null, new c(context, bundle, this, null), 3, null);
        return b10;
    }

    public final r4.b f() {
        return (r4.b) this.f7575c.getValue();
    }

    public final ja.f g() {
        return (ja.f) this.f7574b.getValue();
    }

    @Override // io.wax911.support.base.dao.SupportRepository
    /* renamed from: h, reason: merged with bridge method [inline-methods] */
    public z3.a getNetworkClient() {
        return this.f7576d;
    }

    public final f4.d i() {
        return (f4.d) this.f7573a.getValue();
    }

    @Override // io.wax911.support.base.dao.SupportRepository
    /* renamed from: j, reason: merged with bridge method [inline-methods] */
    public y0<vb.p> requestFromCache(Bundle bundle, Context context) {
        y0<vb.p> b10;
        jc.l.f(bundle, "bundle");
        jc.l.f(context, "context");
        b10 = rc.k.b(v1.f13343f, null, null, new d(bundle, this, null), 3, null);
        return b10;
    }

    public final void k(q0 q0Var, Context context, long j10, String str, long j11) {
        if (r4.c.b(f())) {
            rc.k.d(q0Var, g1.b(), null, new e(context, j10, str, j11, null), 2, null);
        }
    }
}
