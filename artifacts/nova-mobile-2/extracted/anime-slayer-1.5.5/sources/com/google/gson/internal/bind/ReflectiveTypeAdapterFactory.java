package com.google.gson.internal.bind;

import com.google.gson.JsonSyntaxException;
import com.google.gson.internal.Excluder;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import ja.e;
import ja.f;
import ja.s;
import ja.t;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import la.h;
import la.j;

/* loaded from: classes.dex */
public final class ReflectiveTypeAdapterFactory implements t {

    /* renamed from: f, reason: collision with root package name */
    public final la.c f4789f;

    /* renamed from: g, reason: collision with root package name */
    public final e f4790g;

    /* renamed from: h, reason: collision with root package name */
    public final Excluder f4791h;

    /* renamed from: i, reason: collision with root package name */
    public final JsonAdapterAnnotationTypeAdapterFactory f4792i;

    /* renamed from: j, reason: collision with root package name */
    public final na.b f4793j = na.b.a();

    /* loaded from: classes.dex */
    public class a extends c {

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ Field f4794d;

        /* renamed from: e, reason: collision with root package name */
        public final /* synthetic */ boolean f4795e;

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ s f4796f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ f f4797g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ oa.a f4798h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ boolean f4799i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(String str, boolean z10, boolean z11, Field field, boolean z12, s sVar, f fVar, oa.a aVar, boolean z13) {
            super(str, z10, z11);
            this.f4794d = field;
            this.f4795e = z12;
            this.f4796f = sVar;
            this.f4797g = fVar;
            this.f4798h = aVar;
            this.f4799i = z13;
        }

        @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.c
        public void a(JsonReader jsonReader, Object obj) throws IOException, IllegalAccessException {
            Object read = this.f4796f.read(jsonReader);
            if (read == null && this.f4799i) {
                return;
            }
            this.f4794d.set(obj, read);
        }

        @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.c
        public void b(JsonWriter jsonWriter, Object obj) throws IOException, IllegalAccessException {
            (this.f4795e ? this.f4796f : new com.google.gson.internal.bind.c(this.f4797g, this.f4796f, this.f4798h.getType())).write(jsonWriter, this.f4794d.get(obj));
        }

        @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.c
        public boolean c(Object obj) throws IOException, IllegalAccessException {
            return this.f4804b && this.f4794d.get(obj) != obj;
        }
    }

    /* loaded from: classes.dex */
    public static final class b<T> extends s<T> {

        /* renamed from: a, reason: collision with root package name */
        public final h<T> f4801a;

        /* renamed from: b, reason: collision with root package name */
        public final Map<String, c> f4802b;

        public b(h<T> hVar, Map<String, c> map) {
            this.f4801a = hVar;
            this.f4802b = map;
        }

