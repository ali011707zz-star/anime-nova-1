package r7;

import android.util.Log;
import java.util.Map;
import java.util.concurrent.Executor;
import m8.a;
import r7.h;
import r7.p;
import t7.a;
import t7.i;

/* compiled from: Engine.java */
/* loaded from: classes.dex */
public class k implements m, i.a, p.a {

    /* renamed from: i, reason: collision with root package name */
    public static final boolean f12977i = Log.isLoggable("Engine", 2);

    /* renamed from: a, reason: collision with root package name */
    public final r f12978a;

    /* renamed from: b, reason: collision with root package name */
    public final o f12979b;

    /* renamed from: c, reason: collision with root package name */
    public final t7.i f12980c;

    /* renamed from: d, reason: collision with root package name */
    public final b f12981d;

    /* renamed from: e, reason: collision with root package name */
    public final x f12982e;

    /* renamed from: f, reason: collision with root package name */
    public final c f12983f;

    /* renamed from: g, reason: collision with root package name */
    public final a f12984g;

    /* renamed from: h, reason: collision with root package name */
    public final r7.a f12985h;

    /* compiled from: Engine.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public final h.e f12986a;

        /* renamed from: b, reason: collision with root package name */
        public final p0.f<h<?>> f12987b = m8.a.d(150, new C0323a());

        /* renamed from: c, reason: collision with root package name */
        public int f12988c;

        /* compiled from: Engine.java */
        /* renamed from: r7.k$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public class C0323a implements a.d<h<?>> {
            public C0323a() {
            }

            @Override // m8.a.d
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public h<?> a() {
                a aVar = a.this;
                return new h<>(aVar.f12986a, aVar.f12987b);
            }
        }

        public a(h.e eVar) {
            this.f12986a = eVar;
        }

        public <R> h<R> a(com.bumptech.glide.e eVar, Object obj, n nVar, p7.e eVar2, int i10, int i11, Class<?> cls, Class<R> cls2, com.bumptech.glide.g gVar, j jVar, Map<Class<?>, p7.k<?>> map, boolean z10, boolean z11, boolean z12, p7.g gVar2, h.b<R> bVar) {
            h hVar = (h) l8.j.d(this.f12987b.b());
            int i12 = this.f12988c;
            this.f12988c = i12 + 1;
            return hVar.n(eVar, obj, nVar, eVar2, i10, i11, cls, cls2, gVar, jVar, map, z10, z11, z12, gVar2, bVar, i12);
        }
    }

    /* compiled from: Engine.java */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a, reason: collision with root package name */
        public final u7.a f12990a;

        /* renamed from: b, reason: collision with root package name */
        public final u7.a f12991b;

        /* renamed from: c, reason: collision with root package name */
        public final u7.a f12992c;

        /* renamed from: d, reason: collision with root package name */
        public final u7.a f12993d;

        /* renamed from: e, reason: collision with root package name */
        public final m f12994e;

        /* renamed from: f, reason: collision with root package name */
        public final p.a f12995f;

        /* renamed from: g, reason: collision with root package name */
        public final p0.f<l<?>> f12996g = m8.a.d(150, new a());

        /* compiled from: Engine.java */
        /* loaded from: classes.dex */
        public class a implements a.d<l<?>> {
            public a() {
            }

            @Override // m8.a.d
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public l<?> a() {
                b bVar = b.this;
                return new l<>(bVar.f12990a, bVar.f12991b, bVar.f12992c, bVar.f12993d, bVar.f12994e, bVar.f12995f, bVar.f12996g);
            }
        }

        public b(u7.a aVar, u7.a aVar2, u7.a aVar3, u7.a aVar4, m mVar, p.a aVar5) {
            this.f12990a = aVar;
            this.f12991b = aVar2;
            this.f12992c = aVar3;
            this.f12993d = aVar4;
            this.f12994e = mVar;
            this.f12995f = aVar5;
        }

