package rd;

import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.net.URI;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.annotation.Nullable;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.Request;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpHead;
import org.apache.http.client.methods.HttpOptions;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import rd.m;
import td.x;
import td.y;

/* compiled from: RequestFactory.java */
/* loaded from: classes.dex */
public final class p {

    /* renamed from: a, reason: collision with root package name */
    public final Method f13489a;

    /* renamed from: b, reason: collision with root package name */
    public final HttpUrl f13490b;

    /* renamed from: c, reason: collision with root package name */
    public final String f13491c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    public final String f13492d;

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    public final Headers f13493e;

    /* renamed from: f, reason: collision with root package name */
    @Nullable
    public final MediaType f13494f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f13495g;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f13496h;

    /* renamed from: i, reason: collision with root package name */
    public final boolean f13497i;

    /* renamed from: j, reason: collision with root package name */
    public final m<?>[] f13498j;

    /* renamed from: k, reason: collision with root package name */
    public final boolean f13499k;

    /* compiled from: RequestFactory.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: x, reason: collision with root package name */
        public static final Pattern f13500x = Pattern.compile("\\{([a-zA-Z][a-zA-Z0-9_-]*)\\}");

        /* renamed from: y, reason: collision with root package name */
        public static final Pattern f13501y = Pattern.compile("[a-zA-Z][a-zA-Z0-9_-]*");

        /* renamed from: a, reason: collision with root package name */
        public final r f13502a;

        /* renamed from: b, reason: collision with root package name */
        public final Method f13503b;

        /* renamed from: c, reason: collision with root package name */
        public final Annotation[] f13504c;

        /* renamed from: d, reason: collision with root package name */
        public final Annotation[][] f13505d;

        /* renamed from: e, reason: collision with root package name */
        public final Type[] f13506e;

        /* renamed from: f, reason: collision with root package name */
        public boolean f13507f;

        /* renamed from: g, reason: collision with root package name */
        public boolean f13508g;

        /* renamed from: h, reason: collision with root package name */
        public boolean f13509h;

        /* renamed from: i, reason: collision with root package name */
        public boolean f13510i;

        /* renamed from: j, reason: collision with root package name */
        public boolean f13511j;

        /* renamed from: k, reason: collision with root package name */
        public boolean f13512k;

        /* renamed from: l, reason: collision with root package name */
        public boolean f13513l;

        /* renamed from: m, reason: collision with root package name */
        public boolean f13514m;

        /* renamed from: n, reason: collision with root package name */
        @Nullable
        public String f13515n;

        /* renamed from: o, reason: collision with root package name */
        public boolean f13516o;

        /* renamed from: p, reason: collision with root package name */
        public boolean f13517p;

        /* renamed from: q, reason: collision with root package name */
        public boolean f13518q;

        /* renamed from: r, reason: collision with root package name */
        @Nullable
        public String f13519r;

        /* renamed from: s, reason: collision with root package name */
        @Nullable
        public Headers f13520s;

        /* renamed from: t, reason: collision with root package name */
        @Nullable
        public MediaType f13521t;

        /* renamed from: u, reason: collision with root package name */
        @Nullable
        public Set<String> f13522u;

        /* renamed from: v, reason: collision with root package name */
        @Nullable
        public m<?>[] f13523v;

        /* renamed from: w, reason: collision with root package name */
        public boolean f13524w;

        public a(r rVar, Method method) {
            this.f13502a = rVar;
            this.f13503b = method;
            this.f13504c = method.getAnnotations();
            this.f13506e = method.getGenericParameterTypes();
            this.f13505d = method.getParameterAnnotations();
        }

        public static Class<?> a(Class<?> cls) {
            return Boolean.TYPE == cls ? Boolean.class : Byte.TYPE == cls ? Byte.class : Character.TYPE == cls ? Character.class : Double.TYPE == cls ? Double.class : Float.TYPE == cls ? Float.class : Integer.TYPE == cls ? Integer.class : Long.TYPE == cls ? Long.class : Short.TYPE == cls ? Short.class : cls;
        }

