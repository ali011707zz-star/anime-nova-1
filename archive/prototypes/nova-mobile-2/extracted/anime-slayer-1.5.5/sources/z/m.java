package z;

import android.graphics.Rect;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import org.apache.http.impl.auth.NTLMEngineImpl;
import y.b;
import y.c;
import y.d;

/* compiled from: MotionController.java */
/* loaded from: classes.dex */
public class m {
    public HashMap<String, y.d> A;
    public HashMap<String, y.c> B;
    public HashMap<String, y.b> C;
    public k[] D;
    public int E;
    public int F;
    public View G;
    public int H;
    public float I;
    public Interpolator J;
    public boolean K;

    /* renamed from: b, reason: collision with root package name */
    public View f16986b;

    /* renamed from: c, reason: collision with root package name */
    public int f16987c;

    /* renamed from: d, reason: collision with root package name */
    public String f16988d;

    /* renamed from: j, reason: collision with root package name */
    public u.b[] f16994j;

    /* renamed from: k, reason: collision with root package name */
    public u.b f16995k;

    /* renamed from: o, reason: collision with root package name */
    public float f16999o;

    /* renamed from: p, reason: collision with root package name */
    public float f17000p;

    /* renamed from: q, reason: collision with root package name */
    public int[] f17001q;

    /* renamed from: r, reason: collision with root package name */
    public double[] f17002r;

    /* renamed from: s, reason: collision with root package name */
    public double[] f17003s;

    /* renamed from: t, reason: collision with root package name */
    public String[] f17004t;

    /* renamed from: u, reason: collision with root package name */
    public int[] f17005u;

    /* renamed from: a, reason: collision with root package name */
    public Rect f16985a = new Rect();

    /* renamed from: e, reason: collision with root package name */
    public int f16989e = -1;

    /* renamed from: f, reason: collision with root package name */
    public q f16990f = new q();

    /* renamed from: g, reason: collision with root package name */
    public q f16991g = new q();

    /* renamed from: h, reason: collision with root package name */
    public l f16992h = new l();

    /* renamed from: i, reason: collision with root package name */
    public l f16993i = new l();

    /* renamed from: l, reason: collision with root package name */
    public float f16996l = Float.NaN;

    /* renamed from: m, reason: collision with root package name */
    public float f16997m = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;

    /* renamed from: n, reason: collision with root package name */
    public float f16998n = 1.0f;

    /* renamed from: v, reason: collision with root package name */
    public int f17006v = 4;

    /* renamed from: w, reason: collision with root package name */
    public float[] f17007w = new float[4];

    /* renamed from: x, reason: collision with root package name */
    public ArrayList<q> f17008x = new ArrayList<>();

    /* renamed from: y, reason: collision with root package name */
    public float[] f17009y = new float[1];

    /* renamed from: z, reason: collision with root package name */
    public ArrayList<d> f17010z = new ArrayList<>();

    public m(View view) {
        int i10 = d.f16863f;
        this.E = i10;
        this.F = i10;
        this.G = null;
        this.H = i10;
        this.I = Float.NaN;
        this.J = null;
        this.K = false;
        s(view);
    }

    public void a(ArrayList<d> arrayList) {
        this.f17010z.addAll(arrayList);
    }

    public int b(float[] fArr, int[] iArr) {
        if (fArr == null) {
            return 0;
        }
        double[] g10 = this.f16994j[0].g();
        if (iArr != null) {
            Iterator<q> it2 = this.f17008x.iterator();
            int i10 = 0;
            while (it2.hasNext()) {
                iArr[i10] = it2.next().f17120u;
                i10++;
            }
        }
        int i11 = 0;
        for (int i12 = 0; i12 < g10.length; i12++) {
            this.f16994j[0].d(g10[i12], this.f17002r);
            this.f16990f.e(g10[i12], this.f17001q, this.f17002r, fArr, i11);
            i11 += 2;
        }
        return i11 / 2;
    }

