package x;

import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.util.ArrayList;
import java.util.Iterator;
import w.d;
import w.e;
import x.b;

/* compiled from: Direct.java */
/* loaded from: classes.dex */
public class h {

    /* renamed from: a, reason: collision with root package name */
    public static b.a f15597a = new b.a();

    /* renamed from: b, reason: collision with root package name */
    public static int f15598b = 0;

    /* renamed from: c, reason: collision with root package name */
    public static int f15599c = 0;

    public static boolean a(int i10, w.e eVar) {
        e.b bVar;
        e.b bVar2;
        e.b y10 = eVar.y();
        e.b O = eVar.O();
        w.f fVar = eVar.I() != null ? (w.f) eVar.I() : null;
        if (fVar != null) {
            fVar.y();
            e.b bVar3 = e.b.FIXED;
        }
        if (fVar != null) {
            fVar.O();
            e.b bVar4 = e.b.FIXED;
        }
        e.b bVar5 = e.b.FIXED;
        boolean z10 = y10 == bVar5 || eVar.i0() || y10 == e.b.WRAP_CONTENT || (y10 == (bVar2 = e.b.MATCH_CONSTRAINT) && eVar.f15199v == 0 && eVar.f15162c0 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD && eVar.V(0)) || (y10 == bVar2 && eVar.f15199v == 1 && eVar.Y(0, eVar.R()));
        boolean z11 = O == bVar5 || eVar.j0() || O == e.b.WRAP_CONTENT || (O == (bVar = e.b.MATCH_CONSTRAINT) && eVar.f15201w == 0 && eVar.f15162c0 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD && eVar.V(1)) || (y10 == bVar && eVar.f15201w == 1 && eVar.Y(1, eVar.v()));
        if (eVar.f15162c0 <= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD || !(z10 || z11)) {
            return z10 && z11;
        }
        return true;
    }

    public static void b(int i10, w.e eVar, b.InterfaceC0402b interfaceC0402b, boolean z10) {
        w.d dVar;
        w.d dVar2;
        w.d dVar3;
        w.d dVar4;
        w.d dVar5;
        if (eVar.b0()) {
            return;
        }
        f15598b++;
        if (!(eVar instanceof w.f) && eVar.h0()) {
            int i11 = i10 + 1;
            if (a(i11, eVar)) {
                w.f.J1(i11, eVar, interfaceC0402b, new b.a(), b.a.f15551k);
            }
        }
        w.d m10 = eVar.m(d.b.LEFT);
        w.d m11 = eVar.m(d.b.RIGHT);
        int d10 = m10.d();
        int d11 = m11.d();
        if (m10.c() != null && m10.m()) {
            Iterator<w.d> it2 = m10.c().iterator();
            while (it2.hasNext()) {
                w.d next = it2.next();
                w.e eVar2 = next.f15140d;
                int i12 = i10 + 1;
                boolean a10 = a(i12, eVar2);
                if (eVar2.h0() && a10) {
                    w.f.J1(i12, eVar2, interfaceC0402b, new b.a(), b.a.f15551k);
                }
                e.b y10 = eVar2.y();
                e.b bVar = e.b.MATCH_CONSTRAINT;
                if (y10 == bVar && !a10) {
                    if (eVar2.y() == bVar && eVar2.f15207z >= 0 && eVar2.f15205y >= 0 && (eVar2.Q() == 8 || (eVar2.f15199v == 0 && eVar2.t() == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD))) {
                        if (!eVar2.d0() && !eVar2.g0()) {
                            if (((next == eVar2.N && (dVar5 = eVar2.P.f15142f) != null && dVar5.m()) || (next == eVar2.P && (dVar4 = eVar2.N.f15142f) != null && dVar4.m())) && !eVar2.d0()) {
                                e(i12, eVar, interfaceC0402b, eVar2, z10);
                            }
                        }
                    }
                } else if (!eVar2.h0()) {
                    w.d dVar6 = eVar2.N;
                    if (next == dVar6 && eVar2.P.f15142f == null) {
                        int e10 = dVar6.e() + d10;
                        eVar2.w0(e10, eVar2.R() + e10);
                        b(i12, eVar2, interfaceC0402b, z10);
                    } else {
                        w.d dVar7 = eVar2.P;
                        if (next == dVar7 && dVar6.f15142f == null) {
                            int e11 = d10 - dVar7.e();
                            eVar2.w0(e11 - eVar2.R(), e11);
                            b(i12, eVar2, interfaceC0402b, z10);
                        } else if (next == dVar6 && (dVar3 = dVar7.f15142f) != null && dVar3.m() && !eVar2.d0()) {
                            d(i12, interfaceC0402b, eVar2, z10);
                        }
                    }
                }
            }
        }
        if (eVar instanceof w.g) {
            return;
        }
        if (m11.c() != null && m11.m()) {
            Iterator<w.d> it3 = m11.c().iterator();
            while (it3.hasNext()) {
                w.d next2 = it3.next();
                w.e eVar3 = next2.f15140d;
                int i13 = i10 + 1;
                boolean a11 = a(i13, eVar3);
                if (eVar3.h0() && a11) {
                    w.f.J1(i13, eVar3, interfaceC0402b, new b.a(), b.a.f15551k);
                }
                boolean z11 = (next2 == eVar3.N && (dVar2 = eVar3.P.f15142f) != null && dVar2.m()) || (next2 == eVar3.P && (dVar = eVar3.N.f15142f) != null && dVar.m());
                e.b y11 = eVar3.y();
                e.b bVar2 = e.b.MATCH_CONSTRAINT;
                if (y11 == bVar2 && !a11) {
                    if (eVar3.y() == bVar2 && eVar3.f15207z >= 0 && eVar3.f15205y >= 0 && (eVar3.Q() == 8 || (eVar3.f15199v == 0 && eVar3.t() == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD))) {
                        if (!eVar3.d0() && !eVar3.g0() && z11 && !eVar3.d0()) {
                            e(i13, eVar, interfaceC0402b, eVar3, z10);
                        }
                    }
                } else if (!eVar3.h0()) {
                    w.d dVar8 = eVar3.N;
                    if (next2 == dVar8 && eVar3.P.f15142f == null) {
                        int e12 = dVar8.e() + d11;
                        eVar3.w0(e12, eVar3.R() + e12);
                        b(i13, eVar3, interfaceC0402b, z10);
                    } else {
                        w.d dVar9 = eVar3.P;
                        if (next2 == dVar9 && dVar8.f15142f == null) {
                            int e13 = d11 - dVar9.e();
                            eVar3.w0(e13 - eVar3.R(), e13);
                            b(i13, eVar3, interfaceC0402b, z10);
                        } else if (z11 && !eVar3.d0()) {
                            d(i13, interfaceC0402b, eVar3, z10);
                        }
                    }
                }
            }
        }
        eVar.l0();
    }