        public <R> l<R> a(p7.e eVar, boolean z10, boolean z11, boolean z12, boolean z13) {
            return ((l) l8.j.d(this.f12996g.b())).l(eVar, z10, z11, z12, z13);
        }
    }

    /* compiled from: Engine.java */
    /* loaded from: classes.dex */
    public static class c implements h.e {

        /* renamed from: a, reason: collision with root package name */
        public final a.InterfaceC0350a f12998a;

        /* renamed from: b, reason: collision with root package name */
        public volatile t7.a f12999b;

        public c(a.InterfaceC0350a interfaceC0350a) {
            this.f12998a = interfaceC0350a;
        }

        @Override // r7.h.e
        public t7.a a() {
            if (this.f12999b == null) {
                synchronized (this) {
                    if (this.f12999b == null) {
                        this.f12999b = this.f12998a.build();
                    }
                    if (this.f12999b == null) {
                        this.f12999b = new t7.b();
                    }
                }
            }
            return this.f12999b;
        }
    }

    /* compiled from: Engine.java */
    /* loaded from: classes.dex */
    public class d {

        /* renamed from: a, reason: collision with root package name */
        public final l<?> f13000a;

        /* renamed from: b, reason: collision with root package name */
        public final h8.i f13001b;

        public d(h8.i iVar, l<?> lVar) {
            this.f13001b = iVar;
            this.f13000a = lVar;
        }

        public void a() {
            synchronized (k.this) {
                this.f13000a.r(this.f13001b);
            }
        }
    }

    public k(t7.i iVar, a.InterfaceC0350a interfaceC0350a, u7.a aVar, u7.a aVar2, u7.a aVar3, u7.a aVar4, boolean z10) {
        this(iVar, interfaceC0350a, aVar, aVar2, aVar3, aVar4, null, null, null, null, null, null, z10);
    }

    public static void j(String str, long j10, p7.e eVar) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append(" in ");
        sb2.append(l8.f.a(j10));
        sb2.append("ms, key: ");
        sb2.append(eVar);
    }

    @Override // t7.i.a
    public void a(u<?> uVar) {
        this.f12982e.a(uVar, true);
    }

    @Override // r7.m
    public synchronized void b(l<?> lVar, p7.e eVar, p<?> pVar) {
        if (pVar != null) {
            if (pVar.f()) {
                this.f12985h.a(eVar, pVar);
            }
        }
        this.f12978a.d(eVar, lVar);
    }

    @Override // r7.m
    public synchronized void c(l<?> lVar, p7.e eVar) {
        this.f12978a.d(eVar, lVar);
    }

    @Override // r7.p.a
    public void d(p7.e eVar, p<?> pVar) {
        this.f12985h.d(eVar);
        if (pVar.f()) {
            this.f12980c.c(eVar, pVar);
        } else {
            this.f12982e.a(pVar, false);
        }
    }

    public final p<?> e(p7.e eVar) {
        u<?> e10 = this.f12980c.e(eVar);
        if (e10 == null) {
            return null;
        }
        if (e10 instanceof p) {
            return (p) e10;
        }
        return new p<>(e10, true, true, eVar, this);
    }

    public <R> d f(com.bumptech.glide.e eVar, Object obj, p7.e eVar2, int i10, int i11, Class<?> cls, Class<R> cls2, com.bumptech.glide.g gVar, j jVar, Map<Class<?>, p7.k<?>> map, boolean z10, boolean z11, p7.g gVar2, boolean z12, boolean z13, boolean z14, boolean z15, h8.i iVar, Executor executor) {
        long b10 = f12977i ? l8.f.b() : 0L;
        n a10 = this.f12979b.a(obj, eVar2, i10, i11, map, cls, cls2, gVar2);
        synchronized (this) {
            p<?> i12 = i(a10, z12, b10);
            if (i12 == null) {
                return l(eVar, obj, eVar2, i10, i11, cls, cls2, gVar, jVar, map, z10, z11, gVar2, z12, z13, z14, z15, iVar, executor, a10, b10);
            }
            iVar.b(i12, p7.a.MEMORY_CACHE);
            return null;
        }
    }

    public final p<?> g(p7.e eVar) {
        p<?> e10 = this.f12985h.e(eVar);
        if (e10 != null) {
            e10.d();
        }
        return e10;
    }

    public final p<?> h(p7.e eVar) {
        p<?> e10 = e(eVar);
        if (e10 != null) {
            e10.d();
            this.f12985h.a(eVar, e10);
        }
        return e10;
    }

    public final p<?> i(n nVar, boolean z10, long j10) {
        if (!z10) {
            return null;
        }
        p<?> g10 = g(nVar);
        if (g10 != null) {
            if (f12977i) {
                j("Loaded resource from active resources", j10, nVar);
            }
            return g10;
        }
        p<?> h10 = h(nVar);
        if (h10 == null) {
            return null;
        }
        if (f12977i) {
            j("Loaded resource from cache", j10, nVar);
        }
        return h10;
    }

    public void k(u<?> uVar) {
        if (uVar instanceof p) {
            ((p) uVar).g();
            return;
        }
        throw new IllegalArgumentException("Cannot release anything but an EngineResource");
    }

    public final <R> d l(com.bumptech.glide.e eVar, Object obj, p7.e eVar2, int i10, int i11, Class<?> cls, Class<R> cls2, com.bumptech.glide.g gVar, j jVar, Map<Class<?>, p7.k<?>> map, boolean z10, boolean z11, p7.g gVar2, boolean z12, boolean z13, boolean z14, boolean z15, h8.i iVar, Executor executor, n nVar, long j10) {
        l<?> a10 = this.f12978a.a(nVar, z15);
        if (a10 != null) {
            a10.e(iVar, executor);
            if (f12977i) {
                j("Added to existing load", j10, nVar);
            }
            return new d(iVar, a10);
        }
        l<R> a11 = this.f12981d.a(nVar, z12, z13, z14, z15);
        h<R> a12 = this.f12984g.a(eVar, obj, nVar, eVar2, i10, i11, cls, cls2, gVar, jVar, map, z10, z11, z15, gVar2, a11);
        this.f12978a.c(nVar, a11);
        a11.e(iVar, executor);
        a11.s(a12);
        if (f12977i) {
            j("Started new load", j10, nVar);
        }
        return new d(iVar, a11);
    }

    public k(t7.i iVar, a.InterfaceC0350a interfaceC0350a, u7.a aVar, u7.a aVar2, u7.a aVar3, u7.a aVar4, r rVar, o oVar, r7.a aVar5, b bVar, a aVar6, x xVar, boolean z10) {
        this.f12980c = iVar;
        c cVar = new c(interfaceC0350a);
        this.f12983f = cVar;
        r7.a aVar7 = aVar5 == null ? new r7.a(z10) : aVar5;
        this.f12985h = aVar7;
        aVar7.f(this);
        this.f12979b = oVar == null ? new o() : oVar;
        this.f12978a = rVar == null ? new r() : rVar;
        this.f12981d = bVar == null ? new b(aVar, aVar2, aVar3, aVar4, this, this) : bVar;
        this.f12984g = aVar6 == null ? new a(cVar) : aVar6;
        this.f12982e = xVar == null ? new x() : xVar;
        iVar.d(this);
    }
}
