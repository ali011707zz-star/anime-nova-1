package t;

import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.util.ArrayList;
import t.d;
import t.i;

/* compiled from: ArrayRow.java */
/* loaded from: classes.dex */
public class b implements d.a {

    /* renamed from: e, reason: collision with root package name */
    public a f13916e;

    /* renamed from: a, reason: collision with root package name */
    public i f13912a = null;

    /* renamed from: b, reason: collision with root package name */
    public float f13913b = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;

    /* renamed from: c, reason: collision with root package name */
    public boolean f13914c = false;

    /* renamed from: d, reason: collision with root package name */
    public ArrayList<i> f13915d = new ArrayList<>();

    /* renamed from: f, reason: collision with root package name */
    public boolean f13917f = false;

    /* compiled from: ArrayRow.java */
    /* loaded from: classes.dex */
    public interface a {
        float a(int i10);

        float b(b bVar, boolean z10);

        float c(i iVar, boolean z10);

        void clear();

        void d(i iVar, float f10);

        float e(i iVar);

        int f();

        boolean g(i iVar);

        i h(int i10);

        void i(float f10);

        void j(i iVar, float f10, boolean z10);

        void k();
    }

    public b() {
    }

    public void A(d dVar, i iVar, boolean z10) {
        if (iVar == null || !iVar.f13968l) {
            return;
        }
        this.f13913b += iVar.f13967k * this.f13916e.e(iVar);
        this.f13916e.c(iVar, z10);
        if (z10) {
            iVar.d(this);
        }
        if (d.f13924t && this.f13916e.f() == 0) {
            this.f13917f = true;
            dVar.f13931a = true;
        }
    }

    public void B(d dVar, b bVar, boolean z10) {
        this.f13913b += bVar.f13913b * this.f13916e.b(bVar, z10);
        if (z10) {
            bVar.f13912a.d(this);
        }
        if (d.f13924t && this.f13912a != null && this.f13916e.f() == 0) {
            this.f13917f = true;
            dVar.f13931a = true;
        }
    }

    public void C(d dVar, i iVar, boolean z10) {
        if (iVar == null || !iVar.f13975s) {
            return;
        }
        float e10 = this.f13916e.e(iVar);
        this.f13913b += iVar.f13977u * e10;
        this.f13916e.c(iVar, z10);
        if (z10) {
            iVar.d(this);
        }
        this.f13916e.j(dVar.f13944n.f13921d[iVar.f13976t], e10, z10);
        if (d.f13924t && this.f13916e.f() == 0) {
            this.f13917f = true;
            dVar.f13931a = true;
        }
    }

    public void D(d dVar) {
        if (dVar.f13937g.length == 0) {
            return;
        }
        boolean z10 = false;
        while (!z10) {
            int f10 = this.f13916e.f();
            for (int i10 = 0; i10 < f10; i10++) {
                i h10 = this.f13916e.h(i10);
                if (h10.f13965i != -1 || h10.f13968l || h10.f13975s) {
                    this.f13915d.add(h10);
                }
            }
            int size = this.f13915d.size();
            if (size > 0) {
                for (int i11 = 0; i11 < size; i11++) {
                    i iVar = this.f13915d.get(i11);
                    if (iVar.f13968l) {
                        A(dVar, iVar, true);
                    } else if (iVar.f13975s) {
                        C(dVar, iVar, true);
                    } else {
                        B(dVar, dVar.f13937g[iVar.f13965i], true);
                    }
                }
                this.f13915d.clear();
            } else {
                z10 = true;
            }
        }
        if (d.f13924t && this.f13912a != null && this.f13916e.f() == 0) {
            this.f13917f = true;
            dVar.f13931a = true;
        }
    }

    @Override // t.d.a
    public i a(d dVar, boolean[] zArr) {
        return w(zArr, null);
    }

