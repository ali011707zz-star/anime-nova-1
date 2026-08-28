package w;

import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import io.wax911.support.util.SupportStateUtil;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import w.e;
import x.b;

/* compiled from: ConstraintWidgetContainer.java */
/* loaded from: classes.dex */
public class f extends l {
    public int M0;
    public int Q0;
    public int R0;
    public int S0;
    public int T0;
    public x.b K0 = new x.b(this);
    public x.e L0 = new x.e(this);
    public b.InterfaceC0402b N0 = null;
    public boolean O0 = false;
    public t.d P0 = new t.d();
    public int U0 = 0;
    public int V0 = 0;
    public c[] W0 = new c[4];
    public c[] X0 = new c[4];
    public boolean Y0 = false;
    public boolean Z0 = false;

    /* renamed from: a1, reason: collision with root package name */
    public boolean f15216a1 = false;

    /* renamed from: b1, reason: collision with root package name */
    public int f15217b1 = 0;

    /* renamed from: c1, reason: collision with root package name */
    public int f15218c1 = 0;

    /* renamed from: d1, reason: collision with root package name */
    public int f15219d1 = SupportStateUtil.RECYCLER_TYPE_EMPTY;

    /* renamed from: e1, reason: collision with root package name */
    public boolean f15220e1 = false;

    /* renamed from: f1, reason: collision with root package name */
    public boolean f15221f1 = false;

    /* renamed from: g1, reason: collision with root package name */
    public boolean f15222g1 = false;

    /* renamed from: h1, reason: collision with root package name */
    public int f15223h1 = 0;

    /* renamed from: i1, reason: collision with root package name */
    public WeakReference<d> f15224i1 = null;

    /* renamed from: j1, reason: collision with root package name */
    public WeakReference<d> f15225j1 = null;

    /* renamed from: k1, reason: collision with root package name */
    public WeakReference<d> f15226k1 = null;

    /* renamed from: l1, reason: collision with root package name */
    public WeakReference<d> f15227l1 = null;

    /* renamed from: m1, reason: collision with root package name */
    public HashSet<e> f15228m1 = new HashSet<>();

    /* renamed from: n1, reason: collision with root package name */
    public b.a f15229n1 = new b.a();

    public static boolean J1(int i10, e eVar, b.InterfaceC0402b interfaceC0402b, b.a aVar, int i11) {
        int i12;
        int i13;
        if (interfaceC0402b == null) {
            return false;
        }
        if (eVar.Q() != 8 && !(eVar instanceof g) && !(eVar instanceof a)) {
            aVar.f15554a = eVar.y();
            aVar.f15555b = eVar.O();
            aVar.f15556c = eVar.R();
            aVar.f15557d = eVar.v();
            aVar.f15562i = false;
            aVar.f15563j = i11;
            e.b bVar = aVar.f15554a;
            e.b bVar2 = e.b.MATCH_CONSTRAINT;
            boolean z10 = bVar == bVar2;
            boolean z11 = aVar.f15555b == bVar2;
            boolean z12 = z10 && eVar.f15162c0 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            boolean z13 = z11 && eVar.f15162c0 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            if (z10 && eVar.V(0) && eVar.f15199v == 0 && !z12) {
                aVar.f15554a = e.b.WRAP_CONTENT;
                if (z11 && eVar.f15201w == 0) {
                    aVar.f15554a = e.b.FIXED;
                }
                z10 = false;
            }
            if (z11 && eVar.V(1) && eVar.f15201w == 0 && !z13) {
                aVar.f15555b = e.b.WRAP_CONTENT;
                if (z10 && eVar.f15199v == 0) {
                    aVar.f15555b = e.b.FIXED;
                }
                z11 = false;
            }
            if (eVar.i0()) {
                aVar.f15554a = e.b.FIXED;
                z10 = false;
            }
            if (eVar.j0()) {
                aVar.f15555b = e.b.FIXED;
                z11 = false;
            }
            if (z12) {
                if (eVar.f15203x[0] == 4) {
                    aVar.f15554a = e.b.FIXED;
                } else if (!z11) {
                    e.b bVar3 = aVar.f15555b;
                    e.b bVar4 = e.b.FIXED;
                    if (bVar3 == bVar4) {
                        i13 = aVar.f15557d;
                    } else {
                        aVar.f15554a = e.b.WRAP_CONTENT;
                        interfaceC0402b.a(eVar, aVar);
                        i13 = aVar.f15559f;
                    }
                    aVar.f15554a = bVar4;
                    aVar.f15556c = (int) (eVar.t() * i13);
                }
            }
            if (z13) {
                if (eVar.f15203x[1] == 4) {
                    aVar.f15555b = e.b.FIXED;
                } else if (!z10) {
                    e.b bVar5 = aVar.f15554a;
                    e.b bVar6 = e.b.FIXED;
                    if (bVar5 == bVar6) {
                        i12 = aVar.f15556c;
                    } else {
                        aVar.f15555b = e.b.WRAP_CONTENT;
                        interfaceC0402b.a(eVar, aVar);
                        i12 = aVar.f15558e;
                    }
                    aVar.f15555b = bVar6;
                    if (eVar.u() == -1) {
                        aVar.f15557d = (int) (i12 / eVar.t());
                    } else {
                        aVar.f15557d = (int) (eVar.t() * i12);
                    }
                }
            }
            interfaceC0402b.a(eVar, aVar);
            eVar.b1(aVar.f15558e);
            eVar.C0(aVar.f15559f);
            eVar.B0(aVar.f15561h);
            eVar.r0(aVar.f15560g);
            aVar.f15563j = b.a.f15551k;
            return aVar.f15562i;
        }
        aVar.f15558e = 0;
        aVar.f15559f = 0;
        return false;
    }