    public static void c(int i10, w.a aVar, b.InterfaceC0402b interfaceC0402b, int i11, boolean z10) {
        if (aVar.k1()) {
            if (i11 == 0) {
                b(i10 + 1, aVar, interfaceC0402b, z10);
            } else {
                i(i10 + 1, aVar, interfaceC0402b);
            }
        }
    }

    public static void d(int i10, b.InterfaceC0402b interfaceC0402b, w.e eVar, boolean z10) {
        float w10 = eVar.w();
        int d10 = eVar.N.f15142f.d();
        int d11 = eVar.P.f15142f.d();
        int e10 = eVar.N.e() + d10;
        int e11 = d11 - eVar.P.e();
        if (d10 == d11) {
            w10 = 0.5f;
        } else {
            d10 = e10;
            d11 = e11;
        }
        int R = eVar.R();
        int i11 = (d11 - d10) - R;
        if (d10 > d11) {
            i11 = (d10 - d11) - R;
        }
        int i12 = ((int) (i11 > 0 ? (w10 * i11) + 0.5f : w10 * i11)) + d10;
        int i13 = i12 + R;
        if (d10 > d11) {
            i13 = i12 - R;
        }
        eVar.w0(i12, i13);
        b(i10 + 1, eVar, interfaceC0402b, z10);
    }

