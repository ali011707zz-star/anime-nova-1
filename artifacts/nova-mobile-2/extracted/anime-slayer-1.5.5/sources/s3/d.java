package s3;

import java.io.Closeable;

/* compiled from: IntStream.java */
/* loaded from: classes.dex */
public final class d implements Closeable {

    /* renamed from: h, reason: collision with root package name */
    public static final d f13726h = new d(new a());

    /* renamed from: i, reason: collision with root package name */
    public static final t3.e<Integer> f13727i = new b();

    /* renamed from: f, reason: collision with root package name */
    public final v3.d f13728f;

    /* renamed from: g, reason: collision with root package name */
    public final u3.b f13729g;

    /* compiled from: IntStream.java */
    /* loaded from: classes.dex */
    public static class a extends v3.d {
        @Override // v3.d
        public int b() {
            return 0;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return false;
        }
    }

    /* compiled from: IntStream.java */
    /* loaded from: classes.dex */
    public static class b implements t3.e<Integer> {
    }

    public d(v3.d dVar) {
        this(null, dVar);
    }

    public static d d() {
        return f13726h;
    }

    public static d h(int i10) {
        return new d(new w3.a(new int[]{i10}));
    }

    public static d k(int i10, int i11) {
        if (i10 >= i11) {
            return d();
        }
        return x(i10, i11 - 1);
    }

    public static d x(int i10, int i11) {
        if (i10 > i11) {
            return d();
        }
        if (i10 == i11) {
            return h(i10);
        }
        return new d(new w3.b(i10, i11));
    }

    public g<Integer> b() {
        return new g<>(this.f13729g, this.f13728f);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    public d(u3.b bVar, v3.d dVar) {
        this.f13728f = dVar;
    }
}
