package r7;

import m8.a;

/* compiled from: LockedResource.java */
/* loaded from: classes.dex */
public final class t<Z> implements u<Z>, a.f {

    /* renamed from: j, reason: collision with root package name */
    public static final p0.f<t<?>> f13053j = m8.a.d(20, new a());

    /* renamed from: f, reason: collision with root package name */
    public final m8.c f13054f = m8.c.a();

    /* renamed from: g, reason: collision with root package name */
    public u<Z> f13055g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f13056h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f13057i;

    /* compiled from: LockedResource.java */
    /* loaded from: classes.dex */
    public class a implements a.d<t<?>> {
        @Override // m8.a.d
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public t<?> a() {
            return new t<>();
        }
    }

    public static <Z> t<Z> f(u<Z> uVar) {
        t<Z> tVar = (t) l8.j.d(f13053j.b());
        tVar.e(uVar);
        return tVar;
    }

    @Override // r7.u
    public int a() {
        return this.f13055g.a();
    }

    @Override // r7.u
    public synchronized void b() {
        this.f13054f.c();
        this.f13057i = true;
        if (!this.f13056h) {
            this.f13055g.b();
            g();
        }
    }

    @Override // r7.u
    public Class<Z> c() {
        return this.f13055g.c();
    }

    @Override // m8.a.f
    public m8.c d() {
        return this.f13054f;
    }

    public final void e(u<Z> uVar) {
        this.f13057i = false;
        this.f13056h = true;
        this.f13055g = uVar;
    }

    public final void g() {
        this.f13055g = null;
        f13053j.a(this);
    }

    @Override // r7.u
    public Z get() {
        return this.f13055g.get();
    }

    public synchronized void h() {
        this.f13054f.c();
        if (this.f13056h) {
            this.f13056h = false;
            if (this.f13057i) {
                b();
            }
        } else {
            throw new IllegalStateException("Already unlocked");
        }
    }
}
