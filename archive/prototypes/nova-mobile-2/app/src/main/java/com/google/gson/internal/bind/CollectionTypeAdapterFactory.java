package com.google.gson.internal.bind;

import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import ja.f;
import ja.s;
import ja.t;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.Iterator;
import la.h;

/* loaded from: classes.dex */
public final class CollectionTypeAdapterFactory implements t {

    /* renamed from: f, reason: collision with root package name */
    public final la.c f4774f;

    /* loaded from: classes.dex */
    public static final class a<E> extends s<Collection<E>> {

        /* renamed from: a, reason: collision with root package name */
        public final s<E> f4775a;

        /* renamed from: b, reason: collision with root package name */
        public final h<? extends Collection<E>> f4776b;

        public a(f fVar, Type type, s<E> sVar, h<? extends Collection<E>> hVar) {
            this.f4775a = new c(fVar, sVar, type);
            this.f4776b = hVar;
        }

        @Override // ja.s
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Collection<E> read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            Collection<E> a10 = this.f4776b.a();
            jsonReader.beginArray();
            while (jsonReader.hasNext()) {
                a10.add(this.f4775a.read(jsonReader));
            }
            jsonReader.endArray();
            return a10;
        }

        @Override // ja.s
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void write(JsonWriter jsonWriter, Collection<E> collection) throws IOException {
            if (collection == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginArray();
            Iterator<E> it2 = collection.iterator();
            while (it2.hasNext()) {
                this.f4775a.write(jsonWriter, it2.next());
            }
            jsonWriter.endArray();
        }
    }

    public CollectionTypeAdapterFactory(la.c cVar) {
        this.f4774f = cVar;
    }

    @Override // ja.t
    public <T> s<T> create(f fVar, oa.a<T> aVar) {
        Type type = aVar.getType();
        Class<? super T> rawType = aVar.getRawType();
        if (!Collection.class.isAssignableFrom(rawType)) {
            return null;
        }
        Type h10 = la.b.h(type, rawType);
        return new a(fVar, h10, fVar.n(oa.a.get(h10)), this.f4774f.a(aVar));
    }
}
