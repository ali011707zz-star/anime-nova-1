package t;

import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.util.Arrays;
import t.b;

/* compiled from: SolverVariableValues.java */
/* loaded from: classes.dex */
public class j implements b.a {

    /* renamed from: n, reason: collision with root package name */
    public static float f13985n = 0.001f;

    /* renamed from: a, reason: collision with root package name */
    public final int f13986a = -1;

    /* renamed from: b, reason: collision with root package name */
    public int f13987b = 16;

    /* renamed from: c, reason: collision with root package name */
    public int f13988c = 16;

    /* renamed from: d, reason: collision with root package name */
    public int[] f13989d = new int[16];

    /* renamed from: e, reason: collision with root package name */
    public int[] f13990e = new int[16];

    /* renamed from: f, reason: collision with root package name */
    public int[] f13991f = new int[16];

    /* renamed from: g, reason: collision with root package name */
    public float[] f13992g = new float[16];

    /* renamed from: h, reason: collision with root package name */
    public int[] f13993h = new int[16];

    /* renamed from: i, reason: collision with root package name */
    public int[] f13994i = new int[16];

    /* renamed from: j, reason: collision with root package name */
    public int f13995j = 0;

    /* renamed from: k, reason: collision with root package name */
    public int f13996k = -1;

    /* renamed from: l, reason: collision with root package name */
    public final b f13997l;

    /* renamed from: m, reason: collision with root package name */
    public final c f13998m;

    public j(b bVar, c cVar) {
        this.f13997l = bVar;
        this.f13998m = cVar;
        clear();
    }

    @Override // t.b.a
    public float a(int i10) {
        int i11 = this.f13995j;
        int i12 = this.f13996k;
        for (int i13 = 0; i13 < i11; i13++) {
            if (i13 == i10) {
                return this.f13992g[i12];
            }
            i12 = this.f13994i[i12];
            if (i12 == -1) {
                return StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            }
        }
        return StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
    }

    @Override // t.b.a
    public float b(b bVar, boolean z10) {
        float e10 = e(bVar.f13912a);
        c(bVar.f13912a, z10);
        j jVar = (j) bVar.f13916e;
        int f10 = jVar.f();
        int i10 = 0;
        int i11 = 0;
        while (i10 < f10) {
            int[] iArr = jVar.f13991f;
            if (iArr[i11] != -1) {
                j(this.f13998m.f13921d[iArr[i11]], jVar.f13992g[i11] * e10, z10);
                i10++;
            }
            i11++;
        }
        return e10;
    }

    @Override // t.b.a
    public float c(i iVar, boolean z10) {
        int p10 = p(iVar);
        if (p10 == -1) {
            return StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        }
        r(iVar);
        float f10 = this.f13992g[p10];
        if (this.f13996k == p10) {
            this.f13996k = this.f13994i[p10];
        }
        this.f13991f[p10] = -1;
        int[] iArr = this.f13993h;
        if (iArr[p10] != -1) {
            int[] iArr2 = this.f13994i;
            iArr2[iArr[p10]] = iArr2[p10];
        }
        int[] iArr3 = this.f13994i;
        if (iArr3[p10] != -1) {
            iArr[iArr3[p10]] = iArr[p10];
        }
        this.f13995j--;
        iVar.f13974r--;
        if (z10) {
            iVar.d(this.f13997l);
        }
        return f10;
    }

    @Override // t.b.a
    public void clear() {
        int i10 = this.f13995j;
        for (int i11 = 0; i11 < i10; i11++) {
            i h10 = h(i11);
            if (h10 != null) {
                h10.d(this.f13997l);
            }
        }
        for (int i12 = 0; i12 < this.f13987b; i12++) {
            this.f13991f[i12] = -1;
            this.f13990e[i12] = -1;
        }
        for (int i13 = 0; i13 < this.f13988c; i13++) {
            this.f13989d[i13] = -1;
        }
        this.f13995j = 0;
        this.f13996k = -1;
    }

