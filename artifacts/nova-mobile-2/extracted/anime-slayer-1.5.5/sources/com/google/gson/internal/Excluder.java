package com.google.gson.internal;

import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import ja.b;
import ja.c;
import ja.f;
import ja.s;
import ja.t;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import ka.d;
import ka.e;

/* loaded from: classes.dex */
public final class Excluder implements t, Cloneable {

    /* renamed from: l, reason: collision with root package name */
    public static final Excluder f4758l = new Excluder();

    /* renamed from: i, reason: collision with root package name */
    public boolean f4762i;

    /* renamed from: f, reason: collision with root package name */
    public double f4759f = -1.0d;

    /* renamed from: g, reason: collision with root package name */
    public int f4760g = 136;

    /* renamed from: h, reason: collision with root package name */
    public boolean f4761h = true;

    /* renamed from: j, reason: collision with root package name */
    public List<b> f4763j = Collections.emptyList();

    /* renamed from: k, reason: collision with root package name */
    public List<b> f4764k = Collections.emptyList();

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* loaded from: classes.dex */
    public class a<T> extends s<T> {

        /* renamed from: a, reason: collision with root package name */
        public s<T> f4765a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ boolean f4766b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ boolean f4767c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ f f4768d;

        /* renamed from: e, reason: collision with root package name */
        public final /* synthetic */ oa.a f4769e;

        public a(boolean z10, boolean z11, f fVar, oa.a aVar) {
            this.f4766b = z10;
            this.f4767c = z11;
            this.f4768d = fVar;
            this.f4769e = aVar;
        }

        public final s<T> a() {
            s<T> sVar = this.f4765a;
            if (sVar != null) {
                return sVar;
            }
            s<T> o10 = this.f4768d.o(Excluder.this, this.f4769e);
            this.f4765a = o10;
            return o10;
        }

        @Override // ja.s
        public T read(JsonReader jsonReader) throws IOException {
            if (this.f4766b) {
                jsonReader.skipValue();
                return null;
            }
            return a().read(jsonReader);
        }

        @Override // ja.s
        public void write(JsonWriter jsonWriter, T t10) throws IOException {
            if (this.f4767c) {
                jsonWriter.nullValue();
            } else {
                a().write(jsonWriter, t10);
            }
        }
    }

    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public Excluder clone() {
        try {
            return (Excluder) super.clone();
        } catch (CloneNotSupportedException e10) {
            throw new AssertionError(e10);
        }
    }

    public boolean b(Class<?> cls, boolean z10) {
        return c(cls) || d(cls, z10);
    }

    public final boolean c(Class<?> cls) {
        if (this.f4759f == -1.0d || k((d) cls.getAnnotation(d.class), (e) cls.getAnnotation(e.class))) {
            return (!this.f4761h && g(cls)) || f(cls);
        }
        return true;
    }

    @Override // ja.t
    public <T> s<T> create(f fVar, oa.a<T> aVar) {
        Class<? super T> rawType = aVar.getRawType();
        boolean c10 = c(rawType);
        boolean z10 = c10 || d(rawType, true);
        boolean z11 = c10 || d(rawType, false);
        if (z10 || z11) {
            return new a(z11, z10, fVar, aVar);
        }
        return null;
    }

    public final boolean d(Class<?> cls, boolean z10) {
        Iterator<b> it2 = (z10 ? this.f4763j : this.f4764k).iterator();
        while (it2.hasNext()) {
            if (it2.next().a(cls)) {
                return true;
            }
        }
        return false;
    }

    public boolean e(Field field, boolean z10) {
        ka.a aVar;
        if ((this.f4760g & field.getModifiers()) != 0) {
            return true;
        }
        if ((this.f4759f != -1.0d && !k((d) field.getAnnotation(d.class), (e) field.getAnnotation(e.class))) || field.isSynthetic()) {
            return true;
        }
        if (this.f4762i && ((aVar = (ka.a) field.getAnnotation(ka.a.class)) == null || (!z10 ? aVar.deserialize() : aVar.serialize()))) {
            return true;
        }
        if ((!this.f4761h && g(field.getType())) || f(field.getType())) {
            return true;
        }
        List<b> list = z10 ? this.f4763j : this.f4764k;
        if (list.isEmpty()) {
            return false;
        }
        c cVar = new c(field);
        Iterator<b> it2 = list.iterator();
        while (it2.hasNext()) {
            if (it2.next().b(cVar)) {
                return true;
            }
        }
        return false;
    }

    public final boolean f(Class<?> cls) {
        return !Enum.class.isAssignableFrom(cls) && (cls.isAnonymousClass() || cls.isLocalClass());
    }

    public final boolean g(Class<?> cls) {
        return cls.isMemberClass() && !h(cls);
    }

    public final boolean h(Class<?> cls) {
        return (cls.getModifiers() & 8) != 0;
    }

    public final boolean i(d dVar) {
        return dVar == null || dVar.value() <= this.f4759f;
    }

    public final boolean j(e eVar) {
        return eVar == null || eVar.value() > this.f4759f;
    }

    public final boolean k(d dVar, e eVar) {
        return i(dVar) && j(eVar);
    }
}
