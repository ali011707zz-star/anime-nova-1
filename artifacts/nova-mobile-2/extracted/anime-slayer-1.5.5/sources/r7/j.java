package r7;

/* compiled from: DiskCacheStrategy.java */
/* loaded from: classes.dex */
public abstract class j {

    /* renamed from: a, reason: collision with root package name */
    public static final j f12972a = new a();

    /* renamed from: b, reason: collision with root package name */
    public static final j f12973b = new b();

    /* renamed from: c, reason: collision with root package name */
    public static final j f12974c = new c();

    /* renamed from: d, reason: collision with root package name */
    public static final j f12975d = new d();

    /* renamed from: e, reason: collision with root package name */
    public static final j f12976e = new e();

    /* compiled from: DiskCacheStrategy.java */
    /* loaded from: classes.dex */
    public class a extends j {
        @Override // r7.j
        public boolean a() {
            return true;
        }

        @Override // r7.j
        public boolean b() {
            return true;
        }

        @Override // r7.j
        public boolean c(p7.a aVar) {
            return aVar == p7.a.REMOTE;
        }

        @Override // r7.j
        public boolean d(boolean z10, p7.a aVar, p7.c cVar) {
            return (aVar == p7.a.RESOURCE_DISK_CACHE || aVar == p7.a.MEMORY_CACHE) ? false : true;
        }
    }

    /* compiled from: DiskCacheStrategy.java */
    /* loaded from: classes.dex */
    public class b extends j {
        @Override // r7.j
        public boolean a() {
            return false;
        }

        @Override // r7.j
        public boolean b() {
            return false;
        }

        @Override // r7.j
        public boolean c(p7.a aVar) {
            return false;
        }

        @Override // r7.j
        public boolean d(boolean z10, p7.a aVar, p7.c cVar) {
            return false;
        }
    }

    /* compiled from: DiskCacheStrategy.java */
    /* loaded from: classes.dex */
    public class c extends j {
        @Override // r7.j
        public boolean a() {
            return true;
        }

        @Override // r7.j
        public boolean b() {
            return false;
        }

        @Override // r7.j
        public boolean c(p7.a aVar) {
            return (aVar == p7.a.DATA_DISK_CACHE || aVar == p7.a.MEMORY_CACHE) ? false : true;
        }

        @Override // r7.j
        public boolean d(boolean z10, p7.a aVar, p7.c cVar) {
            return false;
        }
    }

    /* compiled from: DiskCacheStrategy.java */
    /* loaded from: classes.dex */
    public class d extends j {
        @Override // r7.j
        public boolean a() {
            return false;
        }

        @Override // r7.j
        public boolean b() {
            return true;
        }

        @Override // r7.j
        public boolean c(p7.a aVar) {
            return false;
        }

        @Override // r7.j
        public boolean d(boolean z10, p7.a aVar, p7.c cVar) {
            return (aVar == p7.a.RESOURCE_DISK_CACHE || aVar == p7.a.MEMORY_CACHE) ? false : true;
        }
    }

    /* compiled from: DiskCacheStrategy.java */
    /* loaded from: classes.dex */
    public class e extends j {
        @Override // r7.j
        public boolean a() {
            return true;
        }

        @Override // r7.j
        public boolean b() {
            return true;
        }

        @Override // r7.j
        public boolean c(p7.a aVar) {
            return aVar == p7.a.REMOTE;
        }

        @Override // r7.j
        public boolean d(boolean z10, p7.a aVar, p7.c cVar) {
            return ((z10 && aVar == p7.a.DATA_DISK_CACHE) || aVar == p7.a.LOCAL) && cVar == p7.c.TRANSFORMED;
        }
    }

    public abstract boolean a();

    public abstract boolean b();

    public abstract boolean c(p7.a aVar);

    public abstract boolean d(boolean z10, p7.a aVar, p7.c cVar);
}
