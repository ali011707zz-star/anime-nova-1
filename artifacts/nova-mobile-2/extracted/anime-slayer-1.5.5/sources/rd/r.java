package rd;

import java.lang.annotation.Annotation;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;
import okhttp3.Call;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import rd.a;
import rd.c;
import rd.f;

/* compiled from: Retrofit.java */
/* loaded from: classes.dex */
public final class r {

    /* renamed from: a, reason: collision with root package name */
    public final Map<Method, s<?>> f13528a = new ConcurrentHashMap();

    /* renamed from: b, reason: collision with root package name */
    public final Call.Factory f13529b;

    /* renamed from: c, reason: collision with root package name */
    public final HttpUrl f13530c;

    /* renamed from: d, reason: collision with root package name */
    public final List<f.a> f13531d;

    /* renamed from: e, reason: collision with root package name */
    public final List<c.a> f13532e;

    /* renamed from: f, reason: collision with root package name */
    @Nullable
    public final Executor f13533f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f13534g;

    /* compiled from: Retrofit.java */
    /* loaded from: classes.dex */
    public class a implements InvocationHandler {

        /* renamed from: a, reason: collision with root package name */
        public final n f13535a = n.f();

        /* renamed from: b, reason: collision with root package name */
        public final Object[] f13536b = new Object[0];

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ Class f13537c;

        public a(Class cls) {
            this.f13537c = cls;
        }

        @Override // java.lang.reflect.InvocationHandler
        @Nullable
        public Object invoke(Object obj, Method method, @Nullable Object[] objArr) throws Throwable {
            if (method.getDeclaringClass() == Object.class) {
                return method.invoke(this, objArr);
            }
            if (this.f13535a.h(method)) {
                return this.f13535a.g(method, this.f13537c, obj, objArr);
            }
            s<?> d10 = r.this.d(method);
            if (objArr == null) {
                objArr = this.f13536b;
            }
            return d10.a(objArr);
        }
    }

    public r(Call.Factory factory, HttpUrl httpUrl, List<f.a> list, List<c.a> list2, @Nullable Executor executor, boolean z10) {
        this.f13529b = factory;
        this.f13530c = httpUrl;
        this.f13531d = list;
        this.f13532e = list2;
        this.f13533f = executor;
        this.f13534g = z10;
    }

    public c<?, ?> a(Type type, Annotation[] annotationArr) {
        return e(null, type, annotationArr);
    }