    public b.InterfaceC0402b A1() {
        return this.N0;
    }

    public int B1() {
        return this.f15219d1;
    }

    public t.d C1() {
        return this.P0;
    }

    public void D1() {
        this.L0.j();
    }

    public void E1() {
        this.L0.k();
    }

    public boolean F1() {
        return this.f15222g1;
    }

    public boolean G1() {
        return this.O0;
    }

    public boolean H1() {
        return this.f15221f1;
    }

    public long I1(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18) {
        this.Q0 = i17;
        this.R0 = i18;
        return this.K0.d(this, i10, i17, i18, i11, i12, i13, i14, i15, i16);
    }

    public boolean K1(int i10) {
        return (this.f15219d1 & i10) == i10;
    }

    public final void L1() {
        this.U0 = 0;
        this.V0 = 0;
    }

    public void M1(b.InterfaceC0402b interfaceC0402b) {
        this.N0 = interfaceC0402b;
        this.L0.n(interfaceC0402b);
    }

    public void N1(int i10) {
        this.f15219d1 = i10;
        t.d.f13922r = K1(512);
    }

    public void O1(int i10) {
        this.M0 = i10;
    }

    public void P1(boolean z10) {
        this.O0 = z10;
    }

    public boolean Q1(t.d dVar, boolean[] zArr) {
        zArr[2] = false;
        boolean K1 = K1(64);
        h1(dVar, K1);
        int size = this.J0.size();
        boolean z10 = false;
        for (int i10 = 0; i10 < size; i10++) {
            e eVar = this.J0.get(i10);
            eVar.h1(dVar, K1);
            if (eVar.X()) {
                z10 = true;
            }
        }
        return z10;
    }

    public void R1() {
        this.K0.e(this);
    }

