package t;

import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.util.Arrays;
import java.util.HashMap;
import t.i;
import w.d;

/* compiled from: LinearSystem.java */
/* loaded from: classes.dex */
public class d {

    /* renamed from: r, reason: collision with root package name */
    public static boolean f13922r = false;

    /* renamed from: s, reason: collision with root package name */
    public static boolean f13923s = true;

    /* renamed from: t, reason: collision with root package name */
    public static boolean f13924t = true;

    /* renamed from: u, reason: collision with root package name */
    public static boolean f13925u = true;

    /* renamed from: v, reason: collision with root package name */
    public static boolean f13926v = false;

    /* renamed from: w, reason: collision with root package name */
    public static int f13927w = 1000;

    /* renamed from: x, reason: collision with root package name */
    public static e f13928x;

    /* renamed from: y, reason: collision with root package name */
    public static long f13929y;

    /* renamed from: z, reason: collision with root package name */
    public static long f13930z;

    /* renamed from: d, reason: collision with root package name */
    public a f13934d;

    /* renamed from: g, reason: collision with root package name */
    public t.b[] f13937g;

    /* renamed from: n, reason: collision with root package name */
    public final c f13944n;

    /* renamed from: q, reason: collision with root package name */
    public a f13947q;

    /* renamed from: a, reason: collision with root package name */
    public boolean f13931a = false;

    /* renamed from: b, reason: collision with root package name */
    public int f13932b = 0;

    /* renamed from: c, reason: collision with root package name */
    public HashMap<String, i> f13933c = null;

    /* renamed from: e, reason: collision with root package name */
    public int f13935e = 32;

    /* renamed from: f, reason: collision with root package name */
    public int f13936f = 32;

    /* renamed from: h, reason: collision with root package name */
    public boolean f13938h = false;

    /* renamed from: i, reason: collision with root package name */
    public boolean f13939i = false;

    /* renamed from: j, reason: collision with root package name */
    public boolean[] f13940j = new boolean[32];

    /* renamed from: k, reason: collision with root package name */
    public int f13941k = 1;

    /* renamed from: l, reason: collision with root package name */
    public int f13942l = 0;

    /* renamed from: m, reason: collision with root package name */
    public int f13943m = 32;

    /* renamed from: o, reason: collision with root package name */
    public i[] f13945o = new i[f13927w];

    /* renamed from: p, reason: collision with root package name */
    public int f13946p = 0;

    /* compiled from: LinearSystem.java */
    /* loaded from: classes.dex */
    public interface a {
        i a(d dVar, boolean[] zArr);

        void b(a aVar);

        void c(i iVar);

        void clear();

        i getKey();

        boolean isEmpty();
    }

    /* compiled from: LinearSystem.java */
    /* loaded from: classes.dex */
    public class b extends t.b {
        public b(c cVar) {
            this.f13916e = new j(this, cVar);
        }
    }

    public d() {
        this.f13937g = null;
        this.f13937g = new t.b[32];
        D();
        c cVar = new c();
        this.f13944n = cVar;
        this.f13934d = new h(cVar);
        if (f13926v) {
            this.f13947q = new b(cVar);
        } else {
            this.f13947q = new t.b(cVar);
        }
    }

    public static t.b s(d dVar, i iVar, i iVar2, float f10) {
        return dVar.r().j(iVar, iVar2, f10);
    }

    public static e x() {
        return f13928x;
    }

    public void A() throws Exception {
        if (this.f13934d.isEmpty()) {
            n();
            return;
        }
        if (!this.f13938h && !this.f13939i) {
            B(this.f13934d);
            return;
        }
        boolean z10 = false;
        int i10 = 0;
        while (true) {
            if (i10 >= this.f13942l) {
                z10 = true;
                break;
            } else if (!this.f13937g[i10].f13917f) {
                break;
            } else {
                i10++;
            }
        }
        if (!z10) {
            B(this.f13934d);
        } else {
            n();
        }
    }

    public void B(a aVar) throws Exception {
        u(aVar);
        C(aVar, false);
        n();
    }

