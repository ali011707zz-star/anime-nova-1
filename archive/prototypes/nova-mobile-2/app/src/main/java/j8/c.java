package j8;

import j8.d;

/* compiled from: NoTransition.java */
/* loaded from: classes.dex */
public class c<R> implements d<R> {

    /* renamed from: a, reason: collision with root package name */
    public static final c<?> f8930a = new c<>();

    /* renamed from: b, reason: collision with root package name */
    public static final e<?> f8931b = new a();

    /* compiled from: NoTransition.java */
    /* loaded from: classes.dex */
    public static class a<R> implements e<R> {
        @Override // j8.e
        public d<R> a(p7.a aVar, boolean z10) {
            return c.f8930a;
        }
    }

    public static <R> d<R> b() {
        return f8930a;
    }

    public static <R> e<R> c() {
        return (e<R>) f8931b;
    }

    @Override // j8.d
    public boolean a(Object obj, d.a aVar) {
        return false;
    }
}
