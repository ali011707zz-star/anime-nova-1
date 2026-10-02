package s3;

import com.google.android.material.shadow.ShadowDrawableWrapper;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Collectors.java */
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public static final t3.d<long[]> f13719a = new a();

    /* renamed from: b, reason: collision with root package name */
    public static final t3.d<double[]> f13720b = new C0338b();

    /* compiled from: Collectors.java */
    /* loaded from: classes.dex */
    public static class a implements t3.d<long[]> {
        @Override // t3.d
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public long[] get() {
            return new long[]{0, 0};
        }
    }

    /* compiled from: Collectors.java */
    /* renamed from: s3.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0338b implements t3.d<double[]> {
        @Override // t3.d
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public double[] get() {
            return new double[]{ShadowDrawableWrapper.COS_45, ShadowDrawableWrapper.COS_45};
        }
    }

    /* JADX INFO: Add missing generic type declarations: [A, R] */
    /* compiled from: Collectors.java */
    /* loaded from: classes.dex */
    public static class c<A, R> implements t3.b<A, R> {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // t3.b
        public R apply(A a10) {
            return a10;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: Collectors.java */
    /* loaded from: classes.dex */
    public static class d<T> implements t3.d<List<T>> {
        @Override // t3.d
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public List<T> get() {
            return new ArrayList();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: Collectors.java */
    /* loaded from: classes.dex */
    public static class e<T> implements t3.a<List<T>, T> {
        @Override // t3.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void accept(List<T> list, T t10) {
            list.add(t10);
        }
    }

    /* compiled from: Collectors.java */
    /* loaded from: classes.dex */
    public static final class f<T, A, R> implements s3.a<T, A, R> {

        /* renamed from: a, reason: collision with root package name */
        public final t3.d<A> f13721a;

        /* renamed from: b, reason: collision with root package name */
        public final t3.a<A, T> f13722b;

        /* renamed from: c, reason: collision with root package name */
        public final t3.b<A, R> f13723c;

        public f(t3.d<A> dVar, t3.a<A, T> aVar) {
            this(dVar, aVar, null);
        }

        @Override // s3.a
        public t3.b<A, R> a() {
            return this.f13723c;
        }

        @Override // s3.a
        public t3.d<A> b() {
            return this.f13721a;
        }

        @Override // s3.a
        public t3.a<A, T> c() {
            return this.f13722b;
        }

        public f(t3.d<A> dVar, t3.a<A, T> aVar, t3.b<A, R> bVar) {
            this.f13721a = dVar;
            this.f13722b = aVar;
            this.f13723c = bVar;
        }
    }

    public static <A, R> t3.b<A, R> a() {
        return new c();
    }

    public static <T> s3.a<T, ?, List<T>> b() {
        return new f(new d(), new e());
    }
}
