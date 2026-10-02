package y6;

import android.app.Application;
import android.util.Base64;
import androidx.lifecycle.j0;
import com.anslayer.api.endpoint.SeriesEndpoint;
import com.anslayer.network.OkHttpException;
import com.anslayer.ui.servers.resolver.resolver.ServersResolver;
import com.anslayer.util.DriveUtil;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import com.twitter.sdk.android.core.identity.AuthHandler;
import io.wax911.support.SupportExtentionKt;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import okhttp3.Call;
import okhttp3.FormBody;
import okhttp3.Request;
import rc.g1;
import rc.q0;
import retrofit2.HttpException;
import tgio.rncryptor.RNCryptorNative;
import y6.a;
import y6.c;

/* compiled from: ServerViewModel.kt */
/* loaded from: classes.dex */
public final class z extends androidx.lifecycle.b {

    /* renamed from: b, reason: collision with root package name */
    public final Application f16592b;

    /* renamed from: c, reason: collision with root package name */
    public final long f16593c;

    /* renamed from: d, reason: collision with root package name */
    public final String f16594d;

    /* renamed from: e, reason: collision with root package name */
    public final String f16595e;

    /* renamed from: f, reason: collision with root package name */
    public final String f16596f;

    /* renamed from: g, reason: collision with root package name */
    public final vb.e f16597g;

    /* renamed from: h, reason: collision with root package name */
    public final vb.e f16598h;

    /* renamed from: i, reason: collision with root package name */
    public final vb.e f16599i;

    /* renamed from: j, reason: collision with root package name */
    public final vb.e f16600j;

    /* renamed from: k, reason: collision with root package name */
    public final vb.e f16601k;

    /* renamed from: l, reason: collision with root package name */
    public androidx.lifecycle.y<p4.k> f16602l;

    /* renamed from: m, reason: collision with root package name */
    public androidx.lifecycle.y<y6.b> f16603m;

    /* renamed from: n, reason: collision with root package name */
    public androidx.lifecycle.y<y6.c> f16604n;

    /* renamed from: o, reason: collision with root package name */
    public androidx.lifecycle.y<y6.a> f16605o;

    /* renamed from: p, reason: collision with root package name */
    public p4.k f16606p;

    /* renamed from: q, reason: collision with root package name */
    public final vb.e f16607q;

