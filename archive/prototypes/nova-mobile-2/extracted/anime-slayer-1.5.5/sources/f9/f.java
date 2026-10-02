package f9;

import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Typeface;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import x8.e;

/* compiled from: LegendRenderer.java */
/* loaded from: classes.dex */
public class f extends k {

    /* renamed from: b, reason: collision with root package name */
    public Paint f6479b;

    /* renamed from: c, reason: collision with root package name */
    public Paint f6480c;

    /* renamed from: d, reason: collision with root package name */
    public x8.e f6481d;

    /* renamed from: e, reason: collision with root package name */
    public List<x8.f> f6482e;

    /* renamed from: f, reason: collision with root package name */
    public Paint.FontMetrics f6483f;

    /* renamed from: g, reason: collision with root package name */
    public Path f6484g;

    /* compiled from: LegendRenderer.java */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f6485a;

        /* renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f6486b;

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ int[] f6487c;

        /* renamed from: d, reason: collision with root package name */
        public static final /* synthetic */ int[] f6488d;

        static {
            int[] iArr = new int[e.c.values().length];
            f6488d = iArr;
            try {
                iArr[e.c.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f6488d[e.c.EMPTY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f6488d[e.c.DEFAULT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f6488d[e.c.CIRCLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f6488d[e.c.SQUARE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f6488d[e.c.LINE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            int[] iArr2 = new int[e.EnumC0417e.values().length];
            f6487c = iArr2;
            try {
                iArr2[e.EnumC0417e.HORIZONTAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f6487c[e.EnumC0417e.VERTICAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            int[] iArr3 = new int[e.f.values().length];
            f6486b = iArr3;
            try {
                iArr3[e.f.TOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f6486b[e.f.BOTTOM.ordinal()] = 2;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f6486b[e.f.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused11) {
            }
            int[] iArr4 = new int[e.d.values().length];
            f6485a = iArr4;
            try {
                iArr4[e.d.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f6485a[e.d.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f6485a[e.d.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused14) {
            }
        }
    }

    public f(g9.j jVar, x8.e eVar) {
        super(jVar);
        this.f6482e = new ArrayList(16);
        this.f6483f = new Paint.FontMetrics();
        this.f6484g = new Path();
        this.f6481d = eVar;
        Paint paint = new Paint(1);
        this.f6479b = paint;
        paint.setTextSize(g9.i.e(9.0f));
        this.f6479b.setTextAlign(Paint.Align.LEFT);
        Paint paint2 = new Paint(1);
        this.f6480c = paint2;
        paint2.setStyle(Paint.Style.FILL);
    }

    /* JADX WARN: Type inference failed for: r4v1, types: [c9.d] */
    /* JADX WARN: Type inference failed for: r7v1, types: [c9.d] */
    public void a(y8.h<?> hVar) {
        y8.h<?> hVar2;
        y8.h<?> hVar3 = hVar;
        if (!this.f6481d.G()) {
            this.f6482e.clear();
            int i10 = 0;
            while (i10 < hVar.f()) {
                ?? e10 = hVar3.e(i10);
                List<Integer> u10 = e10.u();
                int e02 = e10.e0();
                if (e10 instanceof c9.a) {
                    c9.a aVar = (c9.a) e10;
                    if (aVar.T()) {
                        String[] V = aVar.V();
                        for (int i11 = 0; i11 < u10.size() && i11 < aVar.w(); i11++) {
                            this.f6482e.add(new x8.f(V[i11 % V.length], e10.G(), e10.q0(), e10.k0(), e10.z(), u10.get(i11).intValue()));
                        }
                        if (aVar.M() != null) {
                            this.f6482e.add(new x8.f(e10.M(), e.c.NONE, Float.NaN, Float.NaN, null, 1122867));
                        }
                        hVar2 = hVar3;
                        i10++;
                        hVar3 = hVar2;
                    }
                }
                if (e10 instanceof c9.g) {
                    c9.g gVar = (c9.g) e10;
                    for (int i12 = 0; i12 < u10.size() && i12 < e02; i12++) {
                        this.f6482e.add(new x8.f(gVar.l0(i12).j(), e10.G(), e10.q0(), e10.k0(), e10.z(), u10.get(i12).intValue()));
                    }
                    if (gVar.M() != null) {
                        this.f6482e.add(new x8.f(e10.M(), e.c.NONE, Float.NaN, Float.NaN, null, 1122867));
                    }
                } else {
                    if (e10 instanceof c9.c) {
                        c9.c cVar = (c9.c) e10;
                        if (cVar.r0() != 1122867) {
                            int r02 = cVar.r0();
                            int W = cVar.W();
                            this.f6482e.add(new x8.f(null, e10.G(), e10.q0(), e10.k0(), e10.z(), r02));
                            this.f6482e.add(new x8.f(e10.M(), e10.G(), e10.q0(), e10.k0(), e10.z(), W));
                        }
                    }
                    int i13 = 0;
                    while (i13 < u10.size() && i13 < e02) {
                        this.f6482e.add(new x8.f((i13 >= u10.size() + (-1) || i13 >= e02 + (-1)) ? hVar.e(i10).M() : null, e10.G(), e10.q0(), e10.k0(), e10.z(), u10.get(i13).intValue()));
                        i13++;
                    }
                }
                hVar2 = hVar;
                i10++;
                hVar3 = hVar2;
            }
            if (this.f6481d.q() != null) {
                Collections.addAll(this.f6482e, this.f6481d.q());
            }
            this.f6481d.I(this.f6482e);
        }
        Typeface c10 = this.f6481d.c();
        if (c10 != null) {
            this.f6479b.setTypeface(c10);
        }
        this.f6479b.setTextSize(this.f6481d.b());
        this.f6479b.setColor(this.f6481d.a());
        this.f6481d.k(this.f6479b, this.f6512a);
    }

    public void b(Canvas canvas, float f10, float f11, x8.f fVar, x8.e eVar) {
        int i10 = fVar.f16210f;
        if (i10 == 1122868 || i10 == 1122867 || i10 == 0) {
            return;
        }
        int save = canvas.save();
        e.c cVar = fVar.f16206b;
        if (cVar == e.c.DEFAULT) {
            cVar = eVar.r();
        }
        this.f6480c.setColor(fVar.f16210f);
        float e10 = g9.i.e(Float.isNaN(fVar.f16207c) ? eVar.u() : fVar.f16207c);
        float f12 = e10 / 2.0f;
        int i11 = a.f6488d[cVar.ordinal()];
        if (i11 == 3 || i11 == 4) {
            this.f6480c.setStyle(Paint.Style.FILL);
            canvas.drawCircle(f10 + f12, f11, f12, this.f6480c);
        } else if (i11 == 5) {
            this.f6480c.setStyle(Paint.Style.FILL);
            canvas.drawRect(f10, f11 - f12, f10 + e10, f11 + f12, this.f6480c);
        } else if (i11 == 6) {
            float e11 = g9.i.e(Float.isNaN(fVar.f16208d) ? eVar.t() : fVar.f16208d);
            DashPathEffect dashPathEffect = fVar.f16209e;
            if (dashPathEffect == null) {
                dashPathEffect = eVar.s();
            }
            this.f6480c.setStyle(Paint.Style.STROKE);
            this.f6480c.setStrokeWidth(e11);
            this.f6480c.setPathEffect(dashPathEffect);
            this.f6484g.reset();
            this.f6484g.moveTo(f10, f11);
            this.f6484g.lineTo(f10 + e10, f11);
            canvas.drawPath(this.f6484g, this.f6480c);
        }
        canvas.restoreToCount(save);
    }

    public void c(Canvas canvas, float f10, float f11, String str) {
        canvas.drawText(str, f10, f11, this.f6479b);
    }

    public Paint d() {
        return this.f6479b;
    }

    public void e(Canvas canvas) {
        float f10;
        float f11;
        float f12;
        float f13;
        float f14;
        List<Boolean> list;
        List<g9.b> list2;
        int i10;
        float f15;
        float f16;
        float f17;
        float f18;
        float f19;
        float j10;
        float f20;
        float f21;
        float f22;
        e.b bVar;
        x8.f fVar;
        float f23;
        float f24;
        float i11;
        float h10;
        double d10;
        if (this.f6481d.f()) {
            Typeface c10 = this.f6481d.c();
            if (c10 != null) {
                this.f6479b.setTypeface(c10);
            }
            this.f6479b.setTextSize(this.f6481d.b());
            this.f6479b.setColor(this.f6481d.a());
            float l10 = g9.i.l(this.f6479b, this.f6483f);
            float n10 = g9.i.n(this.f6479b, this.f6483f) + g9.i.e(this.f6481d.E());
            float a10 = l10 - (g9.i.a(this.f6479b, "ABC") / 2.0f);
            x8.f[] p10 = this.f6481d.p();
            float e10 = g9.i.e(this.f6481d.v());
            float e11 = g9.i.e(this.f6481d.D());
            e.EnumC0417e A = this.f6481d.A();
            e.d w10 = this.f6481d.w();
            e.f C = this.f6481d.C();
            e.b o10 = this.f6481d.o();
            float e12 = g9.i.e(this.f6481d.u());
            float e13 = g9.i.e(this.f6481d.B());
            float e14 = this.f6481d.e();
            float d11 = this.f6481d.d();
            int i12 = a.f6485a[w10.ordinal()];
            float f25 = e13;
            float f26 = e11;
            if (i12 == 1) {
                f10 = l10;
                f11 = n10;
                if (A != e.EnumC0417e.VERTICAL) {
                    d11 += this.f6512a.h();
                }
                f12 = o10 == e.b.RIGHT_TO_LEFT ? d11 + this.f6481d.f16180x : d11;
            } else if (i12 == 2) {
                f10 = l10;
                f11 = n10;
                if (A == e.EnumC0417e.VERTICAL) {
                    i11 = this.f6512a.m();
                } else {
                    i11 = this.f6512a.i();
                }
                f12 = i11 - d11;
                if (o10 == e.b.LEFT_TO_RIGHT) {
                    f12 -= this.f6481d.f16180x;
                }
            } else if (i12 != 3) {
                f10 = l10;
                f11 = n10;
                f12 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            } else {
                e.EnumC0417e enumC0417e = e.EnumC0417e.VERTICAL;
                if (A == enumC0417e) {
                    h10 = this.f6512a.m() / 2.0f;
                } else {
                    h10 = this.f6512a.h() + (this.f6512a.k() / 2.0f);
                }
                e.b bVar2 = e.b.LEFT_TO_RIGHT;
                f11 = n10;
                f12 = h10 + (o10 == bVar2 ? d11 : -d11);
                if (A == enumC0417e) {
                    double d12 = f12;
                    if (o10 == bVar2) {
                        f10 = l10;
                        double d13 = -this.f6481d.f16180x;
                        Double.isNaN(d13);
                        double d14 = d11;
                        Double.isNaN(d14);
                        d10 = (d13 / 2.0d) + d14;
                    } else {
                        f10 = l10;
                        double d15 = this.f6481d.f16180x;
                        Double.isNaN(d15);
                        double d16 = d11;
                        Double.isNaN(d16);
                        d10 = (d15 / 2.0d) - d16;
                    }
                    Double.isNaN(d12);
                    f12 = (float) (d12 + d10);
                } else {
                    f10 = l10;
                }
            }
            int i13 = a.f6487c[A.ordinal()];
            if (i13 != 1) {
                if (i13 != 2) {
                    return;
                }
                int i14 = a.f6486b[C.ordinal()];
                if (i14 == 1) {
                    j10 = (w10 == e.d.CENTER ? StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD : this.f6512a.j()) + e14;
                } else if (i14 == 2) {
                    if (w10 == e.d.CENTER) {
                        f24 = this.f6512a.l();
                    } else {
                        f24 = this.f6512a.f();
                    }
                    j10 = f24 - (this.f6481d.f16181y + e14);
                } else if (i14 != 3) {
                    j10 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                } else {
                    float l11 = this.f6512a.l() / 2.0f;
                    x8.e eVar = this.f6481d;
                    j10 = (l11 - (eVar.f16181y / 2.0f)) + eVar.e();
                }
                float f27 = j10;
                boolean z10 = false;
                int i15 = 0;
                float f28 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                while (i15 < p10.length) {
                    x8.f fVar2 = p10[i15];
                    boolean z11 = fVar2.f16206b != e.c.NONE;
                    float e15 = Float.isNaN(fVar2.f16207c) ? e12 : g9.i.e(fVar2.f16207c);
                    if (z11) {
                        e.b bVar3 = e.b.LEFT_TO_RIGHT;
                        f23 = o10 == bVar3 ? f12 + f28 : f12 - (e15 - f28);
                        f21 = a10;
                        f22 = f25;
                        f20 = f12;
                        bVar = o10;
                        b(canvas, f23, f27 + a10, fVar2, this.f6481d);
                        if (bVar == bVar3) {
                            f23 += e15;
                        }
                        fVar = fVar2;
                    } else {
                        f20 = f12;
                        f21 = a10;
                        f22 = f25;
                        bVar = o10;
                        fVar = fVar2;
                        f23 = f20;
                    }
                    if (fVar.f16205a != null) {
                        if (z11 && !z10) {
                            f23 += bVar == e.b.LEFT_TO_RIGHT ? e10 : -e10;
                        } else if (z10) {
                            f23 = f20;
                        }
                        if (bVar == e.b.RIGHT_TO_LEFT) {
                            f23 -= g9.i.d(this.f6479b, r1);
                        }
                        float f29 = f23;
                        if (!z10) {
                            c(canvas, f29, f27 + f10, fVar.f16205a);
                        } else {
                            f27 += f10 + f11;
                            c(canvas, f29, f27 + f10, fVar.f16205a);
                        }
                        f27 += f10 + f11;
                        f28 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                    } else {
                        f28 += e15 + f22;
                        z10 = true;
                    }
                    i15++;
                    o10 = bVar;
                    f25 = f22;
                    a10 = f21;
                    f12 = f20;
                }
                return;
            }
            float f30 = f12;
            float f31 = f25;
            List<g9.b> n11 = this.f6481d.n();
            List<g9.b> m10 = this.f6481d.m();
            List<Boolean> l12 = this.f6481d.l();
            int i16 = a.f6486b[C.ordinal()];
            if (i16 != 1) {
                if (i16 != 2) {
                    e14 = i16 != 3 ? StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD : e14 + ((this.f6512a.l() - this.f6481d.f16181y) / 2.0f);
                } else {
                    e14 = (this.f6512a.l() - e14) - this.f6481d.f16181y;
                }
            }
            int length = p10.length;
            float f32 = f30;
            int i17 = 0;
            int i18 = 0;
            while (i17 < length) {
                float f33 = f31;
                x8.f fVar3 = p10[i17];
                float f34 = f32;
                int i19 = length;
                boolean z12 = fVar3.f16206b != e.c.NONE;
                float e16 = Float.isNaN(fVar3.f16207c) ? e12 : g9.i.e(fVar3.f16207c);
                if (i17 >= l12.size() || !l12.get(i17).booleanValue()) {
                    f13 = f34;
                    f14 = e14;
                } else {
                    f14 = e14 + f10 + f11;
                    f13 = f30;
                }
                if (f13 == f30 && w10 == e.d.CENTER && i18 < n11.size()) {
                    if (o10 == e.b.RIGHT_TO_LEFT) {
                        f19 = n11.get(i18).f7048c;
                    } else {
                        f19 = -n11.get(i18).f7048c;
                    }
                    f13 += f19 / 2.0f;
                    i18++;
                }
                int i20 = i18;
                boolean z13 = fVar3.f16205a == null;
                if (z12) {
                    if (o10 == e.b.RIGHT_TO_LEFT) {
                        f13 -= e16;
                    }
                    float f35 = f13;
                    list2 = n11;
                    i10 = i17;
                    list = l12;
                    b(canvas, f35, f14 + a10, fVar3, this.f6481d);
                    f13 = o10 == e.b.LEFT_TO_RIGHT ? f35 + e16 : f35;
                } else {
                    list = l12;
                    list2 = n11;
                    i10 = i17;
                }
                if (!z13) {
                    if (z12) {
                        f13 += o10 == e.b.RIGHT_TO_LEFT ? -e10 : e10;
                    }
                    e.b bVar4 = e.b.RIGHT_TO_LEFT;
                    if (o10 == bVar4) {
                        f13 -= m10.get(i10).f7048c;
                    }
                    c(canvas, f13, f14 + f10, fVar3.f16205a);
                    if (o10 == e.b.LEFT_TO_RIGHT) {
                        f13 += m10.get(i10).f7048c;
                    }
                    if (o10 == bVar4) {
                        f15 = f26;
                        f18 = -f15;
                    } else {
                        f15 = f26;
                        f18 = f15;
                    }
                    f32 = f13 + f18;
                    f16 = f33;
                } else {
                    f15 = f26;
                    if (o10 == e.b.RIGHT_TO_LEFT) {
                        f16 = f33;
                        f17 = -f16;
                    } else {
                        f16 = f33;
                        f17 = f16;
                    }
                    f32 = f13 + f17;
                }
                f26 = f15;
                f31 = f16;
                i17 = i10 + 1;
                e14 = f14;
                length = i19;
                i18 = i20;
                n11 = list2;
                l12 = list;
            }
        }
    }
}