    public final int C(a aVar, boolean z10) {
        for (int i10 = 0; i10 < this.f13941k; i10++) {
            this.f13940j[i10] = false;
        }
        boolean z11 = false;
        int i11 = 0;
        while (!z11) {
            i11++;
            if (i11 >= this.f13941k * 2) {
                return i11;
            }
            if (aVar.getKey() != null) {
                this.f13940j[aVar.getKey().f13964h] = true;
            }
            i a10 = aVar.a(this, this.f13940j);
            if (a10 != null) {
                boolean[] zArr = this.f13940j;
                int i12 = a10.f13964h;
                if (zArr[i12]) {
                    return i11;
                }
                zArr[i12] = true;
            }
            if (a10 != null) {
                float f10 = Float.MAX_VALUE;
                int i13 = -1;
                for (int i14 = 0; i14 < this.f13942l; i14++) {
                    t.b bVar = this.f13937g[i14];
                    if (bVar.f13912a.f13971o != i.a.UNRESTRICTED && !bVar.f13917f && bVar.t(a10)) {
                        float e10 = bVar.f13916e.e(a10);
                        if (e10 < StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                            float f11 = (-bVar.f13913b) / e10;
                            if (f11 < f10) {
                                i13 = i14;
                                f10 = f11;
                            }
                        }
                    }
                }
                if (i13 > -1) {
                    t.b bVar2 = this.f13937g[i13];
                    bVar2.f13912a.f13965i = -1;
                    bVar2.x(a10);
                    i iVar = bVar2.f13912a;
                    iVar.f13965i = i13;
                    iVar.h(this, bVar2);
                }
            } else {
                z11 = true;
            }
        }
        return i11;
    }

    public final void D() {
        int i10 = 0;
        if (f13926v) {
            while (i10 < this.f13942l) {
                t.b bVar = this.f13937g[i10];
                if (bVar != null) {
                    this.f13944n.f13918a.a(bVar);
                }
                this.f13937g[i10] = null;
                i10++;
            }
            return;
        }
        while (i10 < this.f13942l) {
            t.b bVar2 = this.f13937g[i10];
            if (bVar2 != null) {
                this.f13944n.f13919b.a(bVar2);
            }
            this.f13937g[i10] = null;
            i10++;
        }
    }

    public void E() {
        c cVar;
        int i10 = 0;
        while (true) {
            cVar = this.f13944n;
            i[] iVarArr = cVar.f13921d;
            if (i10 >= iVarArr.length) {
                break;
            }
            i iVar = iVarArr[i10];
            if (iVar != null) {
                iVar.e();
            }
            i10++;
        }
        cVar.f13920c.c(this.f13945o, this.f13946p);
        this.f13946p = 0;
        Arrays.fill(this.f13944n.f13921d, (Object) null);
        HashMap<String, i> hashMap = this.f13933c;
        if (hashMap != null) {
            hashMap.clear();
        }
        this.f13932b = 0;
        this.f13934d.clear();
        this.f13941k = 1;
        for (int i11 = 0; i11 < this.f13942l; i11++) {
            t.b[] bVarArr = this.f13937g;
            if (bVarArr[i11] != null) {
                bVarArr[i11].f13914c = false;
            }
        }
        D();
        this.f13942l = 0;
        if (f13926v) {
            this.f13947q = new b(this.f13944n);
        } else {
            this.f13947q = new t.b(this.f13944n);
        }
    }

    public final i a(i.a aVar, String str) {
        i b10 = this.f13944n.f13920c.b();
        if (b10 == null) {
            b10 = new i(aVar, str);
            b10.g(aVar, str);
        } else {
            b10.e();
            b10.g(aVar, str);
        }
        int i10 = this.f13946p;
        int i11 = f13927w;
        if (i10 >= i11) {
            int i12 = i11 * 2;
            f13927w = i12;
            this.f13945o = (i[]) Arrays.copyOf(this.f13945o, i12);
        }
        i[] iVarArr = this.f13945o;
        int i13 = this.f13946p;
        this.f13946p = i13 + 1;
        iVarArr[i13] = b10;
        return b10;
    }

    public void b(w.e eVar, w.e eVar2, float f10, int i10) {
        d.b bVar = d.b.LEFT;
        i q10 = q(eVar.m(bVar));
        d.b bVar2 = d.b.TOP;
        i q11 = q(eVar.m(bVar2));
        d.b bVar3 = d.b.RIGHT;
        i q12 = q(eVar.m(bVar3));
        d.b bVar4 = d.b.BOTTOM;
        i q13 = q(eVar.m(bVar4));
        i q14 = q(eVar2.m(bVar));
        i q15 = q(eVar2.m(bVar2));
        i q16 = q(eVar2.m(bVar3));
        i q17 = q(eVar2.m(bVar4));
        t.b r10 = r();
        double d10 = f10;
        double sin = Math.sin(d10);
        double d11 = i10;
        Double.isNaN(d11);
        r10.q(q11, q13, q15, q17, (float) (sin * d11));
        d(r10);
        t.b r11 = r();
        double cos = Math.cos(d10);
        Double.isNaN(d11);
        r11.q(q10, q12, q14, q16, (float) (cos * d11));
        d(r11);
    }