    @Override // t.d.a
    public void b(d.a aVar) {
        if (aVar instanceof b) {
            b bVar = (b) aVar;
            this.f13912a = null;
            this.f13916e.clear();
            for (int i10 = 0; i10 < bVar.f13916e.f(); i10++) {
                this.f13916e.j(bVar.f13916e.h(i10), bVar.f13916e.a(i10), true);
            }
        }
    }

    @Override // t.d.a
    public void c(i iVar) {
        int i10 = iVar.f13966j;
        float f10 = 1.0f;
        if (i10 != 1) {
            if (i10 == 2) {
                f10 = 1000.0f;
            } else if (i10 == 3) {
                f10 = 1000000.0f;
            } else if (i10 == 4) {
                f10 = 1.0E9f;
            } else if (i10 == 5) {
                f10 = 1.0E12f;
            }
        }
        this.f13916e.d(iVar, f10);
    }

    @Override // t.d.a
    public void clear() {
        this.f13916e.clear();
        this.f13912a = null;
        this.f13913b = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
    }

    public b d(d dVar, int i10) {
        this.f13916e.d(dVar.o(i10, "ep"), 1.0f);
        this.f13916e.d(dVar.o(i10, "em"), -1.0f);
        return this;
    }

    public b e(i iVar, int i10) {
        this.f13916e.d(iVar, i10);
        return this;
    }

    public boolean f(d dVar) {
        boolean z10;
        i g10 = g(dVar);
        if (g10 == null) {
            z10 = true;
        } else {
            x(g10);
            z10 = false;
        }
        if (this.f13916e.f() == 0) {
            this.f13917f = true;
        }
        return z10;
    }

    public i g(d dVar) {
        boolean u10;
        boolean u11;
        int f10 = this.f13916e.f();
        i iVar = null;
        i iVar2 = null;
        boolean z10 = false;
        boolean z11 = false;
        float f11 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        float f12 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        for (int i10 = 0; i10 < f10; i10++) {
            float a10 = this.f13916e.a(i10);
            i h10 = this.f13916e.h(i10);
            if (h10.f13971o == i.a.UNRESTRICTED) {
                if (iVar == null) {
                    u11 = u(h10, dVar);
                } else if (f11 > a10) {
                    u11 = u(h10, dVar);
                } else if (!z10 && u(h10, dVar)) {
                    f11 = a10;
                    iVar = h10;
                    z10 = true;
                }
                z10 = u11;
                f11 = a10;
                iVar = h10;
            } else if (iVar == null && a10 < StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                if (iVar2 == null) {
                    u10 = u(h10, dVar);
                } else if (f12 > a10) {
                    u10 = u(h10, dVar);
                } else if (!z11 && u(h10, dVar)) {
                    f12 = a10;
                    iVar2 = h10;
                    z11 = true;
                }
                z11 = u10;
                f12 = a10;
                iVar2 = h10;
            }
        }
        return iVar != null ? iVar : iVar2;
    }

    @Override // t.d.a
    public i getKey() {
        return this.f13912a;
    }

    public b h(i iVar, i iVar2, int i10, float f10, i iVar3, i iVar4, int i11) {
        if (iVar2 == iVar3) {
            this.f13916e.d(iVar, 1.0f);
            this.f13916e.d(iVar4, 1.0f);
            this.f13916e.d(iVar2, -2.0f);
            return this;
        }
        if (f10 == 0.5f) {
            this.f13916e.d(iVar, 1.0f);
            this.f13916e.d(iVar2, -1.0f);
            this.f13916e.d(iVar3, -1.0f);
            this.f13916e.d(iVar4, 1.0f);
            if (i10 > 0 || i11 > 0) {
                this.f13913b = (-i10) + i11;
            }
        } else if (f10 <= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            this.f13916e.d(iVar, -1.0f);
            this.f13916e.d(iVar2, 1.0f);
            this.f13913b = i10;
        } else if (f10 >= 1.0f) {
            this.f13916e.d(iVar4, -1.0f);
            this.f13916e.d(iVar3, 1.0f);
            this.f13913b = -i11;
        } else {
            float f11 = 1.0f - f10;
            this.f13916e.d(iVar, f11 * 1.0f);
            this.f13916e.d(iVar2, f11 * (-1.0f));
            this.f13916e.d(iVar3, (-1.0f) * f10);
            this.f13916e.d(iVar4, 1.0f * f10);
            if (i10 > 0 || i11 > 0) {
                this.f13913b = ((-i10) * f11) + (i11 * f10);
            }
        }
        return this;
    }