        public static Set<String> h(String str) {
            Matcher matcher = f13500x.matcher(str);
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            while (matcher.find()) {
                linkedHashSet.add(matcher.group(1));
            }
            return linkedHashSet;
        }

        public p b() {
            for (Annotation annotation : this.f13504c) {
                e(annotation);
            }
            if (this.f13515n != null) {
                if (!this.f13516o) {
                    if (!this.f13518q) {
                        if (this.f13517p) {
                            throw v.n(this.f13503b, "FormUrlEncoded can only be specified on HTTP methods with request body (e.g., @POST).", new Object[0]);
                        }
                    } else {
                        throw v.n(this.f13503b, "Multipart can only be specified on HTTP methods with request body (e.g., @POST).", new Object[0]);
                    }
                }
                int length = this.f13505d.length;
                this.f13523v = new m[length];
                int i10 = length - 1;
                int i11 = 0;
                while (true) {
                    boolean z10 = true;
                    if (i11 >= length) {
                        break;
                    }
                    m<?>[] mVarArr = this.f13523v;
                    Type type = this.f13506e[i11];
                    Annotation[] annotationArr = this.f13505d[i11];
                    if (i11 != i10) {
                        z10 = false;
                    }
                    mVarArr[i11] = f(i11, type, annotationArr, z10);
                    i11++;
                }
                if (this.f13519r == null && !this.f13514m) {
                    throw v.n(this.f13503b, "Missing either @%s URL or @Url parameter.", this.f13515n);
                }
                boolean z11 = this.f13517p;
                if (!z11 && !this.f13518q && !this.f13516o && this.f13509h) {
                    throw v.n(this.f13503b, "Non-body HTTP method cannot contain @Body.", new Object[0]);
                }
                if (z11 && !this.f13507f) {
                    throw v.n(this.f13503b, "Form-encoded method must contain at least one @Field.", new Object[0]);
                }
                if (this.f13518q && !this.f13508g) {
                    throw v.n(this.f13503b, "Multipart method must contain at least one @Part.", new Object[0]);
                }
                return new p(this);
            }
            throw v.n(this.f13503b, "HTTP method annotation is required (e.g., @GET, @POST, etc.).", new Object[0]);
        }

        public final Headers c(String[] strArr) {
            Headers.Builder builder = new Headers.Builder();
            for (String str : strArr) {
                int indexOf = str.indexOf(58);
                if (indexOf == -1 || indexOf == 0 || indexOf == str.length() - 1) {
                    throw v.n(this.f13503b, "@Headers value must be in the form \"Name: Value\". Found: \"%s\"", str);
                }
                String substring = str.substring(0, indexOf);
                String trim = str.substring(indexOf + 1).trim();
                if ("Content-Type".equalsIgnoreCase(substring)) {
                    try {
                        this.f13521t = MediaType.get(trim);
                    } catch (IllegalArgumentException e10) {
                        throw v.o(this.f13503b, e10, "Malformed content type: %s", trim);
                    }
                } else {
                    builder.add(substring, trim);
                }
            }
            return builder.build();
        }

        public final void d(String str, String str2, boolean z10) {
            String str3 = this.f13515n;
            if (str3 != null) {
                throw v.n(this.f13503b, "Only one HTTP method is allowed. Found: %s and %s.", str3, str);
            }
            this.f13515n = str;
            this.f13516o = z10;
            if (str2.isEmpty()) {
                return;
            }
            int indexOf = str2.indexOf(63);
            if (indexOf != -1 && indexOf < str2.length() - 1) {
                String substring = str2.substring(indexOf + 1);
                if (f13500x.matcher(substring).find()) {
                    throw v.n(this.f13503b, "URL query string \"%s\" must not have replace block. For dynamic query parameters use @Query.", substring);
                }
            }
            this.f13519r = str2;
            this.f13522u = h(str2);
        }

