package rd;

import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import javax.annotation.Nullable;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import rd.f;
import td.w;

/* compiled from: BuiltInConverters.java */
/* loaded from: classes.dex */
public final class a extends f.a {

    /* renamed from: a, reason: collision with root package name */
    public boolean f13359a = true;

    /* compiled from: BuiltInConverters.java */
    /* renamed from: rd.a$a, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0328a implements rd.f<ResponseBody, ResponseBody> {

        /* renamed from: a, reason: collision with root package name */
        public static final C0328a f13360a = new C0328a();

        @Override // rd.f
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ResponseBody convert(ResponseBody responseBody) throws IOException {
            try {
                return v.a(responseBody);
            } finally {
                responseBody.close();
            }
        }
    }

    /* compiled from: BuiltInConverters.java */
    /* loaded from: classes2.dex */
    public static final class b implements rd.f<RequestBody, RequestBody> {

        /* renamed from: a, reason: collision with root package name */
        public static final b f13361a = new b();

        @Override // rd.f
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public RequestBody convert(RequestBody requestBody) {
            return requestBody;
        }
    }

    /* compiled from: BuiltInConverters.java */
    /* loaded from: classes2.dex */
    public static final class c implements rd.f<ResponseBody, ResponseBody> {

        /* renamed from: a, reason: collision with root package name */
        public static final c f13362a = new c();

        @Override // rd.f
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ResponseBody convert(ResponseBody responseBody) {
            return responseBody;
        }
    }

    /* compiled from: BuiltInConverters.java */
    /* loaded from: classes2.dex */
    public static final class d implements rd.f<Object, String> {

        /* renamed from: a, reason: collision with root package name */
        public static final d f13363a = new d();

        @Override // rd.f
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public String convert(Object obj) {
            return obj.toString();
        }
    }

    /* compiled from: BuiltInConverters.java */
    /* loaded from: classes2.dex */
    public static final class e implements rd.f<ResponseBody, vb.p> {

        /* renamed from: a, reason: collision with root package name */
        public static final e f13364a = new e();

        @Override // rd.f
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public vb.p convert(ResponseBody responseBody) {
            responseBody.close();
            return vb.p.f15031a;
        }
    }

    /* compiled from: BuiltInConverters.java */
    /* loaded from: classes2.dex */
    public static final class f implements rd.f<ResponseBody, Void> {

        /* renamed from: a, reason: collision with root package name */
        public static final f f13365a = new f();

        @Override // rd.f
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void convert(ResponseBody responseBody) {
            responseBody.close();
            return null;
        }
    }

    @Override // rd.f.a
    @Nullable
    public rd.f<?, RequestBody> requestBodyConverter(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, r rVar) {
        if (RequestBody.class.isAssignableFrom(v.i(type))) {
            return b.f13361a;
        }
        return null;
    }

    @Override // rd.f.a
    @Nullable
    public rd.f<ResponseBody, ?> responseBodyConverter(Type type, Annotation[] annotationArr, r rVar) {
        if (type == ResponseBody.class) {
            if (v.m(annotationArr, w.class)) {
                return c.f13362a;
            }
            return C0328a.f13360a;
        }
        if (type == Void.class) {
            return f.f13365a;
        }
        if (!this.f13359a || type != vb.p.class) {
            return null;
        }
        try {
            return e.f13364a;
        } catch (NoClassDefFoundError unused) {
            this.f13359a = false;
            return null;
        }
    }
}
