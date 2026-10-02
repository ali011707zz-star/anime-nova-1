package com.google.gson.internal.bind;

import com.google.gson.JsonSyntaxException;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import ja.f;
import ja.l;
import ja.o;
import ja.s;
import ja.t;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Map;
import la.e;
import la.h;
import la.k;

/* loaded from: classes.dex */
public final class MapTypeAdapterFactory implements t {

    /* renamed from: f, reason: collision with root package name */
    public final la.c f4780f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f4781g;

    /* loaded from: classes.dex */
    public final class a<K, V> extends s<Map<K, V>> {

        /* renamed from: a, reason: collision with root package name */
        public final s<K> f4782a;

        /* renamed from: b, reason: collision with root package name */
        public final s<V> f4783b;

        /* renamed from: c, reason: collision with root package name */
        public final h<? extends Map<K, V>> f4784c;

        public a(f fVar, Type type, s<K> sVar, Type type2, s<V> sVar2, h<? extends Map<K, V>> hVar) {
            this.f4782a = new c(fVar, sVar, type);
            this.f4783b = new c(fVar, sVar2, type2);
            this.f4784c = hVar;
        }

        public final String a(l lVar) {
            if (lVar.h()) {
                o c10 = lVar.c();
                if (c10.p()) {
                    return String.valueOf(c10.m());
                }
                if (c10.n()) {
                    return Boolean.toString(c10.i());
                }
                if (c10.q()) {
                    return c10.d();
                }
                throw new AssertionError();
            }
            if (lVar.f()) {
                return "null";
            }
            throw new AssertionError();
        }

        @Override // ja.s
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public Map<K, V> read(JsonReader jsonReader) throws IOException {
            JsonToken peek = jsonReader.peek();
            if (peek == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            Map<K, V> a10 = this.f4784c.a();
            if (peek == JsonToken.BEGIN_ARRAY) {
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    jsonReader.beginArray();
                    K read = this.f4782a.read(jsonReader);
                    if (a10.put(read, this.f4783b.read(jsonReader)) == null) {
                        jsonReader.endArray();
                    } else {
                        throw new JsonSyntaxException("duplicate key: " + read);
                    }
                }
                jsonReader.endArray();
            } else {
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    e.INSTANCE.promoteNameToValue(jsonReader);
                    K read2 = this.f4782a.read(jsonReader);
                    if (a10.put(read2, this.f4783b.read(jsonReader)) != null) {
                        throw new JsonSyntaxException("duplicate key: " + read2);
                    }
                }
                jsonReader.endObject();
            }
            return a10;
        }

        @Override // ja.s
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public void write(JsonWriter jsonWriter, Map<K, V> map) throws IOException {
            if (map == null) {
                jsonWriter.nullValue();
                return;
            }
            if (!MapTypeAdapterFactory.this.f4781g) {
                jsonWriter.beginObject();
                for (Map.Entry<K, V> entry : map.entrySet()) {
                    jsonWriter.name(String.valueOf(entry.getKey()));
                    this.f4783b.write(jsonWriter, entry.getValue());
                }
                jsonWriter.endObject();
                return;
            }
            ArrayList arrayList = new ArrayList(map.size());
            ArrayList arrayList2 = new ArrayList(map.size());
            int i10 = 0;
            boolean z10 = false;
            for (Map.Entry<K, V> entry2 : map.entrySet()) {
                l jsonTree = this.f4782a.toJsonTree(entry2.getKey());
                arrayList.add(jsonTree);
                arrayList2.add(entry2.getValue());
                z10 |= jsonTree.e() || jsonTree.g();
            }
            if (z10) {
                jsonWriter.beginArray();
                int size = arrayList.size();
                while (i10 < size) {
                    jsonWriter.beginArray();
                    k.b((l) arrayList.get(i10), jsonWriter);
                    this.f4783b.write(jsonWriter, arrayList2.get(i10));
                    jsonWriter.endArray();
                    i10++;
                }
                jsonWriter.endArray();
                return;
            }
            jsonWriter.beginObject();
            int size2 = arrayList.size();
            while (i10 < size2) {
                jsonWriter.name(a((l) arrayList.get(i10)));
                this.f4783b.write(jsonWriter, arrayList2.get(i10));
                i10++;
            }
            jsonWriter.endObject();
        }
    }

    public MapTypeAdapterFactory(la.c cVar, boolean z10) {
        this.f4780f = cVar;
        this.f4781g = z10;
    }

    public final s<?> a(f fVar, Type type) {
        if (type != Boolean.TYPE && type != Boolean.class) {
            return fVar.n(oa.a.get(type));
        }
        return TypeAdapters.f4828f;
    }

    @Override // ja.t
    public <T> s<T> create(f fVar, oa.a<T> aVar) {
        Type type = aVar.getType();
        if (!Map.class.isAssignableFrom(aVar.getRawType())) {
            return null;
        }
        Type[] j10 = la.b.j(type, la.b.k(type));
        return new a(fVar, j10[0], a(fVar, j10[0]), j10[1], fVar.n(oa.a.get(j10[1])), this.f4780f.a(aVar));
    }
}
