package x8;

import android.graphics.DashPathEffect;
import android.graphics.Paint;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import g9.j;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Legend.java */
/* loaded from: classes.dex */
public class e extends x8.b {

    /* renamed from: h, reason: collision with root package name */
    public x8.f[] f16164h;

    /* renamed from: g, reason: collision with root package name */
    public x8.f[] f16163g = new x8.f[0];

    /* renamed from: i, reason: collision with root package name */
    public boolean f16165i = false;

    /* renamed from: j, reason: collision with root package name */
    public d f16166j = d.LEFT;

    /* renamed from: k, reason: collision with root package name */
    public f f16167k = f.BOTTOM;

    /* renamed from: l, reason: collision with root package name */
    public EnumC0417e f16168l = EnumC0417e.HORIZONTAL;

    /* renamed from: m, reason: collision with root package name */
    public boolean f16169m = false;

    /* renamed from: n, reason: collision with root package name */
    public b f16170n = b.LEFT_TO_RIGHT;

    /* renamed from: o, reason: collision with root package name */
    public c f16171o = c.SQUARE;

    /* renamed from: p, reason: collision with root package name */
    public float f16172p = 8.0f;

    /* renamed from: q, reason: collision with root package name */
    public float f16173q = 3.0f;

    /* renamed from: r, reason: collision with root package name */
    public DashPathEffect f16174r = null;

    /* renamed from: s, reason: collision with root package name */
    public float f16175s = 6.0f;

    /* renamed from: t, reason: collision with root package name */
    public float f16176t = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;

    /* renamed from: u, reason: collision with root package name */
    public float f16177u = 5.0f;

    /* renamed from: v, reason: collision with root package name */
    public float f16178v = 3.0f;

    /* renamed from: w, reason: collision with root package name */
    public float f16179w = 0.95f;

    /* renamed from: x, reason: collision with root package name */
    public float f16180x = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;

    /* renamed from: y, reason: collision with root package name */
    public float f16181y = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;

    /* renamed from: z, reason: collision with root package name */
    public float f16182z = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
    public float A = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
    public boolean B = false;
    public List<g9.b> C = new ArrayList(16);
    public List<Boolean> D = new ArrayList(16);
    public List<g9.b> E = new ArrayList(16);

    /* compiled from: Legend.java */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f16183a;