    public void c(i iVar, i iVar2, int i10, float f10, i iVar3, i iVar4, int i11, int i12) {
        t.b r10 = r();
        r10.h(iVar, iVar2, i10, f10, iVar3, iVar4, i11);
        if (i12 != 8) {
            r10.d(this, i12);
        }
        d(r10);
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0082 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0083  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void d(t.b bVar) {
        i v10;
        if (bVar == null) {
            return;
        }
        boolean z10 = true;
        if (this.f13942l + 1 >= this.f13943m || this.f13941k + 1 >= this.f13936f) {
            z();
        }
        boolean z11 = false;
        if (!bVar.f13917f) {
            bVar.D(this);
            if (bVar.isEmpty()) {
                return;
            }
            bVar.r();
            if (bVar.f(this)) {
                i p10 = p();
                bVar.f13912a = p10;
                int i10 = this.f13942l;
                l(bVar);
                if (this.f13942l == i10 + 1) {
                    this.f13947q.b(bVar);
                    C(this.f13947q, true);
                    if (p10.f13965i == -1) {
                        if (bVar.f13912a == p10 && (v10 = bVar.v(p10)) != null) {
                            bVar.x(v10);
                        }
                        if (!bVar.f13917f) {
                            bVar.f13912a.h(this, bVar);
                        }
                        if (f13926v) {
                            this.f13944n.f13918a.a(bVar);
                        } else {
                            this.f13944n.f13919b.a(bVar);
                        }
                        this.f13942l--;
                    }
                    if (bVar.s()) {
                        return;
                    } else {
                        z11 = z10;
                    }
                }
            }
            z10 = false;
            if (bVar.s()) {
            }
        }
        if (z11) {
            return;
        }
        l(bVar);
    }

    public t.b e(i iVar, i iVar2, int i10, int i11) {
        if (f13923s && i11 == 8 && iVar2.f13968l && iVar.f13965i == -1) {
            iVar.f(this, iVar2.f13967k + i10);
            return null;
        }
        t.b r10 = r();
        r10.n(iVar, iVar2, i10);
        if (i11 != 8) {
            r10.d(this, i11);
        }
        d(r10);
        return r10;
    }

    public void f(i iVar, int i10) {
        if (f13923s && iVar.f13965i == -1) {
            float f10 = i10;
            iVar.f(this, f10);
            for (int i11 = 0; i11 < this.f13932b + 1; i11++) {
                i iVar2 = this.f13944n.f13921d[i11];
                if (iVar2 != null && iVar2.f13975s && iVar2.f13976t == iVar.f13964h) {
                    iVar2.f(this, iVar2.f13977u + f10);
                }
            }
            return;
        }
        int i12 = iVar.f13965i;
        if (i12 != -1) {
            t.b bVar = this.f13937g[i12];
            if (bVar.f13917f) {
                bVar.f13913b = i10;
                return;
            }
            if (bVar.f13916e.f() == 0) {
                bVar.f13917f = true;
                bVar.f13913b = i10;
                return;
            } else {
                t.b r10 = r();
                r10.m(iVar, i10);
                d(r10);
                return;
            }
        }
        t.b r11 = r();
        r11.i(iVar, i10);
        d(r11);
    }

    public void g(i iVar, i iVar2, int i10, boolean z10) {
        t.b r10 = r();
        i t10 = t();
        t10.f13966j = 0;
        r10.o(iVar, iVar2, t10, i10);
        d(r10);
    }

    public void h(i iVar, i iVar2, int i10, int i11) {
        t.b r10 = r();
        i t10 = t();
        t10.f13966j = 0;
        r10.o(iVar, iVar2, t10, i10);
        if (i11 != 8) {
            m(r10, (int) (r10.f13916e.e(t10) * (-1.0f)), i11);
        }
        d(r10);
    }

    public void i(i iVar, i iVar2, int i10, boolean z10) {
        t.b r10 = r();
        i t10 = t();
        t10.f13966j = 0;
        r10.p(iVar, iVar2, t10, i10);
        d(r10);
    }

    public void j(i iVar, i iVar2, int i10, int i11) {
        t.b r10 = r();
        i t10 = t();
        t10.f13966j = 0;
        r10.p(iVar, iVar2, t10, i10);
        if (i11 != 8) {
            m(r10, (int) (r10.f13916e.e(t10) * (-1.0f)), i11);
        }
        d(r10);
    }

    public void k(i iVar, i iVar2, i iVar3, i iVar4, float f10, int i10) {
        t.b r10 = r();
        r10.k(iVar, iVar2, iVar3, iVar4, f10);
        if (i10 != 8) {
            r10.d(this, i10);
        }
        d(r10);
    }

    public final void l(t.b bVar) {
        int i10;
        if (f13924t && bVar.f13917f) {
            bVar.f13912a.f(this, bVar.f13913b);
        } else {
            t.b[] bVarArr = this.f13937g;
            int i11 = this.f13942l;
            bVarArr[i11] = bVar;
            i iVar = bVar.f13912a;
            iVar.f13965i = i11;
            this.f13942l = i11 + 1;
            iVar.h(this, bVar);
        }
        if (f13924t && this.f13931a) {
            int i12 = 0;
            while (i12 < this.f13942l) {
                if (this.f13937g[i12] == null) {
                    System.out.println("WTF");
                }
                t.b[] bVarArr2 = this.f13937g;
                if (bVarArr2[i12] != null && bVarArr2[i12].f13917f) {
                    t.b bVar2 = bVarArr2[i12];
                    bVar2.f13912a.f(this, bVar2.f13913b);
                    if (f13926v) {
                        this.f13944n.f13918a.a(bVar2);
                    } else {
                        this.f13944n.f13919b.a(bVar2);
                    }
                    this.f13937g[i12] = null;
                    int i13 = i12 + 1;
                    int i14 = i13;
                    while (true) {
                        i10 = this.f13942l;
                        if (i13 >= i10) {
                            break;
                        }
                        t.b[] bVarArr3 = this.f13937g;
                        int i15 = i13 - 1;
                        bVarArr3[i15] = bVarArr3[i13];
                        if (bVarArr3[i15].f13912a.f13965i == i13) {
                            bVarArr3[i15].f13912a.f13965i = i15;
                        }
                        i14 = i13;
                        i13++;
                    }
                    if (i14 < i10) {
                        this.f13937g[i14] = null;
                    }
                    this.f13942l = i10 - 1;
                    i12--;
                }
                i12++;
            }
            this.f13931a = false;
        }
    }

    public void m(t.b bVar, int i10, int i11) {
        bVar.e(o(i11, null), i10);
    }

    public final void n() {
        for (int i10 = 0; i10 < this.f13942l; i10++) {
            t.b bVar = this.f13937g[i10];
            bVar.f13912a.f13967k = bVar.f13913b;
        }
    }

    public i o(int i10, String str) {
        if (this.f13941k + 1 >= this.f13936f) {
            z();
        }
        i a10 = a(i.a.ERROR, str);
        int i11 = this.f13932b + 1;
        this.f13932b = i11;
        this.f13941k++;
        a10.f13964h = i11;
        a10.f13966j = i10;
        this.f13944n.f13921d[i11] = a10;
        this.f13934d.c(a10);
        return a10;
    }

    public i p() {
        if (this.f13941k + 1 >= this.f13936f) {
            z();
        }
        i a10 = a(i.a.SLACK, null);
        int i10 = this.f13932b + 1;
        this.f13932b = i10;
        this.f13941k++;
        a10.f13964h = i10;
        this.f13944n.f13921d[i10] = a10;
        return a10;
    }

    public i q(Object obj) {
        i iVar = null;
        if (obj == null) {
            return null;
        }
        if (this.f13941k + 1 >= this.f13936f) {
            z();
        }
        if (obj instanceof w.d) {
            w.d dVar = (w.d) obj;
            iVar = dVar.h();
            if (iVar == null) {
                dVar.r(this.f13944n);
                iVar = dVar.h();
            }
            int i10 = iVar.f13964h;
            if (i10 == -1 || i10 > this.f13932b || this.f13944n.f13921d[i10] == null) {
                if (i10 != -1) {
                    iVar.e();
                }
                int i11 = this.f13932b + 1;
                this.f13932b = i11;
                this.f13941k++;
                iVar.f13964h = i11;
                iVar.f13971o = i.a.UNRESTRICTED;
                this.f13944n.f13921d[i11] = iVar;
            }
        }
        return iVar;
    }

    public t.b r() {
        t.b b10;
        if (f13926v) {
            b10 = this.f13944n.f13918a.b();
            if (b10 == null) {
                b10 = new b(this.f13944n);
                f13930z++;
            } else {
                b10.y();
            }
        } else {
            b10 = this.f13944n.f13919b.b();
            if (b10 == null) {
                b10 = new t.b(this.f13944n);
                f13929y++;
            } else {
                b10.y();
            }
        }
        i.c();
        return b10;
    }

    public i t() {
        if (this.f13941k + 1 >= this.f13936f) {
            z();
        }
        i a10 = a(i.a.SLACK, null);
        int i10 = this.f13932b + 1;
        this.f13932b = i10;
        this.f13941k++;
        a10.f13964h = i10;
        this.f13944n.f13921d[i10] = a10;
        return a10;
    }

    public final int u(a aVar) throws Exception {
        boolean z10;
        int i10 = 0;
        while (true) {
            if (i10 >= this.f13942l) {
                z10 = false;
                break;
            }
            t.b[] bVarArr = this.f13937g;
            if (bVarArr[i10].f13912a.f13971o != i.a.UNRESTRICTED && bVarArr[i10].f13913b < StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                z10 = true;
                break;
            }
            i10++;
        }
        if (!z10) {
            return 0;
        }
        boolean z11 = false;
        int i11 = 0;
        while (!z11) {
            i11++;
            float f10 = Float.MAX_VALUE;
            int i12 = -1;
            int i13 = -1;
            int i14 = 0;
            for (int i15 = 0; i15 < this.f13942l; i15++) {
                t.b bVar = this.f13937g[i15];
                if (bVar.f13912a.f13971o != i.a.UNRESTRICTED && !bVar.f13917f && bVar.f13913b < StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                    int i16 = 9;
                    if (f13925u) {
                        int f11 = bVar.f13916e.f();
                        int i17 = 0;
                        while (i17 < f11) {
                            i h10 = bVar.f13916e.h(i17);
                            float e10 = bVar.f13916e.e(h10);
                            if (e10 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                                int i18 = 0;
                                while (i18 < i16) {
                                    float f12 = h10.f13969m[i18] / e10;
                                    if ((f12 < f10 && i18 == i14) || i18 > i14) {
                                        i13 = h10.f13964h;
                                        i14 = i18;
                                        i12 = i15;
                                        f10 = f12;
                                    }
                                    i18++;
                                    i16 = 9;
                                }
                            }
                            i17++;
                            i16 = 9;
                        }
                    } else {
                        for (int i19 = 1; i19 < this.f13941k; i19++) {
                            i iVar = this.f13944n.f13921d[i19];
                            float e11 = bVar.f13916e.e(iVar);
                            if (e11 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                                for (int i20 = 0; i20 < 9; i20++) {
                                    float f13 = iVar.f13969m[i20] / e11;
                                    if ((f13 < f10 && i20 == i14) || i20 > i14) {
                                        i13 = i19;
                                        i12 = i15;
                                        i14 = i20;
                                        f10 = f13;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            if (i12 != -1) {
                t.b bVar2 = this.f13937g[i12];
                bVar2.f13912a.f13965i = -1;
                bVar2.x(this.f13944n.f13921d[i13]);
                i iVar2 = bVar2.f13912a;
                iVar2.f13965i = i12;
                iVar2.h(this, bVar2);
            } else {
                z11 = true;
            }
            if (i11 > this.f13941k / 2) {
                z11 = true;
            }
        }
        return i11;
    }

    public void v(e eVar) {
    }

    public c w() {
        return this.f13944n;
    }

    public int y(Object obj) {
        i h10 = ((w.d) obj).h();
        if (h10 != null) {
            return (int) (h10.f13967k + 0.5f);
        }
        return 0;
    }

    public final void z() {
        int i10 = this.f13935e * 2;
        this.f13935e = i10;
        this.f13937g = (t.b[]) Arrays.copyOf(this.f13937g, i10);
        c cVar = this.f13944n;
        cVar.f13921d = (i[]) Arrays.copyOf(cVar.f13921d, this.f13935e);
        int i11 = this.f13935e;
        this.f13940j = new boolean[i11];
        this.f13936f = i11;
        this.f13943m = i11;
    }
}