    public static void e(int i10, w.e eVar, b.InterfaceC0402b interfaceC0402b, w.e eVar2, boolean z10) {
        int R;
        float w10 = eVar2.w();
        int d10 = eVar2.N.f15142f.d() + eVar2.N.e();
        int d11 = eVar2.P.f15142f.d() - eVar2.P.e();
        if (d11 >= d10) {
            int R2 = eVar2.R();
            if (eVar2.Q() != 8) {
                int i11 = eVar2.f15199v;
                if (i11 == 2) {
                    if (eVar instanceof w.f) {
                        R = eVar.R();
                    } else {
                        R = eVar.I().R();
                    }
                    R2 = (int) (eVar2.w() * 0.5f * R);
                } else if (i11 == 0) {
                    R2 = d11 - d10;
                }
                R2 = Math.max(eVar2.f15205y, R2);
                int i12 = eVar2.f15207z;
                if (i12 > 0) {
                    R2 = Math.min(i12, R2);
                }
            }
            int i13 = d10 + ((int) ((w10 * ((d11 - d10) - R2)) + 0.5f));
            eVar2.w0(i13, R2 + i13);
            b(i10 + 1, eVar2, interfaceC0402b, z10);
        }
    }

    public static void f(int i10, b.InterfaceC0402b interfaceC0402b, w.e eVar) {
        float M = eVar.M();
        int d10 = eVar.O.f15142f.d();
        int d11 = eVar.Q.f15142f.d();
        int e10 = eVar.O.e() + d10;
        int e11 = d11 - eVar.Q.e();
        if (d10 == d11) {
            M = 0.5f;
        } else {
            d10 = e10;
            d11 = e11;
        }
        int v10 = eVar.v();
        int i11 = (d11 - d10) - v10;
        if (d10 > d11) {
            i11 = (d10 - d11) - v10;
        }
        int i12 = (int) (i11 > 0 ? (M * i11) + 0.5f : M * i11);
        int i13 = d10 + i12;
        int i14 = i13 + v10;
        if (d10 > d11) {
            i13 = d10 - i12;
            i14 = i13 - v10;
        }
        eVar.z0(i13, i14);
        i(i10 + 1, eVar, interfaceC0402b);
    }

    public static void g(int i10, w.e eVar, b.InterfaceC0402b interfaceC0402b, w.e eVar2) {
        int v10;
        float M = eVar2.M();
        int d10 = eVar2.O.f15142f.d() + eVar2.O.e();
        int d11 = eVar2.Q.f15142f.d() - eVar2.Q.e();
        if (d11 >= d10) {
            int v11 = eVar2.v();
            if (eVar2.Q() != 8) {
                int i11 = eVar2.f15201w;
                if (i11 == 2) {
                    if (eVar instanceof w.f) {
                        v10 = eVar.v();
                    } else {
                        v10 = eVar.I().v();
                    }
                    v11 = (int) (M * 0.5f * v10);
                } else if (i11 == 0) {
                    v11 = d11 - d10;
                }
                v11 = Math.max(eVar2.B, v11);
                int i12 = eVar2.C;
                if (i12 > 0) {
                    v11 = Math.min(i12, v11);
                }
            }
            int i13 = d10 + ((int) ((M * ((d11 - d10) - v11)) + 0.5f));
            eVar2.z0(i13, v11 + i13);
            i(i10 + 1, eVar2, interfaceC0402b);
        }
    }