    public b i(i iVar, int i10) {
        this.f13912a = iVar;
        float f10 = i10;
        iVar.f13967k = f10;
        this.f13913b = f10;
        this.f13917f = true;
        return this;
    }

    @Override // t.d.a
    public boolean isEmpty() {
        return this.f13912a == null && this.f13913b == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD && this.f13916e.f() == 0;
    }

    public b j(i iVar, i iVar2, float f10) {
        this.f13916e.d(iVar, -1.0f);
        this.f13916e.d(iVar2, f10);
        return this;
    }

    public b k(i iVar, i iVar2, i iVar3, i iVar4, float f10) {
        this.f13916e.d(iVar, -1.0f);
        this.f13916e.d(iVar2, 1.0f);
        this.f13916e.d(iVar3, f10);
        this.f13916e.d(iVar4, -f10);
        return this;
    }

    public b l(float f10, float f11, float f12, i iVar, i iVar2, i iVar3, i iVar4) {
        this.f13913b = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        if (f11 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD || f10 == f12) {
            this.f13916e.d(iVar, 1.0f);
            this.f13916e.d(iVar2, -1.0f);
            this.f13916e.d(iVar4, 1.0f);
            this.f13916e.d(iVar3, -1.0f);
        } else if (f10 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            this.f13916e.d(iVar, 1.0f);
            this.f13916e.d(iVar2, -1.0f);
        } else if (f12 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            this.f13916e.d(iVar3, 1.0f);
            this.f13916e.d(iVar4, -1.0f);
        } else {
            float f13 = (f10 / f11) / (f12 / f11);
            this.f13916e.d(iVar, 1.0f);
            this.f13916e.d(iVar2, -1.0f);
            this.f13916e.d(iVar4, f13);
            this.f13916e.d(iVar3, -f13);
        }
        return this;
    }

    public b m(i iVar, int i10) {
        if (i10 < 0) {
            this.f13913b = i10 * (-1);
            this.f13916e.d(iVar, 1.0f);
        } else {
            this.f13913b = i10;
            this.f13916e.d(iVar, -1.0f);
        }
        return this;
    }

    public b n(i iVar, i iVar2, int i10) {
        boolean z10 = false;
        if (i10 != 0) {
            if (i10 < 0) {
                i10 *= -1;
                z10 = true;
            }
            this.f13913b = i10;
        }
        if (!z10) {
            this.f13916e.d(iVar, -1.0f);
            this.f13916e.d(iVar2, 1.0f);
        } else {
            this.f13916e.d(iVar, 1.0f);
            this.f13916e.d(iVar2, -1.0f);
        }
        return this;
    }

    public b o(i iVar, i iVar2, i iVar3, int i10) {
        boolean z10 = false;
        if (i10 != 0) {
            if (i10 < 0) {
                i10 *= -1;
                z10 = true;
            }
            this.f13913b = i10;
        }
        if (!z10) {
            this.f13916e.d(iVar, -1.0f);
            this.f13916e.d(iVar2, 1.0f);
            this.f13916e.d(iVar3, 1.0f);
        } else {
            this.f13916e.d(iVar, 1.0f);
            this.f13916e.d(iVar2, -1.0f);
            this.f13916e.d(iVar3, -1.0f);
        }
        return this;
    }

