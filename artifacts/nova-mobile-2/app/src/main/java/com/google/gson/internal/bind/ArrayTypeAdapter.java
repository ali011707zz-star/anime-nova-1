package com.google.gson.internal.bind;

import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import ja.f;
import ja.s;
import ja.t;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class ArrayTypeAdapter<E> extends s<Object> {

    /* renamed from: c, reason: collision with root package name */
    public static final t f4771c = new t() { // from class: com.google.gson.internal.bind.ArrayTypeAdapter.1
        @Override // ja.t
        public <T> s<T> create(f fVar, oa.a<T> aVar) {
            Type type = aVar.getType();
            if (!(type instanceof GenericArrayType) && (!(type instanceof Class) || !((Class) type).isArray())) {
                return null;
            }
            Type g10 = la.b.g(type);
            return new ArrayTypeAdapter(fVar, fVar.n(oa.a.get(g10)), la.b.k(g10));
        }
    };

    /* renamed from: a, reason: collision with root package name */
    public final Class<E> f4772a;

    /* renamed from: b, reason: collision with root package name */
    public final s<E> f4773b;

    public ArrayTypeAdapter(f fVar, s<E> sVar, Class<E> cls) {
        this.f4773b = new c(fVar, sVar, cls);
        this.f4772a = cls;
    }

    @Override // ja.s
    public Object read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.nextNull();
            return null;
        }
        ArrayList arrayList = new ArrayList();
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            arrayList.add(this.f4773b.read(jsonReader));
        }
        jsonReader.endArray();
        int size = arrayList.size();
        Object newInstance = Array.newInstance((Class<?>) this.f4772a, size);
        for (int i10 = 0; i10 < size; i10++) {
            Array.set(newInstance, i10, arrayList.get(i10));
        }
        return newInstance;
    }

    @Override // ja.s
    public void write(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
            return;
        }
        jsonWriter.beginArray();
        int length = Array.getLength(obj);
        for (int i10 = 0; i10 < length; i10++) {
            this.f4773b.write(jsonWriter, Array.get(obj, i10));
        }
        jsonWriter.endArray();
    }
}