    public void c(float[] fArr, int i10) {
        double d10;
        float f10 = 1.0f;
        float f11 = 1.0f / (i10 - 1);
        HashMap<String, y.c> hashMap = this.B;
        y.c cVar = hashMap == null ? null : hashMap.get("translationX");
        HashMap<String, y.c> hashMap2 = this.B;
        y.c cVar2 = hashMap2 == null ? null : hashMap2.get("translationY");
        HashMap<String, y.b> hashMap3 = this.C;
        y.b bVar = hashMap3 == null ? null : hashMap3.get("translationX");
        HashMap<String, y.b> hashMap4 = this.C;
        y.b bVar2 = hashMap4 != null ? hashMap4.get("translationY") : null;
        int i11 = 0;
        while (i11 < i10) {
            float f12 = i11 * f11;
            float f13 = this.f16998n;
            if (f13 != f10) {
                float f14 = this.f16997m;
                if (f12 < f14) {
                    f12 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                }
                if (f12 > f14 && f12 < 1.0d) {
                    f12 = Math.min((f12 - f14) * f13, f10);
                }
            }
            float f15 = f12;
            double d11 = f15;
            u.c cVar3 = this.f16990f.f17105f;
            float f16 = Float.NaN;
            Iterator<q> it2 = this.f17008x.iterator();
            float f17 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            while (it2.hasNext()) {
                q next = it2.next();
                u.c cVar4 = next.f17105f;
                double d12 = d11;
                if (cVar4 != null) {
                    float f18 = next.f17107h;
                    if (f18 < f15) {
                        f17 = f18;
                        cVar3 = cVar4;
                    } else if (Float.isNaN(f16)) {
                        f16 = next.f17107h;
                    }
                }
                d11 = d12;
            }
            double d13 = d11;
            if (cVar3 != null) {
                if (Float.isNaN(f16)) {
                    f16 = 1.0f;
                }
                d10 = (((float) cVar3.a((f15 - f17) / r5)) * (f16 - f17)) + f17;
            } else {
                d10 = d13;
            }
            this.f16994j[0].d(d10, this.f17002r);
            u.b bVar3 = this.f16995k;
            if (bVar3 != null) {
                double[] dArr = this.f17002r;
                if (dArr.length > 0) {
                    bVar3.d(d10, dArr);
                }
            }
            int i12 = i11 * 2;
            int i13 = i11;
            this.f16990f.e(d10, this.f17001q, this.f17002r, fArr, i12);
            if (bVar != null) {
                fArr[i12] = fArr[i12] + bVar.a(f15);
            } else if (cVar != null) {
                fArr[i12] = fArr[i12] + cVar.a(f15);
            }
            if (bVar2 != null) {
                int i14 = i12 + 1;
                fArr[i14] = fArr[i14] + bVar2.a(f15);
            } else if (cVar2 != null) {
                int i15 = i12 + 1;
                fArr[i15] = fArr[i15] + cVar2.a(f15);
            }
            i11 = i13 + 1;
            f10 = 1.0f;
        }
    }

    public void d(float f10, float[] fArr, int i10) {
        this.f16994j[0].d(f(f10, null), this.f17002r);
        this.f16990f.i(this.f17001q, this.f17002r, fArr, i10);
    }

    public void e(boolean z10) {
        if (!"button".equals(a.c(this.f16986b)) || this.D == null) {
            return;
        }
        int i10 = 0;
        while (true) {
            k[] kVarArr = this.D;
            if (i10 >= kVarArr.length) {
                return;
            }
            kVarArr[i10].t(z10 ? -100.0f : 100.0f, this.f16986b);
            i10++;
        }
    }