    @Override // t.b.a
    public void d(i iVar, float f10) {
        float f11 = f13985n;
        if (f10 > (-f11) && f10 < f11) {
            c(iVar, true);
            return;
        }
        if (this.f13995j == 0) {
            m(0, iVar, f10);
            l(iVar, 0);
            this.f13996k = 0;
            return;
        }
        int p10 = p(iVar);
        if (p10 != -1) {
            this.f13992g[p10] = f10;
            return;
        }
        if (this.f13995j + 1 >= this.f13987b) {
            o();
        }
        int i10 = this.f13995j;
        int i11 = this.f13996k;
        int i12 = -1;
        for (int i13 = 0; i13 < i10; i13++) {
            int[] iArr = this.f13991f;
            int i14 = iArr[i11];
            int i15 = iVar.f13964h;
            if (i14 == i15) {
                this.f13992g[i11] = f10;
                return;
            }
            if (iArr[i11] < i15) {
                i12 = i11;
            }
            i11 = this.f13994i[i11];
            if (i11 == -1) {
                break;
            }
        }
        q(i12, iVar, f10);
    }

    @Override // t.b.a
    public float e(i iVar) {
        int p10 = p(iVar);
        return p10 != -1 ? this.f13992g[p10] : StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
    }

    @Override // t.b.a
    public int f() {
        return this.f13995j;
    }

    @Override // t.b.a
    public boolean g(i iVar) {
        return p(iVar) != -1;
    }

    @Override // t.b.a
    public i h(int i10) {
        int i11 = this.f13995j;
        if (i11 == 0) {
            return null;
        }
        int i12 = this.f13996k;
        for (int i13 = 0; i13 < i11; i13++) {
            if (i13 == i10 && i12 != -1) {
                return this.f13998m.f13921d[this.f13991f[i12]];
            }
            i12 = this.f13994i[i12];
            if (i12 == -1) {
                break;
            }
        }
        return null;
    }

    @Override // t.b.a
    public void i(float f10) {
        int i10 = this.f13995j;
        int i11 = this.f13996k;
        for (int i12 = 0; i12 < i10; i12++) {
            float[] fArr = this.f13992g;
            fArr[i11] = fArr[i11] / f10;
            i11 = this.f13994i[i11];
            if (i11 == -1) {
                return;
            }
        }
    }

    @Override // t.b.a
    public void j(i iVar, float f10, boolean z10) {
        float f11 = f13985n;
        if (f10 <= (-f11) || f10 >= f11) {
            int p10 = p(iVar);
            if (p10 == -1) {
                d(iVar, f10);
                return;
            }
            float[] fArr = this.f13992g;
            fArr[p10] = fArr[p10] + f10;
            float f12 = fArr[p10];
            float f13 = f13985n;
            if (f12 <= (-f13) || fArr[p10] >= f13) {
                return;
            }
            fArr[p10] = 0.0f;
            c(iVar, z10);
        }
    }

    @Override // t.b.a
    public void k() {
        int i10 = this.f13995j;
        int i11 = this.f13996k;
        for (int i12 = 0; i12 < i10; i12++) {
            float[] fArr = this.f13992g;
            fArr[i11] = fArr[i11] * (-1.0f);
            i11 = this.f13994i[i11];
            if (i11 == -1) {
                return;
            }
        }
    }

    public final void l(i iVar, int i10) {
        int[] iArr;
        int i11 = iVar.f13964h % this.f13988c;
        int[] iArr2 = this.f13989d;
        int i12 = iArr2[i11];
        if (i12 == -1) {
            iArr2[i11] = i10;
        } else {
            while (true) {
                iArr = this.f13990e;
                if (iArr[i12] == -1) {
                    break;
                } else {
                    i12 = iArr[i12];
                }
            }
            iArr[i12] = i10;
        }
        this.f13990e[i10] = -1;
    }

    public final void m(int i10, i iVar, float f10) {
        this.f13991f[i10] = iVar.f13964h;
        this.f13992g[i10] = f10;
        this.f13993h[i10] = -1;
        this.f13994i[i10] = -1;
        iVar.a(this.f13997l);
        iVar.f13974r++;
        this.f13995j++;
    }