        @Override // ja.s
        public T read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            T a10 = this.f4801a.a();
            try {
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    c cVar = this.f4802b.get(jsonReader.nextName());
                    if (cVar != null && cVar.f4805c) {
                        cVar.a(jsonReader, a10);
                    }
                    jsonReader.skipValue();
                }
                jsonReader.endObject();
                return a10;
            } catch (IllegalAccessException e10) {
                throw new AssertionError(e10);
            } catch (IllegalStateException e11) {
                throw new JsonSyntaxException(e11);
            }
        }

        @Override // ja.s
        public void write(JsonWriter jsonWriter, T t10) throws IOException {
            if (t10 == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            try {
                for (c cVar : this.f4802b.values()) {
                    if (cVar.c(t10)) {
                        jsonWriter.name(cVar.f4803a);
                        cVar.b(jsonWriter, t10);
                    }
                }
                jsonWriter.endObject();
            } catch (IllegalAccessException e10) {
                throw new AssertionError(e10);
            }
        }
    }

    /* loaded from: classes.dex */
    public static abstract class c {

        /* renamed from: a, reason: collision with root package name */
        public final String f4803a;

        /* renamed from: b, reason: collision with root package name */
        public final boolean f4804b;

        /* renamed from: c, reason: collision with root package name */
        public final boolean f4805c;

        public c(String str, boolean z10, boolean z11) {
            this.f4803a = str;
            this.f4804b = z10;
            this.f4805c = z11;
        }

        public abstract void a(JsonReader jsonReader, Object obj) throws IOException, IllegalAccessException;

        public abstract void b(JsonWriter jsonWriter, Object obj) throws IOException, IllegalAccessException;

        public abstract boolean c(Object obj) throws IOException, IllegalAccessException;
    }

    public ReflectiveTypeAdapterFactory(la.c cVar, e eVar, Excluder excluder, JsonAdapterAnnotationTypeAdapterFactory jsonAdapterAnnotationTypeAdapterFactory) {
        this.f4789f = cVar;
        this.f4790g = eVar;
        this.f4791h = excluder;
        this.f4792i = jsonAdapterAnnotationTypeAdapterFactory;
    }

    public static boolean c(Field field, boolean z10, Excluder excluder) {
        return (excluder.b(field.getType(), z10) || excluder.e(field, z10)) ? false : true;
    }

    public final c a(f fVar, Field field, String str, oa.a<?> aVar, boolean z10, boolean z11) {
        boolean a10 = j.a(aVar.getRawType());
        ka.b bVar = (ka.b) field.getAnnotation(ka.b.class);
        s<?> a11 = bVar != null ? this.f4792i.a(this.f4789f, fVar, aVar, bVar) : null;
        boolean z12 = a11 != null;
        if (a11 == null) {
            a11 = fVar.n(aVar);
        }
        return new a(str, z10, z11, field, z12, a11, fVar, aVar, a10);
    }

    public boolean b(Field field, boolean z10) {
        return c(field, z10, this.f4791h);
    }

    @Override // ja.t
    public <T> s<T> create(f fVar, oa.a<T> aVar) {
        Class<? super T> rawType = aVar.getRawType();
        if (Object.class.isAssignableFrom(rawType)) {
            return new b(this.f4789f.a(aVar), d(fVar, aVar, rawType));
        }
        return null;
    }

    public final Map<String, c> d(f fVar, oa.a<?> aVar, Class<?> cls) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (cls.isInterface()) {
            return linkedHashMap;
        }
        Type type = aVar.getType();
        oa.a<?> aVar2 = aVar;
        Class<?> cls2 = cls;
        while (cls2 != Object.class) {
            Field[] declaredFields = cls2.getDeclaredFields();
            int length = declaredFields.length;
            boolean z10 = false;
            int i10 = 0;
            while (i10 < length) {
                Field field = declaredFields[i10];
                boolean b10 = b(field, true);
                boolean b11 = b(field, z10);
                if (b10 || b11) {
                    this.f4793j.b(field);
                    Type p10 = la.b.p(aVar2.getType(), cls2, field.getGenericType());
                    List<String> e10 = e(field);
                    int size = e10.size();
                    c cVar = null;
                    int i11 = 0;
                    while (i11 < size) {
                        String str = e10.get(i11);
                        boolean z11 = i11 != 0 ? false : b10;
                        int i12 = i11;
                        c cVar2 = cVar;
                        int i13 = size;
                        List<String> list = e10;
                        Field field2 = field;
                        cVar = cVar2 == null ? (c) linkedHashMap.put(str, a(fVar, field, str, oa.a.get(p10), z11, b11)) : cVar2;
                        i11 = i12 + 1;
                        b10 = z11;
                        e10 = list;
                        size = i13;
                        field = field2;
                    }
                    c cVar3 = cVar;
                    if (cVar3 != null) {
                        throw new IllegalArgumentException(type + " declares multiple JSON fields named " + cVar3.f4803a);
                    }
                }
                i10++;
                z10 = false;
            }
            aVar2 = oa.a.get(la.b.p(aVar2.getType(), cls2, cls2.getGenericSuperclass()));
            cls2 = aVar2.getRawType();
        }
        return linkedHashMap;
    }

    public final List<String> e(Field field) {
        ka.c cVar = (ka.c) field.getAnnotation(ka.c.class);
        if (cVar == null) {
            return Collections.singletonList(this.f4790g.a(field));
        }
        String value = cVar.value();
        String[] alternate = cVar.alternate();
        if (alternate.length == 0) {
            return Collections.singletonList(value);
        }
        ArrayList arrayList = new ArrayList(alternate.length + 1);
        arrayList.add(value);
        for (String str : alternate) {
            arrayList.add(str);
        }
        return arrayList;
    }
}
