package w;

import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.util.ArrayList;
import w.e;

/* compiled from: ChainHead.java */
/* loaded from: classes.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    public e f15115a;

    /* renamed from: b, reason: collision with root package name */
    public e f15116b;

    /* renamed from: c, reason: collision with root package name */
    public e f15117c;

    /* renamed from: d, reason: collision with root package name */
    public e f15118d;

    /* renamed from: e, reason: collision with root package name */
    public e f15119e;

    /* renamed from: f, reason: collision with root package name */
    public e f15120f;

    /* renamed from: g, reason: collision with root package name */
    public e f15121g;

    /* renamed from: h, reason: collision with root package name */
    public ArrayList<e> f15122h;

    /* renamed from: i, reason: collision with root package name */
    public int f15123i;

    /* renamed from: j, reason: collision with root package name */
    public int f15124j;

    /* renamed from: k, reason: collision with root package name */
    public float f15125k = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;

    /* renamed from: l, reason: collision with root package name */
    public int f15126l;

    /* renamed from: m, reason: collision with root package name */
    public int f15127m;

    /* renamed from: n, reason: collision with root package name */
    public int f15128n;

    /* renamed from: o, reason: collision with root package name */
    public boolean f15129o;

    /* renamed from: p, reason: collision with root package name */
    public int f15130p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f15131q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f15132r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f15133s;

    /* renamed from: t, reason: collision with root package name */
    public boolean f15134t;

    /* renamed from: u, reason: collision with root package name */
    public boolean f15135u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f15136v;

    public c(e eVar, int i10, boolean z10) {
        this.f15131q = false;
        this.f15115a = eVar;
        this.f15130p = i10;
        this.f15131q = z10;
    }

    public static boolean c(e eVar, int i10) {
        if (eVar.Q() != 8 && eVar.Y[i10] == e.b.MATCH_CONSTRAINT) {
            int[] iArr = eVar.f15203x;
            if (iArr[i10] == 0 || iArr[i10] == 3) {
                return true;
            }
        }
        return false;
    }

    public void a() {
        if (!this.f15136v) {
            b();
        }
        this.f15136v = true;
    }

    public final void b() {
        int i10 = this.f15130p * 2;
        e eVar = this.f15115a;
        this.f15129o = true;
        e eVar2 = eVar;
        boolean z10 = false;
        while (!z10) {
            this.f15123i++;
            e[] eVarArr = eVar.D0;
            int i11 = this.f15130p;
            e eVar3 = null;
            eVarArr[i11] = null;
            eVar.C0[i11] = null;
            if (eVar.Q() != 8) {
                this.f15126l++;
                e.b s10 = eVar.s(this.f15130p);
                e.b bVar = e.b.MATCH_CONSTRAINT;
                if (s10 != bVar) {
                    this.f15127m += eVar.C(this.f15130p);
                }
                int e10 = this.f15127m + eVar.V[i10].e();
                this.f15127m = e10;
                int i12 = i10 + 1;
                this.f15127m = e10 + eVar.V[i12].e();
                int e11 = this.f15128n + eVar.V[i10].e();
                this.f15128n = e11;
                this.f15128n = e11 + eVar.V[i12].e();
                if (this.f15116b == null) {
                    this.f15116b = eVar;
                }
                this.f15118d = eVar;
                e.b[] bVarArr = eVar.Y;
                int i13 = this.f15130p;
                if (bVarArr[i13] == bVar) {
                    int[] iArr = eVar.f15203x;
                    if (iArr[i13] == 0 || iArr[i13] == 3 || iArr[i13] == 2) {
                        this.f15124j++;
                        float[] fArr = eVar.B0;
                        float f10 = fArr[i13];
                        if (f10 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                            this.f15125k += fArr[i13];
                        }
                        if (c(eVar, i13)) {
                            if (f10 < StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                                this.f15132r = true;
                            } else {
                                this.f15133s = true;
                            }
                            if (this.f15122h == null) {
                                this.f15122h = new ArrayList<>();
                            }
                            this.f15122h.add(eVar);
                        }
                        if (this.f15120f == null) {
                            this.f15120f = eVar;
                        }
                        e eVar4 = this.f15121g;
                        if (eVar4 != null) {
                            eVar4.C0[this.f15130p] = eVar;
                        }
                        this.f15121g = eVar;
                    }
                    if (this.f15130p == 0) {
                        if (eVar.f15199v != 0) {
                            this.f15129o = false;
                        } else if (eVar.f15205y != 0 || eVar.f15207z != 0) {
                            this.f15129o = false;
                        }
                    } else if (eVar.f15201w != 0) {
                        this.f15129o = false;
                    } else if (eVar.B != 0 || eVar.C != 0) {
                        this.f15129o = false;
                    }
                    if (eVar.f15162c0 != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                        this.f15129o = false;
                        this.f15135u = true;
                    }
                }
            }
            if (eVar2 != eVar) {
                eVar2.D0[this.f15130p] = eVar;
            }
            d dVar = eVar.V[i10 + 1].f15142f;
            if (dVar != null) {
                e eVar5 = dVar.f15140d;
                d[] dVarArr = eVar5.V;
                if (dVarArr[i10].f15142f != null && dVarArr[i10].f15142f.f15140d == eVar) {
                    eVar3 = eVar5;
                }
            }
            if (eVar3 == null) {
                eVar3 = eVar;
                z10 = true;
            }
            eVar2 = eVar;
            eVar = eVar3;
        }
        e eVar6 = this.f15116b;
        if (eVar6 != null) {
            this.f15127m -= eVar6.V[i10].e();
        }
        e eVar7 = this.f15118d;
        if (eVar7 != null) {
            this.f15127m -= eVar7.V[i10 + 1].e();
        }
        this.f15117c = eVar;
        if (this.f15130p == 0 && this.f15131q) {
            this.f15119e = eVar;
        } else {
            this.f15119e = this.f15115a;
        }
        this.f15134t = this.f15133s && this.f15132r;
    }
}
