package com.github.salomonbrys.kotson;

import ja.p;
import java.lang.reflect.Type;
import jc.l;

/* compiled from: GsonBuilder.kt */
/* loaded from: classes.dex */
public final class e<T> {

    /* renamed from: a, reason: collision with root package name */
    public final T f4666a;

    /* renamed from: b, reason: collision with root package name */
    public final Type f4667b;

    /* renamed from: c, reason: collision with root package name */
    public final a f4668c;

    /* compiled from: GsonBuilder.kt */
    /* loaded from: classes.dex */
    public static final class a implements p {

        /* renamed from: a, reason: collision with root package name */
        public final p f4669a;

        public a(p pVar) {
            l.g(pVar, "gsonContext");
            this.f4669a = pVar;
        }
    }

    public e(T t10, Type type, a aVar) {
        l.g(type, "type");
        l.g(aVar, "context");
        this.f4666a = t10;
        this.f4667b = type;
        this.f4668c = aVar;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return l.a(this.f4666a, eVar.f4666a) && l.a(this.f4667b, eVar.f4667b) && l.a(this.f4668c, eVar.f4668c);
    }

    public int hashCode() {
        T t10 = this.f4666a;
        int hashCode = (t10 != null ? t10.hashCode() : 0) * 31;
        Type type = this.f4667b;
        int hashCode2 = (hashCode + (type != null ? type.hashCode() : 0)) * 31;
        a aVar = this.f4668c;
        return hashCode2 + (aVar != null ? aVar.hashCode() : 0);
    }

    public String toString() {
        return "SerializerArg(src=" + this.f4666a + ", type=" + this.f4667b + ", context=" + this.f4668c + ")";
    }
}
