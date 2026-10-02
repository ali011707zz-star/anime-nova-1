package a4;

import f4.d;
import ja.f;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import jc.g;
import jc.l;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import org.apache.http.HttpHeaders;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.client.utils.URLEncodedUtils;

/* compiled from: ClientInterceptor.kt */
/* loaded from: classes.dex */
public final class a implements Interceptor {

    /* renamed from: a, reason: collision with root package name */
    public final d f368a;

    /* renamed from: b, reason: collision with root package name */
    public final f f369b;

    /* compiled from: GsonBuilder.kt */
    /* renamed from: a4.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0005a extends oa.a<t4.b> {
    }

    /* compiled from: TypeInfo.kt */
    /* loaded from: classes.dex */
    public static final class b extends zd.a<d> {
    }

    /* compiled from: TypeInfo.kt */
    /* loaded from: classes.dex */
    public static final class c extends zd.a<f> {
    }

    public a(d dVar, f fVar) {
        l.f(dVar, "prefs");
        l.f(fVar, "gson");
        this.f368a = dVar;
        this.f369b = fVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00c4  */
    @Override // okhttp3.Interceptor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Response intercept(Interceptor.Chain chain) {
        Type b10;
        String d10;
        int hashCode;
        l.f(chain, "chain");
        Request request = chain.request();
        Request.Builder newBuilder = request.newBuilder();
        newBuilder.addHeader("Client-Id", "android-app2");
        newBuilder.addHeader("Client-Secret", "7befba6263cc14c90d2f1d6da2c5cf9b251bfbbd");
        newBuilder.addHeader(HttpHeaders.ACCEPT, "application/json");
        newBuilder.addHeader(HttpHeaders.ACCEPT, "application/*+json");
        String method = request.method();
        if (method != null && ((hashCode = method.hashCode()) == 79599 ? method.equals(HttpPut.METHOD_NAME) : hashCode == 2461856 ? method.equals(HttpPost.METHOD_NAME) : hashCode == 75900968 && method.equals("PATCH"))) {
            newBuilder.addHeader("Content-Type", URLEncodedUtils.CONTENT_TYPE);
        }
        if (this.f368a.b()) {
            String q10 = this.f368a.q();
            if (!(q10 == null || q10.length() == 0)) {
                f fVar = this.f369b;
                Type type = new C0005a().getType();
                l.b(type, "object : TypeToken<T>() {} .type");
                if (type instanceof ParameterizedType) {
                    ParameterizedType parameterizedType = (ParameterizedType) type;
                    if (com.github.salomonbrys.kotson.c.a(parameterizedType)) {
                        b10 = parameterizedType.getRawType();
                        l.b(b10, "type.rawType");
                        Object l10 = fVar.l(q10, b10);
                        l.b(l10, "fromJson(json, typeToken<T>())");
                        d10 = ((t4.b) l10).d();
                        if (d10.length() > 0) {
                            l.m("accessToken: ", d10);
                            newBuilder.addHeader("Authorization", l.m("Bearer ", d10));
                        }
                    }
                }
                b10 = com.github.salomonbrys.kotson.c.b(type);
                Object l102 = fVar.l(q10, b10);
                l.b(l102, "fromJson(json, typeToken<T>())");
                d10 = ((t4.b) l102).d();
                if (d10.length() > 0) {
                }
            }
        }
        Response proceed = chain.proceed(newBuilder.build());
        l.e(proceed, "chain.proceed(builder.build())");
        return proceed;
    }

    public /* synthetic */ a(d dVar, f fVar, int i10, g gVar) {
        this((i10 & 1) != 0 ? (d) yd.a.a().a(new b().getType()) : dVar, (i10 & 2) != 0 ? (f) yd.a.a().a(new c().getType()) : fVar);
    }
}
