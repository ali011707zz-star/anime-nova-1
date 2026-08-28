package e7;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.HashMap;
import jc.l;
import jc.m;

/* compiled from: RequestUtil.kt */
/* loaded from: classes.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public final vb.e f6192a = vb.f.a(b.f6194f);

    /* renamed from: b, reason: collision with root package name */
    public final vb.e f6193b = vb.f.a(c.f6195f);

    /* compiled from: GsonBuilder.kt */
    /* loaded from: classes.dex */
    public static final class a extends oa.a<HashMap<String, Object>> {
    }

    /* compiled from: RequestUtil.kt */
    /* loaded from: classes.dex */
    public static final class b extends m implements ic.a<HashMap<String, Object>> {

        /* renamed from: f, reason: collision with root package name */
        public static final b f6194f = new b();

        public b() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HashMap<String, Object> invoke() {
            return new HashMap<>();
        }
    }

    /* compiled from: Injekt.kt */
    /* loaded from: classes.dex */
    public static final class c extends m implements ic.a<ja.f> {

        /* renamed from: f, reason: collision with root package name */
        public static final c f6195f = new c();

        /* compiled from: TypeInfo.kt */
        /* loaded from: classes.dex */
        public static final class a extends zd.a<ja.f> {
        }

        public c() {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, ja.f] */
        @Override // ic.a
        public final ja.f invoke() {
            return yd.a.a().a(new a().getType());
        }
    }

    public final d a(String str) {
        Type b10;
        l.f(str, "json");
        ja.f c10 = c();
        Type type = new a().getType();
        l.b(type, "object : TypeToken<T>() {} .type");
        if (type instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) type;
            if (com.github.salomonbrys.kotson.c.a(parameterizedType)) {
                b10 = parameterizedType.getRawType();
                l.b(b10, "type.rawType");
                Object l10 = c10.l(str, b10);
                l.b(l10, "fromJson(json, typeToken<T>())");
                d().putAll((HashMap) l10);
                return this;
            }
        }
        b10 = com.github.salomonbrys.kotson.c.b(type);
        Object l102 = c10.l(str, b10);
        l.b(l102, "fromJson(json, typeToken<T>())");
        d().putAll((HashMap) l102);
        return this;
    }

    public final String b() {
        String t10 = new ja.f().t(d());
        l.e(t10, "Gson().toJson(params)");
        return t10;
    }

    public final ja.f c() {
        return (ja.f) this.f6193b.getValue();
    }

    public final HashMap<String, Object> d() {
        return (HashMap) this.f6192a.getValue();
    }
}
