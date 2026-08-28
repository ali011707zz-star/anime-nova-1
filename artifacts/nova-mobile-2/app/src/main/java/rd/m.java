package rd;

import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.Map;
import javax.annotation.Nullable;
import okhttp3.Headers;
import okhttp3.MultipartBody;
import okhttp3.RequestBody;

/* compiled from: ParameterHandler.java */
/* loaded from: classes.dex */
public abstract class m<T> {

    /* compiled from: ParameterHandler.java */
    /* loaded from: classes.dex */
    public class a extends m<Iterable<T>> {
        public a() {
        }

        @Override // rd.m
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public void a(rd.o oVar, @Nullable Iterable<T> iterable) throws IOException {
            if (iterable == null) {
                return;
            }
            Iterator<T> it2 = iterable.iterator();
            while (it2.hasNext()) {
                m.this.a(oVar, it2.next());
            }
        }
    }

    /* compiled from: ParameterHandler.java */
    /* loaded from: classes.dex */
    public class b extends m<Object> {
        public b() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // rd.m
        public void a(rd.o oVar, @Nullable Object obj) throws IOException {
            if (obj == null) {
                return;
            }
            int length = Array.getLength(obj);
            for (int i10 = 0; i10 < length; i10++) {
                m.this.a(oVar, Array.get(obj, i10));
            }
        }
    }

    /* compiled from: ParameterHandler.java */
    /* loaded from: classes.dex */
    public static final class c<T> extends m<T> {

        /* renamed from: a, reason: collision with root package name */
        public final Method f13429a;

        /* renamed from: b, reason: collision with root package name */
        public final int f13430b;

        /* renamed from: c, reason: collision with root package name */
        public final rd.f<T, RequestBody> f13431c;

        public c(Method method, int i10, rd.f<T, RequestBody> fVar) {
            this.f13429a = method;
            this.f13430b = i10;
            this.f13431c = fVar;
        }

        @Override // rd.m
        public void a(rd.o oVar, @Nullable T t10) {
            if (t10 != null) {
                try {
                    oVar.l(this.f13431c.convert(t10));
                    return;
                } catch (IOException e10) {
                    throw v.q(this.f13429a, e10, this.f13430b, "Unable to convert " + t10 + " to RequestBody", new Object[0]);
                }
            }
            throw v.p(this.f13429a, this.f13430b, "Body parameter value must not be null.", new Object[0]);
        }
    }

    /* compiled from: ParameterHandler.java */
    /* loaded from: classes.dex */
    public static final class d<T> extends m<T> {

        /* renamed from: a, reason: collision with root package name */
        public final String f13432a;

        /* renamed from: b, reason: collision with root package name */
        public final rd.f<T, String> f13433b;

        /* renamed from: c, reason: collision with root package name */
        public final boolean f13434c;

        public d(String str, rd.f<T, String> fVar, boolean z10) {
            this.f13432a = (String) v.b(str, "name == null");
            this.f13433b = fVar;
            this.f13434c = z10;
        }

        @Override // rd.m
        public void a(rd.o oVar, @Nullable T t10) throws IOException {
            String convert;
            if (t10 == null || (convert = this.f13433b.convert(t10)) == null) {
                return;
            }
            oVar.a(this.f13432a, convert, this.f13434c);
        }
    }

    /* compiled from: ParameterHandler.java */
    /* loaded from: classes.dex */
    public static final class e<T> extends m<Map<String, T>> {

        /* renamed from: a, reason: collision with root package name */
        public final Method f13435a;

        /* renamed from: b, reason: collision with root package name */
        public final int f13436b;

        /* renamed from: c, reason: collision with root package name */
        public final rd.f<T, String> f13437c;

        /* renamed from: d, reason: collision with root package name */
        public final boolean f13438d;

        public e(Method method, int i10, rd.f<T, String> fVar, boolean z10) {
            this.f13435a = method;
            this.f13436b = i10;
            this.f13437c = fVar;
            this.f13438d = z10;
        }