    public <T> T b(Class<T> cls) {
        v.v(cls);
        if (this.f13534g) {
            c(cls);
        }
        return (T) Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new a(cls));
    }

    public final void c(Class<?> cls) {
        n f10 = n.f();
        for (Method method : cls.getDeclaredMethods()) {
            if (!f10.h(method) && !Modifier.isStatic(method.getModifiers())) {
                d(method);
            }
        }
    }

    public s<?> d(Method method) {
        s<?> sVar;
        s<?> sVar2 = this.f13528a.get(method);
        if (sVar2 != null) {
            return sVar2;
        }
        synchronized (this.f13528a) {
            sVar = this.f13528a.get(method);
            if (sVar == null) {
                sVar = s.b(this, method);
                this.f13528a.put(method, sVar);
            }
        }
        return sVar;
    }

    public c<?, ?> e(@Nullable c.a aVar, Type type, Annotation[] annotationArr) {
        v.b(type, "returnType == null");
        v.b(annotationArr, "annotations == null");
        int indexOf = this.f13532e.indexOf(aVar) + 1;
        int size = this.f13532e.size();
        for (int i10 = indexOf; i10 < size; i10++) {
            c<?, ?> a10 = this.f13532e.get(i10).a(type, annotationArr, this);
            if (a10 != null) {
                return a10;
            }
        }
        StringBuilder sb2 = new StringBuilder("Could not locate call adapter for ");
        sb2.append(type);
        sb2.append(".\n");
        if (aVar != null) {
            sb2.append("  Skipped:");
            for (int i11 = 0; i11 < indexOf; i11++) {
                sb2.append("\n   * ");
                sb2.append(this.f13532e.get(i11).getClass().getName());
            }
            sb2.append('\n');
        }
        sb2.append("  Tried:");
        int size2 = this.f13532e.size();
        while (indexOf < size2) {
            sb2.append("\n   * ");
            sb2.append(this.f13532e.get(indexOf).getClass().getName());
            indexOf++;
        }
        throw new IllegalArgumentException(sb2.toString());
    }

    public <T> f<T, RequestBody> f(@Nullable f.a aVar, Type type, Annotation[] annotationArr, Annotation[] annotationArr2) {
        v.b(type, "type == null");
        v.b(annotationArr, "parameterAnnotations == null");
        v.b(annotationArr2, "methodAnnotations == null");
        int indexOf = this.f13531d.indexOf(aVar) + 1;
        int size = this.f13531d.size();
        for (int i10 = indexOf; i10 < size; i10++) {
            f<T, RequestBody> fVar = (f<T, RequestBody>) this.f13531d.get(i10).requestBodyConverter(type, annotationArr, annotationArr2, this);
            if (fVar != null) {
                return fVar;
            }
        }
        StringBuilder sb2 = new StringBuilder("Could not locate RequestBody converter for ");
        sb2.append(type);
        sb2.append(".\n");
        if (aVar != null) {
            sb2.append("  Skipped:");
            for (int i11 = 0; i11 < indexOf; i11++) {
                sb2.append("\n   * ");
                sb2.append(this.f13531d.get(i11).getClass().getName());
            }
            sb2.append('\n');
        }
        sb2.append("  Tried:");
        int size2 = this.f13531d.size();
        while (indexOf < size2) {
            sb2.append("\n   * ");
            sb2.append(this.f13531d.get(indexOf).getClass().getName());
            indexOf++;
        }
        throw new IllegalArgumentException(sb2.toString());
    }

    public <T> f<ResponseBody, T> g(@Nullable f.a aVar, Type type, Annotation[] annotationArr) {
        v.b(type, "type == null");
        v.b(annotationArr, "annotations == null");
        int indexOf = this.f13531d.indexOf(aVar) + 1;
        int size = this.f13531d.size();
        for (int i10 = indexOf; i10 < size; i10++) {
            f<ResponseBody, T> fVar = (f<ResponseBody, T>) this.f13531d.get(i10).responseBodyConverter(type, annotationArr, this);
            if (fVar != null) {
                return fVar;
            }
        }
        StringBuilder sb2 = new StringBuilder("Could not locate ResponseBody converter for ");
        sb2.append(type);
        sb2.append(".\n");
        if (aVar != null) {
            sb2.append("  Skipped:");
            for (int i11 = 0; i11 < indexOf; i11++) {
                sb2.append("\n   * ");
                sb2.append(this.f13531d.get(i11).getClass().getName());
            }
            sb2.append('\n');
        }
        sb2.append("  Tried:");
        int size2 = this.f13531d.size();
        while (indexOf < size2) {
            sb2.append("\n   * ");
            sb2.append(this.f13531d.get(indexOf).getClass().getName());
            indexOf++;
        }
        throw new IllegalArgumentException(sb2.toString());
    }

    public <T> f<T, RequestBody> h(Type type, Annotation[] annotationArr, Annotation[] annotationArr2) {
        return f(null, type, annotationArr, annotationArr2);
    }

    public <T> f<ResponseBody, T> i(Type type, Annotation[] annotationArr) {
        return g(null, type, annotationArr);
    }

    public <T> f<T, String> j(Type type, Annotation[] annotationArr) {
        v.b(type, "type == null");
        v.b(annotationArr, "annotations == null");
        int size = this.f13531d.size();
        for (int i10 = 0; i10 < size; i10++) {
            f<T, String> fVar = (f<T, String>) this.f13531d.get(i10).stringConverter(type, annotationArr, this);
            if (fVar != null) {
                return fVar;
            }
        }
        return a.d.f13363a;
    }

    /* compiled from: Retrofit.java */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        public final n f13539a;

        /* renamed from: b, reason: collision with root package name */
        @Nullable
        public Call.Factory f13540b;

        /* renamed from: c, reason: collision with root package name */
        @Nullable
        public HttpUrl f13541c;

        /* renamed from: d, reason: collision with root package name */
        public final List<f.a> f13542d;

        /* renamed from: e, reason: collision with root package name */
        public final List<c.a> f13543e;

        /* renamed from: f, reason: collision with root package name */
        @Nullable
        public Executor f13544f;

        /* renamed from: g, reason: collision with root package name */
        public boolean f13545g;

        public b(n nVar) {
            this.f13542d = new ArrayList();
            this.f13543e = new ArrayList();
            this.f13539a = nVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public b a(f.a aVar) {
            this.f13542d.add(v.b(aVar, "factory == null"));
            return this;
        }

        public b b(String str) {
            v.b(str, "baseUrl == null");
            return c(HttpUrl.get(str));
        }

        public b c(HttpUrl httpUrl) {
            v.b(httpUrl, "baseUrl == null");
            if ("".equals(httpUrl.pathSegments().get(r0.size() - 1))) {
                this.f13541c = httpUrl;
                return this;
            }
            throw new IllegalArgumentException("baseUrl must end in /: " + httpUrl);
        }

        public r d() {
            if (this.f13541c != null) {
                Call.Factory factory = this.f13540b;
                if (factory == null) {
                    factory = new OkHttpClient();
                }
                Call.Factory factory2 = factory;
                Executor executor = this.f13544f;
                if (executor == null) {
                    executor = this.f13539a.b();
                }
                Executor executor2 = executor;
                ArrayList arrayList = new ArrayList(this.f13543e);
                arrayList.addAll(this.f13539a.a(executor2));
                ArrayList arrayList2 = new ArrayList(this.f13542d.size() + 1 + this.f13539a.d());
                arrayList2.add(new rd.a());
                arrayList2.addAll(this.f13542d);
                arrayList2.addAll(this.f13539a.c());
                return new r(factory2, this.f13541c, Collections.unmodifiableList(arrayList2), Collections.unmodifiableList(arrayList), executor2, this.f13545g);
            }
            throw new IllegalStateException("Base URL required.");
        }

        public b e(Call.Factory factory) {
            this.f13540b = (Call.Factory) v.b(factory, "factory == null");
            return this;
        }

        public b f(OkHttpClient okHttpClient) {
            return e((Call.Factory) v.b(okHttpClient, "client == null"));
        }

        public b() {
            this(n.f());
        }
    }
}