    public final int n() {
        for (int i10 = 0; i10 < this.f13987b; i10++) {
            if (this.f13991f[i10] == -1) {
                return i10;
            }
        }
        return -1;
    }

    public final void o() {
        int i10 = this.f13987b * 2;
        this.f13991f = Arrays.copyOf(this.f13991f, i10);
        this.f13992g = Arrays.copyOf(this.f13992g, i10);
        this.f13993h = Arrays.copyOf(this.f13993h, i10);
        this.f13994i = Arrays.copyOf(this.f13994i, i10);
        this.f13990e = Arrays.copyOf(this.f13990e, i10);
        for (int i11 = this.f13987b; i11 < i10; i11++) {
            this.f13991f[i11] = -1;
            this.f13990e[i11] = -1;
        }
        this.f13987b = i10;
    }

    public int p(i iVar) {
        int[] iArr;
        if (this.f13995j != 0 && iVar != null) {
            int i10 = iVar.f13964h;
            int i11 = this.f13989d[i10 % this.f13988c];
            if (i11 == -1) {
                return -1;
            }
            if (this.f13991f[i11] == i10) {
                return i11;
            }
            while (true) {
                iArr = this.f13990e;
                if (iArr[i11] == -1 || this.f13991f[iArr[i11]] == i10) {
                    break;
                }
                i11 = iArr[i11];
            }
            if (iArr[i11] != -1 && this.f13991f[iArr[i11]] == i10) {
                return iArr[i11];
            }
        }
        return -1;
    }

    public final void q(int i10, i iVar, float f10) {
        int n10 = n();
        m(n10, iVar, f10);
        if (i10 != -1) {
            this.f13993h[n10] = i10;
            int[] iArr = this.f13994i;
            iArr[n10] = iArr[i10];
            iArr[i10] = n10;
        } else {
            this.f13993h[n10] = -1;
            if (this.f13995j > 0) {
                this.f13994i[n10] = this.f13996k;
                this.f13996k = n10;
            } else {
                this.f13994i[n10] = -1;
            }
        }
        int[] iArr2 = this.f13994i;
        if (iArr2[n10] != -1) {
            this.f13993h[iArr2[n10]] = n10;
        }
        l(iVar, n10);
    }

    public final void r(i iVar) {
        int[] iArr;
        int i10 = iVar.f13964h;
        int i11 = i10 % this.f13988c;
        int[] iArr2 = this.f13989d;
        int i12 = iArr2[i11];
        if (i12 == -1) {
            return;
        }
        if (this.f13991f[i12] == i10) {
            int[] iArr3 = this.f13990e;
            iArr2[i11] = iArr3[i12];
            iArr3[i12] = -1;
            return;
        }
        while (true) {
            iArr = this.f13990e;
            if (iArr[i12] == -1 || this.f13991f[iArr[i12]] == i10) {
                break;
            } else {
                i12 = iArr[i12];
            }
        }
        int i13 = iArr[i12];
        if (i13 == -1 || this.f13991f[i13] != i10) {
            return;
        }
        iArr[i12] = iArr[i13];
        iArr[i13] = -1;
    }

    public String toString() {
        String str = hashCode() + " { ";
        int i10 = this.f13995j;
        for (int i11 = 0; i11 < i10; i11++) {
            i h10 = h(i11);
            if (h10 != null) {
                String str2 = str + h10 + " = " + a(i11) + " ";
                int p10 = p(h10);
                String str3 = str2 + "[p: ";
                String str4 = (this.f13993h[p10] != -1 ? str3 + this.f13998m.f13921d[this.f13991f[this.f13993h[p10]]] : str3 + "none") + ", n: ";
                str = (this.f13994i[p10] != -1 ? str4 + this.f13998m.f13921d[this.f13991f[this.f13994i[p10]]] : str4 + "none") + "]";
            }
        }
        return str + " }";
    }
}