        @Override // rd.m
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public void a(rd.o oVar, @Nullable Map<String, T> map) throws IOException {
            if (map != null) {
                for (Map.Entry<String, T> entry : map.entrySet()) {
                    String key = entry.getKey();
                    if (key != null) {
                        T value = entry.getValue();
                        if (value == null) {
                            throw v.p(this.f13435a, this.f13436b, "Field map contained null value for key '" + key + "'.", new Object[0]);
                        }
                        String convert = this.f13437c.convert(value);
                        if (convert != null) {
                            oVar.a(key, convert, this.f13438d);
                        } else {
                            throw v.p(this.f13435a, this.f13436b, "Field map value '" + value + "' converted to null by " + this.f13437c.getClass().getName() + " for key '" + key + "'.", new Object[0]);
                        }
                    } else {
                        throw v.p(this.f13435a, this.f13436b, "Field map contained null key.", new Object[0]);
                    }
                }
                return;
            }
            throw v.p(this.f13435a, this.f13436b, "Field map was null.", new Object[0]);
        }
    }

    /* compiled from: ParameterHandler.java */
    /* loaded from: classes.dex */
    public static final class f<T> extends m<T> {

        /* renamed from: a, reason: collision with root package name */
        public final String f13439a;

        /* renamed from: b, reason: collision with root package name */
        public final rd.f<T, String> f13440b;

        public f(String str, rd.f<T, String> fVar) {
            this.f13439a = (String) v.b(str, "name == null");
            this.f13440b = fVar;
        }

        @Override // rd.m
        public void a(rd.o oVar, @Nullable T t10) throws IOException {
            String convert;
            if (t10 == null || (convert = this.f13440b.convert(t10)) == null) {
                return;
            }
            oVar.b(this.f13439a, convert);
        }
    }

    /* compiled from: ParameterHandler.java */
    /* loaded from: classes.dex */
    public static final class g<T> extends m<Map<String, T>> {

        /* renamed from: a, reason: collision with root package name */
        public final Method f13441a;

        /* renamed from: b, reason: collision with root package name */
        public final int f13442b;

        /* renamed from: c, reason: collision with root package name */
        public final rd.f<T, String> f13443c;

        public g(Method method, int i10, rd.f<T, String> fVar) {
            this.f13441a = method;
            this.f13442b = i10;
            this.f13443c = fVar;
        }

        @Override // rd.m
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public void a(rd.o oVar, @Nullable Map<String, T> map) throws IOException {
            if (map != null) {
                for (Map.Entry<String, T> entry : map.entrySet()) {
                    String key = entry.getKey();
                    if (key != null) {
                        T value = entry.getValue();
                        if (value == null) {
                            throw v.p(this.f13441a, this.f13442b, "Header map contained null value for key '" + key + "'.", new Object[0]);
                        }
                        oVar.b(key, this.f13443c.convert(value));
                    } else {
                        throw v.p(this.f13441a, this.f13442b, "Header map contained null key.", new Object[0]);
                    }
                }
                return;
            }
            throw v.p(this.f13441a, this.f13442b, "Header map was null.", new Object[0]);
        }
    }

    /* compiled from: ParameterHandler.java */
    /* loaded from: classes.dex */
    public static final class h extends m<Headers> {

        /* renamed from: a, reason: collision with root package name */
        public final Method f13444a;

        /* renamed from: b, reason: collision with root package name */
        public final int f13445b;

        public h(Method method, int i10) {
            this.f13444a = method;
            this.f13445b = i10;
        }

        @Override // rd.m
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public void a(rd.o oVar, @Nullable Headers headers) {
            if (headers != null) {
                oVar.c(headers);
                return;
            }
            throw v.p(this.f13444a, this.f13445b, "Headers parameter must not be null.", new Object[0]);
        }
    }

    /* compiled from: ParameterHandler.java */
    /* loaded from: classes.dex */
    public static final class i<T> extends m<T> {

        /* renamed from: a, reason: collision with root package name */
        public final Method f13446a;

        /* renamed from: b, reason: collision with root package name */
        public final int f13447b;

        /* renamed from: c, reason: collision with root package name */
        public final Headers f13448c;

        /* renamed from: d, reason: collision with root package name */
        public final rd.f<T, RequestBody> f13449d;