    public b p(i iVar, i iVar2, i iVar3, int i10) {
        boolean z10 = false;
        if (i10 != 0) {
            if (i10 < 0) {
                i10 *= -1;
                z10 = true;
            }
            this.f13913b = i10;
        }
        if (!z10) {
            this.f13916e.d(iVar, -1.0f);
            this.f13916e.d(iVar2, 1.0f);
            this.f13916e.d(iVar3, -1.0f);
        } else {
            this.f13916e.d(iVar, 1.0f);
            this.f13916e.d(iVar2, -1.0f);
            this.f13916e.d(iVar3, 1.0f);
        }
        return this;
    }

    public b q(i iVar, i iVar2, i iVar3, i iVar4, float f10) {
        this.f13916e.d(iVar3, 0.5f);
        this.f13916e.d(iVar4, 0.5f);
        this.f13916e.d(iVar, -0.5f);
        this.f13916e.d(iVar2, -0.5f);
        this.f13913b = -f10;
        return this;
    }

    public void r() {
        float f10 = this.f13913b;
        if (f10 < StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            this.f13913b = f10 * (-1.0f);
            this.f13916e.k();
        }
    }

    public boolean s() {
        i iVar = this.f13912a;
        return iVar != null && (iVar.f13971o == i.a.UNRESTRICTED || this.f13913b >= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
    }

    public boolean t(i iVar) {
        return this.f13916e.g(iVar);
    }

    public String toString() {
        return z();
    }

    public final boolean u(i iVar, d dVar) {
        return iVar.f13974r <= 1;
    }

    public i v(i iVar) {
        return w(null, iVar);
    }

    public final i w(boolean[] zArr, i iVar) {
        i.a aVar;
        int f10 = this.f13916e.f();
        i iVar2 = null;
        float f11 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        for (int i10 = 0; i10 < f10; i10++) {
            float a10 = this.f13916e.a(i10);
            if (a10 < StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                i h10 = this.f13916e.h(i10);
                if ((zArr == null || !zArr[h10.f13964h]) && h10 != iVar && (((aVar = h10.f13971o) == i.a.SLACK || aVar == i.a.ERROR) && a10 < f11)) {
                    f11 = a10;
                    iVar2 = h10;
                }
            }
        }
        return iVar2;
    }

    public void x(i iVar) {
        i iVar2 = this.f13912a;
        if (iVar2 != null) {
            this.f13916e.d(iVar2, -1.0f);
            this.f13912a.f13965i = -1;
            this.f13912a = null;
        }
        float c10 = this.f13916e.c(iVar, true) * (-1.0f);
        this.f13912a = iVar;
        if (c10 == 1.0f) {
            return;
        }
        this.f13913b /= c10;
        this.f13916e.i(c10);
    }

    public void y() {
        this.f13912a = null;
        this.f13916e.clear();
        this.f13913b = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        this.f13917f = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00d2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String z() {
        boolean z10;
        String str = (this.f13912a == null ? "0" : "" + this.f13912a) + " = ";
        if (this.f13913b != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            str = str + this.f13913b;
            z10 = true;
        } else {
            z10 = false;
        }
        int f10 = this.f13916e.f();
        for (int i10 = 0; i10 < f10; i10++) {
            i h10 = this.f13916e.h(i10);
            if (h10 != null) {
                float a10 = this.f13916e.a(i10);
                if (a10 != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                    String iVar = h10.toString();
                    if (!z10) {
                        if (a10 < StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                            str = str + "- ";
                            a10 *= -1.0f;
                        }
                        str = a10 == 1.0f ? str + iVar : str + a10 + " " + iVar;
                        z10 = true;
                    } else if (a10 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                        str = str + " + ";
                        if (a10 == 1.0f) {
                        }
                        z10 = true;
                    } else {
                        str = str + " - ";
                        a10 *= -1.0f;
                        if (a10 == 1.0f) {
                        }
                        z10 = true;
                    }
                }
            }
        }
        if (z10) {
            return str;
        }
        return str + "0.0";
    }

    public b(c cVar) {
        this.f13916e = new t.a(this, cVar);
    }
}
