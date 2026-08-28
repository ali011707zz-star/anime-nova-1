package ja;

import com.google.gson.JsonIOException;
import com.google.gson.JsonSyntaxException;
import com.google.gson.internal.Excluder;
import com.google.gson.internal.bind.ArrayTypeAdapter;
import com.google.gson.internal.bind.CollectionTypeAdapterFactory;
import com.google.gson.internal.bind.DateTypeAdapter;
import com.google.gson.internal.bind.JsonAdapterAnnotationTypeAdapterFactory;
import com.google.gson.internal.bind.MapTypeAdapterFactory;
import com.google.gson.internal.bind.ObjectTypeAdapter;
import com.google.gson.internal.bind.ReflectiveTypeAdapterFactory;
import com.google.gson.internal.bind.SqlDateTypeAdapter;
import com.google.gson.internal.bind.TimeTypeAdapter;
import com.google.gson.internal.bind.TypeAdapters;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import com.google.gson.stream.MalformedJsonException;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;

/* compiled from: Gson.java */
/* loaded from: classes.dex */
public final class f {

    /* renamed from: v, reason: collision with root package name */
    public static final oa.a<?> f9097v = oa.a.get(Object.class);

    /* renamed from: a, reason: collision with root package name */
    public final ThreadLocal<Map<oa.a<?>, C0167f<?>>> f9098a;

    /* renamed from: b, reason: collision with root package name */
    public final Map<oa.a<?>, s<?>> f9099b;

    /* renamed from: c, reason: collision with root package name */
    public final la.c f9100c;

    /* renamed from: d, reason: collision with root package name */
    public final JsonAdapterAnnotationTypeAdapterFactory f9101d;

    /* renamed from: e, reason: collision with root package name */
    public final List<t> f9102e;

    /* renamed from: f, reason: collision with root package name */
    public final Excluder f9103f;

    /* renamed from: g, reason: collision with root package name */
    public final ja.e f9104g;

    /* renamed from: h, reason: collision with root package name */
    public final Map<Type, h<?>> f9105h;

    /* renamed from: i, reason: collision with root package name */
    public final boolean f9106i;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f9107j;

    /* renamed from: k, reason: collision with root package name */
    public final boolean f9108k;

    /* renamed from: l, reason: collision with root package name */
    public final boolean f9109l;

    /* renamed from: m, reason: collision with root package name */
    public final boolean f9110m;

    /* renamed from: n, reason: collision with root package name */
    public final boolean f9111n;

    /* renamed from: o, reason: collision with root package name */
    public final boolean f9112o;

    /* renamed from: p, reason: collision with root package name */
    public final String f9113p;

    /* renamed from: q, reason: collision with root package name */
    public final int f9114q;

    /* renamed from: r, reason: collision with root package name */
    public final int f9115r;

    /* renamed from: s, reason: collision with root package name */
    public final r f9116s;

    /* renamed from: t, reason: collision with root package name */
    public final List<t> f9117t;

    /* renamed from: u, reason: collision with root package name */
    public final List<t> f9118u;

    /* compiled from: Gson.java */
    /* loaded from: classes.dex */
    public class a extends s<Number> {
        public a() {
        }

        @Override // ja.s
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Double read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            return Double.valueOf(jsonReader.nextDouble());
        }