        public i(Method method, int i10, Headers headers, rd.f<T, RequestBody> fVar) {
            this.f13446a = method;
            this.f13447b = i10;
            this.f13448c = headers;
            this.f13449d = fVar;
        }

        @Override // rd.m
        public void a(rd.o oVar, @Nullable T t10) {
            if (t10 == null) {
                return;
            }
            try {
                oVar.d(this.f13448c, this.f13449d.convert(t10));
            } catch (IOException e10) {
                throw v.p(this.f13446a, this.f13447b, "Unable to convert " + t10 + " to RequestBody", e10);
            }
        }
    }

    /* compiled from: ParameterHandler.java */
    /* loaded from: classes.dex */
    public static final class j<T> extends m<Map<String, T>> {

        /* renamed from: a, reason: collision with root package name */
        public final Method f13450a;

        /* renamed from: b, reason: collision with root package name */
        public final int f13451b;

        /* renamed from: c, reason: collision with root package name */
        public final rd.f<T, RequestBody> f13452c;

        /* renamed from: d, reason: collision with root package name */
        public final String f13453d;

        public j(Method method, int i10, rd.f<T, RequestBody> fVar, String str) {
            this.f13450a = method;
            this.f13451b = i10;
            this.f13452c = fVar;
            this.f13453d = str;
        }

        @Override // rd.m
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public void a(rd.o oVar, @Nullable Map<String, T> map) throws IOException {
            if (map != null) {
                for (Map.Entry<String, T> entry : map.entrySet()) {
                    String key = entry.getKey();
                    if (key != null) {
                        T value = entry.getValue();
                        if (value == null) {
                            throw v.p(this.f13450a, this.f13451b, "Part map contained null value for key '" + key + "'.", new Object[0]);
                        }
                        oVar.d(Headers.of("Content-Disposition", "form-data; name=\"" + key + "\"", "Content-Transfer-Encoding", this.f13453d), this.f13452c.convert(value));
                    } else {
                        throw v.p(this.f13450a, this.f13451b, "Part map contained null key.", new Object[0]);
                    }
                }
                return;
            }
            throw v.p(this.f13450a, this.f13451b, "Part map was null.", new Object[0]);
        }
    }

    /* compiled from: ParameterHandler.java */
    /* loaded from: classes.dex */
    public static final class k<T> extends m<T> {

        /* renamed from: a, reason: collision with root package name */
        public final Method f13454a;

        /* renamed from: b, reason: collision with root package name */
        public final int f13455b;

        /* renamed from: c, reason: collision with root package name */
        public final String f13456c;

        /* renamed from: d, reason: collision with root package name */
        public final rd.f<T, String> f13457d;

        /* renamed from: e, reason: collision with root package name */
        public final boolean f13458e;

        public k(Method method, int i10, String str, rd.f<T, String> fVar, boolean z10) {
            this.f13454a = method;
            this.f13455b = i10;
            this.f13456c = (String) v.b(str, "name == null");
            this.f13457d = fVar;
            this.f13458e = z10;
        }

        @Override // rd.m
        public void a(rd.o oVar, @Nullable T t10) throws IOException {
            if (t10 != null) {
                oVar.f(this.f13456c, this.f13457d.convert(t10), this.f13458e);
                return;
            }
            throw v.p(this.f13454a, this.f13455b, "Path parameter \"" + this.f13456c + "\" value must not be null.", new Object[0]);
        }
    }

    /* compiled from: ParameterHandler.java */
    /* loaded from: classes.dex */
    public static final class l<T> extends m<T> {

        /* renamed from: a, reason: collision with root package name */
        public final String f13459a;

        /* renamed from: b, reason: collision with root package name */
        public final rd.f<T, String> f13460b;

        /* renamed from: c, reason: collision with root package name */
        public final boolean f13461c;

        public l(String str, rd.f<T, String> fVar, boolean z10) {
            this.f13459a = (String) v.b(str, "name == null");
            this.f13460b = fVar;
            this.f13461c = z10;
        }

        @Override // rd.m
        public void a(rd.o oVar, @Nullable T t10) throws IOException {
            String convert;
            if (t10 == null || (convert = this.f13460b.convert(t10)) == null) {
                return;
            }
            oVar.g(this.f13459a, convert, this.f13461c);
        }
    }

