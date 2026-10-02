package com.google.gson.internal.bind;

import ja.f;
import ja.k;
import ja.q;
import ja.s;
import ja.t;

/* loaded from: classes.dex */
public final class JsonAdapterAnnotationTypeAdapterFactory implements t {

    /* renamed from: f, reason: collision with root package name */
    public final la.c f4779f;

    public JsonAdapterAnnotationTypeAdapterFactory(la.c cVar) {
        this.f4779f = cVar;
    }

    public s<?> a(la.c cVar, f fVar, oa.a<?> aVar, ka.b bVar) {
        s<?> treeTypeAdapter;
        Object a10 = cVar.a(oa.a.get((Class) bVar.value())).a();
        if (a10 instanceof s) {
            treeTypeAdapter = (s) a10;
        } else if (a10 instanceof t) {
            treeTypeAdapter = ((t) a10).create(fVar, aVar);
        } else {
            boolean z10 = a10 instanceof q;
            if (!z10 && !(a10 instanceof k)) {
                throw new IllegalArgumentException("Invalid attempt to bind an instance of " + a10.getClass().getName() + " as a @JsonAdapter for " + aVar.toString() + ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer.");
            }
            treeTypeAdapter = new TreeTypeAdapter<>(z10 ? (q) a10 : null, a10 instanceof k ? (k) a10 : null, fVar, aVar, null);
        }
        return (treeTypeAdapter == null || !bVar.nullSafe()) ? treeTypeAdapter : treeTypeAdapter.nullSafe();
    }

    @Override // ja.t
    public <T> s<T> create(f fVar, oa.a<T> aVar) {
        ka.b bVar = (ka.b) aVar.getRawType().getAnnotation(ka.b.class);
        if (bVar == null) {
            return null;
        }
        return (s<T>) a(this.f4779f, fVar, aVar, bVar);
    }
}
