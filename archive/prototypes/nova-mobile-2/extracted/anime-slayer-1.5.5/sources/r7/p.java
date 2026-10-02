package r7;

/* compiled from: EngineResource.java */
/* loaded from: classes.dex */
public class p<Z> implements u<Z> {

    /* renamed from: f, reason: collision with root package name */
    public final boolean f13040f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f13041g;

    /* renamed from: h, reason: collision with root package name */
    public final u<Z> f13042h;

    /* renamed from: i, reason: collision with root package name */
    public final a f13043i;

    /* renamed from: j, reason: collision with root package name */
    public final p7.e f13044j;

    /* renamed from: k, reason: collision with root package name */
    public int f13045k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f13046l;

    /* compiled from: EngineResource.java */
    /* loaded from: classes.dex */
    public interface a {
        void d(p7.e eVar, p<?> pVar);
    }

    public p(u<Z> uVar, boolean z10, boolean z11, p7.e eVar, a aVar) {
        this.f13042h = (u) l8.j.d(uVar);
        this.f13040f = z10;
        this.f13041g = z11;
        this.f13044j = eVar;
        this.f13043i = (a) l8.j.d(aVar);
    }

    @Override // r7.u
    public int a() {
        return this.f13042h.a();
    }

    @Override // r7.u
    public synchronized void b() {
        if (this.f13045k <= 0) {
            if (!this.f13046l) {
                this.f13046l = true;
                if (this.f13041g) {
                    this.f13042h.b();
                }
            } else {
                throw new IllegalStateException("Cannot recycle a resource that has already been recycled");
            }
        } else {
            throw new IllegalStateException("Cannot recycle a resource while it is still acquired");
        }
    }

    @Override // r7.u
    public Class<Z> c() {
        return this.f13042h.c();
    }

    public synchronized void d() {
        if (!this.f13046l) {
            this.f13045k++;
        } else {
            throw new IllegalStateException("Cannot acquire a recycled resource");
        }
    }

    public u<Z> e() {
        return this.f13042h;
    }

    public boolean f() {
        return this.f13040f;
    }

    public void g() {
        boolean z10;
        synchronized (this) {
            int i10 = this.f13045k;
            if (i10 > 0) {
                z10 = true;
                int i11 = i10 - 1;
                this.f13045k = i11;
                if (i11 != 0) {
                    z10 = false;
                }
            } else {
                throw new IllegalStateException("Cannot release a recycled or not yet acquired resource");
            }
        }
        if (z10) {
            this.f13043i.d(this.f13044j, this);
        }
    }

    @Override // r7.u
    public Z get() {
        return this.f13042h.get();
    }

    public synchronized String toString() {
        return "EngineResource{isMemoryCacheable=" + this.f13040f + ", listener=" + this.f13043i + ", key=" + this.f13044j + ", acquired=" + this.f13045k + ", isRecycled=" + this.f13046l + ", resource=" + this.f13042h + '}';
    }
}