    /* compiled from: ParameterHandler.java */
    /* renamed from: rd.m$m, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0333m<T> extends m<Map<String, T>> {

        /* renamed from: a, reason: collision with root package name */
        public final Method f13462a;

        /* renamed from: b, reason: collision with root package name */
        public final int f13463b;

        /* renamed from: c, reason: collision with root package name */
        public final rd.f<T, String> f13464c;

        /* renamed from: d, reason: collision with root package name */
        public final boolean f13465d;

        public C0333m(Method method, int i10, rd.f<T, String> fVar, boolean z10) {
            this.f13462a = method;
            this.f13463b = i10;
            this.f13464c = fVar;
            this.f13465d = z10;
        }

        @Override // rd.m
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public void a(rd.o oVar, @Nullable Map<String, T> map) throws IOException {
            if (map != null) {
                for (Map.Entry<String, T> entry : map.entrySet()) {
                    String key = entry.getKey();
                    if (key != null) {
                        T value = entry.getValue();
                        if (value == null) {
                            throw v.p(this.f13462a, this.f13463b, "Query map contained null value for key '" + key + "'.", new Object[0]);
                        }
                        String convert = this.f13464c.convert(value);
                        if (convert != null) {
                            oVar.g(key, convert, this.f13465d);
                        } else {
                            throw v.p(this.f13462a, this.f13463b, "Query map value '" + value + "' converted to null by " + this.f13464c.getClass().getName() + " for key '" + key + "'.", new Object[0]);
                        }
                    } else {
                        throw v.p(this.f13462a, this.f13463b, "Query map contained null key.", new Object[0]);
                    }
                }
                return;
            }
            throw v.p(this.f13462a, this.f13463b, "Query map was null", new Object[0]);
        }
    }

    /* compiled from: ParameterHandler.java */
    /* loaded from: classes.dex */
    public static final class n<T> extends m<T> {

        /* renamed from: a, reason: collision with root package name */
        public final rd.f<T, String> f13466a;

        /* renamed from: b, reason: collision with root package name */
        public final boolean f13467b;

        public n(rd.f<T, String> fVar, boolean z10) {
            this.f13466a = fVar;
            this.f13467b = z10;
        }

        @Override // rd.m
        public void a(rd.o oVar, @Nullable T t10) throws IOException {
            if (t10 == null) {
                return;
            }
            oVar.g(this.f13466a.convert(t10), null, this.f13467b);
        }
    }

    /* compiled from: ParameterHandler.java */
    /* loaded from: classes.dex */
    public static final class o extends m<MultipartBody.Part> {

        /* renamed from: a, reason: collision with root package name */
        public static final o f13468a = new o();

        @Override // rd.m
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public void a(rd.o oVar, @Nullable MultipartBody.Part part) {
            if (part != null) {
                oVar.e(part);
            }
        }
    }

    /* compiled from: ParameterHandler.java */
    /* loaded from: classes.dex */
    public static final class p extends m<Object> {

        /* renamed from: a, reason: collision with root package name */
        public final Method f13469a;

        /* renamed from: b, reason: collision with root package name */
        public final int f13470b;

        public p(Method method, int i10) {
            this.f13469a = method;
            this.f13470b = i10;
        }

        @Override // rd.m
        public void a(rd.o oVar, @Nullable Object obj) {
            if (obj != null) {
                oVar.m(obj);
                return;
            }
            throw v.p(this.f13469a, this.f13470b, "@Url parameter is null.", new Object[0]);
        }
    }

    /* compiled from: ParameterHandler.java */
    /* loaded from: classes.dex */
    public static final class q<T> extends m<T> {

        /* renamed from: a, reason: collision with root package name */
        public final Class<T> f13471a;

        public q(Class<T> cls) {
            this.f13471a = cls;
        }

        @Override // rd.m
        public void a(rd.o oVar, @Nullable T t10) {
            oVar.h(this.f13471a, t10);
        }
    }

    public abstract void a(rd.o oVar, @Nullable T t10) throws IOException;

    public final m<Object> b() {
        return new b();
    }

    public final m<Iterable<T>> c() {
        return new a();
    }
}
