package f4;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import ic.l;
import io.wax911.support.util.InstanceUtil;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.List;
import jc.m;
import qc.t;

/* compiled from: Settings.kt */
/* loaded from: classes.dex */
public final class d extends n5.c {

    /* renamed from: r, reason: collision with root package name */
    public static final a f6409r = new a(null);

    /* renamed from: e, reason: collision with root package name */
    public final vb.e f6410e;

    /* renamed from: f, reason: collision with root package name */
    public final bb.c f6411f;

    /* renamed from: g, reason: collision with root package name */
    public final h f6412g;

    /* renamed from: h, reason: collision with root package name */
    public final c f6413h;

    /* renamed from: i, reason: collision with root package name */
    public final i f6414i;

    /* renamed from: j, reason: collision with root package name */
    public final e f6415j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f6416k;

    /* renamed from: l, reason: collision with root package name */
    public String f6417l;

    /* renamed from: m, reason: collision with root package name */
    public String f6418m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f6419n;

    /* renamed from: o, reason: collision with root package name */
    public boolean f6420o;

    /* renamed from: p, reason: collision with root package name */
    public q4.a f6421p;

    /* renamed from: q, reason: collision with root package name */
    public int f6422q;

    /* compiled from: Settings.kt */
    /* loaded from: classes.dex */
    public static final class a extends InstanceUtil<d, Context> {

        /* compiled from: Settings.kt */
        /* renamed from: f4.d$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0118a extends m implements l<Context, d> {

            /* renamed from: f, reason: collision with root package name */
            public static final C0118a f6423f = new C0118a();

            public C0118a() {
                super(1);
            }

            @Override // ic.l
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final d invoke(Context context) {
                jc.l.f(context, "it");
                return new d(context);
            }
        }