    /* compiled from: ServerViewModel.kt */
    @cc.f(c = "com.anslayer.ui.servers.ServerViewModel$addEpisodeRating$1", f = "ServerViewModel.kt", l = {251}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class a extends cc.k implements ic.p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f16608f;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ int f16610h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i10, ac.d<? super a> dVar) {
            super(2, dVar);
            this.f16610h = i10;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new a(this.f16610h, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((a) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f16608f;
            try {
                if (i10 == 0) {
                    vb.k.b(obj);
                    SeriesEndpoint A = z.this.A();
                    String s10 = z.this.s();
                    Integer b10 = cc.b.b(this.f16610h);
                    this.f16608f = 1;
                    if (A.addEpisodeRatingV2(s10, b10, this) == d10) {
                        return d10;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    vb.k.b(obj);
                }
                z.this.f16605o.o(new a.c(this.f16610h));
            } catch (Exception e10) {
                z.this.f16605o.o(new a.C0430a(e10));
            }
            return vb.p.f15031a;
        }
    }

    /* compiled from: ServerViewModel.kt */
    @cc.f(c = "com.anslayer.ui.servers.ServerViewModel", f = "ServerViewModel.kt", l = {260}, m = "addEpisodeToWatchedHistory")
    /* loaded from: classes.dex */
    public static final class b extends cc.d {

        /* renamed from: f, reason: collision with root package name */
        public Object f16611f;

        /* renamed from: g, reason: collision with root package name */
        public /* synthetic */ Object f16612g;

        /* renamed from: i, reason: collision with root package name */
        public int f16614i;

        public b(ac.d<? super b> dVar) {
            super(dVar);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            this.f16612g = obj;
            this.f16614i |= Integer.MIN_VALUE;
            return z.this.m(this);
        }
    }

    /* compiled from: ServerViewModel.kt */
    /* loaded from: classes.dex */
    public static final class c extends jc.m implements ic.a<FormBody> {
        public c() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final FormBody invoke() {
            long D = z.this.x().N().get().D();
            FormBody.Builder e10 = x4.e.e(z.this.f16592b);
            z zVar = z.this;
            e10.add("anime_id", String.valueOf(zVar.o()));
            String p10 = zVar.p();
            if (p10 == null) {
                p10 = "";
            }
            e10.add("anime_name", p10);
            e10.add("episode_id", zVar.s());
            String v10 = zVar.v();
            e10.add("episode_name", v10 != null ? v10 : "");
            e10.add(AuthHandler.EXTRA_USER_ID, String.valueOf(D));
            return e10.build();
        }
    }

    /* compiled from: ServerViewModel.kt */
    /* loaded from: classes.dex */
    public static final class d extends jc.m implements ic.a<r4.b> {

        /* compiled from: GsonBuilder.kt */
        /* loaded from: classes.dex */
        public static final class a extends oa.a<r4.b> {
        }

        public d() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final r4.b invoke() {
            Type b10;
            ja.f w10 = z.this.w();
            String n10 = z.this.x().n();
            jc.l.c(n10);
            Type type = new a().getType();
            jc.l.b(type, "object : TypeToken<T>() {} .type");
            if (type instanceof ParameterizedType) {
                ParameterizedType parameterizedType = (ParameterizedType) type;
                if (com.github.salomonbrys.kotson.c.a(parameterizedType)) {
                    b10 = parameterizedType.getRawType();
                    jc.l.b(b10, "type.rawType");
                    Object l10 = w10.l(n10, b10);
                    jc.l.b(l10, "fromJson(json, typeToken<T>())");
                    return (r4.b) l10;
                }
            }
            b10 = com.github.salomonbrys.kotson.c.b(type);
            Object l102 = w10.l(n10, b10);
            jc.l.b(l102, "fromJson(json, typeToken<T>())");
            return (r4.b) l102;
        }
    }

    /* compiled from: ServerViewModel.kt */
    @cc.f(c = "com.anslayer.ui.servers.ServerViewModel", f = "ServerViewModel.kt", l = {HideBottomViewOnScrollBehavior.EXIT_ANIMATION_DURATION, 188}, m = "getUrls")
    /* loaded from: classes.dex */
    public static final class e extends cc.d {

        /* renamed from: f, reason: collision with root package name */
        public Object f16617f;

        /* renamed from: g, reason: collision with root package name */
        public Object f16618g;

        /* renamed from: h, reason: collision with root package name */
        public Object f16619h;

        /* renamed from: i, reason: collision with root package name */
        public Object f16620i;

        /* renamed from: j, reason: collision with root package name */
        public Object f16621j;

        /* renamed from: k, reason: collision with root package name */
        public Object f16622k;

        /* renamed from: l, reason: collision with root package name */
        public Object f16623l;

        /* renamed from: m, reason: collision with root package name */
        public /* synthetic */ Object f16624m;

        /* renamed from: o, reason: collision with root package name */
        public int f16626o;

        public e(ac.d<? super e> dVar) {
            super(dVar);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            this.f16624m = obj;
            this.f16626o |= Integer.MIN_VALUE;
            return z.this.C(null, this);
        }
    }

    /* compiled from: GsonBuilder.kt */
    /* loaded from: classes.dex */
    public static final class f extends oa.a<ja.i> {
    }

    /* compiled from: GsonBuilder.kt */
    /* loaded from: classes.dex */
    public static final class g extends oa.a<ja.i> {
    }

    /* compiled from: ServerViewModel.kt */
    @cc.f(c = "com.anslayer.ui.servers.ServerViewModel$loadServers$1", f = "ServerViewModel.kt", l = {112, 120, 131}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class h extends cc.k implements ic.p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f16627f;

        /* renamed from: g, reason: collision with root package name */
        public /* synthetic */ Object f16628g;

        public h(ac.d<? super h> dVar) {
            super(2, dVar);
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            h hVar = new h(dVar);
            hVar.f16628g = obj;
            return hVar;
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((h) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x00e5 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:21:0x00e6  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x009b  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x00ab A[RETURN] */
        @Override // cc.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            q0 q0Var;
            String g10;
            p4.k kVar;
            z zVar;
            p4.k kVar2;
            Object d10 = bc.c.d();
            int i10 = this.f16627f;
            try {
            } catch (Exception e10) {
                if (e10 instanceof HttpException) {
                    if (((HttpException) e10).a() == 404) {
                        i7.b.a aVar = i7.b.f7890a;
                        aVar.j(aVar.h() + 1);
                    }
                } else if ((e10 instanceof OkHttpException) && ((OkHttpException) e10).a() == 404) {
                    i7.b.a aVar2 = i7.b.f7890a;
                    aVar2.j(aVar2.h() + 1);
                }
                z.this.f16604n.o(c.a.f16452a);
            }
            if (i10 == 0) {
                vb.k.b(obj);
                q0Var = (q0) this.f16628g;
                i7.b.a aVar3 = i7.b.f7890a;
                if (aVar3.g() == null || aVar3.h() > 0) {
                    Application application = z.this.f16592b;
                    this.f16628g = q0Var;
                    this.f16627f = 1;
                    obj = aVar3.f(application, this);
                    if (obj == d10) {
                        return d10;
                    }
                }
                ja.n b10 = com.github.salomonbrys.kotson.a.b(vb.n.a("anime_id", cc.b.c(z.this.o())), vb.n.a("episode_id", z.this.s()));
                SeriesEndpoint A = z.this.A();
                g10 = i7.b.f7890a.g();
                if (g10 == null) {
                    g10 = "";
                }
                String lVar = b10.toString();
                this.f16628g = q0Var;
                this.f16627f = 2;
                obj = A.seriesEpisodesPost(g10, lVar, this);
                if (obj == d10) {
                    return d10;
                }
                Object a10 = ((n4.c) obj).a();
                jc.l.c(a10);
                Object b11 = ((n4.d) a10).b();
                jc.l.c(b11);
                kVar = (p4.k) ((List) b11).get(0);
                z.this.G(kVar);
                z.this.f16602l.o(kVar);
                z.this.F(q0Var);
                zVar = z.this;
                this.f16628g = kVar;
                this.f16627f = 3;
                if (zVar.C(kVar, this) == d10) {
                }
            } else {
                if (i10 != 1) {
                    if (i10 != 2) {
                        if (i10 == 3) {
                            kVar2 = (p4.k) this.f16628g;
                            vb.k.b(obj);
                            z.this.f16604n.o(new c.b(kVar2));
                            return vb.p.f15031a;
                        }
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    q0Var = (q0) this.f16628g;
                    vb.k.b(obj);
                    Object a102 = ((n4.c) obj).a();
                    jc.l.c(a102);
                    Object b112 = ((n4.d) a102).b();
                    jc.l.c(b112);
                    kVar = (p4.k) ((List) b112).get(0);
                    z.this.G(kVar);
                    z.this.f16602l.o(kVar);
                    z.this.F(q0Var);
                    zVar = z.this;
                    this.f16628g = kVar;
                    this.f16627f = 3;
                    if (zVar.C(kVar, this) == d10) {
                        return d10;
                    }
                    kVar2 = kVar;
                    z.this.f16604n.o(new c.b(kVar2));
                    return vb.p.f15031a;
                }
                q0Var = (q0) this.f16628g;
                vb.k.b(obj);
            }
            String str = (String) obj;
            if (str != null) {
                i7.b.a aVar4 = i7.b.f7890a;
                aVar4.j(0);
                aVar4.i(str);
            }
            ja.n b102 = com.github.salomonbrys.kotson.a.b(vb.n.a("anime_id", cc.b.c(z.this.o())), vb.n.a("episode_id", z.this.s()));
            SeriesEndpoint A2 = z.this.A();
            g10 = i7.b.f7890a.g();
            if (g10 == null) {
            }
            String lVar2 = b102.toString();
            this.f16628g = q0Var;
            this.f16627f = 2;
            obj = A2.seriesEpisodesPost(g10, lVar2, this);
            if (obj == d10) {
            }
            Object a1022 = ((n4.c) obj).a();
            jc.l.c(a1022);
            Object b1122 = ((n4.d) a1022).b();
            jc.l.c(b1122);
            kVar = (p4.k) ((List) b1122).get(0);
            z.this.G(kVar);
            z.this.f16602l.o(kVar);
            z.this.F(q0Var);
            zVar = z.this;
            this.f16628g = kVar;
            this.f16627f = 3;
            if (zVar.C(kVar, this) == d10) {
            }
        }
    }

    /* compiled from: ServerViewModel.kt */
    /* loaded from: classes.dex */
    public static final class i extends jc.m implements ic.a<RNCryptorNative> {

        /* renamed from: f, reason: collision with root package name */
        public static final i f16630f = new i();

        public i() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final RNCryptorNative invoke() {
            return new RNCryptorNative();
        }
    }

    /* compiled from: ServerViewModel.kt */
    @cc.f(c = "com.anslayer.ui.servers.ServerViewModel$sendCdnAnalytics$1", f = "ServerViewModel.kt", l = {275}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class j extends cc.k implements ic.p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f16631f;

        public j(ac.d<? super j> dVar) {
            super(2, dVar);
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new j(dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((j) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f16631f;
            try {
                if (i10 == 0) {
                    vb.k.b(obj);
                    byte[] decode = Base64.decode("aHR0cHM6Ly9hcHBzbHl0aWNzLmNvbS9hcGkvYW5hbHl0aWNz", 0);
                    jc.l.e(decode, "decode(Constants.analyticsBaseUrl, Base64.DEFAULT)");
                    String m10 = jc.l.m(new String(decode, qc.c.f12678b), "/server");
                    FormBody n10 = z.this.n();
                    jc.l.e(n10, "analyticsFormBody");
                    Request d11 = x4.e.d(m10, null, n10, 2, null);
                    z3.b.a aVar = z3.b.f17284d;
                    Application a10 = z.this.a();
                    jc.l.e(a10, "getApplication()");
                    Call newCall = aVar.getInstance(a10).d().newCall(d11);
                    jc.l.e(newCall, "RetroFactory.getInstance…tpClient.newCall(request)");
                    this.f16631f = 1;
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

    /* compiled from: ServerViewModel.kt */
    @cc.f(c = "com.anslayer.ui.servers.ServerViewModel$sendEpisodeAnalytics$1", f = "ServerViewModel.kt", l = {162}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class k extends cc.k implements ic.p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f16633f;

        public k(ac.d<? super k> dVar) {
            super(2, dVar);
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new k(dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((k) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f16633f;
            try {
                if (i10 == 0) {
                    vb.k.b(obj);
                    byte[] decode = Base64.decode("aHR0cHM6Ly9hcHBzbHl0aWNzLmNvbS9hcGkvYW5hbHl0aWNz", 0);
                    jc.l.e(decode, "decode(Constants.analyticsBaseUrl, Base64.DEFAULT)");
                    String m10 = jc.l.m(new String(decode, qc.c.f12678b), "/episode");
                    FormBody n10 = z.this.n();
                    jc.l.e(n10, "analyticsFormBody");
                    Request d11 = x4.e.d(m10, null, n10, 2, null);
                    z3.b.a aVar = z3.b.f17284d;
                    Application a10 = z.this.a();
                    jc.l.e(a10, "getApplication()");
                    Call newCall = aVar.getInstance(a10).d().newCall(d11);
                    jc.l.e(newCall, "RetroFactory.getInstance…tpClient.newCall(request)");
                    this.f16633f = 1;
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

    /* compiled from: ServerViewModel.kt */
    /* loaded from: classes.dex */
    public static final class l extends jc.m implements ic.a<SeriesEndpoint> {
        public l() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SeriesEndpoint invoke() {
            return (SeriesEndpoint) z3.b.f17284d.getInstance(z.this.f16592b).b(SeriesEndpoint.class);
        }
    }

    /* compiled from: Injekt.kt */
    /* loaded from: classes.dex */
    public static final class m extends jc.m implements ic.a<f4.d> {

        /* renamed from: f, reason: collision with root package name */
        public static final m f16636f = new m();

        /* compiled from: TypeInfo.kt */
        /* loaded from: classes.dex */
        public static final class a extends zd.a<f4.d> {
        }

        public m() {
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
    public static final class n extends jc.m implements ic.a<ja.f> {

        /* renamed from: f, reason: collision with root package name */
        public static final n f16637f = new n();

        /* compiled from: TypeInfo.kt */
        /* loaded from: classes.dex */
        public static final class a extends zd.a<ja.f> {
        }

        public n() {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, ja.f] */
        @Override // ic.a
        public final ja.f invoke() {
            return yd.a.a().a(new a().getType());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z(Application application, long j10, String str, String str2, String str3) {
        super(application);
        jc.l.f(application, "app");
        jc.l.f(str, "episodeId");
        this.f16592b = application;
        this.f16593c = j10;
        this.f16594d = str;
        this.f16595e = str2;
        this.f16596f = str3;
        this.f16597g = vb.f.a(new l());
        this.f16598h = vb.f.a(m.f16636f);
        this.f16599i = vb.f.a(n.f16637f);
        this.f16600j = vb.f.a(new d());
        this.f16601k = vb.f.a(i.f16630f);
        this.f16602l = new androidx.lifecycle.y<>();
        this.f16603m = new androidx.lifecycle.y<>();
        this.f16604n = new androidx.lifecycle.y<>();
        this.f16605o = new androidx.lifecycle.y<>();
        this.f16607q = vb.f.a(new c());
        D();
    }

    public final SeriesEndpoint A() {
        return (SeriesEndpoint) this.f16597g.getValue();
    }

    public final androidx.lifecycle.y<y6.c> B() {
        return this.f16604n;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(18:141|142|143|144|16|17|18|19|20|21|22|(6:25|26|27|28|29|23)|128|129|42|43|44|(2:46|(4:48|43|44|(14:56|57|(2:60|58)|61|62|(6:65|(3:76|(3:79|(2:81|82)(1:83)|77)|84)|69|(3:71|72|73)(1:75)|74|63)|85|86|(6:89|(2:90|(2:92|(1:94)(1:102))(2:103|104))|95|(2:97|98)(2:100|101)|99|87)|105|106|(3:108|(4:110|(3:115|(3:118|(2:120|121)(1:122)|116)|123)|112|(1:114))|124)|125|126)(0))(8:49|(1:51)|52|(1:54)|11|12|13|(0)))(0)) */
    /* JADX WARN: Can't wrap try/catch for region: R(20:10|11|12|13|(3:138|139|(18:141|142|143|144|16|17|18|19|20|21|22|(6:25|26|27|28|29|23)|128|129|42|43|44|(2:46|(4:48|43|44|(14:56|57|(2:60|58)|61|62|(6:65|(3:76|(3:79|(2:81|82)(1:83)|77)|84)|69|(3:71|72|73)(1:75)|74|63)|85|86|(6:89|(2:90|(2:92|(1:94)(1:102))(2:103|104))|95|(2:97|98)(2:100|101)|99|87)|105|106|(3:108|(4:110|(3:115|(3:118|(2:120|121)(1:122)|116)|123)|112|(1:114))|124)|125|126)(0))(8:49|(1:51)|52|(1:54)|11|12|13|(0)))(0)))|15|16|17|18|19|20|21|22|(1:23)|128|129|42|43|44|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x0215, code lost:
    
        r10 = r24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x0213, code lost:
    
        r29 = r6;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0390  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x01b8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:154:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x01f8 A[Catch: Exception -> 0x0215, TRY_LEAVE, TryCatch #4 {Exception -> 0x0215, blocks: (B:22:0x01e7, B:23:0x01f2, B:25:0x01f8), top: B:21:0x01e7 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x023b  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x026e A[LOOP:1: B:38:0x0268->B:40:0x026e, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x028d  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x02ac A[LOOP:2: B:58:0x02a6->B:60:0x02ac, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x02cd  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0317  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0032  */
    /* JADX WARN: Type inference failed for: r0v23, types: [T, java.lang.String] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:0x0107 -> B:42:0x0284). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:52:0x0186 -> B:11:0x0189). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object C(p4.k kVar, ac.d<? super vb.p> dVar) {
        e eVar;
        int i10;
        List arrayList;
        jc.x xVar;
        p4.k kVar2;
        Object h10;
        z zVar;
        String str;
        bd.c cVar;
        bd.e a10;
        List<v4.b> servers;
        List<r4.l> m10;
        List<v4.b> list;
        z zVar2;
        jc.x xVar2;
        Iterator it2;
        List list2;
        String str2;
        p4.k kVar3;
        String str3;
        Iterator<T> it3;
        Iterator it4;
        boolean z10;
        Object obj;
        boolean z11;
        String str4;
        String str5;
        String str6;
        e eVar2;
        ArrayList arrayList2;
        Type type;
        Type b10;
        Type rawType;
        String str7 = "it";
        String str8 = "type.rawType";
        String str9 = "fromJson(json, typeToken<T>())";
        if (dVar instanceof e) {
            eVar = (e) dVar;
            int i11 = eVar.f16626o;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                eVar.f16626o = i11 - Integer.MIN_VALUE;
                Object obj2 = eVar.f16624m;
                Object d10 = bc.c.d();
                i10 = eVar.f16626o;
                String str10 = "";
                if (i10 != 0) {
                    vb.k.b(obj2);
                    arrayList = new ArrayList();
                    xVar = new jc.x();
                    xVar.f9194f = "";
                    byte[] decode = Base64.decode("aHR0cHM6Ly9hbnNsYXllci5jb20vYW5pbWUvcHVibGljL3Ivb2w2Lmpz", 0);
                    jc.l.e(decode, "ol");
                    String str11 = new String(decode, qc.c.f12678b);
                    eVar.f16617f = this;
                    kVar2 = kVar;
                    eVar.f16618g = kVar2;
                    eVar.f16619h = arrayList;
                    eVar.f16620i = xVar;
                    eVar.f16626o = 1;
                    h10 = x4.e.h(str11, null, eVar, 2, null);
                    if (h10 == d10) {
                        return d10;
                    }
                    zVar = this;
                } else if (i10 == 1) {
                    xVar = (jc.x) eVar.f16620i;
                    arrayList = (List) eVar.f16619h;
                    p4.k kVar4 = (p4.k) eVar.f16618g;
                    z zVar3 = (z) eVar.f16617f;
                    vb.k.b(obj2);
                    zVar = zVar3;
                    h10 = obj2;
                    kVar2 = kVar4;
                } else {
                    if (i10 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    it2 = (Iterator) eVar.f16623l;
                    list = (List) eVar.f16622k;
                    str2 = (String) eVar.f16621j;
                    xVar2 = (jc.x) eVar.f16620i;
                    list2 = (List) eVar.f16619h;
                    kVar3 = (p4.k) eVar.f16618g;
                    zVar2 = (z) eVar.f16617f;
                    vb.k.b(obj2);
                    String str12 = "it";
                    String str13 = "type.rawType";
                    String str14 = "fromJson(json, typeToken<T>())";
                    String str15 = "";
                    String str16 = (String) obj2;
                    try {
                    } catch (Exception unused) {
                        eVar2 = eVar;
                        str4 = str12;
                        str5 = str14;
                        str6 = str13;
                    }
                    String decrypt = zVar2.z().decrypt(str16, DriveUtil.b(zVar2.q().i()));
                    ja.f w10 = zVar2.w();
                    jc.l.e(decrypt, "text");
                    Type type2 = new f().getType();
                    jc.l.b(type2, "object : TypeToken<T>() {} .type");
                    if (type2 instanceof ParameterizedType) {
                        try {
                        } catch (Exception unused2) {
                            str6 = str13;
                            eVar2 = eVar;
                            str4 = str12;
                            str5 = str14;
                            ja.f w11 = zVar2.w();
                            type = new g().getType();
                            jc.l.b(type, "object : TypeToken<T>() {} .type");
                            if (type instanceof ParameterizedType) {
                            }
                            b10 = com.github.salomonbrys.kotson.c.b(type);
                            Object l10 = w11.l(str16, b10);
                            jc.l.b(l10, str5);
                            Iterable<ja.l> iterable = (Iterable) l10;
                            arrayList2 = new ArrayList(wb.m.q(iterable, 10));
                            while (r0.hasNext()) {
                            }
                            list2.addAll(arrayList2);
                            eVar = eVar2;
                            str8 = str6;
                            str9 = str5;
                            str7 = str4;
                            str10 = str15;
                            if (it2.hasNext()) {
                            }
                        }
                        if (com.github.salomonbrys.kotson.c.a((ParameterizedType) type2)) {
                            rawType = ((ParameterizedType) type2).getRawType();
                            str6 = str13;
                            jc.l.b(rawType, str6);
                            Object l11 = w10.l(decrypt, rawType);
                            str5 = str14;
                            jc.l.b(l11, str5);
                            Iterable<ja.l> iterable2 = (Iterable) l11;
                            eVar2 = eVar;
                            arrayList2 = new ArrayList(wb.m.q(iterable2, 10));
                            for (ja.l lVar : iterable2) {
                                str4 = str12;
                                try {
                                } catch (Exception unused3) {
                                    ja.f w112 = zVar2.w();
                                    type = new g().getType();
                                    jc.l.b(type, "object : TypeToken<T>() {} .type");
                                    if (type instanceof ParameterizedType) {
                                        ParameterizedType parameterizedType = (ParameterizedType) type;
                                        if (com.github.salomonbrys.kotson.c.a(parameterizedType)) {
                                            b10 = parameterizedType.getRawType();
                                            jc.l.b(b10, str6);
                                            Object l102 = w112.l(str16, b10);
                                            jc.l.b(l102, str5);
                                            Iterable<ja.l> iterable3 = (Iterable) l102;
                                            arrayList2 = new ArrayList(wb.m.q(iterable3, 10));
                                            for (ja.l lVar2 : iterable3) {
                                                jc.l.e(lVar2, str4);
                                                arrayList2.add(com.github.salomonbrys.kotson.b.f(lVar2));
                                            }
                                            list2.addAll(arrayList2);
                                            eVar = eVar2;
                                            str8 = str6;
                                            str9 = str5;
                                            str7 = str4;
                                            str10 = str15;
                                            if (it2.hasNext()) {
                                            }
                                        }
                                    }
                                    b10 = com.github.salomonbrys.kotson.c.b(type);
                                    Object l1022 = w112.l(str16, b10);
                                    jc.l.b(l1022, str5);
                                    Iterable<ja.l> iterable32 = (Iterable) l1022;
                                    arrayList2 = new ArrayList(wb.m.q(iterable32, 10));
                                    while (r0.hasNext()) {
                                    }
                                    list2.addAll(arrayList2);
                                    eVar = eVar2;
                                    str8 = str6;
                                    str9 = str5;
                                    str7 = str4;
                                    str10 = str15;
                                    if (it2.hasNext()) {
                                    }
                                }
                                jc.l.e(lVar, str4);
                                arrayList2.add(com.github.salomonbrys.kotson.b.f(lVar));
                                str12 = str4;
                            }
                            str4 = str12;
                            list2.addAll(arrayList2);
                            eVar = eVar2;
                            str8 = str6;
                            str9 = str5;
                            str7 = str4;
                            str10 = str15;
                            if (it2.hasNext()) {
                                r4.l lVar3 = (r4.l) it2.next();
                                str15 = str10;
                                if (jc.l.a(lVar3.a(), "cdn")) {
                                    list2.add(lVar3.c());
                                    xVar2.f9194f = lVar3.c();
                                    str4 = str7;
                                    str5 = str9;
                                    str6 = str8;
                                    str8 = str6;
                                    str9 = str5;
                                    str7 = str4;
                                    str10 = str15;
                                    if (it2.hasNext()) {
                                        str3 = str10;
                                        vb.p pVar = vb.p.f15031a;
                                        kVar2 = kVar3;
                                        xVar = xVar2;
                                        str = str2;
                                        zVar = zVar2;
                                        arrayList = list2;
                                        servers = list;
                                        ArrayList arrayList3 = new ArrayList(wb.m.q(servers, 10));
                                        it3 = servers.iterator();
                                        while (it3.hasNext()) {
                                            arrayList3.add(((v4.b) it3.next()).f());
                                        }
                                        List y10 = wb.t.y(arrayList3);
                                        ArrayList arrayList4 = new ArrayList();
                                        for (Object obj3 : arrayList) {
                                            String str17 = (String) obj3;
                                            if (!(y10 instanceof Collection) || !y10.isEmpty()) {
                                                Iterator it5 = y10.iterator();
                                                while (it5.hasNext()) {
                                                    if (qc.u.C(str17, (String) it5.next(), false, 2, null)) {
                                                        z11 = true;
                                                        break;
                                                    }
                                                }
                                            }
                                            z11 = false;
                                            if (z11) {
                                                arrayList4.add(obj3);
                                            }
                                        }
                                        List R = wb.t.R(wb.t.y(arrayList4));
                                        ArrayList arrayList5 = new ArrayList();
                                        it4 = R.iterator();
                                        while (it4.hasNext()) {
                                            String str18 = str3;
                                            String c10 = new qc.i("\\s+").c((String) it4.next(), str18);
                                            Iterator<T> it6 = servers.iterator();
                                            while (true) {
                                                if (!it6.hasNext()) {
                                                    obj = null;
                                                    break;
                                                }
                                                obj = it6.next();
                                                if (qc.u.C(c10, ((v4.b) obj).f(), false, 2, null)) {
                                                    break;
                                                }
                                            }
                                            v4.b bVar = (v4.b) obj;
                                            if (bVar != null) {
                                                arrayList5.add(new w(c10, null, bVar.g(), false, false, 26, null));
                                            } else {
                                                arrayList5.add(new w(c10, null, false, false, false, 26, null));
                                            }
                                            str3 = str18;
                                        }
                                        if (SupportExtentionKt.isConnectedToNetwork(zVar.f16592b)) {
                                            if (!R.isEmpty()) {
                                                if (!arrayList5.isEmpty()) {
                                                    Iterator it7 = arrayList5.iterator();
                                                    while (it7.hasNext()) {
                                                        if (!((w) it7.next()).f()) {
                                                            z10 = false;
                                                            break;
                                                        }
                                                    }
                                                }
                                                z10 = true;
                                                if (!z10) {
                                                    arrayList5.add(new w((String) xVar.f9194f, y.WORKING, true, r4.c.c(zVar.q()), true));
                                                }
                                            }
                                            arrayList5.add(new w((String) xVar.f9194f, y.WORKING, true, true, true));
                                        }
                                        zVar.f16603m.o(new y6.b(arrayList5, servers, kVar2, str));
                                        return vb.p.f15031a;
                                    }
                                } else {
                                    str12 = str7;
                                    str13 = str8;
                                    str14 = str9;
                                    FormBody.Builder add = new FormBody.Builder().add(GoogleApiAvailabilityLight.TRACKING_SOURCE_NOTIFICATION, qc.u.i0(lVar3.c(), "n=", null, 2, null));
                                    String g10 = i7.b.f7890a.g();
                                    if (g10 == null) {
                                        g10 = str15;
                                    }
                                    FormBody build = add.add("inf", g10).build();
                                    String v10 = qc.t.v(qc.u.q0(lVar3.c(), "?n=", null, 2, null), "/f2", "/fw", false, 4, null);
                                    jc.l.e(build, "body");
                                    eVar.f16617f = zVar2;
                                    eVar.f16618g = kVar3;
                                    eVar.f16619h = list2;
                                    eVar.f16620i = xVar2;
                                    eVar.f16621j = str2;
                                    eVar.f16622k = list;
                                    eVar.f16623l = it2;
                                    eVar.f16626o = 2;
                                    obj2 = x4.e.j(v10, null, build, eVar, 2, null);
                                    if (obj2 == d10) {
                                        return d10;
                                    }
                                    String str162 = (String) obj2;
                                    String decrypt2 = zVar2.z().decrypt(str162, DriveUtil.b(zVar2.q().i()));
                                    ja.f w102 = zVar2.w();
                                    jc.l.e(decrypt2, "text");
                                    Type type22 = new f().getType();
                                    jc.l.b(type22, "object : TypeToken<T>() {} .type");
                                    if (type22 instanceof ParameterizedType) {
                                    }
                                }
                            }
                        }
                    }
                    str6 = str13;
                    rawType = com.github.salomonbrys.kotson.c.b(type22);
                    Object l112 = w102.l(decrypt2, rawType);
                    str5 = str14;
                    jc.l.b(l112, str5);
                    Iterable<ja.l> iterable22 = (Iterable) l112;
                    eVar2 = eVar;
                    arrayList2 = new ArrayList(wb.m.q(iterable22, 10));
                    while (r0.hasNext()) {
                    }
                    str4 = str12;
                    list2.addAll(arrayList2);
                    eVar = eVar2;
                    str8 = str6;
                    str9 = str5;
                    str7 = str4;
                    str10 = str15;
                    if (it2.hasNext()) {
                    }
                }
                str = (String) h10;
                cVar = bd.c.DEBUG;
                a10 = bd.e.f3616a.a();
                if (a10.b(cVar)) {
                    a10.a(cVar, bd.d.a(zVar), str);
                }
                servers = ServersResolver.Companion.getServers(str);
                m10 = kVar2.m();
                if (m10 == null) {
                    list = servers;
                    zVar2 = zVar;
                    xVar2 = xVar;
                    it2 = m10.iterator();
                    list2 = arrayList;
                    str2 = str;
                    kVar3 = kVar2;
                    if (it2.hasNext()) {
                    }
                } else {
                    str3 = "";
                    ArrayList arrayList32 = new ArrayList(wb.m.q(servers, 10));
                    it3 = servers.iterator();
                    while (it3.hasNext()) {
                    }
                    List y102 = wb.t.y(arrayList32);
                    ArrayList arrayList42 = new ArrayList();
                    while (r3.hasNext()) {
                    }
                    List R2 = wb.t.R(wb.t.y(arrayList42));
                    ArrayList arrayList52 = new ArrayList();
                    it4 = R2.iterator();
                    while (it4.hasNext()) {
                    }
                    if (SupportExtentionKt.isConnectedToNetwork(zVar.f16592b)) {
                    }
                    zVar.f16603m.o(new y6.b(arrayList52, servers, kVar2, str));
                    return vb.p.f15031a;
                }
            }
        }
        eVar = new e(dVar);
        Object obj22 = eVar.f16624m;
        Object d102 = bc.c.d();
        i10 = eVar.f16626o;
        String str102 = "";
        if (i10 != 0) {
        }
        str = (String) h10;
        cVar = bd.c.DEBUG;
        a10 = bd.e.f3616a.a();
        if (a10.b(cVar)) {
        }
        servers = ServersResolver.Companion.getServers(str);
        m10 = kVar2.m();
        if (m10 == null) {
        }
    }

    public final void D() {
        this.f16604n.o(c.C0431c.f16454a);
        rc.k.d(j0.a(this), null, null, new h(null), 3, null);
    }

    public final void E(q0 q0Var) {
        jc.l.f(q0Var, "coroutineScope");
        if (r4.c.b(q())) {
            rc.k.d(q0Var, g1.b(), null, new j(null), 2, null);
        }
    }

    public final void F(q0 q0Var) {
        if (r4.c.b(q())) {
            rc.k.d(q0Var, g1.b(), null, new k(null), 2, null);
        }
    }

    public final void G(p4.k kVar) {
        this.f16606p = kVar;
    }

    public final void l(int i10) {
        this.f16605o.o(a.b.f16446a);
        rc.k.d(j0.a(this), null, null, new a(i10, null), 3, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m(ac.d<? super vb.p> dVar) {
        b bVar;
        int i10;
        z zVar;
        p4.k r10;
        if (dVar instanceof b) {
            bVar = (b) dVar;
            int i11 = bVar.f16614i;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                bVar.f16614i = i11 - Integer.MIN_VALUE;
                Object obj = bVar.f16612g;
                Object d10 = bc.c.d();
                i10 = bVar.f16614i;
                if (i10 != 0) {
                    vb.k.b(obj);
                    SeriesEndpoint A = A();
                    long parseLong = Long.parseLong(s());
                    bVar.f16611f = this;
                    bVar.f16614i = 1;
                    if (A.addEpisodeToWatchHistoryV2(parseLong, bVar) == d10) {
                        return d10;
                    }
                    zVar = this;
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    zVar = (z) bVar.f16611f;
                    vb.k.b(obj);
                }
                r10 = zVar.r();
                if (r10 != null) {
                    r10.t("Yes");
                }
                return vb.p.f15031a;
            }
        }
        bVar = new b(dVar);
        Object obj2 = bVar.f16612g;
        Object d102 = bc.c.d();
        i10 = bVar.f16614i;
        if (i10 != 0) {
        }
        r10 = zVar.r();
        if (r10 != null) {
        }
        return vb.p.f15031a;
    }

    public final FormBody n() {
        return (FormBody) this.f16607q.getValue();
    }

    public final long o() {
        return this.f16593c;
    }

    public final String p() {
        return this.f16595e;
    }

    public final r4.b q() {
        return (r4.b) this.f16600j.getValue();
    }

    public final p4.k r() {
        return this.f16606p;
    }

    public final String s() {
        return this.f16594d;
    }

    public final androidx.lifecycle.y<y6.a> t() {
        return this.f16605o;
    }

    public final androidx.lifecycle.y<y6.b> u() {
        return this.f16603m;
    }

    public final String v() {
        return this.f16596f;
    }

    public final ja.f w() {
        return (ja.f) this.f16599i.getValue();
    }

    public final f4.d x() {
        return (f4.d) this.f16598h.getValue();
    }

    public final androidx.lifecycle.y<p4.k> y() {
        return this.f16602l;
    }

    public final RNCryptorNative z() {
        return (RNCryptorNative) this.f16601k.getValue();
    }
}
