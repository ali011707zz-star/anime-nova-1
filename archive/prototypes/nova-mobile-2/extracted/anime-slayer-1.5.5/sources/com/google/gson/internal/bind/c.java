package com.google.gson.internal.bind;

import com.google.gson.internal.bind.ReflectiveTypeAdapterFactory;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import ja.f;
import ja.s;
import java.io.IOException;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;

/* compiled from: TypeAdapterRuntimeTypeWrapper.java */
/* loaded from: classes.dex */
public final class c<T> extends s<T> {

    /* renamed from: a, reason: collision with root package name */
    public final f f4879a;

    /* renamed from: b, reason: collision with root package name */
    public final s<T> f4880b;

    /* renamed from: c, reason: collision with root package name */
    public final Type f4881c;

    public c(f fVar, s<T> sVar, Type type) {
        this.f4879a = fVar;
        this.f4880b = sVar;
        this.f4881c = type;
    }

    public final Type a(Type type, Object obj) {
        return obj != null ? (type == Object.class || (type instanceof TypeVariable) || (type instanceof Class)) ? obj.getClass() : type : type;
    }

    @Override // ja.s
    public T read(JsonReader jsonReader) throws IOException {
        return this.f4880b.read(jsonReader);
    }

    @Override // ja.s
    public void write(JsonWriter jsonWriter, T t10) throws IOException {
        s<T> sVar = this.f4880b;
        Type a10 = a(this.f4881c, t10);
        if (a10 != this.f4881c) {
            sVar = this.f4879a.n(oa.a.get(a10));
            if (sVar instanceof ReflectiveTypeAdapterFactory.b) {
                s<T> sVar2 = this.f4880b;
                if (!(sVar2 instanceof ReflectiveTypeAdapterFactory.b)) {
                    sVar = sVar2;
                }
            }
        }
        sVar.write(jsonWriter, t10);
    }
}
