package jc;

import java.io.Serializable;

/* compiled from: CallableReference.java */
/* loaded from: classes2.dex */
public abstract class c implements oc.a, Serializable {

    /* renamed from: l, reason: collision with root package name */
    public static final Object f9171l = a.f9178f;

    /* renamed from: f, reason: collision with root package name */
    public transient oc.a f9172f;

    /* renamed from: g, reason: collision with root package name */
    public final Object f9173g;

    /* renamed from: h, reason: collision with root package name */
    public final Class f9174h;

    /* renamed from: i, reason: collision with root package name */
    public final String f9175i;

    /* renamed from: j, reason: collision with root package name */
    public final String f9176j;

    /* renamed from: k, reason: collision with root package name */
    public final boolean f9177k;

    /* compiled from: CallableReference.java */
    /* loaded from: classes2.dex */
    public static class a implements Serializable {

        /* renamed from: f, reason: collision with root package name */
        public static final a f9178f = new a();
    }

    public c() {
        this(f9171l);
    }

    public oc.a b() {
        oc.a aVar = this.f9172f;
        if (aVar != null) {
            return aVar;
        }
        oc.a c10 = c();
        this.f9172f = c10;
        return c10;
    }

    public abstract oc.a c();

    public Object d() {
        return this.f9173g;
    }

    public String e() {
        return this.f9175i;
    }

    public oc.c f() {
        Class cls = this.f9174h;
        if (cls == null) {
            return null;
        }
        return this.f9177k ? y.c(cls) : y.b(cls);
    }

    public oc.a g() {
        oc.a b10 = b();
        if (b10 != this) {
            return b10;
        }
        throw new hc.b();
    }

    public String h() {
        return this.f9176j;
    }

    public c(Object obj) {
        this(obj, null, null, null, false);
    }

    public c(Object obj, Class cls, String str, String str2, boolean z10) {
        this.f9173g = obj;
        this.f9174h = cls;
        this.f9175i = str;
        this.f9176j = str2;
        this.f9177k = z10;
    }
}
