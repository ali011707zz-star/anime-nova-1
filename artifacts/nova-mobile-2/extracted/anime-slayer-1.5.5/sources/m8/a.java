package m8;

import android.util.Log;
import java.util.ArrayList;
import java.util.List;
import p0.h;

/* compiled from: FactoryPools.java */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public static final g<Object> f11053a = new C0259a();

    /* compiled from: FactoryPools.java */
    /* renamed from: m8.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0259a implements g<Object> {
        @Override // m8.a.g
        public void a(Object obj) {
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: FactoryPools.java */
    /* loaded from: classes.dex */
    public class b<T> implements d<List<T>> {
        @Override // m8.a.d
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public List<T> a() {
            return new ArrayList();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: FactoryPools.java */
    /* loaded from: classes.dex */
    public class c<T> implements g<List<T>> {
        @Override // m8.a.g
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(List<T> list) {
            list.clear();
        }
    }

    /* compiled from: FactoryPools.java */
    /* loaded from: classes.dex */
    public interface d<T> {
        T a();
    }

    /* compiled from: FactoryPools.java */
    /* loaded from: classes.dex */
    public static final class e<T> implements p0.f<T> {

        /* renamed from: a, reason: collision with root package name */
        public final d<T> f11054a;

        /* renamed from: b, reason: collision with root package name */
        public final g<T> f11055b;

        /* renamed from: c, reason: collision with root package name */
        public final p0.f<T> f11056c;

        public e(p0.f<T> fVar, d<T> dVar, g<T> gVar) {
            this.f11056c = fVar;
            this.f11054a = dVar;
            this.f11055b = gVar;
        }

        @Override // p0.f
        public boolean a(T t10) {
            if (t10 instanceof f) {
                ((f) t10).d().b(true);
            }
            this.f11055b.a(t10);
            return this.f11056c.a(t10);
        }

        @Override // p0.f
        public T b() {
            T b10 = this.f11056c.b();
            if (b10 == null) {
                b10 = this.f11054a.a();
                if (Log.isLoggable("FactoryPools", 2)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Created new ");
                    sb2.append(b10.getClass());
                }
            }
            if (b10 instanceof f) {
                b10.d().b(false);
            }
            return (T) b10;
        }
    }

    /* compiled from: FactoryPools.java */
    /* loaded from: classes.dex */
    public interface f {
        m8.c d();
    }

    /* compiled from: FactoryPools.java */
    /* loaded from: classes.dex */
    public interface g<T> {
        void a(T t10);
    }

    public static <T extends f> p0.f<T> a(p0.f<T> fVar, d<T> dVar) {
        return b(fVar, dVar, c());
    }

    public static <T> p0.f<T> b(p0.f<T> fVar, d<T> dVar, g<T> gVar) {
        return new e(fVar, dVar, gVar);
    }

    public static <T> g<T> c() {
        return (g<T>) f11053a;
    }

    public static <T extends f> p0.f<T> d(int i10, d<T> dVar) {
        return a(new h(i10), dVar);
    }

    public static <T> p0.f<List<T>> e() {
        return f(20);
    }

    public static <T> p0.f<List<T>> f(int i10) {
        return b(new h(i10), new b(), new c());
    }
}
