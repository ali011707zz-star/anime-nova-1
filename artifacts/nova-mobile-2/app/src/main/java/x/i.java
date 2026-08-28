package x;

import java.util.ArrayList;
import java.util.Iterator;
import w.d;
import w.e;
import x.b;

/* compiled from: Grouping.java */
/* loaded from: classes.dex */
public class i {
    public static o a(w.e eVar, int i10, ArrayList<o> arrayList, o oVar) {
        int i11;
        int j12;
        if (i10 == 0) {
            i11 = eVar.G0;
        } else {
            i11 = eVar.H0;
        }
        if (i11 != -1 && (oVar == null || i11 != oVar.f15615b)) {
            int i12 = 0;
            while (true) {
                if (i12 >= arrayList.size()) {
                    break;
                }
                o oVar2 = arrayList.get(i12);
                if (oVar2.c() == i11) {
                    if (oVar != null) {
                        oVar.g(i10, oVar2);
                        arrayList.remove(oVar);
                    }
                    oVar = oVar2;
                } else {
                    i12++;
                }
            }
        } else if (i11 != -1) {
            return oVar;
        }
        if (oVar == null) {
            if ((eVar instanceof w.i) && (j12 = ((w.i) eVar).j1(i10)) != -1) {
                int i13 = 0;
                while (true) {
                    if (i13 >= arrayList.size()) {
                        break;
                    }
                    o oVar3 = arrayList.get(i13);
                    if (oVar3.c() == j12) {
                        oVar = oVar3;
                        break;
                    }
                    i13++;
                }
            }
            if (oVar == null) {
                oVar = new o(i10);
            }
            arrayList.add(oVar);
        }
        if (oVar.a(eVar)) {
            if (eVar instanceof w.g) {
                w.g gVar = (w.g) eVar;
                gVar.i1().b(gVar.j1() == 0 ? 1 : 0, arrayList, oVar);
            }
            if (i10 == 0) {
                eVar.G0 = oVar.c();
                eVar.N.b(i10, arrayList, oVar);
                eVar.P.b(i10, arrayList, oVar);
            } else {
                eVar.H0 = oVar.c();
                eVar.O.b(i10, arrayList, oVar);
                eVar.R.b(i10, arrayList, oVar);
                eVar.Q.b(i10, arrayList, oVar);
            }
            eVar.U.b(i10, arrayList, oVar);
        }
        return oVar;
    }