    @Override // w.e
    public void g1(boolean z10, boolean z11) {
        super.g1(z10, z11);
        int size = this.J0.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.J0.get(i10).g1(z10, z11);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:152:0x0310  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x0312  */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v4, types: [boolean] */
    /* JADX WARN: Type inference failed for: r6v6 */
    @Override // w.l
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void j1() {
        int i10;
        int i11;
        boolean z10;
        boolean z11;
        boolean z12;
        int r62;
        boolean z13;
        boolean z14;
        int i12;
        e.b bVar;
        this.f15166e0 = 0;
        this.f15168f0 = 0;
        this.f15221f1 = false;
        this.f15222g1 = false;
        int size = this.J0.size();
        int max = Math.max(0, R());
        int max2 = Math.max(0, v());
        e.b[] bVarArr = this.Y;
        e.b bVar2 = bVarArr[1];
        e.b bVar3 = bVarArr[0];
        if (this.M0 == 0 && j.b(this.f15219d1, 1)) {
            x.h.h(this, A1());
            for (int i13 = 0; i13 < size; i13++) {
                e eVar = this.J0.get(i13);
                if (eVar.h0() && !(eVar instanceof g) && !(eVar instanceof a) && !(eVar instanceof k) && !eVar.g0()) {
                    e.b s10 = eVar.s(0);
                    e.b s11 = eVar.s(1);
                    e.b bVar4 = e.b.MATCH_CONSTRAINT;
                    if (!(s10 == bVar4 && eVar.f15199v != 1 && s11 == bVar4 && eVar.f15201w != 1)) {
                        J1(0, eVar, this.N0, new b.a(), b.a.f15551k);
                    }
                }
            }
        }
        if (size <= 2 || !((bVar3 == (bVar = e.b.WRAP_CONTENT) || bVar2 == bVar) && j.b(this.f15219d1, RecyclerView.e0.FLAG_ADAPTER_FULLUPDATE) && x.i.c(this, A1()))) {
            i10 = max2;
            i11 = max;
            z10 = false;
        } else {
            if (bVar3 == bVar) {
                if (max < R() && max > 0) {
                    b1(max);
                    this.f15221f1 = true;
                } else {
                    max = R();
                }
            }
            if (bVar2 == bVar) {
                if (max2 < v() && max2 > 0) {
                    C0(max2);
                    this.f15222g1 = true;
                } else {
                    max2 = v();
                }
            }
            i10 = max2;
            i11 = max;
            z10 = true;
        }
        boolean z15 = K1(64) || K1(128);
        t.d dVar = this.P0;
        dVar.f13938h = false;
        dVar.f13939i = false;
        if (this.f15219d1 != 0 && z15) {
            dVar.f13939i = true;
        }
        ArrayList<e> arrayList = this.J0;
        e.b y10 = y();
        e.b bVar5 = e.b.WRAP_CONTENT;
        boolean z16 = y10 == bVar5 || O() == bVar5;
        L1();
        for (int i14 = 0; i14 < size; i14++) {
            e eVar2 = this.J0.get(i14);
            if (eVar2 instanceof l) {
                ((l) eVar2).j1();
            }
        }
        boolean K1 = K1(64);
        boolean z17 = z10;
        int i15 = 0;
        boolean z18 = true;
        while (z18) {
            int i16 = i15 + 1;
            try {
                this.P0.E();
                L1();
                k(this.P0);
                for (int i17 = 0; i17 < size; i17++) {
                    this.J0.get(i17).k(this.P0);
                }
                z18 = n1(this.P0);
                WeakReference<d> weakReference = this.f15224i1;
                if (weakReference != null && weakReference.get() != null) {
                    s1(this.f15224i1.get(), this.P0.q(this.O));
                    this.f15224i1 = null;
                }
                WeakReference<d> weakReference2 = this.f15226k1;
                if (weakReference2 != null && weakReference2.get() != null) {
                    r1(this.f15226k1.get(), this.P0.q(this.Q));
                    this.f15226k1 = null;
                }
                WeakReference<d> weakReference3 = this.f15225j1;
                if (weakReference3 != null && weakReference3.get() != null) {
                    s1(this.f15225j1.get(), this.P0.q(this.N));
                    this.f15225j1 = null;
                }
                WeakReference<d> weakReference4 = this.f15227l1;
                if (weakReference4 != null && weakReference4.get() != null) {
                    r1(this.f15227l1.get(), this.P0.q(this.P));
                    this.f15227l1 = null;
                }
                if (z18) {
                    this.P0.A();
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                System.out.println("EXCEPTION : " + e10);
            }
            if (z18) {
                z11 = Q1(this.P0, j.f15231a);
            } else {
                h1(this.P0, K1);
                for (int i18 = 0; i18 < size; i18++) {
                    this.J0.get(i18).h1(this.P0, K1);
                }
                z11 = false;
            }
            if (z16 && i16 < 8 && j.f15231a[2]) {
                int i19 = 0;
                int i20 = 0;
                int i21 = 0;
                while (i19 < size) {
                    e eVar3 = this.J0.get(i19);
                    i21 = Math.max(i21, eVar3.f15166e0 + eVar3.R());
                    i20 = Math.max(i20, eVar3.f15168f0 + eVar3.v());
                    i19++;
                    z11 = z11;
                }
                z12 = z11;
                int max3 = Math.max(this.f15180l0, i21);
                int max4 = Math.max(this.f15182m0, i20);
                e.b bVar6 = e.b.WRAP_CONTENT;
                if (bVar3 == bVar6 && R() < max3) {
                    b1(max3);
                    this.Y[0] = bVar6;
                    z17 = true;
                    z12 = true;
                }
                if (bVar2 == bVar6 && v() < max4) {
                    C0(max4);
                    this.Y[1] = bVar6;
                    z17 = true;
                    z12 = true;
                }
            } else {
                z12 = z11;
            }
            int max5 = Math.max(this.f15180l0, R());
            if (max5 > R()) {
                b1(max5);
                this.Y[0] = e.b.FIXED;
                z17 = true;
                z12 = true;
            }
            int max6 = Math.max(this.f15182m0, v());
            if (max6 > v()) {
                C0(max6);
                    r62 = 1;
                this.Y[1] = e.b.FIXED;
                z13 = true;
                z12 = true;
            } else {
                    r62 = 1;
                z13 = z17;
            }
            if (!z13) {
                e.b bVar7 = this.Y[0];
                e.b bVar8 = e.b.WRAP_CONTENT;
                if (bVar7 == bVar8 && i11 > 0 && R() > i11) {
                    this.f15221f1 = true;
                    this.Y[0] = e.b.FIXED;
                    b1(i11);
                    z13 = true;
                    z12 = true;
                }
                if (this.Y[1] == bVar8 && i10 > 0 && v() > i10) {
                    this.f15222g1 = true;
                    this.Y[1] = e.b.FIXED;
                    C0(i10);
                    i12 = 8;
                    z14 = true;
                    z17 = true;
                    z18 = i16 <= i12 ? false : z14;
                    i15 = i16;
                }
            }
            z17 = z13;
            z14 = z12;
            i12 = 8;
            if (i16 <= i12) {
            }
            i15 = i16;
        }
        this.J0 = arrayList;
        if (z17) {
            e.b[] bVarArr2 = this.Y;
            bVarArr2[0] = bVar3;
            bVarArr2[1] = bVar2;
        }
        q0(this.P0.w());
    }

    public void m1(e eVar, int i10) {
        if (i10 == 0) {
            o1(eVar);
        } else if (i10 == 1) {
            t1(eVar);
        }
    }

    public boolean n1(t.d dVar) {
        boolean K1 = K1(64);
        g(dVar, K1);
        int size = this.J0.size();
        boolean z10 = false;
        for (int i10 = 0; i10 < size; i10++) {
            e eVar = this.J0.get(i10);
            eVar.J0(0, false);
            eVar.J0(1, false);
            if (eVar instanceof a) {
                z10 = true;
            }
        }
        if (z10) {
            for (int i11 = 0; i11 < size; i11++) {
                e eVar2 = this.J0.get(i11);
                if (eVar2 instanceof a) {
                    ((a) eVar2).p1();
                }
            }
        }
        this.f15228m1.clear();
        for (int i12 = 0; i12 < size; i12++) {
            e eVar3 = this.J0.get(i12);
            if (eVar3.f()) {
                if (eVar3 instanceof k) {
                    this.f15228m1.add(eVar3);
                } else {
                    eVar3.g(dVar, K1);
                }
            }
        }
        while (this.f15228m1.size() > 0) {
            int size2 = this.f15228m1.size();
            Iterator<e> it2 = this.f15228m1.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                k kVar = (k) it2.next();
                if (kVar.l1(this.f15228m1)) {
                    kVar.g(dVar, K1);
                    this.f15228m1.remove(kVar);
                    break;
                }
            }
            if (size2 == this.f15228m1.size()) {
                Iterator<e> it3 = this.f15228m1.iterator();
                while (it3.hasNext()) {
                    it3.next().g(dVar, K1);
                }
                this.f15228m1.clear();
            }
        }
        if (t.d.f13922r) {
            HashSet<e> hashSet = new HashSet<>();
            for (int i13 = 0; i13 < size; i13++) {
                e eVar4 = this.J0.get(i13);
                if (!eVar4.f()) {
                    hashSet.add(eVar4);
                }
            }
            e(this, dVar, hashSet, y() == e.b.WRAP_CONTENT ? 0 : 1, false);
            Iterator<e> it4 = hashSet.iterator();
            while (it4.hasNext()) {
                e next = it4.next();
                j.a(this, dVar, next);
                next.g(dVar, K1);
            }
        } else {
            for (int i14 = 0; i14 < size; i14++) {
                e eVar5 = this.J0.get(i14);
                if (eVar5 instanceof f) {
                    e.b[] bVarArr = eVar5.Y;
                    e.b bVar = bVarArr[0];
                    e.b bVar2 = bVarArr[1];
                    e.b bVar3 = e.b.WRAP_CONTENT;
                    if (bVar == bVar3) {
                        eVar5.G0(e.b.FIXED);
                    }
                    if (bVar2 == bVar3) {
                        eVar5.X0(e.b.FIXED);
                    }
                    eVar5.g(dVar, K1);
                    if (bVar == bVar3) {
                        eVar5.G0(bVar);
                    }
                    if (bVar2 == bVar3) {
                        eVar5.X0(bVar2);
                    }
                } else {
                    j.a(this, dVar, eVar5);
                    if (!eVar5.f()) {
                        eVar5.g(dVar, K1);
                    }
                }
            }
        }
        if (this.U0 > 0) {
            b.b(this, dVar, null, 0);
        }
        if (this.V0 > 0) {
            b.b(this, dVar, null, 1);
        }
        return true;
    }

    @Override // w.l, w.e
    public void o0() {
        this.P0.E();
        this.Q0 = 0;
        this.S0 = 0;
        this.R0 = 0;
        this.T0 = 0;
        this.f15220e1 = false;
        super.o0();
    }

    public final void o1(e eVar) {
        int i10 = this.U0 + 1;
        c[] cVarArr = this.X0;
        if (i10 >= cVarArr.length) {
            this.X0 = (c[]) Arrays.copyOf(cVarArr, cVarArr.length * 2);
        }
        this.X0[this.U0] = new c(eVar, 0, G1());
        this.U0++;
    }

    public void p1(d dVar) {
        WeakReference<d> weakReference = this.f15227l1;
        if (weakReference == null || weakReference.get() == null || dVar.d() > this.f15227l1.get().d()) {
            this.f15227l1 = new WeakReference<>(dVar);
        }
    }

    public void q1(d dVar) {
        WeakReference<d> weakReference = this.f15225j1;
        if (weakReference == null || weakReference.get() == null || dVar.d() > this.f15225j1.get().d()) {
            this.f15225j1 = new WeakReference<>(dVar);
        }
    }

    public final void r1(d dVar, t.i iVar) {
        this.P0.h(iVar, this.P0.q(dVar), 0, 5);
    }

    public final void s1(d dVar, t.i iVar) {
        this.P0.h(this.P0.q(dVar), iVar, 0, 5);
    }

    public final void t1(e eVar) {
        int i10 = this.V0 + 1;
        c[] cVarArr = this.W0;
        if (i10 >= cVarArr.length) {
            this.W0 = (c[]) Arrays.copyOf(cVarArr, cVarArr.length * 2);
        }
        this.W0[this.V0] = new c(eVar, 1, G1());
        this.V0++;
    }

    public void u1(d dVar) {
        WeakReference<d> weakReference = this.f15226k1;
        if (weakReference == null || weakReference.get() == null || dVar.d() > this.f15226k1.get().d()) {
            this.f15226k1 = new WeakReference<>(dVar);
        }
    }

    public void v1(d dVar) {
        WeakReference<d> weakReference = this.f15224i1;
        if (weakReference == null || weakReference.get() == null || dVar.d() > this.f15224i1.get().d()) {
            this.f15224i1 = new WeakReference<>(dVar);
        }
    }

    public boolean w1(boolean z10) {
        return this.L0.f(z10);
    }

    public boolean x1(boolean z10) {
        return this.L0.g(z10);
    }

    public boolean y1(boolean z10, int i10) {
        return this.L0.h(z10, i10);
    }

    public void z1(t.e eVar) {
        this.P0.v(eVar);
    }
}