    public final float f(float f10, float[] fArr) {
        float f11 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        if (fArr != null) {
            fArr[0] = 1.0f;
        } else {
            float f12 = this.f16998n;
            if (f12 != 1.0d) {
                float f13 = this.f16997m;
                if (f10 < f13) {
                    f10 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                }
                if (f10 > f13 && f10 < 1.0d) {
                    f10 = Math.min((f10 - f13) * f12, 1.0f);
                }
            }
        }
        u.c cVar = this.f16990f.f17105f;
        float f14 = Float.NaN;
        Iterator<q> it2 = this.f17008x.iterator();
        while (it2.hasNext()) {
            q next = it2.next();
            u.c cVar2 = next.f17105f;
            if (cVar2 != null) {
                float f15 = next.f17107h;
                if (f15 < f10) {
                    cVar = cVar2;
                    f11 = f15;
                } else if (Float.isNaN(f14)) {
                    f14 = next.f17107h;
                }
            }
        }
        if (cVar != null) {
            float f16 = (Float.isNaN(f14) ? 1.0f : f14) - f11;
            double d10 = (f10 - f11) / f16;
            f10 = (((float) cVar.a(d10)) * f16) + f11;
            if (fArr != null) {
                fArr[0] = (float) cVar.b(d10);
            }
        }
        return f10;
    }

    public int g() {
        return this.f16990f.f17116q;
    }

    public void h(double d10, float[] fArr, float[] fArr2) {
        double[] dArr = new double[4];
        double[] dArr2 = new double[4];
        this.f16994j[0].d(d10, dArr);
        this.f16994j[0].f(d10, dArr2);
        Arrays.fill(fArr2, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        this.f16990f.f(d10, this.f17001q, dArr, fArr, dArr2, fArr2);
    }

    public float i() {
        return this.f16999o;
    }

    public float j() {
        return this.f17000p;
    }

    public void k(float f10, float f11, float f12, float[] fArr) {
        double[] dArr;
        float f13 = f(f10, this.f17009y);
        u.b[] bVarArr = this.f16994j;
        int i10 = 0;
        if (bVarArr != null) {
            double d10 = f13;
            bVarArr[0].f(d10, this.f17003s);
            this.f16994j[0].d(d10, this.f17002r);
            float f14 = this.f17009y[0];
            while (true) {
                dArr = this.f17003s;
                if (i10 >= dArr.length) {
                    break;
                }
                double d11 = dArr[i10];
                double d12 = f14;
                Double.isNaN(d12);
                dArr[i10] = d11 * d12;
                i10++;
            }
            u.b bVar = this.f16995k;
            if (bVar != null) {
                double[] dArr2 = this.f17002r;
                if (dArr2.length > 0) {
                    bVar.d(d10, dArr2);
                    this.f16995k.f(d10, this.f17003s);
                    this.f16990f.p(f11, f12, fArr, this.f17001q, this.f17003s, this.f17002r);
                    return;
                }
                return;
            }
            this.f16990f.p(f11, f12, fArr, this.f17001q, dArr, this.f17002r);
            return;
        }
        q qVar = this.f16991g;
        float f15 = qVar.f17109j;
        q qVar2 = this.f16990f;
        float f16 = f15 - qVar2.f17109j;
        float f17 = qVar.f17110k - qVar2.f17110k;
        float f18 = (qVar.f17111l - qVar2.f17111l) + f16;
        float f19 = (qVar.f17112m - qVar2.f17112m) + f17;
        fArr[0] = (f16 * (1.0f - f11)) + (f18 * f11);
        fArr[1] = (f17 * (1.0f - f12)) + (f19 * f12);
    }

    public int l() {
        int i10 = this.f16990f.f17106g;
        Iterator<q> it2 = this.f17008x.iterator();
        while (it2.hasNext()) {
            i10 = Math.max(i10, it2.next().f17106g);
        }
        return Math.max(i10, this.f16991g.f17106g);
    }

    public q m(int i10) {
        return this.f17008x.get(i10);
    }

    public final float n() {
        char c10;
        float f10;
        float[] fArr = new float[2];
        float f11 = 1.0f / 99;
        double d10 = 0.0d;
        double d11 = 0.0d;
        float f12 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        int i10 = 0;
        while (i10 < 100) {
            float f13 = i10 * f11;
            double d12 = f13;
            u.c cVar = this.f16990f.f17105f;
            Iterator<q> it2 = this.f17008x.iterator();
            float f14 = Float.NaN;
            float f15 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            while (it2.hasNext()) {
                q next = it2.next();
                u.c cVar2 = next.f17105f;
                if (cVar2 != null) {
                    float f16 = next.f17107h;
                    if (f16 < f13) {
                        cVar = cVar2;
                        f15 = f16;
                    } else if (Float.isNaN(f14)) {
                        f14 = next.f17107h;
                    }
                }
            }
            if (cVar != null) {
                if (Float.isNaN(f14)) {
                    f14 = 1.0f;
                }
                d12 = (((float) cVar.a((f13 - f15) / r17)) * (f14 - f15)) + f15;
            }
            this.f16994j[0].d(d12, this.f17002r);
            float f17 = f12;
            int i11 = i10;
            this.f16990f.e(d12, this.f17001q, this.f17002r, fArr, 0);
            if (i11 > 0) {
                double d13 = f17;
                double d14 = fArr[1];
                Double.isNaN(d14);
                c10 = 0;
                double d15 = fArr[0];
                Double.isNaN(d15);
                double hypot = Math.hypot(d11 - d14, d10 - d15);
                Double.isNaN(d13);
                f10 = (float) (d13 + hypot);
            } else {
                c10 = 0;
                f10 = f17;
            }
            d10 = fArr[c10];
            i10 = i11 + 1;
            f12 = f10;
            d11 = fArr[1];
        }
        return f12;
    }

    public View o() {
        return this.f16986b;
    }

    public final void p(q qVar) {
        if (Collections.binarySearch(this.f17008x, qVar) == 0) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(" KeyPath position \"");
            sb2.append(qVar.f17108i);
            sb2.append("\" outside of range");
        }
        this.f17008x.add((-r0) - 1, qVar);
    }