        public a() {
            super(C0118a.f6423f);
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }
    }

    /* compiled from: FlowSharedPreferences.kt */
    /* loaded from: classes.dex */
    public static final class b implements bb.g<f4.b> {
        @Override // bb.g
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public f4.b deserialize(String str) {
            jc.l.f(str, "serialized");
            return f4.b.valueOf(str);
        }

        @Override // bb.g
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public String serialize(f4.b bVar) {
            jc.l.f(bVar, AppMeasurementSdk.ConditionalUserProperty.VALUE);
            return bVar.name();
        }
    }

    /* compiled from: Settings.kt */
    /* loaded from: classes.dex */
    public static final class c implements bb.g<List<? extends o4.d>> {

        /* compiled from: GsonBuilder.kt */
        /* loaded from: classes.dex */
        public static final class a extends oa.a<List<? extends o4.d>> {
        }

        public c() {
        }

        @Override // bb.g
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public List<o4.d> deserialize(String str) {
            Type b10;
            jc.l.f(str, "serialized");
            ja.f y10 = d.this.y();
            Type type = new a().getType();
            jc.l.b(type, "object : TypeToken<T>() {} .type");
            if (type instanceof ParameterizedType) {
                ParameterizedType parameterizedType = (ParameterizedType) type;
                if (com.github.salomonbrys.kotson.c.a(parameterizedType)) {
                    b10 = parameterizedType.getRawType();
                    jc.l.b(b10, "type.rawType");
                    Object l10 = y10.l(str, b10);
                    jc.l.b(l10, "fromJson(json, typeToken<T>())");
                    return (List) l10;
                }
            }
            b10 = com.github.salomonbrys.kotson.c.b(type);
            Object l102 = y10.l(str, b10);
            jc.l.b(l102, "fromJson(json, typeToken<T>())");
            return (List) l102;
        }

        @Override // bb.g
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public String serialize(List<o4.d> list) {
            jc.l.f(list, AppMeasurementSdk.ConditionalUserProperty.VALUE);
            String t10 = d.this.y().t(list);
            jc.l.e(t10, "gson.toJson(value)");
            return t10;
        }
    }

    /* compiled from: Injekt.kt */
    /* renamed from: f4.d$d, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0119d extends m implements ic.a<ja.f> {

        /* renamed from: f, reason: collision with root package name */
        public static final C0119d f6425f = new C0119d();

        /* compiled from: TypeInfo.kt */
        /* renamed from: f4.d$d$a */
        /* loaded from: classes.dex */
        public static final class a extends zd.a<ja.f> {
        }

        public C0119d() {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, ja.f] */
        @Override // ic.a
        public final ja.f invoke() {
            return yd.a.a().a(new a().getType());
        }
    }

    /* compiled from: Settings.kt */
    /* loaded from: classes.dex */
    public static final class e implements bb.g<List<? extends o4.g>> {

        /* compiled from: GsonBuilder.kt */
        /* loaded from: classes.dex */
        public static final class a extends oa.a<List<? extends o4.g>> {
        }

        public e() {
        }

        @Override // bb.g
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public List<o4.g> deserialize(String str) {
            Type b10;
            jc.l.f(str, "serialized");
            ja.f y10 = d.this.y();
            Type type = new a().getType();
            jc.l.b(type, "object : TypeToken<T>() {} .type");
            if (type instanceof ParameterizedType) {
                ParameterizedType parameterizedType = (ParameterizedType) type;
                if (com.github.salomonbrys.kotson.c.a(parameterizedType)) {
                    b10 = parameterizedType.getRawType();
                    jc.l.b(b10, "type.rawType");
                    Object l10 = y10.l(str, b10);
                    jc.l.b(l10, "fromJson(json, typeToken<T>())");
                    return (List) l10;
                }
            }
            b10 = com.github.salomonbrys.kotson.c.b(type);
            Object l102 = y10.l(str, b10);
            jc.l.b(l102, "fromJson(json, typeToken<T>())");
            return (List) l102;
        }

        @Override // bb.g
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public String serialize(List<o4.g> list) {
            jc.l.f(list, AppMeasurementSdk.ConditionalUserProperty.VALUE);
            String t10 = d.this.y().t(list);
            jc.l.e(t10, "gson.toJson(value)");
            return t10;
        }
    }

    /* compiled from: FlowSharedPreferences.kt */
    /* loaded from: classes.dex */
    public static final class f implements bb.g<f4.a> {
        @Override // bb.g
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public f4.a deserialize(String str) {
            jc.l.f(str, "serialized");
            return f4.a.valueOf(str);
        }

        @Override // bb.g
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public String serialize(f4.a aVar) {
            jc.l.f(aVar, AppMeasurementSdk.ConditionalUserProperty.VALUE);
            return aVar.name();
        }
    }

    /* compiled from: FlowSharedPreferences.kt */
    /* loaded from: classes.dex */
    public static final class g implements bb.g<f4.c> {
        @Override // bb.g
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public f4.c deserialize(String str) {
            jc.l.f(str, "serialized");
            return f4.c.valueOf(str);
        }

        @Override // bb.g
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public String serialize(f4.c cVar) {
            jc.l.f(cVar, AppMeasurementSdk.ConditionalUserProperty.VALUE);
            return cVar.name();
        }
    }

    /* compiled from: Settings.kt */
    /* loaded from: classes.dex */
    public static final class h implements bb.g<w4.e> {

        /* compiled from: GsonBuilder.kt */
        /* loaded from: classes.dex */
        public static final class a extends oa.a<w4.e> {
        }

        public h() {
        }

        @Override // bb.g
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public w4.e deserialize(String str) {
            Type b10;
            jc.l.f(str, "serialized");
            ja.f y10 = d.this.y();
            Type type = new a().getType();
            jc.l.b(type, "object : TypeToken<T>() {} .type");
            if (type instanceof ParameterizedType) {
                ParameterizedType parameterizedType = (ParameterizedType) type;
                if (com.github.salomonbrys.kotson.c.a(parameterizedType)) {
                    b10 = parameterizedType.getRawType();
                    jc.l.b(b10, "type.rawType");
                    Object l10 = y10.l(str, b10);
                    jc.l.b(l10, "fromJson(json, typeToken<T>())");
                    return (w4.e) l10;
                }
            }
            b10 = com.github.salomonbrys.kotson.c.b(type);
            Object l102 = y10.l(str, b10);
            jc.l.b(l102, "fromJson(json, typeToken<T>())");
            return (w4.e) l102;
        }

        @Override // bb.g
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public String serialize(w4.e eVar) {
            jc.l.f(eVar, AppMeasurementSdk.ConditionalUserProperty.VALUE);
            String t10 = d.this.y().t(eVar);
            jc.l.e(t10, "gson.toJson(value)");
            return t10;
        }
    }

    /* compiled from: Settings.kt */
    /* loaded from: classes.dex */
    public static final class i implements bb.g<List<? extends o4.h>> {

        /* compiled from: GsonBuilder.kt */
        /* loaded from: classes.dex */
        public static final class a extends oa.a<List<? extends o4.h>> {
        }

        public i() {
        }

        @Override // bb.g
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public List<o4.h> deserialize(String str) {
            Type b10;
            jc.l.f(str, "serialized");
            ja.f y10 = d.this.y();
            Type type = new a().getType();
            jc.l.b(type, "object : TypeToken<T>() {} .type");
            if (type instanceof ParameterizedType) {
                ParameterizedType parameterizedType = (ParameterizedType) type;
                if (com.github.salomonbrys.kotson.c.a(parameterizedType)) {
                    b10 = parameterizedType.getRawType();
                    jc.l.b(b10, "type.rawType");
                    Object l10 = y10.l(str, b10);
                    jc.l.b(l10, "fromJson(json, typeToken<T>())");
                    return (List) l10;
                }
            }
            b10 = com.github.salomonbrys.kotson.c.b(type);
            Object l102 = y10.l(str, b10);
            jc.l.b(l102, "fromJson(json, typeToken<T>())");
            return (List) l102;
        }

        @Override // bb.g
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public String serialize(List<o4.h> list) {
            jc.l.f(list, AppMeasurementSdk.ConditionalUserProperty.VALUE);
            String t10 = d.this.y().t(list);
            jc.l.e(t10, "gson.toJson(value)");
            return t10;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public d(Context context) {
        super(context);
        jc.l.f(context, "context");
        this.f6410e = vb.f.a(C0119d.f6425f);
        this.f6411f = new bb.c(a(), null, 2, 0 == true ? 1 : 0);
        this.f6412g = new h();
        this.f6413h = new c();
        this.f6414i = new i();
        this.f6415j = new e();
        this.f6421p = q4.a.GRID;
    }

    public static /* synthetic */ void U(d dVar, long j10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            j10 = -1;
        }
        dVar.T(j10);
    }

    public final int A() {
        return a().getInt("notification_count", 0);
    }

    public final q4.a B() {
        if (a().getBoolean("_seriesViewType", true)) {
            return q4.a.GRID;
        }
        return q4.a.LIST;
    }

    @y3.a
    public final String C() {
        return a().getString("_order_by", "latest_first");
    }

    public final String D() {
        return a().getString("user_list_sort_by", "latest_first");
    }

    public final bb.f<Boolean> E() {
        return this.f6411f.a("hide_irrelevant_comment", true);
    }

    public final boolean F() {
        return a().getBoolean("auto_update", true);
    }

    public final boolean G() {
        return a().getBoolean("dark_theme", false);
    }

    public final boolean H() {
        return !a().getBoolean("_seriesViewType", true);
    }

    public final boolean I() {
        return a().getBoolean("_authenticatedBySocial", false);
    }

    public final boolean J() {
        return a().getBoolean("_unreadNotification", false);
    }

    public final boolean K() {
        return a().getBoolean("_worker_enabled", false);
    }

    public final boolean L() {
        return a().getBoolean("pref_keep_episodes_filtered_status", false);
    }

    public final bb.f<Long> M() {
        return this.f6411f.b("last_start_ad_check", 0L);
    }

    public final bb.f<w4.e> N() {
        return this.f6411f.c("authUser", this.f6412g, w4.e.Companion.a());
    }

    public final void O(String str) {
        jc.l.f(str, "json");
        a().edit().putString("configuration", str).apply();
    }

    public final void P(String str) {
        SharedPreferences.Editor edit = a().edit();
        jc.l.e(edit, "editor");
        edit.putString("app_seasons", str);
        edit.apply();
    }

    public final void Q(String str) {
        this.f6418m = str;
        a().edit().putString("_lastReadApplicationNote", str).apply();
    }

    public final void R(String str) {
        jc.l.f(str, "json");
        a().edit().putString("authWebToken", str).apply();
    }

    public final void S(String str) {
        this.f6417l = str;
        a().edit().putString("_authenticatedByProvider", str).apply();
    }

    public final void T(long j10) {
        SharedPreferences.Editor edit = a().edit();
        edit.putLong("_authenticatedUser", j10);
        edit.apply();
    }

    public final void V(@y3.a String str) {
        SharedPreferences.Editor edit = a().edit();
        edit.putString("_sortByCommentReplyType", str);
        edit.apply();
    }

    public final void W(@y3.a String str) {
        jc.l.f(str, "sortOrder");
        SharedPreferences.Editor edit = a().edit();
        edit.putString("_sortByCommentType", str);
        edit.apply();
    }

    public final void X(@y3.a String str, boolean z10) {
        jc.l.f(str, "sortOrder");
        if (z10) {
            V(str);
        } else {
            W(str);
        }
    }

    public final void Y(int i10) {
        SharedPreferences.Editor edit = a().edit();
        jc.l.e(edit, "editor");
        edit.putInt("episodes_flags", i10);
        edit.apply();
    }

    public final void Z(boolean z10) {
        SharedPreferences.Editor edit = a().edit();
        jc.l.e(edit, "editor");
        edit.putBoolean("fresh_install", z10);
        edit.apply();
    }

    public final void a0(int i10) {
        this.f6422q = i10;
        a().edit().putInt("last_version_code", i10).apply();
    }

    public final void b0(int i10) {
        a().edit().putInt("notification_count", i10).apply();
    }

    public final void c0(q4.a aVar) {
        jc.l.f(aVar, AppMeasurementSdk.ConditionalUserProperty.VALUE);
        this.f6421p = aVar;
        a().edit().putBoolean("_seriesViewType", aVar == q4.a.GRID).apply();
    }

    public final void d0(boolean z10) {
        this.f6416k = z10;
        a().edit().putBoolean("_authenticatedBySocial", z10).apply();
    }

    public final bb.f<List<o4.d>> e() {
        return this.f6411f.c("genres", this.f6413h, o4.d.Companion.a());
    }

    public final void e0(@y3.a String str) {
        jc.l.f(str, "sortOrder");
        SharedPreferences.Editor edit = a().edit();
        edit.putString("_order_by", str);
        edit.apply();
    }

    public final bb.f<List<o4.g>> f() {
        return this.f6411f.c("app_studios", this.f6415j, o4.g.Companion.a());
    }

    public final void f0(boolean z10) {
        this.f6419n = z10;
        a().edit().putBoolean("_unreadNotification", z10).apply();
    }

    public final bb.f<List<o4.h>> g() {
        return this.f6411f.c("years", this.f6414i, o4.h.Companion.a());
    }

    public final void g0(String str) {
        jc.l.f(str, "cookie");
        SharedPreferences.Editor edit = a().edit();
        jc.l.e(edit, "editor");
        edit.putString("user_drive_cookie", str);
        edit.apply();
    }

    public final bb.f<Boolean> h() {
        return this.f6411f.a("comment_spoiler_warning", true);
    }

    public final void h0(String str) {
        jc.l.f(str, "string");
        SharedPreferences.Editor edit = a().edit();
        jc.l.e(edit, "editor");
        edit.putString("user_list_sort_by", str);
        edit.apply();
    }

    public final void i(r4.b bVar) {
        jc.l.f(bVar, "appConfig");
        String l10 = bVar.l();
        if ((l10 == null || t.s(l10)) ? false : true) {
            if (jc.l.a(p(), bVar.l())) {
                return;
            }
            Q(bVar.l());
            f0(true);
            return;
        }
        f0(false);
    }

    public final void i0(boolean z10) {
        this.f6420o = z10;
        a().edit().putBoolean("_worker_enabled", z10).apply();
    }

    public final boolean j() {
        return a().getBoolean("default_Adm", false);
    }

    public final bb.f<f4.a> j0() {
        return this.f6411f.c("pref_theme_dark_key", new f(), f4.a.DARK_BLUE);
    }

    public final bb.f<String> k() {
        return this.f6411f.d("default_player", "2");
    }

    public final bb.f<f4.c> k0() {
        return this.f6411f.c("pref_theme_mode_key", new g(), f4.c.SYSTEM);
    }

    public final bb.f<Boolean> l() {
        return this.f6411f.a("_episode_watched_history", true);
    }

    public final bb.f<f4.b> m() {
        return this.f6411f.c("finish_downloading", new b(), f4.b.DEFAULT);
    }

    public final String n() {
        return a().getString("configuration", "");
    }

    public final String o() {
        return a().getString("app_seasons", "");
    }

    public final String p() {
        return a().getString("_lastReadApplicationNote", null);
    }

    public final String q() {
        return a().getString("authWebToken", "");
    }

    public final String r() {
        return a().getString("_authenticatedByProvider", null);
    }

    @y3.a
    public final String s() {
        return a().getString("_sortByCommentReplyType", "earliest_first");
    }

    @y3.a
    public final String t() {
        return a().getString("_sortByCommentType", "latest_first");
    }

    @y3.a
    public final String u(boolean z10) {
        if (z10) {
            return s();
        }
        return t();
    }

    public final int v() {
        return a().getInt("episodes_flags", 0);
    }

    public final int w() {
        return a().getInt("default_player_seek_amount", 10);
    }

    public final boolean x() {
        return a().getBoolean("fresh_install", true);
    }

    public final ja.f y() {
        return (ja.f) this.f6410e.getValue();
    }

    public final int z() {
        return a().getInt("last_version_code", 0);
    }
}
