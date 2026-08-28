package y7;

import android.os.Build;

/* compiled from: DownsampleStrategy.java */
/* loaded from: classes.dex */
public abstract class l {

    /* renamed from: a, reason: collision with root package name */
    public static final l f16664a = new a();

    /* renamed from: b, reason: collision with root package name */
    public static final l f16665b = new b();

    /* renamed from: c, reason: collision with root package name */
    public static final l f16666c = new e();

    /* renamed from: d, reason: collision with root package name */
    public static final l f16667d = new c();

    /* renamed from: e, reason: collision with root package name */
    public static final l f16668e;

    /* renamed from: f, reason: collision with root package name */
    public static final l f16669f;

    /* renamed from: g, reason: collision with root package name */
    public static final l f16670g;

    /* renamed from: h, reason: collision with root package name */
    public static final p7.f<l> f16671h;

    /* renamed from: i, reason: collision with root package name */
    public static final boolean f16672i;

    /* compiled from: DownsampleStrategy.java */
    /* loaded from: classes.dex */
    public static class a extends l {
        @Override // y7.l
        public g a(int i10, int i11, int i12, int i13) {
            return g.QUALITY;
        }

        @Override // y7.l
        public float b(int i10, int i11, int i12, int i13) {
            if (Math.min(i11 / i13, i10 / i12) == 0) {
                return 1.0f;
            }
            return 1.0f / Integer.highestOneBit(r1);
        }
    }

    /* compiled from: DownsampleStrategy.java */
    /* loaded from: classes.dex */
    public static class b extends l {
        @Override // y7.l
        public g a(int i10, int i11, int i12, int i13) {
            return g.MEMORY;
        }

        @Override // y7.l
        public float b(int i10, int i11, int i12, int i13) {
            int ceil = (int) Math.ceil(Math.max(i11 / i13, i10 / i12));
            return 1.0f / (r2 << (Math.max(1, Integer.highestOneBit(ceil)) >= ceil ? 0 : 1));
        }
    }

    /* compiled from: DownsampleStrategy.java */
    /* loaded from: classes.dex */
    public static class c extends l {
        @Override // y7.l
        public g a(int i10, int i11, int i12, int i13) {
            if (b(i10, i11, i12, i13) == 1.0f) {
                return g.QUALITY;
            }
            return l.f16666c.a(i10, i11, i12, i13);
        }

        @Override // y7.l
        public float b(int i10, int i11, int i12, int i13) {
            return Math.min(1.0f, l.f16666c.b(i10, i11, i12, i13));
        }
    }

    /* compiled from: DownsampleStrategy.java */
    /* loaded from: classes.dex */
    public static class d extends l {
        @Override // y7.l
        public g a(int i10, int i11, int i12, int i13) {
            return g.QUALITY;
        }

        @Override // y7.l
        public float b(int i10, int i11, int i12, int i13) {
            return Math.max(i12 / i10, i13 / i11);
        }
    }

    /* compiled from: DownsampleStrategy.java */
    /* loaded from: classes.dex */
    public static class e extends l {
        @Override // y7.l
        public g a(int i10, int i11, int i12, int i13) {
            if (l.f16672i) {
                return g.QUALITY;
            }
            return g.MEMORY;
        }

        @Override // y7.l
        public float b(int i10, int i11, int i12, int i13) {
            if (l.f16672i) {
                return Math.min(i12 / i10, i13 / i11);
            }
            if (Math.max(i11 / i13, i10 / i12) == 0) {
                return 1.0f;
            }
            return 1.0f / Integer.highestOneBit(r2);
        }
    }

    /* compiled from: DownsampleStrategy.java */
    /* loaded from: classes.dex */
    public static class f extends l {
        @Override // y7.l
        public g a(int i10, int i11, int i12, int i13) {
            return g.QUALITY;
        }

        @Override // y7.l
        public float b(int i10, int i11, int i12, int i13) {
            return 1.0f;
        }
    }

    /* compiled from: DownsampleStrategy.java */
    /* loaded from: classes.dex */
    public enum g {
        MEMORY,
        QUALITY
    }

    static {
        d dVar = new d();
        f16668e = dVar;
        f16669f = new f();
        f16670g = dVar;
        f16671h = p7.f.f("com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy", dVar);
        f16672i = Build.VERSION.SDK_INT >= 19;
    }

    public abstract g a(int i10, int i11, int i12, int i13);

    public abstract float b(int i10, int i11, int i12, int i13);
}
