package com.google.gson.internal.bind;

import com.google.gson.JsonParseException;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import ja.f;
import ja.j;
import ja.k;
import ja.l;
import ja.p;
import ja.q;
import ja.s;
import ja.t;
import java.io.IOException;
import java.lang.reflect.Type;

/* loaded from: classes.dex */
public final class TreeTypeAdapter<T> extends s<T> {

    /* renamed from: a, reason: collision with root package name */
    public final q<T> f4810a;

    /* renamed from: b, reason: collision with root package name */
    public final k<T> f4811b;

    /* renamed from: c, reason: collision with root package name */
    public final f f4812c;

    /* renamed from: d, reason: collision with root package name */
    public final oa.a<T> f4813d;

    /* renamed from: e, reason: collision with root package name */
    public final t f4814e;

    /* renamed from: f, reason: collision with root package name */
    public final TreeTypeAdapter<T>.b f4815f = new b();

    /* renamed from: g, reason: collision with root package name */
    public s<T> f4816g;

    /* loaded from: classes.dex */
    public static final class SingleTypeFactory implements t {

        /* renamed from: f, reason: collision with root package name */
        public final oa.a<?> f4817f;

        /* renamed from: g, reason: collision with root package name */
        public final boolean f4818g;

        /* renamed from: h, reason: collision with root package name */
        public final Class<?> f4819h;

        /* renamed from: i, reason: collision with root package name */
        public final q<?> f4820i;

        /* renamed from: j, reason: collision with root package name */
        public final k<?> f4821j;

        public SingleTypeFactory(Object obj, oa.a<?> aVar, boolean z10, Class<?> cls) {
            q<?> qVar = obj instanceof q ? (q) obj : null;
            this.f4820i = qVar;
            k<?> kVar = obj instanceof k ? (k) obj : null;
            this.f4821j = kVar;
            la.a.a((qVar == null && kVar == null) ? false : true);
            this.f4817f = aVar;
            this.f4818g = z10;
            this.f4819h = cls;
        }

        @Override // ja.t
        public <T> s<T> create(f fVar, oa.a<T> aVar) {
            boolean isAssignableFrom;
            oa.a<?> aVar2 = this.f4817f;
            if (aVar2 != null) {
                isAssignableFrom = aVar2.equals(aVar) || (this.f4818g && this.f4817f.getType() == aVar.getRawType());
            } else {
                isAssignableFrom = this.f4819h.isAssignableFrom(aVar.getRawType());
            }
            if (isAssignableFrom) {
                return new TreeTypeAdapter(this.f4820i, this.f4821j, fVar, aVar, this);
            }
            return null;
        }
    }

    /* loaded from: classes.dex */
    public final class b implements p, j {
        public b() {
        }

        @Override // ja.j
        public <R> R a(l lVar, Type type) throws JsonParseException {
            return (R) TreeTypeAdapter.this.f4812c.i(lVar, type);
        }
    }

    public TreeTypeAdapter(q<T> qVar, k<T> kVar, f fVar, oa.a<T> aVar, t tVar) {
        this.f4810a = qVar;
        this.f4811b = kVar;
        this.f4812c = fVar;
        this.f4813d = aVar;
        this.f4814e = tVar;
    }

    public static t b(oa.a<?> aVar, Object obj) {
        return new SingleTypeFactory(obj, aVar, aVar.getType() == aVar.getRawType(), null);
    }

    public final s<T> a() {
        s<T> sVar = this.f4816g;
        if (sVar != null) {
            return sVar;
        }
        s<T> o10 = this.f4812c.o(this.f4814e, this.f4813d);
        this.f4816g = o10;
        return o10;
    }

    @Override // ja.s
    public T read(JsonReader jsonReader) throws IOException {
        if (this.f4811b == null) {
            return a().read(jsonReader);
        }
        l a10 = la.k.a(jsonReader);
        if (a10.f()) {
            return null;
        }
        return this.f4811b.deserialize(a10, this.f4813d.getType(), this.f4815f);
    }

    @Override // ja.s
    public void write(JsonWriter jsonWriter, T t10) throws IOException {
        q<T> qVar = this.f4810a;
        if (qVar == null) {
            a().write(jsonWriter, t10);
        } else if (t10 == null) {
            jsonWriter.nullValue();
        } else {
            la.k.b(qVar.serialize(t10, this.f4813d.getType(), this.f4815f), jsonWriter);
        }
    }
}
