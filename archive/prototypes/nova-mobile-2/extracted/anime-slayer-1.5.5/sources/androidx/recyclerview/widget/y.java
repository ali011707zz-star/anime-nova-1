package androidx.recyclerview.widget;

/* compiled from: StableIdStorage.java */
/* loaded from: classes.dex */
public interface y {

    /* compiled from: StableIdStorage.java */
    /* loaded from: classes.dex */
    public static class a implements y {

        /* renamed from: a, reason: collision with root package name */
        public long f3089a = 0;

        /* compiled from: StableIdStorage.java */
        /* renamed from: androidx.recyclerview.widget.y$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public class C0050a implements d {

            /* renamed from: a, reason: collision with root package name */
            public final s.d<Long> f3090a = new s.d<>();

            public C0050a() {
            }

            @Override // androidx.recyclerview.widget.y.d
            public long a(long j10) {
                Long f10 = this.f3090a.f(j10);
                if (f10 == null) {
                    f10 = Long.valueOf(a.this.b());
                    this.f3090a.j(j10, f10);
                }
                return f10.longValue();
            }
        }

        @Override // androidx.recyclerview.widget.y
        public d a() {
            return new C0050a();
        }

        public long b() {
            long j10 = this.f3089a;
            this.f3089a = 1 + j10;
            return j10;
        }
    }

    /* compiled from: StableIdStorage.java */
    /* loaded from: classes.dex */
    public static class b implements y {

        /* renamed from: a, reason: collision with root package name */
        public final d f3092a = new a();

        /* compiled from: StableIdStorage.java */
        /* loaded from: classes.dex */
        public class a implements d {
            public a() {
            }

            @Override // androidx.recyclerview.widget.y.d
            public long a(long j10) {
                return -1L;
            }
        }

        @Override // androidx.recyclerview.widget.y
        public d a() {
            return this.f3092a;
        }
    }

    /* compiled from: StableIdStorage.java */
    /* loaded from: classes.dex */
    public static class c implements y {

        /* renamed from: a, reason: collision with root package name */
        public final d f3094a = new a();

        /* compiled from: StableIdStorage.java */
        /* loaded from: classes.dex */
        public class a implements d {
            public a() {
            }

            @Override // androidx.recyclerview.widget.y.d
            public long a(long j10) {
                return j10;
            }
        }

        @Override // androidx.recyclerview.widget.y
        public d a() {
            return this.f3094a;
        }
    }

    /* compiled from: StableIdStorage.java */
    /* loaded from: classes.dex */
    public interface d {
        long a(long j10);
    }

    d a();
}