    public static o b(ArrayList<o> arrayList, int i10) {
        int size = arrayList.size();
        for (int i11 = 0; i11 < size; i11++) {
            o oVar = arrayList.get(i11);
            if (i10 == oVar.f15615b) {
                return oVar;
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:207:0x034f  */
    /* JADX WARN: Removed duplicated region for block: B:226:0x0390 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:230:0x038b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean c(w.f fVar, b.InterfaceC0402b interfaceC0402b) {
        o oVar;
        o oVar2;
        ArrayList<w.e> i12 = fVar.i1();
        int size = i12.size();
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            w.e eVar = i12.get(i11);
            if (!d(fVar.y(), fVar.O(), eVar.y(), eVar.O())) {
                return false;
            }
        }
        int i13 = 0;
        ArrayList arrayList = null;
        ArrayList arrayList2 = null;
        ArrayList arrayList3 = null;
        ArrayList arrayList4 = null;
        ArrayList arrayList5 = null;
        ArrayList arrayList6 = null;
        while (i13 < size) {
            w.e eVar2 = i12.get(i13);
            if (!d(fVar.y(), fVar.O(), eVar2.y(), eVar2.O())) {
                w.f.J1(i10, eVar2, interfaceC0402b, fVar.f15229n1, b.a.f15551k);
            }
            boolean z10 = eVar2 instanceof w.g;
            if (z10) {
                w.g gVar = (w.g) eVar2;
                if (gVar.j1() == 0) {
                    if (arrayList3 == null) {
                        arrayList3 = new ArrayList();
                    }
                    arrayList3.add(gVar);
                }
                if (gVar.j1() == 1) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(gVar);
                }
            }
            if (eVar2 instanceof w.i) {
                if (eVar2 instanceof w.a) {
                    w.a aVar = (w.a) eVar2;
                    if (aVar.o1() == 0) {
                        if (arrayList2 == null) {
                            arrayList2 = new ArrayList();
                        }
                        arrayList2.add(aVar);
                    }
                    if (aVar.o1() == 1) {
                        if (arrayList4 == null) {
                            arrayList4 = new ArrayList();
                        }
                        arrayList4.add(aVar);
                    }
                } else {
                    w.i iVar = (w.i) eVar2;
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList();
                    }
                    arrayList2.add(iVar);
                    if (arrayList4 == null) {
                        arrayList4 = new ArrayList();
                    }
                    arrayList4.add(iVar);
                }
            }
            if (eVar2.N.f15142f == null && eVar2.P.f15142f == null && !z10 && !(eVar2 instanceof w.a)) {
                if (arrayList5 == null) {
                    arrayList5 = new ArrayList();
                }
                arrayList5.add(eVar2);
            }
            if (eVar2.O.f15142f == null && eVar2.Q.f15142f == null && eVar2.R.f15142f == null && !z10 && !(eVar2 instanceof w.a)) {
                if (arrayList6 == null) {
                    arrayList6 = new ArrayList();
                }
                arrayList6.add(eVar2);
            }
            i13++;
            i10 = 0;
        }
        ArrayList<o> arrayList7 = new ArrayList<>();
        if (arrayList != null) {
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                a((w.g) it2.next(), 0, arrayList7, null);
            }
        }
        int i14 = 0;
        o oVar3 = null;
        if (arrayList2 != null) {
            Iterator it3 = arrayList2.iterator();
            while (it3.hasNext()) {
                w.i iVar2 = (w.i) it3.next();
                o a10 = a(iVar2, i14, arrayList7, oVar3);
                iVar2.i1(arrayList7, i14, a10);
                a10.b(arrayList7);
                i14 = 0;
                oVar3 = null;
            }
        }
        w.d m10 = fVar.m(d.b.LEFT);
        if (m10.c() != null) {
            Iterator<w.d> it4 = m10.c().iterator();
            while (it4.hasNext()) {
                a(it4.next().f15140d, 0, arrayList7, null);
            }
        }
        w.d m11 = fVar.m(d.b.RIGHT);
        if (m11.c() != null) {
            Iterator<w.d> it5 = m11.c().iterator();
            while (it5.hasNext()) {
                a(it5.next().f15140d, 0, arrayList7, null);
            }
        }
        w.d m12 = fVar.m(d.b.CENTER);
        if (m12.c() != null) {
            Iterator<w.d> it6 = m12.c().iterator();
            while (it6.hasNext()) {
                a(it6.next().f15140d, 0, arrayList7, null);
            }
        }
        o oVar4 = null;
        if (arrayList5 != null) {
            Iterator it7 = arrayList5.iterator();
            while (it7.hasNext()) {
                a((w.e) it7.next(), 0, arrayList7, null);
            }
        }
        if (arrayList3 != null) {
            Iterator it8 = arrayList3.iterator();
            while (it8.hasNext()) {
                a((w.g) it8.next(), 1, arrayList7, null);
            }
        }
        int i15 = 1;
        if (arrayList4 != null) {
            Iterator it9 = arrayList4.iterator();
            while (it9.hasNext()) {
                w.i iVar3 = (w.i) it9.next();
                o a11 = a(iVar3, i15, arrayList7, oVar4);
                iVar3.i1(arrayList7, i15, a11);
                a11.b(arrayList7);
                i15 = 1;
                oVar4 = null;
            }
        }
        w.d m13 = fVar.m(d.b.TOP);
        if (m13.c() != null) {
            Iterator<w.d> it10 = m13.c().iterator();
            while (it10.hasNext()) {
                a(it10.next().f15140d, 1, arrayList7, null);
            }
        }
        w.d m14 = fVar.m(d.b.BASELINE);
        if (m14.c() != null) {
            Iterator<w.d> it11 = m14.c().iterator();
            while (it11.hasNext()) {
                a(it11.next().f15140d, 1, arrayList7, null);
            }
        }
        w.d m15 = fVar.m(d.b.BOTTOM);
        if (m15.c() != null) {
            Iterator<w.d> it12 = m15.c().iterator();
            while (it12.hasNext()) {
                a(it12.next().f15140d, 1, arrayList7, null);
            }
        }
        w.d m16 = fVar.m(d.b.CENTER);
        if (m16.c() != null) {
            Iterator<w.d> it13 = m16.c().iterator();
            while (it13.hasNext()) {
                a(it13.next().f15140d, 1, arrayList7, null);
            }
        }
        if (arrayList6 != null) {
            Iterator it14 = arrayList6.iterator();
            while (it14.hasNext()) {
                a((w.e) it14.next(), 1, arrayList7, null);
            }
        }
        for (int i16 = 0; i16 < size; i16++) {
            w.e eVar3 = i12.get(i16);
            if (eVar3.n0()) {
                o b10 = b(arrayList7, eVar3.G0);
                o b11 = b(arrayList7, eVar3.H0);
                if (b10 != null && b11 != null) {
                    b10.g(0, b11);
                    b11.i(2);
                    arrayList7.remove(b10);
                }
            }
        }
        if (arrayList7.size() <= 1) {
            return false;
        }
        if (fVar.y() == e.b.WRAP_CONTENT) {
            Iterator<o> it15 = arrayList7.iterator();
            oVar = null;
            int i17 = 0;
            while (it15.hasNext()) {
                o next = it15.next();
                if (next.d() != 1) {
                    next.h(false);
                    int f10 = next.f(fVar.C1(), 0);
                    if (f10 > i17) {
                        oVar = next;
                        i17 = f10;
                    }
                }
            }
            if (oVar != null) {
                fVar.G0(e.b.FIXED);
                fVar.b1(i17);
                oVar.h(true);
                if (fVar.O() != e.b.WRAP_CONTENT) {
                    Iterator<o> it16 = arrayList7.iterator();
                    o oVar5 = null;
                    int i18 = 0;
                    while (it16.hasNext()) {
                        o next2 = it16.next();
                        if (next2.d() != 0) {
                            next2.h(false);
                            int f11 = next2.f(fVar.C1(), 1);
                            if (f11 > i18) {
                                oVar5 = next2;
                                i18 = f11;
                            }
                        }
                    }
                    if (oVar5 != null) {
                        fVar.X0(e.b.FIXED);
                        fVar.C0(i18);
                        oVar5.h(true);
                        oVar2 = oVar5;
                        return oVar == null || oVar2 != null;
                    }
                }
                oVar2 = null;
                if (oVar == null) {
                }
            }
        }
        oVar = null;
        if (fVar.O() != e.b.WRAP_CONTENT) {
        }
        oVar2 = null;
        if (oVar == null) {
        }
    }

    public static boolean d(e.b bVar, e.b bVar2, e.b bVar3, e.b bVar4) {
        e.b bVar5;
        e.b bVar6;
        e.b bVar7 = e.b.FIXED;
        return (bVar3 == bVar7 || bVar3 == (bVar6 = e.b.WRAP_CONTENT) || (bVar3 == e.b.MATCH_PARENT && bVar != bVar6)) || (bVar4 == bVar7 || bVar4 == (bVar5 = e.b.WRAP_CONTENT) || (bVar4 == e.b.MATCH_PARENT && bVar2 != bVar5));
    }
}
