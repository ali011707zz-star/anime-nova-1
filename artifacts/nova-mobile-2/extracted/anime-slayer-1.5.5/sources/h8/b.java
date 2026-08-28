package h8;

import h8.e;

/* compiled from: ErrorRequestCoordinator.java */
/* loaded from: classes.dex */
public final class b implements e, d {

    /* renamed from: a, reason: collision with root package name */
    public final Object f7401a;

    /* renamed from: b, reason: collision with root package name */
    public final e f7402b;

    /* renamed from: c, reason: collision with root package name */
    public volatile d f7403c;

    /* renamed from: d, reason: collision with root package name */
    public volatile d f7404d;

    /* renamed from: e, reason: collision with root package name */
    public e.a f7405e;

    /* renamed from: f, reason: collision with root package name */
    public e.a f7406f;

    public b(Object obj, e eVar) {
        e.a aVar = e.a.CLEARED;
        this.f7405e = aVar;
        this.f7406f = aVar;
        this.f7401a = obj;
        this.f7402b = eVar;
    }

    @Override // h8.e
    public boolean a(d dVar) {
        boolean z10;
        synchronized (this.f7401a) {
            z10 = o() && l(dVar);
        }
        return z10;
    }

    @Override // h8.e
    public void b(d dVar) {
        synchronized (this.f7401a) {
            if (dVar.equals(this.f7403c)) {
                this.f7405e = e.a.SUCCESS;
            } else if (dVar.equals(this.f7404d)) {
                this.f7406f = e.a.SUCCESS;
            }
            e eVar = this.f7402b;
            if (eVar != null) {
                eVar.b(this);
            }
        }
    }

    @Override // h8.e, h8.d
    public boolean c() {
        boolean z10;
        synchronized (this.f7401a) {
            z10 = this.f7403c.c() || this.f7404d.c();
        }
        return z10;
    }

    @Override // h8.d
    public void clear() {
        synchronized (this.f7401a) {
            e.a aVar = e.a.CLEARED;
            this.f7405e = aVar;
            this.f7403c.clear();
            if (this.f7406f != aVar) {
                this.f7406f = aVar;
                this.f7404d.clear();
            }
        }
    }

    @Override // h8.d
    public void d() {
        synchronized (this.f7401a) {
            e.a aVar = this.f7405e;
            e.a aVar2 = e.a.RUNNING;
            if (aVar == aVar2) {
                this.f7405e = e.a.PAUSED;
                this.f7403c.d();
            }
            if (this.f7406f == aVar2) {
                this.f7406f = e.a.PAUSED;
                this.f7404d.d();
            }
        }
    }

    @Override // h8.e
    public boolean e(d dVar) {
        boolean z10;
        synchronized (this.f7401a) {
            z10 = n() && l(dVar);
        }
        return z10;
    }

    @Override // h8.e
    public boolean f(d dVar) {
        boolean z10;
        synchronized (this.f7401a) {
            z10 = m() && l(dVar);
        }
        return z10;
    }

    @Override // h8.d
    public boolean g() {
        boolean z10;
        synchronized (this.f7401a) {
            e.a aVar = this.f7405e;
            e.a aVar2 = e.a.CLEARED;
            z10 = aVar == aVar2 && this.f7406f == aVar2;
        }
        return z10;
    }

    @Override // h8.e
    public void h(d dVar) {
        synchronized (this.f7401a) {
            if (!dVar.equals(this.f7404d)) {
                this.f7405e = e.a.FAILED;
                e.a aVar = this.f7406f;
                e.a aVar2 = e.a.RUNNING;
                if (aVar != aVar2) {
                    this.f7406f = aVar2;
                    this.f7404d.j();
                }
                return;
            }
            this.f7406f = e.a.FAILED;
            e eVar = this.f7402b;
            if (eVar != null) {
                eVar.h(this);
            }
        }
    }

    @Override // h8.e
    public e i() {
        e i10;
        synchronized (this.f7401a) {
            e eVar = this.f7402b;
            i10 = eVar != null ? eVar.i() : this;
        }
        return i10;
    }

    @Override // h8.d
    public boolean isComplete() {
        boolean z10;
        synchronized (this.f7401a) {
            e.a aVar = this.f7405e;
            e.a aVar2 = e.a.SUCCESS;
            z10 = aVar == aVar2 || this.f7406f == aVar2;
        }
        return z10;
    }

    @Override // h8.d
    public boolean isRunning() {
        boolean z10;
        synchronized (this.f7401a) {
            e.a aVar = this.f7405e;
            e.a aVar2 = e.a.RUNNING;
            z10 = aVar == aVar2 || this.f7406f == aVar2;
        }
        return z10;
    }

    @Override // h8.d
    public void j() {
        synchronized (this.f7401a) {
            e.a aVar = this.f7405e;
            e.a aVar2 = e.a.RUNNING;
            if (aVar != aVar2) {
                this.f7405e = aVar2;
                this.f7403c.j();
            }
        }
    }

    @Override // h8.d
    public boolean k(d dVar) {
        if (!(dVar instanceof b)) {
            return false;
        }
        b bVar = (b) dVar;
        return this.f7403c.k(bVar.f7403c) && this.f7404d.k(bVar.f7404d);
    }

    public final boolean l(d dVar) {
        return dVar.equals(this.f7403c) || (this.f7405e == e.a.FAILED && dVar.equals(this.f7404d));
    }

    public final boolean m() {
        e eVar = this.f7402b;
        return eVar == null || eVar.f(this);
    }

    public final boolean n() {
        e eVar = this.f7402b;
        return eVar == null || eVar.e(this);
    }

    public final boolean o() {
        e eVar = this.f7402b;
        return eVar == null || eVar.a(this);
    }

    public void p(d dVar, d dVar2) {
        this.f7403c = dVar;
        this.f7404d = dVar2;
    }
}