        @Override // ja.s
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void write(JsonWriter jsonWriter, Number number) throws IOException {
            if (number == null) {
                jsonWriter.nullValue();
            } else {
                f.d(number.doubleValue());
                jsonWriter.value(number);
            }
        }
    }

    /* compiled from: Gson.java */
    /* loaded from: classes.dex */
    public class b extends s<Number> {
        public b() {
        }

        @Override // ja.s
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            return Float.valueOf((float) jsonReader.nextDouble());
        }

        @Override // ja.s
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void write(JsonWriter jsonWriter, Number number) throws IOException {
            if (number == null) {
                jsonWriter.nullValue();
            } else {
                f.d(number.floatValue());
                jsonWriter.value(number);
            }
        }
    }

    /* compiled from: Gson.java */
    /* loaded from: classes.dex */
    public class c extends s<Number> {
        @Override // ja.s
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Number read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            return Long.valueOf(jsonReader.nextLong());
        }

        @Override // ja.s
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void write(JsonWriter jsonWriter, Number number) throws IOException {
            if (number == null) {
                jsonWriter.nullValue();
            } else {
                jsonWriter.value(number.toString());
            }
        }
    }

    /* compiled from: Gson.java */
    /* loaded from: classes.dex */
    public class d extends s<AtomicLong> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ s f9121a;

        public d(s sVar) {
            this.f9121a = sVar;
        }

        @Override // ja.s
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public AtomicLong read(JsonReader jsonReader) throws IOException {
            return new AtomicLong(((Number) this.f9121a.read(jsonReader)).longValue());
        }

        @Override // ja.s
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void write(JsonWriter jsonWriter, AtomicLong atomicLong) throws IOException {
            this.f9121a.write(jsonWriter, Long.valueOf(atomicLong.get()));
        }
    }

    /* compiled from: Gson.java */
    /* loaded from: classes.dex */
    public class e extends s<AtomicLongArray> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ s f9122a;

        public e(s sVar) {
            this.f9122a = sVar;
        }

        @Override // ja.s
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public AtomicLongArray read(JsonReader jsonReader) throws IOException {
            ArrayList arrayList = new ArrayList();
            jsonReader.beginArray();
            while (jsonReader.hasNext()) {
                arrayList.add(Long.valueOf(((Number) this.f9122a.read(jsonReader)).longValue()));
            }
            jsonReader.endArray();
            int size = arrayList.size();
            AtomicLongArray atomicLongArray = new AtomicLongArray(size);
            for (int i10 = 0; i10 < size; i10++) {
                atomicLongArray.set(i10, ((Long) arrayList.get(i10)).longValue());
            }
            return atomicLongArray;
        }

        @Override // ja.s
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void write(JsonWriter jsonWriter, AtomicLongArray atomicLongArray) throws IOException {
            jsonWriter.beginArray();
            int length = atomicLongArray.length();
            for (int i10 = 0; i10 < length; i10++) {
                this.f9122a.write(jsonWriter, Long.valueOf(atomicLongArray.get(i10)));
            }
            jsonWriter.endArray();
        }
    }

    /* compiled from: Gson.java */
    /* renamed from: ja.f$f, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0167f<T> extends s<T> {

        /* renamed from: a, reason: collision with root package name */
        public s<T> f9123a;

        public void a(s<T> sVar) {
            if (this.f9123a == null) {
                this.f9123a = sVar;
                return;
            }
            throw new AssertionError();
        }

        @Override // ja.s
        public T read(JsonReader jsonReader) throws IOException {
            s<T> sVar = this.f9123a;
            if (sVar != null) {
                return sVar.read(jsonReader);
            }
            throw new IllegalStateException();
        }

        @Override // ja.s
        public void write(JsonWriter jsonWriter, T t10) throws IOException {
            s<T> sVar = this.f9123a;
            if (sVar != null) {
                sVar.write(jsonWriter, t10);
                return;
            }
            throw new IllegalStateException();
        }
    }

    public f() {
        this(Excluder.f4758l, ja.d.f9090f, Collections.emptyMap(), false, false, false, true, false, false, false, r.f9144f, null, 2, 2, Collections.emptyList(), Collections.emptyList(), Collections.emptyList());
    }

    public static void a(Object obj, JsonReader jsonReader) {
        if (obj != null) {
            try {
                if (jsonReader.peek() == JsonToken.END_DOCUMENT) {
                } else {
                    throw new JsonIOException("JSON document was not fully consumed.");
                }
            } catch (MalformedJsonException e10) {
                throw new JsonSyntaxException(e10);
            } catch (IOException e11) {
                throw new JsonIOException(e11);
            }
        }
    }

    public static s<AtomicLong> b(s<Number> sVar) {
        return new d(sVar).nullSafe();
    }

    public static s<AtomicLongArray> c(s<Number> sVar) {
        return new e(sVar).nullSafe();
    }

    public static void d(double d10) {
        if (Double.isNaN(d10) || Double.isInfinite(d10)) {
            throw new IllegalArgumentException(d10 + " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.");
        }
    }

    public static s<Number> p(r rVar) {
        if (rVar == r.f9144f) {
            return TypeAdapters.f4842t;
        }
        return new c();
    }

    public l A(Object obj, Type type) {
        com.google.gson.internal.bind.b bVar = new com.google.gson.internal.bind.b();
        x(obj, type, bVar);
        return bVar.b();
    }

    public final s<Number> e(boolean z10) {
        if (z10) {
            return TypeAdapters.f4844v;
        }
        return new a();
    }

    public final s<Number> f(boolean z10) {
        if (z10) {
            return TypeAdapters.f4843u;
        }
        return new b();
    }

    public <T> T g(JsonReader jsonReader, Type type) throws JsonIOException, JsonSyntaxException {
        boolean isLenient = jsonReader.isLenient();
        boolean z10 = true;
        jsonReader.setLenient(true);
        try {
            try {
                try {
                    jsonReader.peek();
                    z10 = false;
                    T read = n(oa.a.get(type)).read(jsonReader);
                    jsonReader.setLenient(isLenient);
                    return read;
                } catch (AssertionError e10) {
                    AssertionError assertionError = new AssertionError("AssertionError (GSON 2.8.7): " + e10.getMessage());
                    assertionError.initCause(e10);
                    throw assertionError;
                } catch (IllegalStateException e11) {
                    throw new JsonSyntaxException(e11);
                }
            } catch (EOFException e12) {
                if (z10) {
                    jsonReader.setLenient(isLenient);
                    return null;
                }
                throw new JsonSyntaxException(e12);
            } catch (IOException e13) {
                throw new JsonSyntaxException(e13);
            }
        } catch (Throwable th) {
            jsonReader.setLenient(isLenient);
            throw th;
        }
    }

    public <T> T h(l lVar, Class<T> cls) throws JsonSyntaxException {
        return (T) la.j.b(cls).cast(i(lVar, cls));
    }

    public <T> T i(l lVar, Type type) throws JsonSyntaxException {
        if (lVar == null) {
            return null;
        }
        return (T) g(new com.google.gson.internal.bind.a(lVar), type);
    }

    public <T> T j(Reader reader, Type type) throws JsonIOException, JsonSyntaxException {
        JsonReader q10 = q(reader);
        T t10 = (T) g(q10, type);
        a(t10, q10);
        return t10;
    }

    public <T> T k(String str, Class<T> cls) throws JsonSyntaxException {
        return (T) la.j.b(cls).cast(l(str, cls));
    }

    public <T> T l(String str, Type type) throws JsonSyntaxException {
        if (str == null) {
            return null;
        }
        return (T) j(new StringReader(str), type);
    }

    public <T> s<T> m(Class<T> cls) {
        return n(oa.a.get((Class) cls));
    }

    public <T> s<T> n(oa.a<T> aVar) {
        s<T> sVar = (s) this.f9099b.get(aVar == null ? f9097v : aVar);
        if (sVar != null) {
            return sVar;
        }
        Map<oa.a<?>, C0167f<?>> map = this.f9098a.get();
        boolean z10 = false;
        if (map == null) {
            map = new HashMap<>();
            this.f9098a.set(map);
            z10 = true;
        }
        C0167f<?> c0167f = map.get(aVar);
        if (c0167f != null) {
            return c0167f;
        }
        try {
            C0167f<?> c0167f2 = new C0167f<>();
            map.put(aVar, c0167f2);
            Iterator<t> it2 = this.f9102e.iterator();
            while (it2.hasNext()) {
                s<T> create = it2.next().create(this, aVar);
                if (create != null) {
                    c0167f2.a(create);
                    this.f9099b.put(aVar, create);
                    return create;
                }
            }
            throw new IllegalArgumentException("GSON (2.8.7) cannot handle " + aVar);
        } finally {
            map.remove(aVar);
            if (z10) {
                this.f9098a.remove();
            }
        }
    }

    public <T> s<T> o(t tVar, oa.a<T> aVar) {
        if (!this.f9102e.contains(tVar)) {
            tVar = this.f9101d;
        }
        boolean z10 = false;
        for (t tVar2 : this.f9102e) {
            if (z10) {
                s<T> create = tVar2.create(this, aVar);
                if (create != null) {
                    return create;
                }
            } else if (tVar2 == tVar) {
                z10 = true;
            }
        }
        throw new IllegalArgumentException("GSON cannot serialize " + aVar);
    }

    public JsonReader q(Reader reader) {
        JsonReader jsonReader = new JsonReader(reader);
        jsonReader.setLenient(this.f9111n);
        return jsonReader;
    }

    public JsonWriter r(Writer writer) throws IOException {
        if (this.f9108k) {
            writer.write(")]}'\n");
        }
        JsonWriter jsonWriter = new JsonWriter(writer);
        if (this.f9110m) {
            jsonWriter.setIndent("  ");
        }
        jsonWriter.setSerializeNulls(this.f9106i);
        return jsonWriter;
    }

    public String s(l lVar) {
        StringWriter stringWriter = new StringWriter();
        w(lVar, stringWriter);
        return stringWriter.toString();
    }

    public String t(Object obj) {
        if (obj == null) {
            return s(m.f9141a);
        }
        return u(obj, obj.getClass());
    }

    public String toString() {
        return "{serializeNulls:" + this.f9106i + ",factories:" + this.f9102e + ",instanceCreators:" + this.f9100c + "}";
    }

    public String u(Object obj, Type type) {
        StringWriter stringWriter = new StringWriter();
        y(obj, type, stringWriter);
        return stringWriter.toString();
    }

    public void v(l lVar, JsonWriter jsonWriter) throws JsonIOException {
        boolean isLenient = jsonWriter.isLenient();
        jsonWriter.setLenient(true);
        boolean isHtmlSafe = jsonWriter.isHtmlSafe();
        jsonWriter.setHtmlSafe(this.f9109l);
        boolean serializeNulls = jsonWriter.getSerializeNulls();
        jsonWriter.setSerializeNulls(this.f9106i);
        try {
            try {
                la.k.b(lVar, jsonWriter);
            } catch (IOException e10) {
                throw new JsonIOException(e10);
            } catch (AssertionError e11) {
                AssertionError assertionError = new AssertionError("AssertionError (GSON 2.8.7): " + e11.getMessage());
                assertionError.initCause(e11);
                throw assertionError;
            }
        } finally {
            jsonWriter.setLenient(isLenient);
            jsonWriter.setHtmlSafe(isHtmlSafe);
            jsonWriter.setSerializeNulls(serializeNulls);
        }
    }

    public void w(l lVar, Appendable appendable) throws JsonIOException {
        try {
            v(lVar, r(la.k.c(appendable)));
        } catch (IOException e10) {
            throw new JsonIOException(e10);
        }
    }

    public void x(Object obj, Type type, JsonWriter jsonWriter) throws JsonIOException {
        s n10 = n(oa.a.get(type));
        boolean isLenient = jsonWriter.isLenient();
        jsonWriter.setLenient(true);
        boolean isHtmlSafe = jsonWriter.isHtmlSafe();
        jsonWriter.setHtmlSafe(this.f9109l);
        boolean serializeNulls = jsonWriter.getSerializeNulls();
        jsonWriter.setSerializeNulls(this.f9106i);
        try {
            try {
                n10.write(jsonWriter, obj);
            } catch (IOException e10) {
                throw new JsonIOException(e10);
            } catch (AssertionError e11) {
                AssertionError assertionError = new AssertionError("AssertionError (GSON 2.8.7): " + e11.getMessage());
                assertionError.initCause(e11);
                throw assertionError;
            }
        } finally {
            jsonWriter.setLenient(isLenient);
            jsonWriter.setHtmlSafe(isHtmlSafe);
            jsonWriter.setSerializeNulls(serializeNulls);
        }
    }

    public void y(Object obj, Type type, Appendable appendable) throws JsonIOException {
        try {
            x(obj, type, r(la.k.c(appendable)));
        } catch (IOException e10) {
            throw new JsonIOException(e10);
        }
    }

    public l z(Object obj) {
        if (obj == null) {
            return m.f9141a;
        }
        return A(obj, obj.getClass());
    }

    public f(Excluder excluder, ja.e eVar, Map<Type, h<?>> map, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, boolean z16, r rVar, String str, int i10, int i11, List<t> list, List<t> list2, List<t> list3) {
        this.f9098a = new ThreadLocal<>();
        this.f9099b = new ConcurrentHashMap();
        this.f9103f = excluder;
        this.f9104g = eVar;
        this.f9105h = map;
        la.c cVar = new la.c(map);
        this.f9100c = cVar;
        this.f9106i = z10;
        this.f9107j = z11;
        this.f9108k = z12;
        this.f9109l = z13;
        this.f9110m = z14;
        this.f9111n = z15;
        this.f9112o = z16;
        this.f9116s = rVar;
        this.f9113p = str;
        this.f9114q = i10;
        this.f9115r = i11;
        this.f9117t = list;
        this.f9118u = list2;
        ArrayList arrayList = new ArrayList();
        arrayList.add(TypeAdapters.Y);
        arrayList.add(ObjectTypeAdapter.f4786b);
        arrayList.add(excluder);
        arrayList.addAll(list3);
        arrayList.add(TypeAdapters.D);
        arrayList.add(TypeAdapters.f4835m);
        arrayList.add(TypeAdapters.f4829g);
        arrayList.add(TypeAdapters.f4831i);
        arrayList.add(TypeAdapters.f4833k);
        s<Number> p10 = p(rVar);
        arrayList.add(TypeAdapters.b(Long.TYPE, Long.class, p10));
        arrayList.add(TypeAdapters.b(Double.TYPE, Double.class, e(z16)));
        arrayList.add(TypeAdapters.b(Float.TYPE, Float.class, f(z16)));
        arrayList.add(TypeAdapters.f4846x);
        arrayList.add(TypeAdapters.f4837o);
        arrayList.add(TypeAdapters.f4839q);
        arrayList.add(TypeAdapters.a(AtomicLong.class, b(p10)));
        arrayList.add(TypeAdapters.a(AtomicLongArray.class, c(p10)));
        arrayList.add(TypeAdapters.f4841s);
        arrayList.add(TypeAdapters.f4848z);
        arrayList.add(TypeAdapters.F);
        arrayList.add(TypeAdapters.H);
        arrayList.add(TypeAdapters.a(BigDecimal.class, TypeAdapters.B));
        arrayList.add(TypeAdapters.a(BigInteger.class, TypeAdapters.C));
        arrayList.add(TypeAdapters.J);
        arrayList.add(TypeAdapters.L);
        arrayList.add(TypeAdapters.P);
        arrayList.add(TypeAdapters.R);
        arrayList.add(TypeAdapters.W);
        arrayList.add(TypeAdapters.N);
        arrayList.add(TypeAdapters.f4826d);
        arrayList.add(DateTypeAdapter.f4777b);
        arrayList.add(TypeAdapters.U);
        arrayList.add(TimeTypeAdapter.f4808b);
        arrayList.add(SqlDateTypeAdapter.f4806b);
        arrayList.add(TypeAdapters.S);
        arrayList.add(ArrayTypeAdapter.f4771c);
        arrayList.add(TypeAdapters.f4824b);
        arrayList.add(new CollectionTypeAdapterFactory(cVar));
        arrayList.add(new MapTypeAdapterFactory(cVar, z11));
        JsonAdapterAnnotationTypeAdapterFactory jsonAdapterAnnotationTypeAdapterFactory = new JsonAdapterAnnotationTypeAdapterFactory(cVar);
        this.f9101d = jsonAdapterAnnotationTypeAdapterFactory;
        arrayList.add(jsonAdapterAnnotationTypeAdapterFactory);
        arrayList.add(TypeAdapters.Z);
        arrayList.add(new ReflectiveTypeAdapterFactory(cVar, eVar, excluder, jsonAdapterAnnotationTypeAdapterFactory));
        this.f9102e = Collections.unmodifiableList(arrayList);
    }
}