    public boolean q(View view, float f10, long j10, u.d dVar) {
        d.C0421d c0421d;
        boolean z10;
        char c10;
        double d10;
        float f11;
        float f12 = f(f10, null);
        int i10 = this.H;
        if (i10 != d.f16863f) {
            float f13 = 1.0f / i10;
            float floor = ((float) Math.floor(f12 / f13)) * f13;
            float f14 = (f12 % f13) / f13;
            if (!Float.isNaN(this.I)) {
                f14 = (f14 + this.I) % 1.0f;
            }
            Interpolator interpolator = this.J;
            if (interpolator != null) {
                f11 = interpolator.getInterpolation(f14);
            } else {
                f11 = ((double) f14) > 0.5d ? 1.0f : StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            }
            f12 = (f11 * f13) + floor;
        }
        float f15 = f12;
        HashMap<String, y.c> hashMap = this.B;
        if (hashMap != null) {
            Iterator<y.c> it2 = hashMap.values().iterator();
            while (it2.hasNext()) {
                it2.next().g(view, f15);
            }
        }
        HashMap<String, y.d> hashMap2 = this.A;
        if (hashMap2 != null) {
            c0421d = null;
            boolean z11 = false;
            for (y.d dVar2 : hashMap2.values()) {
                if (dVar2 instanceof d.C0421d) {
                    c0421d = (d.C0421d) dVar2;
                } else {
                    z11 |= dVar2.i(view, f15, j10, dVar);
                }
            }
            z10 = z11;
        } else {
            c0421d = null;
            z10 = false;
        }
        u.b[] bVarArr = this.f16994j;
        if (bVarArr != null) {
            double d11 = f15;
            bVarArr[0].d(d11, this.f17002r);
            this.f16994j[0].f(d11, this.f17003s);
            u.b bVar = this.f16995k;
            if (bVar != null) {
                double[] dArr = this.f17002r;
                if (dArr.length > 0) {
                    bVar.d(d11, dArr);
                    this.f16995k.f(d11, this.f17003s);
                }
            }
            if (this.K) {
                d10 = d11;
            } else {
                d10 = d11;
                this.f16990f.q(f15, view, this.f17001q, this.f17002r, this.f17003s, null);
            }
            if (this.F != d.f16863f) {
                if (this.G == null) {
                    this.G = ((View) view.getParent()).findViewById(this.F);
                }
                if (this.G != null) {
                    float top = (r1.getTop() + this.G.getBottom()) / 2.0f;
                    float left = (this.G.getLeft() + this.G.getRight()) / 2.0f;
                    if (view.getRight() - view.getLeft() > 0 && view.getBottom() - view.getTop() > 0) {
                        view.setPivotX(left - view.getLeft());
                        view.setPivotY(top - view.getTop());
                    }
                }
            }
            HashMap<String, y.c> hashMap3 = this.B;
            if (hashMap3 != null) {
                for (y.c cVar : hashMap3.values()) {
                    if (cVar instanceof c.d) {
                        double[] dArr2 = this.f17003s;
                        if (dArr2.length > 1) {
                            ((c.d) cVar).h(view, f15, dArr2[0], dArr2[1]);
                        }
                    }
                }
            }
            if (c0421d != null) {
                double[] dArr3 = this.f17003s;
                c10 = 1;
                z10 |= c0421d.j(view, dVar, f15, j10, dArr3[0], dArr3[1]);
            } else {
                c10 = 1;
            }
            int i11 = 1;
            while (true) {
                u.b[] bVarArr2 = this.f16994j;
                if (i11 >= bVarArr2.length) {
                    break;
                }
                bVarArr2[i11].e(d10, this.f17007w);
                this.f16990f.f17119t.get(this.f17004t[i11 - 1]).j(view, this.f17007w);
                i11++;
            }
            l lVar = this.f16992h;
            if (lVar.f16965g == 0) {
                if (f15 <= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                    view.setVisibility(lVar.f16966h);
                } else if (f15 >= 1.0f) {
                    view.setVisibility(this.f16993i.f16966h);
                } else if (this.f16993i.f16966h != lVar.f16966h) {
                    view.setVisibility(0);
                }
            }
            if (this.D != null) {
                int i12 = 0;
                while (true) {
                    k[] kVarArr = this.D;
                    if (i12 >= kVarArr.length) {
                        break;
                    }
                    kVarArr[i12].t(f15, view);
                    i12++;
                }
            }
        } else {
            c10 = 1;
            q qVar = this.f16990f;
            float f16 = qVar.f17109j;
            q qVar2 = this.f16991g;
            float f17 = f16 + ((qVar2.f17109j - f16) * f15);
            float f18 = qVar.f17110k;
            float f19 = f18 + ((qVar2.f17110k - f18) * f15);
            float f20 = qVar.f17111l;
            float f21 = qVar2.f17111l;
            float f22 = qVar.f17112m;
            float f23 = qVar2.f17112m;
            float f24 = f17 + 0.5f;
            int i13 = (int) f24;
            float f25 = f19 + 0.5f;
            int i14 = (int) f25;
            int i15 = (int) (f24 + ((f21 - f20) * f15) + f20);
            int i16 = (int) (f25 + ((f23 - f22) * f15) + f22);
            int i17 = i15 - i13;
            int i18 = i16 - i14;
            if (f21 != f20 || f23 != f22) {
                view.measure(View.MeasureSpec.makeMeasureSpec(i17, NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH), View.MeasureSpec.makeMeasureSpec(i18, NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH));
            }
            view.layout(i13, i14, i15, i16);
        }
        HashMap<String, y.b> hashMap4 = this.C;
        if (hashMap4 != null) {
            for (y.b bVar2 : hashMap4.values()) {
                if (bVar2 instanceof b.d) {
                    double[] dArr4 = this.f17003s;
                    ((b.d) bVar2).j(view, f15, dArr4[0], dArr4[c10]);
                } else {
                    bVar2.i(view, f15);
                }
            }
        }
        return z10;
    }

