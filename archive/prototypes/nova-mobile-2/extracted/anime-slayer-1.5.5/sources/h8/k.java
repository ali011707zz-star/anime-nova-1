package h8;

import h8.e;

/* compiled from: ThumbnailRequestCoordinator.java */
/* loaded from: classes.dex */
public class k implements e, d {

    /* renamed from: a, reason: collision with root package name */
    public final e f7458a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f7459b;

    /* renamed from: c, reason: collision with root package name */
    public volatile d f7460c;

    /* renamed from: d, reason: collision with root package name */
    public volatile d f7461d;

    /* renamed from: e, reason: collision with root package name */
    public e.a f7462e;

    /* renamed from: f, reason: collision with root package name */
    public e.a f7463f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f7464g;

    public k(Object obj, e eVar) {
        e.a aVar = e.a.CLEARED;
        this.f7462e = aVar;
        this.f7463f = aVar;
        this.f7459b = obj;
        this.f7458a = eVar;
    }

    @Override // h8.e
    public boolean a(d dVar) {
        boolean z10;
        synchronized (this.f7459b) {
            z10 = n() && (dVar.equals(this.f7460c) || this.f7462e != e.a.SUCCESS);
        }
        return z10;
    }

    @Override // h8.e
    public void b(d dVar) {
        synchronized (this.f7459b) {
            if (dVar.equals(this.f7461d)) {
                this.f7463f = e.a.SUCCESS;
                return;
            }
            this.f7462e = e.a.SUCCESS;
            e eVar = this.f7458a;
            if (eVar != null) {
                eVar.b(this);
            }
            if (!this.f7463f.a()) {
                this.f7461d.clear();
            }
        }
    }

    @Override // h8.e, h8.d
    public boolean c() {
        boolean z10;
        synchronized (this.f7459b) {
            z10 = this.f7461d.c() || this.f7460c.c();
        }
        return z10;
    }

    @Override // h8.d
    public void clear() {
        synchronized (this.f7459b) {
            this.f7464g = false;
            e.a aVar = e.a.CLEARED;
            this.f7462e = aVar;
            this.f7463f = aVar;
            this.f7461d.clear();
            this.f7460c.clear();
        }
    }

    @Override // h8.d
    public void d() {
        synchronized (this.f7459b) {
            if (!this.f7463f.a()) {
                this.f7463f = e.a.PAUSED;
                this.f7461d.d();
            }
            if (!this.f7462e.a()) {
                this.f7462e = e.a.PAUSED;
                this.f7460c.d();
            }
        }
    }

    @Override // h8.e
    public boolean e(d dVar) {
        boolean z10;
        synchronized (this.f7459b) {
            z10 = m() && dVar.equals(this.f7460c) && !c();
        }
        return z10;
    }

    @Override // h8.e
    public boolean f(d dVar) {
        boolean z10;
        synchronized (this.f7459b) {
            z10 = l() && dVar.equals(this.f7460c) && this.f7462e != e.a.PAUSED;
        }
        return z10;
    }

    @Override // h8.d
    public boolean g() {
        boolean z10;
        synchronized (this.f7459b) {
            z10 = this.f7462e == e.a.CLEARED;
        }
        return z10;
    }

    @Override // h8.e
    public void h(d dVar) {
        synchronized (this.f7459b) {
            if (!dVar.equals(this.f7460c)) {
                this.f7463f = e.a.FAILED;
                return;
            }
            this.f7462e = e.a.FAILED;
            e eVar = this.f7458a;
            if (eVar != null) {
                eVar.h(this);
            }
        }
    }

    @Override // h8.e
    public e i() {
        e i10;
        synchronized (this.f7459b) {
            e eVar = this.f7458a;
            i10 = eVar != null ? eVar.i() : this;
        }
        return i10;
    }

    @Override // h8.d
    public boolean isComplete() {
        boolean z10;
        synchronized (this.f7459b) {
            z10 = this.f7462e == e.a.SUCCESS;
        }
        return z10;
    }

    @Override // h8.d
    public boolean isRunning() {
        boolean z10;
        synchronized (this.f7459b) {
            z10 = this.f7462e == e.a.RUNNING;
        }
        return z10;
    }

    @Override // h8.d
    public void j() {
        synchronized (this.f7459b) {
            this.f7464g = true;
            try {
                if (this.f7462e != e.a.SUCCESS) {
                    e.a aVar = this.f7463f;
                    e.a aVar2 = e.a.RUNNING;
                    if (aVar != aVar2) {
                        this.f7463f = aVar2;
                        this.f7461d.j();
                    }
                }
                if (this.f7464g) {
                    e.a aVar3 = this.f7462e;
                    e.a aVar4 = e.a.RUNNING;
                    if (aVar3 != aVar4) {
                        this.f7462e = aVar4;
                        this.f7460c.j();
                    }
                }
            } finally {
                this.f7464g = false;
            }
        }
    }

    @Override // h8.d
    public boolean k(d dVar) {
        if (!(dVar instanceof k)) {
            return false;
        }
        k kVar = (k) dVar;
        if (this.f7460c == null) {
            if (kVar.f7460c != null) {
                return false;
            }
        } else if (!this.f7460c.k(kVar.f7460c)) {
            return false;
        }
        if (this.f7461d == null) {
            if (kVar.f7461d != null) {
                return false;
            }
        } else if (!this.f7461d.k(kVar.f7461d)) {
            return false;
        }
        return true;
    }

    public final boolean l() {
        e eVar = this.f7458a;
        return eVar == null || eVar.f(this);
    }

    public final boolean m() {
        e eVar = this.f7458a;
        return eVar == null || eVar.e(this);
    }

    public final boolean n() {
        e eVar = this.f7458a;
        return eVar == null || eVar.a(this);
    }

    public void o(d dVar, d dVar2) {
        this.f7460c = dVar;
        this.f7461d = dVar2;
    }
}
