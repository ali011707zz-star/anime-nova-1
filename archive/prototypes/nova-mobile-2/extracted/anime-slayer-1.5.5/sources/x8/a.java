package x8;

import android.graphics.DashPathEffect;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.util.ArrayList;
import java.util.List;

/* compiled from: AxisBase.java */
/* loaded from: classes.dex */
public abstract class a extends b {

    /* renamed from: g, reason: collision with root package name */
    public z8.c f16134g;

    /* renamed from: n, reason: collision with root package name */
    public int f16141n;

    /* renamed from: o, reason: collision with root package name */
    public int f16142o;

    /* renamed from: z, reason: collision with root package name */
    public List<g> f16153z;

    /* renamed from: h, reason: collision with root package name */
    public int f16135h = -7829368;

    /* renamed from: i, reason: collision with root package name */
    public float f16136i = 1.0f;

    /* renamed from: j, reason: collision with root package name */
    public int f16137j = -7829368;

    /* renamed from: k, reason: collision with root package name */
    public float f16138k = 1.0f;

    /* renamed from: l, reason: collision with root package name */
    public float[] f16139l = new float[0];

    /* renamed from: m, reason: collision with root package name */
    public float[] f16140m = new float[0];

    /* renamed from: p, reason: collision with root package name */
    public int f16143p = 6;

    /* renamed from: q, reason: collision with root package name */
    public float f16144q = 1.0f;

    /* renamed from: r, reason: collision with root package name */
    public boolean f16145r = false;

    /* renamed from: s, reason: collision with root package name */
    public boolean f16146s = false;

    /* renamed from: t, reason: collision with root package name */
    public boolean f16147t = true;

    /* renamed from: u, reason: collision with root package name */
    public boolean f16148u = true;

    /* renamed from: v, reason: collision with root package name */
    public boolean f16149v = true;

    /* renamed from: w, reason: collision with root package name */
    public boolean f16150w = false;

    /* renamed from: x, reason: collision with root package name */
    public DashPathEffect f16151x = null;

    /* renamed from: y, reason: collision with root package name */
    public DashPathEffect f16152y = null;
    public boolean A = false;
    public boolean B = true;
    public float C = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
    public float D = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
    public boolean E = false;
    public boolean F = false;
    public float G = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
    public float H = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
    public float I = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;

    public a() {
        this.f16158e = g9.i.e(10.0f);
        this.f16155b = g9.i.e(5.0f);
        this.f16156c = g9.i.e(5.0f);
        this.f16153z = new ArrayList();
    }

    public boolean A() {
        return this.f16148u;
    }

    public boolean B() {
        return this.B;
    }

    public boolean C() {
        return this.f16147t;
    }

    public boolean D() {
        return this.f16149v;
    }

    public boolean E() {
        return this.A;
    }

    public boolean F() {
        return this.f16146s;
    }

    public boolean G() {
        return this.f16145r;
    }

    public void H(float f10) {
        this.E = true;
        this.H = f10;
        this.I = Math.abs(this.G - f10);
    }

    public void I(boolean z10) {
        this.f16147t = z10;
    }

    public void J(float f10) {
        this.f16144q = f10;
        this.f16145r = true;
    }

    public void K(int i10) {
        if (i10 > 25) {
            i10 = 25;
        }
        if (i10 < 2) {
            i10 = 2;
        }
        this.f16143p = i10;
        this.f16146s = false;
    }

    public void L(int i10, boolean z10) {
        K(i10);
        this.f16146s = z10;
    }

    public void M(float f10) {
        this.D = f10;
    }

    public void N(float f10) {
        this.C = f10;
    }

    public void O(z8.c cVar) {
        if (cVar == null) {
            this.f16134g = new z8.a(this.f16142o);
        } else {
            this.f16134g = cVar;
        }
    }

    public void k(float f10, float f11) {
        float f12 = this.E ? this.H : f10 - this.C;
        float f13 = this.F ? this.G : f11 + this.D;
        if (Math.abs(f13 - f12) == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            f13 += 1.0f;
            f12 -= 1.0f;
        }
        this.H = f12;
        this.G = f13;
        this.I = Math.abs(f13 - f12);
    }

    public void l() {
        this.f16151x = null;
    }

    public void m() {
        this.f16152y = null;
    }

    public int n() {
        return this.f16137j;
    }

    public DashPathEffect o() {
        return this.f16151x;
    }

    public float p() {
        return this.f16138k;
    }

    public String q(int i10) {
        return (i10 < 0 || i10 >= this.f16139l.length) ? "" : y().a(this.f16139l[i10], this);
    }

    public float r() {
        return this.f16144q;
    }

    public int s() {
        return this.f16135h;
    }

    public DashPathEffect t() {
        return this.f16152y;
    }

    public float u() {
        return this.f16136i;
    }

    public int v() {
        return this.f16143p;
    }

    public List<g> w() {
        return this.f16153z;
    }

    public String x() {
        String str = "";
        for (int i10 = 0; i10 < this.f16139l.length; i10++) {
            String q10 = q(i10);
            if (q10 != null && str.length() < q10.length()) {
                str = q10;
            }
        }
        return str;
    }

    public z8.c y() {
        z8.c cVar = this.f16134g;
        if (cVar == null || ((cVar instanceof z8.a) && ((z8.a) cVar).g() != this.f16142o)) {
            this.f16134g = new z8.a(this.f16142o);
        }
        return this.f16134g;
    }

    public boolean z() {
        return this.f16150w && this.f16141n > 0;
    }
}
