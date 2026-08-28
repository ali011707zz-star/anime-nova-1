package x;

import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import w.e;
import x.b;

/* compiled from: DependencyGraph.java */
/* loaded from: classes.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    public w.f f15566a;

    /* renamed from: d, reason: collision with root package name */
    public w.f f15569d;

    /* renamed from: b, reason: collision with root package name */
    public boolean f15567b = true;

    /* renamed from: c, reason: collision with root package name */
    public boolean f15568c = true;

    /* renamed from: e, reason: collision with root package name */
    public ArrayList<p> f15570e = new ArrayList<>();

    /* renamed from: f, reason: collision with root package name */
    public ArrayList<m> f15571f = new ArrayList<>();

    /* renamed from: g, reason: collision with root package name */
    public b.InterfaceC0402b f15572g = null;

    /* renamed from: h, reason: collision with root package name */
    public b.a f15573h = new b.a();

    /* renamed from: i, reason: collision with root package name */
    public ArrayList<m> f15574i = new ArrayList<>();

    public e(w.f fVar) {
        this.f15566a = fVar;
        this.f15569d = fVar;
    }

    public final void a(f fVar, int i10, int i11, f fVar2, ArrayList<m> arrayList, m mVar) {
        p pVar = fVar.f15578d;
        if (pVar.f15630c == null) {
            w.f fVar3 = this.f15566a;
            if (pVar == fVar3.f15165e || pVar == fVar3.f15167f) {
                return;
            }
            if (mVar == null) {
                mVar = new m(pVar, i11);
                arrayList.add(mVar);
            }
            pVar.f15630c = mVar;
            mVar.a(pVar);
            for (d dVar : pVar.f15635h.f15585k) {
                if (dVar instanceof f) {
                    a((f) dVar, i10, 0, fVar2, arrayList, mVar);
                }
            }
            for (d dVar2 : pVar.f15636i.f15585k) {
                if (dVar2 instanceof f) {
                    a((f) dVar2, i10, 1, fVar2, arrayList, mVar);
                }
            }
            if (i10 == 1 && (pVar instanceof n)) {
                for (d dVar3 : ((n) pVar).f15610k.f15585k) {
                    if (dVar3 instanceof f) {
                        a((f) dVar3, i10, 2, fVar2, arrayList, mVar);
                    }
                }
            }
            for (f fVar4 : pVar.f15635h.f15586l) {
                if (fVar4 == fVar2) {
                    mVar.f15604b = true;
                }
                a(fVar4, i10, 0, fVar2, arrayList, mVar);
            }
            for (f fVar5 : pVar.f15636i.f15586l) {
                if (fVar5 == fVar2) {
                    mVar.f15604b = true;
                }
                a(fVar5, i10, 1, fVar2, arrayList, mVar);
            }
            if (i10 == 1 && (pVar instanceof n)) {
                Iterator<f> it2 = ((n) pVar).f15610k.f15586l.iterator();
                while (it2.hasNext()) {
                    a(it2.next(), i10, 2, fVar2, arrayList, mVar);
                }
            }
        }
    }

    public final boolean b(w.f fVar) {
        int i10;
        e.b bVar;
        int i11;
        e.b bVar2;
        e.b bVar3;
        e.b bVar4;
        Iterator<w.e> it2 = fVar.J0.iterator();
        while (it2.hasNext()) {
            w.e next = it2.next();
            e.b[] bVarArr = next.Y;
            e.b bVar5 = bVarArr[0];
            e.b bVar6 = bVarArr[1];
            if (next.Q() == 8) {
                next.f15157a = true;
            } else {
                if (next.A < 1.0f && bVar5 == e.b.MATCH_CONSTRAINT) {
                    next.f15199v = 2;
                }
                if (next.D < 1.0f && bVar6 == e.b.MATCH_CONSTRAINT) {
                    next.f15201w = 2;
                }
                if (next.t() > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                    e.b bVar7 = e.b.MATCH_CONSTRAINT;
                    if (bVar5 == bVar7 && (bVar6 == e.b.WRAP_CONTENT || bVar6 == e.b.FIXED)) {
                        next.f15199v = 3;
                    } else if (bVar6 == bVar7 && (bVar5 == e.b.WRAP_CONTENT || bVar5 == e.b.FIXED)) {
                        next.f15201w = 3;
                    } else if (bVar5 == bVar7 && bVar6 == bVar7) {
                        if (next.f15199v == 0) {
                            next.f15199v = 3;
                        }
                        if (next.f15201w == 0) {
                            next.f15201w = 3;
                        }
                    }
                }
                e.b bVar8 = e.b.MATCH_CONSTRAINT;
                if (bVar5 == bVar8 && next.f15199v == 1 && (next.N.f15142f == null || next.P.f15142f == null)) {
                    bVar5 = e.b.WRAP_CONTENT;
                }
                e.b bVar9 = bVar5;
                if (bVar6 == bVar8 && next.f15201w == 1 && (next.O.f15142f == null || next.Q.f15142f == null)) {
                    bVar6 = e.b.WRAP_CONTENT;
                }
                e.b bVar10 = bVar6;
                l lVar = next.f15165e;
                lVar.f15631d = bVar9;
                int i12 = next.f15199v;
                lVar.f15628a = i12;
                n nVar = next.f15167f;
                nVar.f15631d = bVar10;
                int i13 = next.f15201w;
                nVar.f15628a = i13;
                e.b bVar11 = e.b.MATCH_PARENT;
                if ((bVar9 == bVar11 || bVar9 == e.b.FIXED || bVar9 == e.b.WRAP_CONTENT) && (bVar10 == bVar11 || bVar10 == e.b.FIXED || bVar10 == e.b.WRAP_CONTENT)) {
                    int R = next.R();
                    if (bVar9 == bVar11) {
                        i10 = (fVar.R() - next.N.f15143g) - next.P.f15143g;
                        bVar = e.b.FIXED;
                    } else {
                        i10 = R;
                        bVar = bVar9;
                    }
                    int v10 = next.v();
                    if (bVar10 == bVar11) {
                        i11 = (fVar.v() - next.O.f15143g) - next.Q.f15143g;
                        bVar2 = e.b.FIXED;
                    } else {
                        i11 = v10;
                        bVar2 = bVar10;
                    }
                    l(next, bVar, i10, bVar2, i11);
                    next.f15165e.f15632e.d(next.R());
                    next.f15167f.f15632e.d(next.v());
                    next.f15157a = true;
                } else {
                    if (bVar9 == bVar8 && (bVar10 == (bVar4 = e.b.WRAP_CONTENT) || bVar10 == e.b.FIXED)) {
                        if (i12 == 3) {
                            if (bVar10 == bVar4) {
                                l(next, bVar4, 0, bVar4, 0);
                            }
                            int v11 = next.v();
                            int i14 = (int) ((v11 * next.f15162c0) + 0.5f);
                            e.b bVar12 = e.b.FIXED;
                            l(next, bVar12, i14, bVar12, v11);
                            next.f15165e.f15632e.d(next.R());
                            next.f15167f.f15632e.d(next.v());
                            next.f15157a = true;
                        } else if (i12 == 1) {
                            l(next, bVar4, 0, bVar10, 0);
                            next.f15165e.f15632e.f15596m = next.R();
                        } else if (i12 == 2) {
                            e.b[] bVarArr2 = fVar.Y;
                            e.b bVar13 = bVarArr2[0];
                            e.b bVar14 = e.b.FIXED;
                            if (bVar13 == bVar14 || bVarArr2[0] == bVar11) {
                                l(next, bVar14, (int) ((next.A * fVar.R()) + 0.5f), bVar10, next.v());
                                next.f15165e.f15632e.d(next.R());
                                next.f15167f.f15632e.d(next.v());
                                next.f15157a = true;
                            }
                        } else {
                            w.d[] dVarArr = next.V;
                            if (dVarArr[0].f15142f == null || dVarArr[1].f15142f == null) {
                                l(next, bVar4, 0, bVar10, 0);
                                next.f15165e.f15632e.d(next.R());
                                next.f15167f.f15632e.d(next.v());
                                next.f15157a = true;
                            }
                        }
                    }
                    if (bVar10 == bVar8 && (bVar9 == (bVar3 = e.b.WRAP_CONTENT) || bVar9 == e.b.FIXED)) {
                        if (i13 == 3) {
                            if (bVar9 == bVar3) {
                                l(next, bVar3, 0, bVar3, 0);
                            }
                            int R2 = next.R();
                            float f10 = next.f15162c0;
                            if (next.u() == -1) {
                                f10 = 1.0f / f10;
                            }
                            e.b bVar15 = e.b.FIXED;
                            l(next, bVar15, R2, bVar15, (int) ((R2 * f10) + 0.5f));
                            next.f15165e.f15632e.d(next.R());
                            next.f15167f.f15632e.d(next.v());
                            next.f15157a = true;
                        } else if (i13 == 1) {
                            l(next, bVar9, 0, bVar3, 0);
                            next.f15167f.f15632e.f15596m = next.v();
                        } else if (i13 == 2) {
                            e.b[] bVarArr3 = fVar.Y;
                            e.b bVar16 = bVarArr3[1];
                            e.b bVar17 = e.b.FIXED;
                            if (bVar16 == bVar17 || bVarArr3[1] == bVar11) {
                                l(next, bVar9, next.R(), bVar17, (int) ((next.D * fVar.v()) + 0.5f));
                                next.f15165e.f15632e.d(next.R());
                                next.f15167f.f15632e.d(next.v());
                                next.f15157a = true;
                            }
                        } else {
                            w.d[] dVarArr2 = next.V;
                            if (dVarArr2[2].f15142f == null || dVarArr2[3].f15142f == null) {
                                l(next, bVar3, 0, bVar10, 0);
                                next.f15165e.f15632e.d(next.R());
                                next.f15167f.f15632e.d(next.v());
                                next.f15157a = true;
                            }
                        }
                    }
                    if (bVar9 == bVar8 && bVar10 == bVar8) {
                        if (i12 == 1 || i13 == 1) {
                            e.b bVar18 = e.b.WRAP_CONTENT;
                            l(next, bVar18, 0, bVar18, 0);
                            next.f15165e.f15632e.f15596m = next.R();
                            next.f15167f.f15632e.f15596m = next.v();
                        } else if (i13 == 2 && i12 == 2) {
                            e.b[] bVarArr4 = fVar.Y;
                            e.b bVar19 = bVarArr4[0];
                            e.b bVar20 = e.b.FIXED;
                            if (bVar19 == bVar20 && bVarArr4[1] == bVar20) {
                                l(next, bVar20, (int) ((next.A * fVar.R()) + 0.5f), bVar20, (int) ((next.D * fVar.v()) + 0.5f));
                                next.f15165e.f15632e.d(next.R());
                                next.f15167f.f15632e.d(next.v());
                                next.f15157a = true;
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    public void c() {
        d(this.f15570e);
        this.f15574i.clear();
        m.f15602h = 0;
        i(this.f15566a.f15165e, 0, this.f15574i);
        i(this.f15566a.f15167f, 1, this.f15574i);
        this.f15567b = false;
    }

    public void d(ArrayList<p> arrayList) {
        arrayList.clear();
        this.f15569d.f15165e.f();
        this.f15569d.f15167f.f();
        arrayList.add(this.f15569d.f15165e);
        arrayList.add(this.f15569d.f15167f);
        Iterator<w.e> it2 = this.f15569d.J0.iterator();
        HashSet hashSet = null;
        while (it2.hasNext()) {
            w.e next = it2.next();
            if (next instanceof w.g) {
                arrayList.add(new j(next));
            } else {
                if (next.d0()) {
                    if (next.f15161c == null) {
                        next.f15161c = new c(next, 0);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(next.f15161c);
                } else {
                    arrayList.add(next.f15165e);
                }
                if (next.f0()) {
                    if (next.f15163d == null) {
                        next.f15163d = new c(next, 1);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(next.f15163d);
                } else {
                    arrayList.add(next.f15167f);
                }
                if (next instanceof w.i) {
                    arrayList.add(new k(next));
                }
            }
        }
        if (hashSet != null) {
            arrayList.addAll(hashSet);
        }
        Iterator<p> it3 = arrayList.iterator();
        while (it3.hasNext()) {
            it3.next().f();
        }
        Iterator<p> it4 = arrayList.iterator();
        while (it4.hasNext()) {
            p next2 = it4.next();
            if (next2.f15629b != this.f15569d) {
                next2.d();
            }
        }
    }

    public final int e(w.f fVar, int i10) {
        int size = this.f15574i.size();
        long j10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            j10 = Math.max(j10, this.f15574i.get(i11).b(fVar, i10));
        }
        return (int) j10;
    }

    public boolean f(boolean z10) {
        boolean z11;
        boolean z12 = true;
        boolean z13 = z10 & true;
        if (this.f15567b || this.f15568c) {
            Iterator<w.e> it2 = this.f15566a.J0.iterator();
            while (it2.hasNext()) {
                w.e next = it2.next();
                next.l();
                next.f15157a = false;
                next.f15165e.r();
                next.f15167f.q();
            }
            this.f15566a.l();
            w.f fVar = this.f15566a;
            fVar.f15157a = false;
            fVar.f15165e.r();
            this.f15566a.f15167f.q();
            this.f15568c = false;
        }
        if (b(this.f15569d)) {
            return false;
        }
        this.f15566a.d1(0);
        this.f15566a.e1(0);
        e.b s10 = this.f15566a.s(0);
        e.b s11 = this.f15566a.s(1);
        if (this.f15567b) {
            c();
        }
        int S = this.f15566a.S();
        int T = this.f15566a.T();
        this.f15566a.f15165e.f15635h.d(S);
        this.f15566a.f15167f.f15635h.d(T);
        m();
        e.b bVar = e.b.WRAP_CONTENT;
        if (s10 == bVar || s11 == bVar) {
            if (z13) {
                Iterator<p> it3 = this.f15570e.iterator();
                while (true) {
                    if (!it3.hasNext()) {
                        break;
                    }
                    if (!it3.next().m()) {
                        z13 = false;
                        break;
                    }
                }
            }
            if (z13 && s10 == e.b.WRAP_CONTENT) {
                this.f15566a.G0(e.b.FIXED);
                w.f fVar2 = this.f15566a;
                fVar2.b1(e(fVar2, 0));
                w.f fVar3 = this.f15566a;
                fVar3.f15165e.f15632e.d(fVar3.R());
            }
            if (z13 && s11 == e.b.WRAP_CONTENT) {
                this.f15566a.X0(e.b.FIXED);
                w.f fVar4 = this.f15566a;
                fVar4.C0(e(fVar4, 1));
                w.f fVar5 = this.f15566a;
                fVar5.f15167f.f15632e.d(fVar5.v());
            }
        }
        w.f fVar6 = this.f15566a;
        e.b[] bVarArr = fVar6.Y;
        e.b bVar2 = bVarArr[0];
        e.b bVar3 = e.b.FIXED;
        if (bVar2 == bVar3 || bVarArr[0] == e.b.MATCH_PARENT) {
            int R = fVar6.R() + S;
            this.f15566a.f15165e.f15636i.d(R);
            this.f15566a.f15165e.f15632e.d(R - S);
            m();
            w.f fVar7 = this.f15566a;
            e.b[] bVarArr2 = fVar7.Y;
            if (bVarArr2[1] == bVar3 || bVarArr2[1] == e.b.MATCH_PARENT) {
                int v10 = fVar7.v() + T;
                this.f15566a.f15167f.f15636i.d(v10);
                this.f15566a.f15167f.f15632e.d(v10 - T);
            }
            m();
            z11 = true;
        } else {
            z11 = false;
        }
        Iterator<p> it4 = this.f15570e.iterator();
        while (it4.hasNext()) {
            p next2 = it4.next();
            if (next2.f15629b != this.f15566a || next2.f15634g) {
                next2.e();
            }
        }
        Iterator<p> it5 = this.f15570e.iterator();
        while (it5.hasNext()) {
            p next3 = it5.next();
            if (z11 || next3.f15629b != this.f15566a) {
                if (!next3.f15635h.f15584j || ((!next3.f15636i.f15584j && !(next3 instanceof j)) || (!next3.f15632e.f15584j && !(next3 instanceof c) && !(next3 instanceof j)))) {
                    z12 = false;
                    break;
                }
            }
        }
        this.f15566a.G0(s10);
        this.f15566a.X0(s11);
        return z12;
    }

    public boolean g(boolean z10) {
        if (this.f15567b) {
            Iterator<w.e> it2 = this.f15566a.J0.iterator();
            while (it2.hasNext()) {
                w.e next = it2.next();
                next.l();
                next.f15157a = false;
                l lVar = next.f15165e;
                lVar.f15632e.f15584j = false;
                lVar.f15634g = false;
                lVar.r();
                n nVar = next.f15167f;
                nVar.f15632e.f15584j = false;
                nVar.f15634g = false;
                nVar.q();
            }
            this.f15566a.l();
            w.f fVar = this.f15566a;
            fVar.f15157a = false;
            l lVar2 = fVar.f15165e;
            lVar2.f15632e.f15584j = false;
            lVar2.f15634g = false;
            lVar2.r();
            n nVar2 = this.f15566a.f15167f;
            nVar2.f15632e.f15584j = false;
            nVar2.f15634g = false;
            nVar2.q();
            c();
        }
        if (b(this.f15569d)) {
            return false;
        }
        this.f15566a.d1(0);
        this.f15566a.e1(0);
        this.f15566a.f15165e.f15635h.d(0);
        this.f15566a.f15167f.f15635h.d(0);
        return true;
    }

    public boolean h(boolean z10, int i10) {
        boolean z11;
        e.b bVar;
        boolean z12 = true;
        boolean z13 = z10 & true;
        e.b s10 = this.f15566a.s(0);
        e.b s11 = this.f15566a.s(1);
        int S = this.f15566a.S();
        int T = this.f15566a.T();
        if (z13 && (s10 == (bVar = e.b.WRAP_CONTENT) || s11 == bVar)) {
            Iterator<p> it2 = this.f15570e.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                p next = it2.next();
                if (next.f15633f == i10 && !next.m()) {
                    z13 = false;
                    break;
                }
            }
            if (i10 == 0) {
                if (z13 && s10 == e.b.WRAP_CONTENT) {
                    this.f15566a.G0(e.b.FIXED);
                    w.f fVar = this.f15566a;
                    fVar.b1(e(fVar, 0));
                    w.f fVar2 = this.f15566a;
                    fVar2.f15165e.f15632e.d(fVar2.R());
                }
            } else if (z13 && s11 == e.b.WRAP_CONTENT) {
                this.f15566a.X0(e.b.FIXED);
                w.f fVar3 = this.f15566a;
                fVar3.C0(e(fVar3, 1));
                w.f fVar4 = this.f15566a;
                fVar4.f15167f.f15632e.d(fVar4.v());
            }
        }
        if (i10 == 0) {
            w.f fVar5 = this.f15566a;
            e.b[] bVarArr = fVar5.Y;
            if (bVarArr[0] == e.b.FIXED || bVarArr[0] == e.b.MATCH_PARENT) {
                int R = fVar5.R() + S;
                this.f15566a.f15165e.f15636i.d(R);
                this.f15566a.f15165e.f15632e.d(R - S);
                z11 = true;
            }
            z11 = false;
        } else {
            w.f fVar6 = this.f15566a;
            e.b[] bVarArr2 = fVar6.Y;
            if (bVarArr2[1] == e.b.FIXED || bVarArr2[1] == e.b.MATCH_PARENT) {
                int v10 = fVar6.v() + T;
                this.f15566a.f15167f.f15636i.d(v10);
                this.f15566a.f15167f.f15632e.d(v10 - T);
                z11 = true;
            }
            z11 = false;
        }
        m();
        Iterator<p> it3 = this.f15570e.iterator();
        while (it3.hasNext()) {
            p next2 = it3.next();
            if (next2.f15633f == i10 && (next2.f15629b != this.f15566a || next2.f15634g)) {
                next2.e();
            }
        }
        Iterator<p> it4 = this.f15570e.iterator();
        while (it4.hasNext()) {
            p next3 = it4.next();
            if (next3.f15633f == i10 && (z11 || next3.f15629b != this.f15566a)) {
                if (!next3.f15635h.f15584j || !next3.f15636i.f15584j || (!(next3 instanceof c) && !next3.f15632e.f15584j)) {
                    z12 = false;
                    break;
                }
            }
        }
        this.f15566a.G0(s10);
        this.f15566a.X0(s11);
        return z12;
    }

    public final void i(p pVar, int i10, ArrayList<m> arrayList) {
        for (d dVar : pVar.f15635h.f15585k) {
            if (dVar instanceof f) {
                a((f) dVar, i10, 0, pVar.f15636i, arrayList, null);
            } else if (dVar instanceof p) {
                a(((p) dVar).f15635h, i10, 0, pVar.f15636i, arrayList, null);
            }
        }
        for (d dVar2 : pVar.f15636i.f15585k) {
            if (dVar2 instanceof f) {
                a((f) dVar2, i10, 1, pVar.f15635h, arrayList, null);
            } else if (dVar2 instanceof p) {
                a(((p) dVar2).f15636i, i10, 1, pVar.f15635h, arrayList, null);
            }
        }
        if (i10 == 1) {
            for (d dVar3 : ((n) pVar).f15610k.f15585k) {
                if (dVar3 instanceof f) {
                    a((f) dVar3, i10, 2, null, arrayList, null);
                }
            }
        }
    }

    public void j() {
        this.f15567b = true;
    }

    public void k() {
        this.f15568c = true;
    }

    public final void l(w.e eVar, e.b bVar, int i10, e.b bVar2, int i11) {
        b.a aVar = this.f15573h;
        aVar.f15554a = bVar;
        aVar.f15555b = bVar2;
        aVar.f15556c = i10;
        aVar.f15557d = i11;
        this.f15572g.a(eVar, aVar);
        eVar.b1(this.f15573h.f15558e);
        eVar.C0(this.f15573h.f15559f);
        eVar.B0(this.f15573h.f15561h);
        eVar.r0(this.f15573h.f15560g);
    }

    public void m() {
        g gVar;
        Iterator<w.e> it2 = this.f15566a.J0.iterator();
        while (it2.hasNext()) {
            w.e next = it2.next();
            if (!next.f15157a) {
                e.b[] bVarArr = next.Y;
                boolean z10 = false;
                e.b bVar = bVarArr[0];
                e.b bVar2 = bVarArr[1];
                int i10 = next.f15199v;
                int i11 = next.f15201w;
                e.b bVar3 = e.b.WRAP_CONTENT;
                boolean z11 = bVar == bVar3 || (bVar == e.b.MATCH_CONSTRAINT && i10 == 1);
                if (bVar2 == bVar3 || (bVar2 == e.b.MATCH_CONSTRAINT && i11 == 1)) {
                    z10 = true;
                }
                g gVar2 = next.f15165e.f15632e;
                boolean z12 = gVar2.f15584j;
                g gVar3 = next.f15167f.f15632e;
                boolean z13 = gVar3.f15584j;
                if (z12 && z13) {
                    e.b bVar4 = e.b.FIXED;
                    l(next, bVar4, gVar2.f15581g, bVar4, gVar3.f15581g);
                    next.f15157a = true;
                } else if (z12 && z10) {
                    l(next, e.b.FIXED, gVar2.f15581g, bVar3, gVar3.f15581g);
                    if (bVar2 == e.b.MATCH_CONSTRAINT) {
                        next.f15167f.f15632e.f15596m = next.v();
                    } else {
                        next.f15167f.f15632e.d(next.v());
                        next.f15157a = true;
                    }
                } else if (z13 && z11) {
                    l(next, bVar3, gVar2.f15581g, e.b.FIXED, gVar3.f15581g);
                    if (bVar == e.b.MATCH_CONSTRAINT) {
                        next.f15165e.f15632e.f15596m = next.R();
                    } else {
                        next.f15165e.f15632e.d(next.R());
                        next.f15157a = true;
                    }
                }
                if (next.f15157a && (gVar = next.f15167f.f15611l) != null) {
                    gVar.d(next.n());
                }
            }
        }
    }

    public void n(b.InterfaceC0402b interfaceC0402b) {
        this.f15572g = interfaceC0402b;
    }
}
