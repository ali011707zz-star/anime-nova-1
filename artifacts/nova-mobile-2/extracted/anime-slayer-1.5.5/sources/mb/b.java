package mb;

import mb.a;

/* compiled from: InsetterDsl.kt */
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final int f11083a;

    /* renamed from: b, reason: collision with root package name */
    public a.C0260a f11084b;

    public b(int i10, a.C0260a c0260a) {
        jc.l.f(c0260a, "builder");
        this.f11083a = i10;
        this.f11084b = c0260a;
    }

    public static /* synthetic */ void c(b bVar, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, boolean z16, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        if ((i10 & 2) != 0) {
            z11 = false;
        }
        if ((i10 & 4) != 0) {
            z12 = false;
        }
        if ((i10 & 8) != 0) {
            z13 = false;
        }
        if ((i10 & 16) != 0) {
            z14 = false;
        }
        if ((i10 & 32) != 0) {
            z15 = false;
        }
        if ((i10 & 64) != 0) {
            z16 = false;
        }
        bVar.b(z10, z11, z12, z13, z14, z15, z16);
    }

    public static /* synthetic */ void f(b bVar, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        bVar.d(z10);
    }

    public static /* synthetic */ void g(b bVar, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, boolean z16, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        if ((i10 & 2) != 0) {
            z11 = false;
        }
        if ((i10 & 4) != 0) {
            z12 = false;
        }
        if ((i10 & 8) != 0) {
            z13 = false;
        }
        if ((i10 & 16) != 0) {
            z14 = false;
        }
        if ((i10 & 32) != 0) {
            z15 = false;
        }
        if ((i10 & 64) != 0) {
            z16 = false;
        }
        bVar.e(z10, z11, z12, z13, z14, z15, z16);
    }

    public final a.C0260a a() {
        return this.f11084b;
    }

    public final void b(boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, boolean z16) {
        this.f11084b = this.f11084b.c(this.f11083a, j.a(z10, z11, z12, z13, z14, z15), z16);
    }

    public final void d(boolean z10) {
        g(this, false, false, false, false, true, true, z10, 15, null);
    }

    public final void e(boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, boolean z16) {
        this.f11084b = this.f11084b.d(this.f11083a, j.a(z10, z11, z12, z13, z14, z15), z16);
    }
}