        public final void e(Annotation annotation) {
            if (annotation instanceof td.b) {
                d(HttpDelete.METHOD_NAME, ((td.b) annotation).value(), false);
                return;
            }
            if (annotation instanceof td.f) {
                d(HttpGet.METHOD_NAME, ((td.f) annotation).value(), false);
                return;
            }
            if (annotation instanceof td.g) {
                d(HttpHead.METHOD_NAME, ((td.g) annotation).value(), false);
                return;
            }
            if (annotation instanceof td.n) {
                d("PATCH", ((td.n) annotation).value(), true);
                return;
            }
            if (annotation instanceof td.o) {
                d(HttpPost.METHOD_NAME, ((td.o) annotation).value(), true);
                return;
            }
            if (annotation instanceof td.p) {
                d(HttpPut.METHOD_NAME, ((td.p) annotation).value(), true);
                return;
            }
            if (annotation instanceof td.m) {
                d(HttpOptions.METHOD_NAME, ((td.m) annotation).value(), false);
                return;
            }
            if (annotation instanceof td.h) {
                td.h hVar = (td.h) annotation;
                d(hVar.method(), hVar.path(), hVar.hasBody());
                return;
            }
            if (annotation instanceof td.k) {
                String[] value = ((td.k) annotation).value();
                if (value.length != 0) {
                    this.f13520s = c(value);
                    return;
                }
                throw v.n(this.f13503b, "@Headers annotation is empty.", new Object[0]);
            }
            if (annotation instanceof td.l) {
                if (!this.f13517p) {
                    this.f13518q = true;
                    return;
                }
                throw v.n(this.f13503b, "Only one encoding annotation is allowed.", new Object[0]);
            }
            if (annotation instanceof td.e) {
                if (!this.f13518q) {
                    this.f13517p = true;
                    return;
                }
                throw v.n(this.f13503b, "Only one encoding annotation is allowed.", new Object[0]);
            }
        }

        @Nullable
        public final m<?> f(int i10, Type type, @Nullable Annotation[] annotationArr, boolean z10) {
            m<?> mVar;
            if (annotationArr != null) {
                mVar = null;
                for (Annotation annotation : annotationArr) {
                    m<?> g10 = g(i10, type, annotationArr, annotation);
                    if (g10 != null) {
                        if (mVar != null) {
                            throw v.p(this.f13503b, i10, "Multiple Retrofit annotations found, only one allowed.", new Object[0]);
                        }
                        mVar = g10;
                    }
                }
            } else {
                mVar = null;
            }
            if (mVar != null) {
                return mVar;
            }
            if (z10) {
                try {
                    if (v.i(type) == ac.d.class) {
                        this.f13524w = true;
                        return null;
                    }
                } catch (NoClassDefFoundError unused) {
                }
            }
            throw v.p(this.f13503b, i10, "No Retrofit annotation found.", new Object[0]);
        }