    public void r(View view) {
        q qVar = this.f16990f;
        qVar.f17107h = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        qVar.f17108i = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        this.K = true;
        qVar.o(view.getX(), view.getY(), view.getWidth(), view.getHeight());
        this.f16991g.o(view.getX(), view.getY(), view.getWidth(), view.getHeight());
        this.f16992h.g(view);
        this.f16993i.g(view);
    }

    public void s(View view) {
        this.f16986b = view;
        this.f16987c = view.getId();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ConstraintLayout.b) {
            this.f16988d = ((ConstraintLayout.b) layoutParams).a();
        }
    }

    public void t(int i10, int i11, float f10, long j10) {
        ArrayList arrayList;
        String[] strArr;
        androidx.constraintlayout.widget.a aVar;
        y.d h10;
        androidx.constraintlayout.widget.a aVar2;
        Integer num;
        y.c f11;
        androidx.constraintlayout.widget.a aVar3;
        new HashSet();
        HashSet<String> hashSet = new HashSet<>();
        HashSet<String> hashSet2 = new HashSet<>();
        HashSet<String> hashSet3 = new HashSet<>();
        HashMap<String, Integer> hashMap = new HashMap<>();
        int i12 = this.E;
        if (i12 != d.f16863f) {
            this.f16990f.f17115p = i12;
        }
        this.f16992h.e(this.f16993i, hashSet2);
        ArrayList<d> arrayList2 = this.f17010z;
        if (arrayList2 != null) {
            Iterator<d> it2 = arrayList2.iterator();
            arrayList = null;
            while (it2.hasNext()) {
                d next = it2.next();
                if (next instanceof h) {
                    h hVar = (h) next;
                    p(new q(i10, i11, hVar, this.f16990f, this.f16991g));
                    int i13 = hVar.f16923g;
                    if (i13 != d.f16863f) {
                        this.f16989e = i13;
                    }
                } else if (next instanceof f) {
                    next.d(hashSet3);
                } else if (next instanceof j) {
                    next.d(hashSet);
                } else if (next instanceof k) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add((k) next);
                } else {
                    next.f(hashMap);
                    next.d(hashSet2);
                }
            }
        } else {
            arrayList = null;
        }
        char c10 = 0;
        if (arrayList != null) {
            this.D = (k[]) arrayList.toArray(new k[0]);
        }
        char c11 = 1;
        if (!hashSet2.isEmpty()) {
            this.B = new HashMap<>();
            Iterator<String> it3 = hashSet2.iterator();
            while (it3.hasNext()) {
                String next2 = it3.next();
                if (next2.startsWith("CUSTOM,")) {
                    SparseArray sparseArray = new SparseArray();
                    String str = next2.split(",")[c11];
                    Iterator<d> it4 = this.f17010z.iterator();
                    while (it4.hasNext()) {
                        d next3 = it4.next();
                        HashMap<String, androidx.constraintlayout.widget.a> hashMap2 = next3.f16868e;
                        if (hashMap2 != null && (aVar3 = hashMap2.get(str)) != null) {
                            sparseArray.append(next3.f16864a, aVar3);
                        }
                    }
                    f11 = y.c.e(next2, sparseArray);
                } else {
                    f11 = y.c.f(next2);
                }
                if (f11 != null) {
                    f11.c(next2);
                    this.B.put(next2, f11);
                }
                c11 = 1;
            }
            ArrayList<d> arrayList3 = this.f17010z;
            if (arrayList3 != null) {
                Iterator<d> it5 = arrayList3.iterator();
                while (it5.hasNext()) {
                    d next4 = it5.next();
                    if (next4 instanceof e) {
                        next4.a(this.B);
                    }
                }
            }
            this.f16992h.a(this.B, 0);
            this.f16993i.a(this.B, 100);
            for (String str2 : this.B.keySet()) {
                int intValue = (!hashMap.containsKey(str2) || (num = hashMap.get(str2)) == null) ? 0 : num.intValue();
                y.c cVar = this.B.get(str2);
                if (cVar != null) {
                    cVar.d(intValue);
                }
            }
        }
        if (!hashSet.isEmpty()) {
            if (this.A == null) {
                this.A = new HashMap<>();
            }
            Iterator<String> it6 = hashSet.iterator();
            while (it6.hasNext()) {
                String next5 = it6.next();
                if (!this.A.containsKey(next5)) {
                    if (next5.startsWith("CUSTOM,")) {
                        SparseArray sparseArray2 = new SparseArray();
                        String str3 = next5.split(",")[1];
                        Iterator<d> it7 = this.f17010z.iterator();
                        while (it7.hasNext()) {
                            d next6 = it7.next();
                            HashMap<String, androidx.constraintlayout.widget.a> hashMap3 = next6.f16868e;
                            if (hashMap3 != null && (aVar2 = hashMap3.get(str3)) != null) {
                                sparseArray2.append(next6.f16864a, aVar2);
                            }
                        }
                        h10 = y.d.g(next5, sparseArray2);
                    } else {
                        h10 = y.d.h(next5, j10);
                    }
                    if (h10 != null) {
                        h10.d(next5);
                        this.A.put(next5, h10);
                    }
                }
            }
            ArrayList<d> arrayList4 = this.f17010z;
            if (arrayList4 != null) {
                Iterator<d> it8 = arrayList4.iterator();
                while (it8.hasNext()) {
                    d next7 = it8.next();
                    if (next7 instanceof j) {
                        ((j) next7).P(this.A);
                    }
                }
            }
            for (String str4 : this.A.keySet()) {
                this.A.get(str4).e(hashMap.containsKey(str4) ? hashMap.get(str4).intValue() : 0);
            }
        }
        int i14 = 2;
        int size = this.f17008x.size() + 2;
        q[] qVarArr = new q[size];
        qVarArr[0] = this.f16990f;
        qVarArr[size - 1] = this.f16991g;
        if (this.f17008x.size() > 0 && this.f16989e == -1) {
            this.f16989e = 0;
        }
        Iterator<q> it9 = this.f17008x.iterator();
        int i15 = 1;
        while (it9.hasNext()) {
            qVarArr[i15] = it9.next();
            i15++;
        }
        HashSet hashSet4 = new HashSet();
        for (String str5 : this.f16991g.f17119t.keySet()) {
            if (this.f16990f.f17119t.containsKey(str5)) {
                if (!hashSet2.contains("CUSTOM," + str5)) {
                    hashSet4.add(str5);
                }
            }
        }
        String[] strArr2 = (String[]) hashSet4.toArray(new String[0]);
        this.f17004t = strArr2;
        this.f17005u = new int[strArr2.length];
        int i16 = 0;
        while (true) {
            strArr = this.f17004t;
            if (i16 >= strArr.length) {
                break;
            }
            String str6 = strArr[i16];
            this.f17005u[i16] = 0;
            int i17 = 0;
            while (true) {
                if (i17 >= size) {
                    break;
                }
                if (qVarArr[i17].f17119t.containsKey(str6) && (aVar = qVarArr[i17].f17119t.get(str6)) != null) {
                    int[] iArr = this.f17005u;
                    iArr[i16] = iArr[i16] + aVar.g();
                    break;
                }
                i17++;
            }
            i16++;
        }
        boolean z10 = qVarArr[0].f17115p != d.f16863f;
        int length = 18 + strArr.length;
        boolean[] zArr = new boolean[length];
        for (int i18 = 1; i18 < size; i18++) {
            qVarArr[i18].c(qVarArr[i18 - 1], zArr, this.f17004t, z10);
        }
        int i19 = 0;
        for (int i20 = 1; i20 < length; i20++) {
            if (zArr[i20]) {
                i19++;
            }
        }
        this.f17001q = new int[i19];
        int max = Math.max(2, i19);
        this.f17002r = new double[max];
        this.f17003s = new double[max];
        int i21 = 0;
        for (int i22 = 1; i22 < length; i22++) {
            if (zArr[i22]) {
                this.f17001q[i21] = i22;
                i21++;
            }
        }
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) double.class, size, this.f17001q.length);
        double[] dArr2 = new double[size];
        for (int i23 = 0; i23 < size; i23++) {
            qVarArr[i23].d(dArr[i23], this.f17001q);
            dArr2[i23] = qVarArr[i23].f17107h;
        }
        int i24 = 0;
        while (true) {
            int[] iArr2 = this.f17001q;
            if (i24 >= iArr2.length) {
                break;
            }
            if (iArr2[i24] < q.f17104x.length) {
                String str7 = q.f17104x[this.f17001q[i24]] + " [";
                for (int i25 = 0; i25 < size; i25++) {
                    str7 = str7 + dArr[i25][i24];
                }
            }
            i24++;
        }
        this.f16994j = new u.b[this.f17004t.length + 1];
        int i26 = 0;
        while (true) {
            String[] strArr3 = this.f17004t;
            if (i26 >= strArr3.length) {
                break;
            }
            String str8 = strArr3[i26];
            int i27 = 0;
            double[] dArr3 = null;
            int i28 = 0;
            double[][] dArr4 = null;
            while (i27 < size) {
                if (qVarArr[i27].j(str8)) {
                    if (dArr4 == null) {
                        dArr3 = new double[size];
                        int[] iArr3 = new int[i14];
                        iArr3[1] = qVarArr[i27].h(str8);
                        iArr3[c10] = size;
                        dArr4 = (double[][]) Array.newInstance((Class<?>) double.class, iArr3);
                    }
                    dArr3[i28] = qVarArr[i27].f17107h;
                    qVarArr[i27].g(str8, dArr4[i28], 0);
                    i28++;
                }
                i27++;
                i14 = 2;
                c10 = 0;
            }
            i26++;
            this.f16994j[i26] = u.b.a(this.f16989e, Arrays.copyOf(dArr3, i28), (double[][]) Arrays.copyOf(dArr4, i28));
            i14 = 2;
            c10 = 0;
        }
        this.f16994j[0] = u.b.a(this.f16989e, dArr2, dArr);
        if (qVarArr[0].f17115p != d.f16863f) {
            int[] iArr4 = new int[size];
            double[] dArr5 = new double[size];
            double[][] dArr6 = (double[][]) Array.newInstance((Class<?>) double.class, size, 2);
            for (int i29 = 0; i29 < size; i29++) {
                iArr4[i29] = qVarArr[i29].f17115p;
                dArr5[i29] = qVarArr[i29].f17107h;
                dArr6[i29][0] = qVarArr[i29].f17109j;
                dArr6[i29][1] = qVarArr[i29].f17110k;
            }
            this.f16995k = u.b.b(iArr4, dArr5, dArr6);
        }
        float f12 = Float.NaN;
        this.C = new HashMap<>();
        if (this.f17010z != null) {
            Iterator<String> it10 = hashSet3.iterator();
            while (it10.hasNext()) {
                String next8 = it10.next();
                y.b h11 = y.b.h(next8);
                if (h11 != null) {
                    if (h11.g() && Float.isNaN(f12)) {
                        f12 = n();
                    }
                    h11.e(next8);
                    this.C.put(next8, h11);
                }
            }
            Iterator<d> it11 = this.f17010z.iterator();
            while (it11.hasNext()) {
                d next9 = it11.next();
                if (next9 instanceof f) {
                    ((f) next9).T(this.C);
                }
            }
            Iterator<y.b> it12 = this.C.values().iterator();
            while (it12.hasNext()) {
                it12.next().f(f12);
            }
        }
    }

    public String toString() {
        return " start: x: " + this.f16990f.f17109j + " y: " + this.f16990f.f17110k + " end: x: " + this.f16991g.f17109j + " y: " + this.f16991g.f17110k;
    }
}