    public static void h(w.f fVar, b.InterfaceC0402b interfaceC0402b) {
        e.b y10 = fVar.y();
        e.b O = fVar.O();
        f15598b = 0;
        f15599c = 0;
        fVar.p0();
        ArrayList<w.e> i12 = fVar.i1();
        int size = i12.size();
        for (int i10 = 0; i10 < size; i10++) {
            i12.get(i10).p0();
        }
        boolean G1 = fVar.G1();
        if (y10 == e.b.FIXED) {
            fVar.w0(0, fVar.R());
        } else {
            fVar.x0(0);
        }
        boolean z10 = false;
        boolean z11 = false;
        for (int i11 = 0; i11 < size; i11++) {
            w.e eVar = i12.get(i11);
            if (eVar instanceof w.g) {
                w.g gVar = (w.g) eVar;
                if (gVar.j1() == 1) {
                    if (gVar.k1() != -1) {
                        gVar.n1(gVar.k1());
                    } else if (gVar.l1() != -1 && fVar.i0()) {
                        gVar.n1(fVar.R() - gVar.l1());
                    } else if (fVar.i0()) {
                        gVar.n1((int) ((gVar.m1() * fVar.R()) + 0.5f));
                    }
                    z10 = true;
                }
            } else if ((eVar instanceof w.a) && ((w.a) eVar).o1() == 0) {
                z11 = true;
            }
        }
        if (z10) {
            for (int i13 = 0; i13 < size; i13++) {
                w.e eVar2 = i12.get(i13);
                if (eVar2 instanceof w.g) {
                    w.g gVar2 = (w.g) eVar2;
                    if (gVar2.j1() == 1) {
                        b(0, gVar2, interfaceC0402b, G1);
                    }
                }
            }
        }
        b(0, fVar, interfaceC0402b, G1);
        if (z11) {
            for (int i14 = 0; i14 < size; i14++) {
                w.e eVar3 = i12.get(i14);
                if (eVar3 instanceof w.a) {
                    w.a aVar = (w.a) eVar3;
                    if (aVar.o1() == 0) {
                        c(0, aVar, interfaceC0402b, 0, G1);
                    }
                }
            }
        }
        if (O == e.b.FIXED) {
            fVar.z0(0, fVar.v());
        } else {
            fVar.y0(0);
        }
        boolean z12 = false;
        boolean z13 = false;
        for (int i15 = 0; i15 < size; i15++) {
            w.e eVar4 = i12.get(i15);
            if (eVar4 instanceof w.g) {
                w.g gVar3 = (w.g) eVar4;
                if (gVar3.j1() == 0) {
                    if (gVar3.k1() != -1) {
                        gVar3.n1(gVar3.k1());
                    } else if (gVar3.l1() != -1 && fVar.j0()) {
                        gVar3.n1(fVar.v() - gVar3.l1());
                    } else if (fVar.j0()) {
                        gVar3.n1((int) ((gVar3.m1() * fVar.v()) + 0.5f));
                    }
                    z12 = true;
                }
            } else if ((eVar4 instanceof w.a) && ((w.a) eVar4).o1() == 1) {
                z13 = true;
            }
        }
        if (z12) {
            for (int i16 = 0; i16 < size; i16++) {
                w.e eVar5 = i12.get(i16);
                if (eVar5 instanceof w.g) {
                    w.g gVar4 = (w.g) eVar5;
                    if (gVar4.j1() == 0) {
                        i(1, gVar4, interfaceC0402b);
                    }
                }
            }
        }
        i(0, fVar, interfaceC0402b);
        if (z13) {
            for (int i17 = 0; i17 < size; i17++) {
                w.e eVar6 = i12.get(i17);
                if (eVar6 instanceof w.a) {
                    w.a aVar2 = (w.a) eVar6;
                    if (aVar2.o1() == 1) {
                        c(0, aVar2, interfaceC0402b, 1, G1);
                    }
                }
            }
        }
        for (int i18 = 0; i18 < size; i18++) {
            w.e eVar7 = i12.get(i18);
            if (eVar7.h0() && a(0, eVar7)) {
                w.f.J1(0, eVar7, interfaceC0402b, f15597a, b.a.f15551k);
                if (eVar7 instanceof w.g) {
                    if (((w.g) eVar7).j1() == 0) {
                        i(0, eVar7, interfaceC0402b);
                    } else {
                        b(0, eVar7, interfaceC0402b, G1);
                    }
                } else {
                    b(0, eVar7, interfaceC0402b, G1);
                    i(0, eVar7, interfaceC0402b);
                }
            }
        }
    }