        static {
            int[] iArr = new int[EnumC0417e.values().length];
            f16183a = iArr;
            try {
                iArr[EnumC0417e.VERTICAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16183a[EnumC0417e.HORIZONTAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* compiled from: Legend.java */
    /* loaded from: classes.dex */
    public enum b {
        LEFT_TO_RIGHT,
        RIGHT_TO_LEFT
    }

    /* compiled from: Legend.java */
    /* loaded from: classes.dex */
    public enum c {
        NONE,
        EMPTY,
        DEFAULT,
        SQUARE,
        CIRCLE,
        LINE
    }

    /* compiled from: Legend.java */
    /* loaded from: classes.dex */
    public enum d {
        LEFT,
        CENTER,
        RIGHT
    }

    /* compiled from: Legend.java */
    /* renamed from: x8.e$e, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public enum EnumC0417e {
        HORIZONTAL,
        VERTICAL
    }

    /* compiled from: Legend.java */
    /* loaded from: classes.dex */
    public enum f {
        TOP,
        CENTER,
        BOTTOM
    }

    public e() {
        this.f16158e = g9.i.e(10.0f);
        this.f16155b = g9.i.e(5.0f);
        this.f16156c = g9.i.e(3.0f);
    }

    public EnumC0417e A() {
        return this.f16168l;
    }

    public float B() {
        return this.f16178v;
    }

    public f C() {
        return this.f16167k;
    }

    public float D() {
        return this.f16175s;
    }

    public float E() {
        return this.f16176t;
    }

    public boolean F() {
        return this.f16169m;
    }

    public boolean G() {
        return this.f16165i;
    }

    public void H(boolean z10) {
        this.f16169m = z10;
    }

    public void I(List<x8.f> list) {
        this.f16163g = (x8.f[]) list.toArray(new x8.f[list.size()]);
    }

    public void J(d dVar) {
        this.f16166j = dVar;
    }

    public void K(EnumC0417e enumC0417e) {
        this.f16168l = enumC0417e;
    }

    public void L(f fVar) {
        this.f16167k = fVar;
    }

    public void M(float f10) {
        this.f16175s = f10;
    }

    public void N(float f10) {
        this.f16176t = f10;
    }

    public void k(Paint paint, j jVar) {
        float f10;
        float f11;
        float f12;
        float e10 = g9.i.e(this.f16172p);
        float e11 = g9.i.e(this.f16178v);
        float e12 = g9.i.e(this.f16177u);
        float e13 = g9.i.e(this.f16175s);
        float e14 = g9.i.e(this.f16176t);
        boolean z10 = this.B;
        x8.f[] fVarArr = this.f16163g;
        int length = fVarArr.length;
        this.A = z(paint);
        this.f16182z = y(paint);
        int i10 = a.f16183a[this.f16168l.ordinal()];
        if (i10 == 1) {
            float k10 = g9.i.k(paint);
            float f13 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            float f14 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            float f15 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            boolean z11 = false;
            for (int i11 = 0; i11 < length; i11++) {
                x8.f fVar = fVarArr[i11];
                boolean z12 = fVar.f16206b != c.NONE;
                float e15 = Float.isNaN(fVar.f16207c) ? e10 : g9.i.e(fVar.f16207c);
                String str = fVar.f16205a;
                if (!z11) {
                    f15 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                }
                if (z12) {
                    if (z11) {
                        f15 += e11;
                    }
                    f15 += e15;
                }
                if (str != null) {
                    if (z12 && !z11) {
                        f15 += e12;
                    } else if (z11) {
                        f13 = Math.max(f13, f15);
                        f14 += k10 + e14;
                        f15 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                        z11 = false;
                    }
                    f15 += g9.i.d(paint, str);
                    if (i11 < length - 1) {
                        f14 += k10 + e14;
                    }
                } else {
                    f15 += e15;
                    if (i11 < length - 1) {
                        f15 += e11;
                    }
                    z11 = true;
                }
                f13 = Math.max(f13, f15);
            }
            this.f16180x = f13;
            this.f16181y = f14;
        } else if (i10 == 2) {
            float k11 = g9.i.k(paint);
            float m10 = g9.i.m(paint) + e14;
            float k12 = jVar.k() * this.f16179w;
            this.D.clear();
            this.C.clear();
            this.E.clear();
            int i12 = 0;
            float f16 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            int i13 = -1;
            float f17 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            float f18 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            while (i12 < length) {
                x8.f fVar2 = fVarArr[i12];
                float f19 = e10;
                float f20 = e13;
                boolean z13 = fVar2.f16206b != c.NONE;
                float e16 = Float.isNaN(fVar2.f16207c) ? f19 : g9.i.e(fVar2.f16207c);
                String str2 = fVar2.f16205a;
                x8.f[] fVarArr2 = fVarArr;
                float f21 = m10;
                this.D.add(Boolean.FALSE);
                float f22 = i13 == -1 ? StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD : f17 + e11;
                if (str2 != null) {
                    f10 = e11;
                    this.C.add(g9.i.b(paint, str2));
                    f11 = f22 + (z13 ? e12 + e16 : StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) + this.C.get(i12).f7048c;
                } else {
                    f10 = e11;
                    float f23 = e16;
                    this.C.add(g9.b.b(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD));
                    f11 = f22 + (z13 ? f23 : StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
                    if (i13 == -1) {
                        i13 = i12;
                    }
                }
                if (str2 != null || i12 == length - 1) {
                    float f24 = f18;
                    float f25 = f24 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD ? StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD : f20;
                    if (!z10 || f24 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD || k12 - f24 >= f25 + f11) {
                        f12 = f24 + f25 + f11;
                    } else {
                        this.E.add(g9.b.b(f24, k11));
                        float max = Math.max(f16, f24);
                        this.D.set(i13 > -1 ? i13 : i12, Boolean.TRUE);
                        f16 = max;
                        f12 = f11;
                    }
                    if (i12 == length - 1) {
                        this.E.add(g9.b.b(f12, k11));
                        f16 = Math.max(f16, f12);
                    }
                    f18 = f12;
                }
                if (str2 != null) {
                    i13 = -1;
                }
                i12++;
                e11 = f10;
                e10 = f19;
                e13 = f20;
                m10 = f21;
                f17 = f11;
                fVarArr = fVarArr2;
            }
            float f26 = m10;
            this.f16180x = f16;
            this.f16181y = (k11 * this.E.size()) + (f26 * (this.E.size() == 0 ? 0 : this.E.size() - 1));
        }
        this.f16181y += this.f16156c;
        this.f16180x += this.f16155b;
    }

    public List<Boolean> l() {
        return this.D;
    }

    public List<g9.b> m() {
        return this.C;
    }

    public List<g9.b> n() {
        return this.E;
    }

    public b o() {
        return this.f16170n;
    }

    public x8.f[] p() {
        return this.f16163g;
    }

    public x8.f[] q() {
        return this.f16164h;
    }

    public c r() {
        return this.f16171o;
    }

    public DashPathEffect s() {
        return this.f16174r;
    }

    public float t() {
        return this.f16173q;
    }

    public float u() {
        return this.f16172p;
    }

    public float v() {
        return this.f16177u;
    }

    public d w() {
        return this.f16166j;
    }

    public float x() {
        return this.f16179w;
    }

    public float y(Paint paint) {
        x8.f[] fVarArr = this.f16163g;
        float f10 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        for (x8.f fVar : fVarArr) {
            String str = fVar.f16205a;
            if (str != null) {
                float a10 = g9.i.a(paint, str);
                if (a10 > f10) {
                    f10 = a10;
                }
            }
        }
        return f10;
    }

    public float z(Paint paint) {
        float e10 = g9.i.e(this.f16177u);
        x8.f[] fVarArr = this.f16163g;
        float f10 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        float f11 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        for (x8.f fVar : fVarArr) {
            float e11 = g9.i.e(Float.isNaN(fVar.f16207c) ? this.f16172p : fVar.f16207c);
            if (e11 > f11) {
                f11 = e11;
            }
            String str = fVar.f16205a;
            if (str != null) {
                float d10 = g9.i.d(paint, str);
                if (d10 > f10) {
                    f10 = d10;
                }
            }
        }
        return f10 + f11 + e10;
    }
}