        @Nullable
        public final m<?> g(int i10, Type type, Annotation[] annotationArr, Annotation annotation) {
            if (annotation instanceof y) {
                j(i10, type);
                if (!this.f13514m) {
                    if (!this.f13510i) {
                        if (!this.f13511j) {
                            if (!this.f13512k) {
                                if (!this.f13513l) {
                                    if (this.f13519r != null) {
                                        throw v.p(this.f13503b, i10, "@Url cannot be used with @%s URL", this.f13515n);
                                    }
                                    this.f13514m = true;
                                    if (type != HttpUrl.class && type != String.class && type != URI.class && (!(type instanceof Class) || !"android.net.Uri".equals(((Class) type).getName()))) {
                                        throw v.p(this.f13503b, i10, "@Url must be okhttp3.HttpUrl, String, java.net.URI, or android.net.Uri type.", new Object[0]);
                                    }
                                    return new m.p(this.f13503b, i10);
                                }
                                throw v.p(this.f13503b, i10, "A @Url parameter must not come after a @QueryMap.", new Object[0]);
                            }
                            throw v.p(this.f13503b, i10, "A @Url parameter must not come after a @QueryName.", new Object[0]);
                        }
                        throw v.p(this.f13503b, i10, "A @Url parameter must not come after a @Query.", new Object[0]);
                    }
                    throw v.p(this.f13503b, i10, "@Path parameters may not be used with @Url.", new Object[0]);
                }
                throw v.p(this.f13503b, i10, "Multiple @Url method annotations found.", new Object[0]);
            }
            if (annotation instanceof td.s) {
                j(i10, type);
                if (!this.f13511j) {
                    if (!this.f13512k) {
                        if (!this.f13513l) {
                            if (!this.f13514m) {
                                if (this.f13519r == null) {
                                    throw v.p(this.f13503b, i10, "@Path can only be used with relative url on @%s", this.f13515n);
                                }
                                this.f13510i = true;
                                td.s sVar = (td.s) annotation;
                                String value = sVar.value();
                                i(i10, value);
                                return new m.k(this.f13503b, i10, value, this.f13502a.j(type, annotationArr), sVar.encoded());
                            }
                            throw v.p(this.f13503b, i10, "@Path parameters may not be used with @Url.", new Object[0]);
                        }
                        throw v.p(this.f13503b, i10, "A @Path parameter must not come after a @QueryMap.", new Object[0]);
                    }
                    throw v.p(this.f13503b, i10, "A @Path parameter must not come after a @QueryName.", new Object[0]);
                }
                throw v.p(this.f13503b, i10, "A @Path parameter must not come after a @Query.", new Object[0]);
            }
            if (annotation instanceof td.t) {
                j(i10, type);
                td.t tVar = (td.t) annotation;
                String value2 = tVar.value();
                boolean encoded = tVar.encoded();
                Class<?> i11 = v.i(type);
                this.f13511j = true;
                if (Iterable.class.isAssignableFrom(i11)) {
                    if (type instanceof ParameterizedType) {
                        return new m.l(value2, this.f13502a.j(v.h(0, (ParameterizedType) type), annotationArr), encoded).c();
                    }
                    throw v.p(this.f13503b, i10, i11.getSimpleName() + " must include generic type (e.g., " + i11.getSimpleName() + "<String>)", new Object[0]);
                }
                if (i11.isArray()) {
                    return new m.l(value2, this.f13502a.j(a(i11.getComponentType()), annotationArr), encoded).b();
                }
                return new m.l(value2, this.f13502a.j(type, annotationArr), encoded);
            }
            if (annotation instanceof td.v) {
                j(i10, type);
                boolean encoded2 = ((td.v) annotation).encoded();
                Class<?> i12 = v.i(type);
                this.f13512k = true;
                if (Iterable.class.isAssignableFrom(i12)) {
                    if (type instanceof ParameterizedType) {
                        return new m.n(this.f13502a.j(v.h(0, (ParameterizedType) type), annotationArr), encoded2).c();
                    }
                    throw v.p(this.f13503b, i10, i12.getSimpleName() + " must include generic type (e.g., " + i12.getSimpleName() + "<String>)", new Object[0]);
                }
                if (i12.isArray()) {
                    return new m.n(this.f13502a.j(a(i12.getComponentType()), annotationArr), encoded2).b();
                }
                return new m.n(this.f13502a.j(type, annotationArr), encoded2);
            }
            if (annotation instanceof td.u) {
                j(i10, type);
                Class<?> i13 = v.i(type);
                this.f13513l = true;
                if (Map.class.isAssignableFrom(i13)) {
                    Type j10 = v.j(type, i13, Map.class);
                    if (j10 instanceof ParameterizedType) {
                        ParameterizedType parameterizedType = (ParameterizedType) j10;
                        Type h10 = v.h(0, parameterizedType);
                        if (String.class == h10) {
                            return new m.C0333m(this.f13503b, i10, this.f13502a.j(v.h(1, parameterizedType), annotationArr), ((td.u) annotation).encoded());
                        }
                        throw v.p(this.f13503b, i10, "@QueryMap keys must be of type String: " + h10, new Object[0]);
                    }
                    throw v.p(this.f13503b, i10, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                }
                throw v.p(this.f13503b, i10, "@QueryMap parameter type must be Map.", new Object[0]);
            }
            if (annotation instanceof td.i) {
                j(i10, type);
                String value3 = ((td.i) annotation).value();
                Class<?> i14 = v.i(type);
                if (Iterable.class.isAssignableFrom(i14)) {
                    if (type instanceof ParameterizedType) {
                        return new m.f(value3, this.f13502a.j(v.h(0, (ParameterizedType) type), annotationArr)).c();
                    }
                    throw v.p(this.f13503b, i10, i14.getSimpleName() + " must include generic type (e.g., " + i14.getSimpleName() + "<String>)", new Object[0]);
                }
                if (i14.isArray()) {
                    return new m.f(value3, this.f13502a.j(a(i14.getComponentType()), annotationArr)).b();
                }
                return new m.f(value3, this.f13502a.j(type, annotationArr));
            }
            if (annotation instanceof td.j) {
                if (type == Headers.class) {
                    return new m.h(this.f13503b, i10);
                }
                j(i10, type);
                Class<?> i15 = v.i(type);
                if (Map.class.isAssignableFrom(i15)) {
                    Type j11 = v.j(type, i15, Map.class);
                    if (j11 instanceof ParameterizedType) {
                        ParameterizedType parameterizedType2 = (ParameterizedType) j11;
                        Type h11 = v.h(0, parameterizedType2);
                        if (String.class == h11) {
                            return new m.g(this.f13503b, i10, this.f13502a.j(v.h(1, parameterizedType2), annotationArr));
                        }
                        throw v.p(this.f13503b, i10, "@HeaderMap keys must be of type String: " + h11, new Object[0]);
                    }
                    throw v.p(this.f13503b, i10, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                }
                throw v.p(this.f13503b, i10, "@HeaderMap parameter type must be Map.", new Object[0]);
            }
            if (annotation instanceof td.c) {
                j(i10, type);
                if (this.f13517p) {
                    td.c cVar = (td.c) annotation;
                    String value4 = cVar.value();
                    boolean encoded3 = cVar.encoded();
                    this.f13507f = true;
                    Class<?> i16 = v.i(type);
                    if (Iterable.class.isAssignableFrom(i16)) {
                        if (type instanceof ParameterizedType) {
                            return new m.d(value4, this.f13502a.j(v.h(0, (ParameterizedType) type), annotationArr), encoded3).c();
                        }
                        throw v.p(this.f13503b, i10, i16.getSimpleName() + " must include generic type (e.g., " + i16.getSimpleName() + "<String>)", new Object[0]);
                    }
                    if (i16.isArray()) {
                        return new m.d(value4, this.f13502a.j(a(i16.getComponentType()), annotationArr), encoded3).b();
                    }
                    return new m.d(value4, this.f13502a.j(type, annotationArr), encoded3);
                }
                throw v.p(this.f13503b, i10, "@Field parameters can only be used with form encoding.", new Object[0]);
            }
            if (annotation instanceof td.d) {
                j(i10, type);
                if (this.f13517p) {
                    Class<?> i17 = v.i(type);
                    if (Map.class.isAssignableFrom(i17)) {
                        Type j12 = v.j(type, i17, Map.class);
                        if (j12 instanceof ParameterizedType) {
                            ParameterizedType parameterizedType3 = (ParameterizedType) j12;
                            Type h12 = v.h(0, parameterizedType3);
                            if (String.class == h12) {
                                f j13 = this.f13502a.j(v.h(1, parameterizedType3), annotationArr);
                                this.f13507f = true;
                                return new m.e(this.f13503b, i10, j13, ((td.d) annotation).encoded());
                            }
                            throw v.p(this.f13503b, i10, "@FieldMap keys must be of type String: " + h12, new Object[0]);
                        }
                        throw v.p(this.f13503b, i10, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                    }
                    throw v.p(this.f13503b, i10, "@FieldMap parameter type must be Map.", new Object[0]);
                }
                throw v.p(this.f13503b, i10, "@FieldMap parameters can only be used with form encoding.", new Object[0]);
            }
            if (annotation instanceof td.q) {
                j(i10, type);
                if (this.f13518q) {
                    td.q qVar = (td.q) annotation;
                    this.f13508g = true;
                    String value5 = qVar.value();
                    Class<?> i18 = v.i(type);
                    if (value5.isEmpty()) {
                        if (Iterable.class.isAssignableFrom(i18)) {
                            if (type instanceof ParameterizedType) {
                                if (MultipartBody.Part.class.isAssignableFrom(v.i(v.h(0, (ParameterizedType) type)))) {
                                    return m.o.f13468a.c();
                                }
                                throw v.p(this.f13503b, i10, "@Part annotation must supply a name or use MultipartBody.Part parameter type.", new Object[0]);
                            }
                            throw v.p(this.f13503b, i10, i18.getSimpleName() + " must include generic type (e.g., " + i18.getSimpleName() + "<String>)", new Object[0]);
                        }
                        if (i18.isArray()) {
                            if (MultipartBody.Part.class.isAssignableFrom(i18.getComponentType())) {
                                return m.o.f13468a.b();
                            }
                            throw v.p(this.f13503b, i10, "@Part annotation must supply a name or use MultipartBody.Part parameter type.", new Object[0]);
                        }
                        if (MultipartBody.Part.class.isAssignableFrom(i18)) {
                            return m.o.f13468a;
                        }
                        throw v.p(this.f13503b, i10, "@Part annotation must supply a name or use MultipartBody.Part parameter type.", new Object[0]);
                    }
                    Headers of = Headers.of("Content-Disposition", "form-data; name=\"" + value5 + "\"", "Content-Transfer-Encoding", qVar.encoding());
                    if (Iterable.class.isAssignableFrom(i18)) {
                        if (type instanceof ParameterizedType) {
                            Type h13 = v.h(0, (ParameterizedType) type);
                            if (!MultipartBody.Part.class.isAssignableFrom(v.i(h13))) {
                                return new m.i(this.f13503b, i10, of, this.f13502a.h(h13, annotationArr, this.f13504c)).c();
                            }
                            throw v.p(this.f13503b, i10, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation.", new Object[0]);
                        }
                        throw v.p(this.f13503b, i10, i18.getSimpleName() + " must include generic type (e.g., " + i18.getSimpleName() + "<String>)", new Object[0]);
                    }
                    if (i18.isArray()) {
                        Class<?> a10 = a(i18.getComponentType());
                        if (!MultipartBody.Part.class.isAssignableFrom(a10)) {
                            return new m.i(this.f13503b, i10, of, this.f13502a.h(a10, annotationArr, this.f13504c)).b();
                        }
                        throw v.p(this.f13503b, i10, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation.", new Object[0]);
                    }
                    if (!MultipartBody.Part.class.isAssignableFrom(i18)) {
                        return new m.i(this.f13503b, i10, of, this.f13502a.h(type, annotationArr, this.f13504c));
                    }
                    throw v.p(this.f13503b, i10, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation.", new Object[0]);
                }
                throw v.p(this.f13503b, i10, "@Part parameters can only be used with multipart encoding.", new Object[0]);
            }
            if (annotation instanceof td.r) {
                j(i10, type);
                if (this.f13518q) {
                    this.f13508g = true;
                    Class<?> i19 = v.i(type);
                    if (Map.class.isAssignableFrom(i19)) {
                        Type j14 = v.j(type, i19, Map.class);
                        if (j14 instanceof ParameterizedType) {
                            ParameterizedType parameterizedType4 = (ParameterizedType) j14;
                            Type h14 = v.h(0, parameterizedType4);
                            if (String.class == h14) {
                                Type h15 = v.h(1, parameterizedType4);
                                if (!MultipartBody.Part.class.isAssignableFrom(v.i(h15))) {
                                    return new m.j(this.f13503b, i10, this.f13502a.h(h15, annotationArr, this.f13504c), ((td.r) annotation).encoding());
                                }
                                throw v.p(this.f13503b, i10, "@PartMap values cannot be MultipartBody.Part. Use @Part List<Part> or a different value type instead.", new Object[0]);
                            }
                            throw v.p(this.f13503b, i10, "@PartMap keys must be of type String: " + h14, new Object[0]);
                        }
                        throw v.p(this.f13503b, i10, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                    }
                    throw v.p(this.f13503b, i10, "@PartMap parameter type must be Map.", new Object[0]);
                }
                throw v.p(this.f13503b, i10, "@PartMap parameters can only be used with multipart encoding.", new Object[0]);
            }
            if (annotation instanceof td.a) {
                j(i10, type);
                if (!this.f13517p && !this.f13518q) {
                    if (!this.f13509h) {
                        try {
                            f h16 = this.f13502a.h(type, annotationArr, this.f13504c);
                            this.f13509h = true;
                            return new m.c(this.f13503b, i10, h16);
                        } catch (RuntimeException e10) {
                            throw v.q(this.f13503b, e10, i10, "Unable to create @Body converter for %s", type);
                        }
                    }
                    throw v.p(this.f13503b, i10, "Multiple @Body method annotations found.", new Object[0]);
                }
                throw v.p(this.f13503b, i10, "@Body parameters cannot be used with form or multi-part encoding.", new Object[0]);
            }
            if (!(annotation instanceof x)) {
                return null;
            }
            j(i10, type);
            Class<?> i20 = v.i(type);
            for (int i21 = i10 - 1; i21 >= 0; i21--) {
                m<?> mVar = this.f13523v[i21];
                if ((mVar instanceof m.q) && ((m.q) mVar).f13471a.equals(i20)) {
                    throw v.p(this.f13503b, i10, "@Tag type " + i20.getName() + " is duplicate of parameter #" + (i21 + 1) + " and would always overwrite its value.", new Object[0]);
                }
            }
            return new m.q(i20);
        }

        public final void i(int i10, String str) {
            if (f13501y.matcher(str).matches()) {
                if (!this.f13522u.contains(str)) {
                    throw v.p(this.f13503b, i10, "URL \"%s\" does not contain \"{%s}\".", this.f13519r, str);
                }
                return;
            }
            throw v.p(this.f13503b, i10, "@Path parameter name must match %s. Found: %s", f13500x.pattern(), str);
        }

        public final void j(int i10, Type type) {
            if (v.k(type)) {
                throw v.p(this.f13503b, i10, "Parameter type must not include a type variable or wildcard: %s", type);
            }
        }
    }

    public p(a aVar) {
        this.f13489a = aVar.f13503b;
        this.f13490b = aVar.f13502a.f13530c;
        this.f13491c = aVar.f13515n;
        this.f13492d = aVar.f13519r;
        this.f13493e = aVar.f13520s;
        this.f13494f = aVar.f13521t;
        this.f13495g = aVar.f13516o;
        this.f13496h = aVar.f13517p;
        this.f13497i = aVar.f13518q;
        this.f13498j = aVar.f13523v;
        this.f13499k = aVar.f13524w;
    }

    public static p b(r rVar, Method method) {
        return new a(rVar, method).b();
    }

    public Request a(Object[] objArr) throws IOException {
        m<?>[] mVarArr = this.f13498j;
        int length = objArr.length;
        if (length == mVarArr.length) {
            o oVar = new o(this.f13491c, this.f13490b, this.f13492d, this.f13493e, this.f13494f, this.f13495g, this.f13496h, this.f13497i);
            if (this.f13499k) {
                length--;
            }
            ArrayList arrayList = new ArrayList(length);
            for (int i10 = 0; i10 < length; i10++) {
                arrayList.add(objArr[i10]);
                mVarArr[i10].a(oVar, objArr[i10]);
            }
            return oVar.k().tag(i.class, new i(this.f13489a, arrayList)).build();
        }
        throw new IllegalArgumentException("Argument count (" + length + ") doesn't match expected count (" + mVarArr.length + ")");
    }
}