    public static void i(int i10, w.e eVar, b.InterfaceC0402b interfaceC0402b) {
        w.d dVar;
        w.d dVar2;
        w.d dVar3;
        w.d dVar4;
        w.d dVar5;
        if (eVar.k0()) {
            return;
        }
        f15599c++;
        if (!(eVar instanceof w.f) && eVar.h0()) {
            int i11 = i10 + 1;
            if (a(i11, eVar)) {
                w.f.J1(i11, eVar, interfaceC0402b, new b.a(), b.a.f15551k);
            }
        }
        w.d m10 = eVar.m(d.b.TOP);
        w.d m11 = eVar.m(d.b.BOTTOM);
        int d10 = m10.d();
        int d11 = m11.d();
        if (m10.c() != null && m10.m()) {
            Iterator<w.d> it2 = m10.c().iterator();
            while (it2.hasNext()) {
                w.d next = it2.next();
                w.e eVar2 = next.f15140d;
                int i12 = i10 + 1;
                boolean a10 = a(i12, eVar2);
                if (eVar2.h0() && a10) {
                    w.f.J1(i12, eVar2, interfaceC0402b, new b.a(), b.a.f15551k);
                }
                e.b O = eVar2.O();
                e.b bVar = e.b.MATCH_CONSTRAINT;
                if (O == bVar && !a10) {
                    if (eVar2.O() == bVar && eVar2.C >= 0 && eVar2.B >= 0 && (eVar2.Q() == 8 || (eVar2.f15201w == 0 && eVar2.t() == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD))) {
                        if (!eVar2.f0() && !eVar2.g0()) {
                            if (((next == eVar2.O && (dVar5 = eVar2.Q.f15142f) != null && dVar5.m()) || (next == eVar2.Q && (dVar4 = eVar2.O.f15142f) != null && dVar4.m())) && !eVar2.f0()) {
                                g(i12, eVar, interfaceC0402b, eVar2);
                            }
                        }
                    }
                } else if (!eVar2.h0()) {
                    w.d dVar6 = eVar2.O;
                    if (next == dVar6 && eVar2.Q.f15142f == null) {
                        int e10 = dVar6.e() + d10;
                        eVar2.z0(e10, eVar2.v() + e10);
                        i(i12, eVar2, interfaceC0402b);
                    } else {
                        w.d dVar7 = eVar2.Q;
                        if (next == dVar7 && dVar7.f15142f == null) {
                            int e11 = d10 - dVar7.e();
                            eVar2.z0(e11 - eVar2.v(), e11);
                            i(i12, eVar2, interfaceC0402b);
                        } else if (next == dVar6 && (dVar3 = dVar7.f15142f) != null && dVar3.m()) {
                            f(i12, interfaceC0402b, eVar2);
                        }
                    }
                }
            }
        }
        if (eVar instanceof w.g) {
            return;
        }
        if (m11.c() != null && m11.m()) {
            Iterator<w.d> it3 = m11.c().iterator();
            while (it3.hasNext()) {
                w.d next2 = it3.next();
                w.e eVar3 = next2.f15140d;
                int i13 = i10 + 1;
                boolean a11 = a(i13, eVar3);
                if (eVar3.h0() && a11) {
                    w.f.J1(i13, eVar3, interfaceC0402b, new b.a(), b.a.f15551k);
                }
                boolean z10 = (next2 == eVar3.O && (dVar2 = eVar3.Q.f15142f) != null && dVar2.m()) || (next2 == eVar3.Q && (dVar = eVar3.O.f15142f) != null && dVar.m());
                e.b O2 = eVar3.O();
                e.b bVar2 = e.b.MATCH_CONSTRAINT;
                if (O2 == bVar2 && !a11) {
                    if (eVar3.O() == bVar2 && eVar3.C >= 0 && eVar3.B >= 0 && (eVar3.Q() == 8 || (eVar3.f15201w == 0 && eVar3.t() == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD))) {
                        if (!eVar3.f0() && !eVar3.g0() && z10 && !eVar3.f0()) {
                            g(i13, eVar, interfaceC0402b, eVar3);
                        }
                    }
                } else if (!eVar3.h0()) {
                    w.d dVar8 = eVar3.O;
                    if (next2 == dVar8 && eVar3.Q.f15142f == null) {
                        int e12 = dVar8.e() + d11;
                        eVar3.z0(e12, eVar3.v() + e12);
                        i(i13, eVar3, interfaceC0402b);
                    } else {
                        w.d dVar9 = eVar3.Q;
                        if (next2 == dVar9 && dVar8.f15142f == null) {
                            int e13 = d11 - dVar9.e();
                            eVar3.z0(e13 - eVar3.v(), e13);
                            i(i13, eVar3, interfaceC0402b);
                        } else if (z10 && !eVar3.f0()) {
                            f(i13, interfaceC0402b, eVar3);
                        }
                    }
                }
            }
        }
        w.d m12 = eVar.m(d.b.BASELINE);
        if (m12.c() != null && m12.m()) {
            int d12 = m12.d();
            Iterator<w.d> it4 = m12.c().iterator();
            while (it4.hasNext()) {
                w.d next3 = it4.next();
                w.e eVar4 = next3.f15140d;
                int i14 = i10 + 1;
                boolean a12 = a(i14, eVar4);
                if (eVar4.h0() && a12) {
                    w.f.J1(i14, eVar4, interfaceC0402b, new b.a(), b.a.f15551k);
                }
                if (eVar4.O() != e.b.MATCH_CONSTRAINT || a12) {
                    if (!eVar4.h0() && next3 == eVar4.R) {
                        eVar4.v0(next3.e() + d12);
                        i(i14, eVar4, interfaceC0402b);
                    }
                }
            }
        }
        eVar.m0();
    }
}
