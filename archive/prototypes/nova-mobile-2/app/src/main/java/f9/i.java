package f9;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import com.github.mikephil.charting.charts.PieChart;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.google.android.material.shadow.ShadowDrawableWrapper;
import java.lang.ref.WeakReference;
import java.util.List;
import y8.l;

/* compiled from: PieChartRenderer.java */
/* loaded from: classes.dex */
public class i extends d {

    /* renamed from: g, reason: collision with root package name */
    public PieChart f6490g;

    /* renamed from: h, reason: collision with root package name */
    public Paint f6491h;

    /* renamed from: i, reason: collision with root package name */
    public Paint f6492i;

    /* renamed from: j, reason: collision with root package name */
    public Paint f6493j;

    /* renamed from: k, reason: collision with root package name */
    public TextPaint f6494k;

    /* renamed from: l, reason: collision with root package name */
    public Paint f6495l;

    /* renamed from: m, reason: collision with root package name */
    public StaticLayout f6496m;

    /* renamed from: n, reason: collision with root package name */
    public CharSequence f6497n;

    /* renamed from: o, reason: collision with root package name */
    public RectF f6498o;

    /* renamed from: p, reason: collision with root package name */
    public RectF[] f6499p;

    /* renamed from: q, reason: collision with root package name */
    public WeakReference<Bitmap> f6500q;

    /* renamed from: r, reason: collision with root package name */
    public Canvas f6501r;

    /* renamed from: s, reason: collision with root package name */
    public Path f6502s;

    /* renamed from: t, reason: collision with root package name */
    public RectF f6503t;

    /* renamed from: u, reason: collision with root package name */
    public Path f6504u;

    /* renamed from: v, reason: collision with root package name */
    public Path f6505v;

    /* renamed from: w, reason: collision with root package name */
    public RectF f6506w;

    public i(PieChart pieChart, u8.a aVar, g9.j jVar) {
        super(aVar, jVar);
        this.f6498o = new RectF();
        this.f6499p = new RectF[]{new RectF(), new RectF(), new RectF()};
        this.f6502s = new Path();
        this.f6503t = new RectF();
        this.f6504u = new Path();
        this.f6505v = new Path();
        this.f6506w = new RectF();
        this.f6490g = pieChart;
        Paint paint = new Paint(1);
        this.f6491h = paint;
        paint.setColor(-1);
        this.f6491h.setStyle(Paint.Style.FILL);
        Paint paint2 = new Paint(1);
        this.f6492i = paint2;
        paint2.setColor(-1);
        this.f6492i.setStyle(Paint.Style.FILL);
        this.f6492i.setAlpha(105);
        TextPaint textPaint = new TextPaint(1);
        this.f6494k = textPaint;
        textPaint.setColor(-16777216);
        this.f6494k.setTextSize(g9.i.e(12.0f));
        this.f6477f.setTextSize(g9.i.e(13.0f));
        this.f6477f.setColor(-1);
        this.f6477f.setTextAlign(Paint.Align.CENTER);
        Paint paint3 = new Paint(1);
        this.f6495l = paint3;
        paint3.setColor(-1);
        this.f6495l.setTextAlign(Paint.Align.CENTER);
        this.f6495l.setTextSize(g9.i.e(13.0f));
        Paint paint4 = new Paint(1);
        this.f6493j = paint4;
        paint4.setStyle(Paint.Style.STROKE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // f9.d
    public void b(Canvas canvas) {
        int m10 = (int) this.f6512a.m();
        int l10 = (int) this.f6512a.l();
        WeakReference<Bitmap> weakReference = this.f6500q;
        Bitmap bitmap = weakReference == null ? null : weakReference.get();
        if (bitmap == null || bitmap.getWidth() != m10 || bitmap.getHeight() != l10) {
            if (m10 <= 0 || l10 <= 0) {
                return;
            }
            bitmap = Bitmap.createBitmap(m10, l10, Bitmap.Config.ARGB_4444);
            this.f6500q = new WeakReference<>(bitmap);
            this.f6501r = new Canvas(bitmap);
        }
        bitmap.eraseColor(0);
        for (c9.g gVar : ((y8.k) this.f6490g.getData()).g()) {
            if (gVar.isVisible() && gVar.e0() > 0) {
                j(canvas, gVar);
            }
        }
    }

    @Override // f9.d
    public void c(Canvas canvas) {
        l(canvas);
        canvas.drawBitmap(this.f6500q.get(), StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, (Paint) null);
        i(canvas);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // f9.d
    public void d(Canvas canvas, a9.c[] cVarArr) {
        int i10;
        RectF rectF;
        float f10;
        float[] fArr;
        boolean z10;
        float f11;
        float f12;
        g9.e eVar;
        c9.g e10;
        float f13;
        int i11;
        float[] fArr2;
        float f14;
        int i12;
        float f15;
        float f16;
        a9.c[] cVarArr2 = cVarArr;
        boolean z11 = this.f6490g.I() && !this.f6490g.K();
        if (z11 && this.f6490g.J()) {
            return;
        }
        float a10 = this.f6473b.a();
        float b10 = this.f6473b.b();
        float rotationAngle = this.f6490g.getRotationAngle();
        float[] drawAngles = this.f6490g.getDrawAngles();
        float[] absoluteAngles = this.f6490g.getAbsoluteAngles();
        g9.e centerCircleBox = this.f6490g.getCenterCircleBox();
        float radius = this.f6490g.getRadius();
        float holeRadius = z11 ? (this.f6490g.getHoleRadius() / 100.0f) * radius : StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        RectF rectF2 = this.f6506w;
        rectF2.set(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        int i13 = 0;
        while (i13 < cVarArr2.length) {
            int g10 = (int) cVarArr2[i13].g();
            if (g10 < drawAngles.length && (e10 = ((y8.k) this.f6490g.getData()).e(cVarArr2[i13].c())) != null && e10.i0()) {
                int e02 = e10.e0();
                int i14 = 0;
                for (int i15 = 0; i15 < e02; i15++) {
                    if (Math.abs(e10.l0(i15).e()) > g9.i.f7081e) {
                        i14++;
                    }
                }
                if (g10 == 0) {
                    i11 = 1;
                    f13 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                } else {
                    f13 = absoluteAngles[g10 - 1] * a10;
                    i11 = 1;
                }
                float k10 = i14 <= i11 ? StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD : e10.k();
                float f17 = drawAngles[g10];
                float N = e10.N();
                int i16 = i13;
                float f18 = radius + N;
                float f19 = holeRadius;
                rectF2.set(this.f6490g.getCircleBox());
                float f20 = -N;
                rectF2.inset(f20, f20);
                boolean z12 = k10 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD && f17 <= 180.0f;
                this.f6474c.setColor(e10.t0(g10));
                float f21 = i14 == 1 ? StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD : k10 / (radius * 0.017453292f);
                float f22 = i14 == 1 ? StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD : k10 / (f18 * 0.017453292f);
                float f23 = rotationAngle + (((f21 / 2.0f) + f13) * b10);
                float f24 = (f17 - f21) * b10;
                float f25 = f24 < StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD ? StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD : f24;
                float f26 = (((f22 / 2.0f) + f13) * b10) + rotationAngle;
                float f27 = (f17 - f22) * b10;
                if (f27 < StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                    f27 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                }
                this.f6502s.reset();
                if (f25 >= 360.0f && f25 % 360.0f <= g9.i.f7081e) {
                    this.f6502s.addCircle(centerCircleBox.f7055c, centerCircleBox.f7056d, f18, Path.Direction.CW);
                    fArr2 = drawAngles;
                    f14 = f13;
                    i12 = i14;
                    z10 = z11;
                } else {
                    fArr2 = drawAngles;
                    f14 = f13;
                    double d10 = f26 * 0.017453292f;
                    i12 = i14;
                    z10 = z11;
                    this.f6502s.moveTo(centerCircleBox.f7055c + (((float) Math.cos(d10)) * f18), centerCircleBox.f7056d + (f18 * ((float) Math.sin(d10))));
                    this.f6502s.arcTo(rectF2, f26, f27);
                }
                if (z12) {
                    double d11 = f23 * 0.017453292f;
                    i10 = i16;
                    rectF = rectF2;
                    f10 = f19;
                    eVar = centerCircleBox;
                    fArr = fArr2;
                    f15 = h(centerCircleBox, radius, f17 * b10, (((float) Math.cos(d11)) * radius) + centerCircleBox.f7055c, centerCircleBox.f7056d + (((float) Math.sin(d11)) * radius), f23, f25);
                } else {
                    rectF = rectF2;
                    eVar = centerCircleBox;
                    i10 = i16;
                    f10 = f19;
                    fArr = fArr2;
                    f15 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                }
                RectF rectF3 = this.f6503t;
                float f28 = eVar.f7055c;
                float f29 = eVar.f7056d;
                rectF3.set(f28 - f10, f29 - f10, f28 + f10, f29 + f10);
                if (!z10 || (f10 <= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD && !z12)) {
                    f11 = a10;
                    f12 = b10;
                    if (f25 % 360.0f > g9.i.f7081e) {
                        if (z12) {
                            double d12 = (f23 + (f25 / 2.0f)) * 0.017453292f;
                            this.f6502s.lineTo(eVar.f7055c + (((float) Math.cos(d12)) * f15), eVar.f7056d + (f15 * ((float) Math.sin(d12))));
                        } else {
                            this.f6502s.lineTo(eVar.f7055c, eVar.f7056d);
                        }
                    }
                } else {
                    if (z12) {
                        if (f15 < StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                            f15 = -f15;
                        }
                        f16 = Math.max(f10, f15);
                    } else {
                        f16 = f10;
                    }
                    float f30 = (i12 == 1 || f16 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) ? StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD : k10 / (f16 * 0.017453292f);
                    float f31 = ((f14 + (f30 / 2.0f)) * b10) + rotationAngle;
                    float f32 = (f17 - f30) * b10;
                    if (f32 < StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                        f32 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                    }
                    float f33 = f31 + f32;
                    if (f25 >= 360.0f && f25 % 360.0f <= g9.i.f7081e) {
                        this.f6502s.addCircle(eVar.f7055c, eVar.f7056d, f16, Path.Direction.CCW);
                        f11 = a10;
                        f12 = b10;
                    } else {
                        double d13 = f33 * 0.017453292f;
                        f11 = a10;
                        f12 = b10;
                        this.f6502s.lineTo(eVar.f7055c + (((float) Math.cos(d13)) * f16), eVar.f7056d + (f16 * ((float) Math.sin(d13))));
                        this.f6502s.arcTo(this.f6503t, f33, -f32);
                    }
                }
                this.f6502s.close();
                this.f6501r.drawPath(this.f6502s, this.f6474c);
            } else {
                i10 = i13;
                rectF = rectF2;
                f10 = holeRadius;
                fArr = drawAngles;
                z10 = z11;
                f11 = a10;
                f12 = b10;
                eVar = centerCircleBox;
            }
            i13 = i10 + 1;
            a10 = f11;
            rectF2 = rectF;
            holeRadius = f10;
            centerCircleBox = eVar;
            b10 = f12;
            drawAngles = fArr;
            z11 = z10;
            cVarArr2 = cVarArr;
        }
        g9.e.f(centerCircleBox);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // f9.d
    public void e(Canvas canvas) {
        int i10;
        float[] fArr;
        float[] fArr2;
        float f10;
        float f11;
        float f12;
        List<c9.g> list;
        g9.e eVar;
        float f13;
        Canvas canvas2;
        l.a aVar;
        float f14;
        float f15;
        float f16;
        float f17;
        float f18;
        g9.e eVar2;
        z8.c cVar;
        g9.e eVar3;
        c9.g gVar;
        float f19;
        List<c9.g> list2;
        y8.m mVar;
        Canvas canvas3;
        String str;
        String str2;
        Canvas canvas4;
        g9.e eVar4;
        g9.e eVar5;
        Canvas canvas5 = canvas;
        g9.e centerCircleBox = this.f6490g.getCenterCircleBox();
        float radius = this.f6490g.getRadius();
        float rotationAngle = this.f6490g.getRotationAngle();
        float[] drawAngles = this.f6490g.getDrawAngles();
        float[] absoluteAngles = this.f6490g.getAbsoluteAngles();
        float a10 = this.f6473b.a();
        float b10 = this.f6473b.b();
        float holeRadius = (radius - ((this.f6490g.getHoleRadius() * radius) / 100.0f)) / 2.0f;
        float holeRadius2 = this.f6490g.getHoleRadius() / 100.0f;
        float f20 = (radius / 10.0f) * 3.6f;
        if (this.f6490g.I()) {
            f20 = (radius - (radius * holeRadius2)) / 2.0f;
            if (!this.f6490g.K() && this.f6490g.J()) {
                double d10 = rotationAngle;
                double d11 = holeRadius * 360.0f;
                double d12 = radius;
                Double.isNaN(d12);
                Double.isNaN(d11);
                Double.isNaN(d10);
                rotationAngle = (float) (d10 + (d11 / (d12 * 6.283185307179586d)));
            }
        }
        float f21 = rotationAngle;
        float f22 = radius - f20;
        y8.k kVar = (y8.k) this.f6490g.getData();
        List<c9.g> g10 = kVar.g();
        float w10 = kVar.w();
        boolean H = this.f6490g.H();
        canvas.save();
        float e10 = g9.i.e(5.0f);
        int i11 = 0;
        int i12 = 0;
        while (i12 < g10.size()) {
            c9.g gVar2 = g10.get(i12);
            boolean U = gVar2.U();
            if (U || H) {
                l.a c10 = gVar2.c();
                l.a s10 = gVar2.s();
                a(gVar2);
                int i13 = i11;
                i10 = i12;
                float a11 = g9.i.a(this.f6477f, "Q") + g9.i.e(4.0f);
                z8.c d02 = gVar2.d0();
                int e02 = gVar2.e0();
                List<c9.g> list3 = g10;
                this.f6493j.setColor(gVar2.p0());
                this.f6493j.setStrokeWidth(g9.i.e(gVar2.a()));
                float r10 = r(gVar2);
                g9.e d13 = g9.e.d(gVar2.f0());
                g9.e eVar6 = centerCircleBox;
                d13.f7055c = g9.i.e(d13.f7055c);
                d13.f7056d = g9.i.e(d13.f7056d);
                int i14 = 0;
                while (i14 < e02) {
                    g9.e eVar7 = d13;
                    y8.m l02 = gVar2.l0(i14);
                    int i15 = e02;
                    float f23 = f21 + (((i13 == 0 ? StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD : absoluteAngles[i13 - 1] * a10) + ((drawAngles[i13] - ((r10 / (f22 * 0.017453292f)) / 2.0f)) / 2.0f)) * b10);
                    float f24 = r10;
                    String e11 = d02.e(this.f6490g.L() ? (l02.e() / w10) * 100.0f : l02.e(), l02);
                    float[] fArr3 = drawAngles;
                    String j10 = l02.j();
                    z8.c cVar2 = d02;
                    double d14 = f23 * 0.017453292f;
                    float[] fArr4 = absoluteAngles;
                    float f25 = a10;
                    float cos = (float) Math.cos(d14);
                    float f26 = b10;
                    float sin = (float) Math.sin(d14);
                    boolean z10 = H && c10 == l.a.OUTSIDE_SLICE;
                    float f27 = f21;
                    boolean z11 = U && s10 == l.a.OUTSIDE_SLICE;
                    boolean z12 = H && c10 == l.a.INSIDE_SLICE;
                    l.a aVar2 = c10;
                    boolean z13 = U && s10 == l.a.INSIDE_SLICE;
                    if (z10 || z11) {
                        float b11 = gVar2.b();
                        float C = gVar2.C();
                        float S = gVar2.S() / 100.0f;
                        aVar = s10;
                        if (this.f6490g.I()) {
                            float f28 = radius * holeRadius2;
                            f14 = ((radius - f28) * S) + f28;
                        } else {
                            f14 = radius * S;
                        }
                        float abs = gVar2.t() ? C * f22 * ((float) Math.abs(Math.sin(d14))) : C * f22;
                        g9.e eVar8 = eVar6;
                        float f29 = eVar8.f7055c;
                        float f30 = (f14 * cos) + f29;
                        f15 = radius;
                        float f31 = eVar8.f7056d;
                        float f32 = (f14 * sin) + f31;
                        float f33 = (b11 + 1.0f) * f22;
                        float f34 = (f33 * cos) + f29;
                        float f35 = f31 + (f33 * sin);
                        double d15 = f23;
                        Double.isNaN(d15);
                        double d16 = d15 % 360.0d;
                        if (d16 >= 90.0d && d16 <= 270.0d) {
                            float f36 = f34 - abs;
                            this.f6477f.setTextAlign(Paint.Align.RIGHT);
                            if (z10) {
                                this.f6495l.setTextAlign(Paint.Align.RIGHT);
                            }
                            f16 = f36;
                            f17 = f36 - e10;
                        } else {
                            f16 = f34 + abs;
                            this.f6477f.setTextAlign(Paint.Align.LEFT);
                            if (z10) {
                                this.f6495l.setTextAlign(Paint.Align.LEFT);
                            }
                            f17 = f16 + e10;
                        }
                        if (gVar2.p0() != 1122867) {
                            if (gVar2.I()) {
                                this.f6493j.setColor(gVar2.t0(i14));
                            }
                            f18 = sin;
                            gVar = gVar2;
                            cVar = cVar2;
                            eVar2 = eVar7;
                            eVar3 = eVar8;
                            f19 = f17;
                            list2 = list3;
                            mVar = l02;
                            canvas.drawLine(f30, f32, f34, f35, this.f6493j);
                            canvas.drawLine(f34, f35, f16, f35, this.f6493j);
                        } else {
                            f18 = sin;
                            eVar2 = eVar7;
                            cVar = cVar2;
                            eVar3 = eVar8;
                            gVar = gVar2;
                            f19 = f17;
                            list2 = list3;
                            mVar = l02;
                        }
                        if (z10 && z11) {
                            m(canvas, e11, f19, f35, gVar.p(i14));
                            if (i14 >= kVar.h() || j10 == null) {
                                canvas4 = canvas;
                                str2 = j10;
                            } else {
                                canvas3 = canvas;
                                str = j10;
                                k(canvas3, str, f19, f35 + a11);
                                str2 = str;
                                canvas4 = canvas3;
                            }
                        } else {
                            canvas3 = canvas;
                            float f37 = f19;
                            str = j10;
                            if (z10) {
                                if (i14 < kVar.h() && str != null) {
                                    k(canvas3, str, f37, f35 + (a11 / 2.0f));
                                }
                            } else if (z11) {
                                str2 = str;
                                canvas4 = canvas3;
                                m(canvas, e11, f37, f35 + (a11 / 2.0f), gVar.p(i14));
                            }
                            str2 = str;
                            canvas4 = canvas3;
                        }
                    } else {
                        aVar = s10;
                        f18 = sin;
                        eVar3 = eVar6;
                        eVar2 = eVar7;
                        cVar = cVar2;
                        str2 = j10;
                        gVar = gVar2;
                        f15 = radius;
                        canvas4 = canvas;
                        list2 = list3;
                        mVar = l02;
                    }
                    if (z12 || z13) {
                        eVar4 = eVar3;
                        float f38 = (f22 * cos) + eVar4.f7055c;
                        float f39 = (f22 * f18) + eVar4.f7056d;
                        this.f6477f.setTextAlign(Paint.Align.CENTER);
                        if (z12 && z13) {
                            m(canvas, e11, f38, f39, gVar.p(i14));
                            if (i14 < kVar.h() && str2 != null) {
                                k(canvas4, str2, f38, f39 + a11);
                            }
                        } else {
                            if (z12) {
                                if (i14 < kVar.h() && str2 != null) {
                                    k(canvas4, str2, f38, f39 + (a11 / 2.0f));
                                }
                            } else if (z13) {
                                m(canvas, e11, f38, f39 + (a11 / 2.0f), gVar.p(i14));
                            }
                            if (mVar.c() == null && gVar.F()) {
                                Drawable c11 = mVar.c();
                                eVar5 = eVar2;
                                float f40 = eVar5.f7056d;
                                g9.i.f(canvas, c11, (int) (((f22 + f40) * cos) + eVar4.f7055c), (int) (((f40 + f22) * f18) + eVar4.f7056d + eVar5.f7055c), c11.getIntrinsicWidth(), c11.getIntrinsicHeight());
                            } else {
                                eVar5 = eVar2;
                            }
                            i13++;
                            i14++;
                            d13 = eVar5;
                            gVar2 = gVar;
                            radius = f15;
                            r10 = f24;
                            e02 = i15;
                            list3 = list2;
                            drawAngles = fArr3;
                            absoluteAngles = fArr4;
                            a10 = f25;
                            f21 = f27;
                            c10 = aVar2;
                            s10 = aVar;
                            d02 = cVar;
                            eVar6 = eVar4;
                            b10 = f26;
                        }
                    } else {
                        eVar4 = eVar3;
                    }
                    if (mVar.c() == null) {
                    }
                    eVar5 = eVar2;
                    i13++;
                    i14++;
                    d13 = eVar5;
                    gVar2 = gVar;
                    radius = f15;
                    r10 = f24;
                    e02 = i15;
                    list3 = list2;
                    drawAngles = fArr3;
                    absoluteAngles = fArr4;
                    a10 = f25;
                    f21 = f27;
                    c10 = aVar2;
                    s10 = aVar;
                    d02 = cVar;
                    eVar6 = eVar4;
                    b10 = f26;
                }
                fArr = drawAngles;
                fArr2 = absoluteAngles;
                f10 = a10;
                f11 = b10;
                f12 = f21;
                list = list3;
                eVar = eVar6;
                f13 = radius;
                canvas2 = canvas;
                g9.e.f(d13);
                i11 = i13;
            } else {
                i10 = i12;
                list = g10;
                f13 = radius;
                fArr = drawAngles;
                fArr2 = absoluteAngles;
                f10 = a10;
                f11 = b10;
                f12 = f21;
                canvas2 = canvas5;
                eVar = centerCircleBox;
            }
            i12 = i10 + 1;
            canvas5 = canvas2;
            centerCircleBox = eVar;
            radius = f13;
            g10 = list;
            drawAngles = fArr;
            absoluteAngles = fArr2;
            a10 = f10;
            b10 = f11;
            f21 = f12;
        }
        g9.e.f(centerCircleBox);
        canvas.restore();
    }

    @Override // f9.d
    public void f() {
    }

    public float h(g9.e eVar, float f10, float f11, float f12, float f13, float f14, float f15) {
        double d10 = (f14 + f15) * 0.017453292f;
        float cos = eVar.f7055c + (((float) Math.cos(d10)) * f10);
        float sin = eVar.f7056d + (((float) Math.sin(d10)) * f10);
        double d11 = (f14 + (f15 / 2.0f)) * 0.017453292f;
        float cos2 = eVar.f7055c + (((float) Math.cos(d11)) * f10);
        float sin2 = eVar.f7056d + (((float) Math.sin(d11)) * f10);
        double sqrt = Math.sqrt(Math.pow(cos - f12, 2.0d) + Math.pow(sin - f13, 2.0d)) / 2.0d;
        double d12 = f11;
        Double.isNaN(d12);
        double tan = f10 - ((float) (sqrt * Math.tan(((180.0d - d12) / 2.0d) * 0.017453292519943295d)));
        double sqrt2 = Math.sqrt(Math.pow(cos2 - ((cos + f12) / 2.0f), 2.0d) + Math.pow(sin2 - ((sin + f13) / 2.0f), 2.0d));
        Double.isNaN(tan);
        return (float) (tan - sqrt2);
    }

    public void i(Canvas canvas) {
        float radius;
        g9.e eVar;
        CharSequence centerText = this.f6490g.getCenterText();
        if (!this.f6490g.G() || centerText == null) {
            return;
        }
        g9.e centerCircleBox = this.f6490g.getCenterCircleBox();
        g9.e centerTextOffset = this.f6490g.getCenterTextOffset();
        float f10 = centerCircleBox.f7055c + centerTextOffset.f7055c;
        float f11 = centerCircleBox.f7056d + centerTextOffset.f7056d;
        if (this.f6490g.I() && !this.f6490g.K()) {
            radius = this.f6490g.getRadius() * (this.f6490g.getHoleRadius() / 100.0f);
        } else {
            radius = this.f6490g.getRadius();
        }
        RectF[] rectFArr = this.f6499p;
        RectF rectF = rectFArr[0];
        rectF.left = f10 - radius;
        rectF.top = f11 - radius;
        rectF.right = f10 + radius;
        rectF.bottom = f11 + radius;
        RectF rectF2 = rectFArr[1];
        rectF2.set(rectF);
        float centerTextRadiusPercent = this.f6490g.getCenterTextRadiusPercent() / 100.0f;
        if (centerTextRadiusPercent > ShadowDrawableWrapper.COS_45) {
            rectF2.inset((rectF2.width() - (rectF2.width() * centerTextRadiusPercent)) / 2.0f, (rectF2.height() - (rectF2.height() * centerTextRadiusPercent)) / 2.0f);
        }
        if (centerText.equals(this.f6497n) && rectF2.equals(this.f6498o)) {
            eVar = centerTextOffset;
        } else {
            this.f6498o.set(rectF2);
            this.f6497n = centerText;
            eVar = centerTextOffset;
            this.f6496m = new StaticLayout(centerText, 0, centerText.length(), this.f6494k, (int) Math.max(Math.ceil(this.f6498o.width()), 1.0d), Layout.Alignment.ALIGN_CENTER, 1.0f, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, false);
        }
        float height = this.f6496m.getHeight();
        canvas.save();
        if (Build.VERSION.SDK_INT >= 18) {
            Path path = this.f6505v;
            path.reset();
            path.addOval(rectF, Path.Direction.CW);
            canvas.clipPath(path);
        }
        canvas.translate(rectF2.left, rectF2.top + ((rectF2.height() - height) / 2.0f));
        this.f6496m.draw(canvas);
        canvas.restore();
        g9.e.f(centerCircleBox);
        g9.e.f(eVar);
    }

    public void j(Canvas canvas, c9.g gVar) {
        int i10;
        int i11;
        int i12;
        float[] fArr;
        float f10;
        float f11;
        float f12;
        float f13;
        float f14;
        int i13;
        RectF rectF;
        g9.e eVar;
        RectF rectF2;
        float f15;
        RectF rectF3;
        float f16;
        RectF rectF4;
        g9.e eVar2;
        int i14;
        c9.g gVar2 = gVar;
        float rotationAngle = this.f6490g.getRotationAngle();
        float a10 = this.f6473b.a();
        float b10 = this.f6473b.b();
        RectF circleBox = this.f6490g.getCircleBox();
        int e02 = gVar.e0();
        float[] drawAngles = this.f6490g.getDrawAngles();
        g9.e centerCircleBox = this.f6490g.getCenterCircleBox();
        float radius = this.f6490g.getRadius();
        boolean z10 = this.f6490g.I() && !this.f6490g.K();
        float holeRadius = z10 ? (this.f6490g.getHoleRadius() / 100.0f) * radius : StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        float holeRadius2 = (radius - ((this.f6490g.getHoleRadius() * radius) / 100.0f)) / 2.0f;
        RectF rectF5 = new RectF();
        boolean z11 = z10 && this.f6490g.J();
        int i15 = 0;
        for (int i16 = 0; i16 < e02; i16++) {
            if (Math.abs(gVar2.l0(i16).e()) > g9.i.f7081e) {
                i15++;
            }
        }
        float r10 = i15 <= 1 ? StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD : r(gVar2);
        int i17 = 0;
        float f17 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        while (i17 < e02) {
            float f18 = drawAngles[i17];
            float abs = Math.abs(gVar2.l0(i17).e());
            float f19 = g9.i.f7081e;
            if (abs > f19 && (!this.f6490g.M(i17) || z11)) {
                boolean z12 = r10 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD && f18 <= 180.0f;
                this.f6474c.setColor(gVar2.t0(i17));
                float f20 = i15 == 1 ? StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD : r10 / (radius * 0.017453292f);
                float f21 = rotationAngle + ((f17 + (f20 / 2.0f)) * b10);
                float f22 = (f18 - f20) * b10;
                if (f22 < StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                    f22 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                }
                this.f6502s.reset();
                if (z11) {
                    float f23 = radius - holeRadius2;
                    i10 = i17;
                    i11 = i15;
                    double d10 = f21 * 0.017453292f;
                    i12 = e02;
                    fArr = drawAngles;
                    float cos = centerCircleBox.f7055c + (((float) Math.cos(d10)) * f23);
                    float sin = centerCircleBox.f7056d + (f23 * ((float) Math.sin(d10)));
                    rectF5.set(cos - holeRadius2, sin - holeRadius2, cos + holeRadius2, sin + holeRadius2);
                } else {
                    i10 = i17;
                    i11 = i15;
                    i12 = e02;
                    fArr = drawAngles;
                }
                double d11 = f21 * 0.017453292f;
                f10 = rotationAngle;
                f11 = a10;
                float cos2 = centerCircleBox.f7055c + (((float) Math.cos(d11)) * radius);
                float sin2 = centerCircleBox.f7056d + (((float) Math.sin(d11)) * radius);
                if (f22 >= 360.0f && f22 % 360.0f <= f19) {
                    this.f6502s.addCircle(centerCircleBox.f7055c, centerCircleBox.f7056d, radius, Path.Direction.CW);
                } else {
                    if (z11) {
                        this.f6502s.arcTo(rectF5, f21 + 180.0f, -180.0f);
                    }
                    this.f6502s.arcTo(circleBox, f21, f22);
                }
                RectF rectF6 = this.f6503t;
                float f24 = centerCircleBox.f7055c;
                float f25 = centerCircleBox.f7056d;
                rectF6.set(f24 - holeRadius, f25 - holeRadius, f24 + holeRadius, f25 + holeRadius);
                if (!z10) {
                    f12 = f22;
                    f13 = holeRadius;
                    f14 = radius;
                    i13 = i11;
                    rectF = circleBox;
                    eVar = centerCircleBox;
                    rectF2 = rectF5;
                    f15 = 360.0f;
                } else if (holeRadius > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD || z12) {
                    if (z12) {
                        f16 = f22;
                        i13 = i11;
                        rectF = circleBox;
                        f13 = holeRadius;
                        rectF4 = rectF5;
                        i14 = 1;
                        f14 = radius;
                        eVar2 = centerCircleBox;
                        float h10 = h(centerCircleBox, radius, f18 * b10, cos2, sin2, f21, f16);
                        if (h10 < StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                            h10 = -h10;
                        }
                        holeRadius = Math.max(f13, h10);
                    } else {
                        f16 = f22;
                        rectF4 = rectF5;
                        f13 = holeRadius;
                        f14 = radius;
                        eVar2 = centerCircleBox;
                        i13 = i11;
                        rectF = circleBox;
                        i14 = 1;
                    }
                    float f26 = (i13 == i14 || holeRadius == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) ? StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD : r10 / (holeRadius * 0.017453292f);
                    float f27 = f10 + ((f17 + (f26 / 2.0f)) * b10);
                    float f28 = (f18 - f26) * b10;
                    if (f28 < StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                        f28 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                    }
                    float f29 = f27 + f28;
                    if (f16 >= 360.0f && f16 % 360.0f <= f19) {
                        this.f6502s.addCircle(eVar2.f7055c, eVar2.f7056d, holeRadius, Path.Direction.CCW);
                        rectF2 = rectF4;
                    } else {
                        if (z11) {
                            float f30 = f14 - holeRadius2;
                            double d12 = f29 * 0.017453292f;
                            float cos3 = eVar2.f7055c + (((float) Math.cos(d12)) * f30);
                            float sin3 = eVar2.f7056d + (f30 * ((float) Math.sin(d12)));
                            rectF2 = rectF4;
                            rectF2.set(cos3 - holeRadius2, sin3 - holeRadius2, cos3 + holeRadius2, sin3 + holeRadius2);
                            this.f6502s.arcTo(rectF2, f29, 180.0f);
                        } else {
                            rectF2 = rectF4;
                            double d13 = f29 * 0.017453292f;
                            this.f6502s.lineTo(eVar2.f7055c + (((float) Math.cos(d13)) * holeRadius), eVar2.f7056d + (holeRadius * ((float) Math.sin(d13))));
                        }
                        this.f6502s.arcTo(this.f6503t, f29, -f28);
                    }
                    eVar = eVar2;
                    rectF3 = rectF2;
                    this.f6502s.close();
                    this.f6501r.drawPath(this.f6502s, this.f6474c);
                    f17 += f18 * f11;
                } else {
                    f12 = f22;
                    f13 = holeRadius;
                    f14 = radius;
                    i13 = i11;
                    f15 = 360.0f;
                    rectF = circleBox;
                    eVar = centerCircleBox;
                    rectF2 = rectF5;
                }
                if (f12 % f15 > f19) {
                    if (z12) {
                        float f31 = f21 + (f12 / 2.0f);
                        rectF3 = rectF2;
                        float h11 = h(eVar, f14, f18 * b10, cos2, sin2, f21, f12);
                        double d14 = f31 * 0.017453292f;
                        this.f6502s.lineTo(eVar.f7055c + (((float) Math.cos(d14)) * h11), eVar.f7056d + (h11 * ((float) Math.sin(d14))));
                    } else {
                        rectF3 = rectF2;
                        this.f6502s.lineTo(eVar.f7055c, eVar.f7056d);
                    }
                    this.f6502s.close();
                    this.f6501r.drawPath(this.f6502s, this.f6474c);
                    f17 += f18 * f11;
                }
                rectF3 = rectF2;
                this.f6502s.close();
                this.f6501r.drawPath(this.f6502s, this.f6474c);
                f17 += f18 * f11;
            } else {
                f17 += f18 * a10;
                i10 = i17;
                rectF3 = rectF5;
                f14 = radius;
                f10 = rotationAngle;
                f11 = a10;
                rectF = circleBox;
                i12 = e02;
                fArr = drawAngles;
                i13 = i15;
                f13 = holeRadius;
                eVar = centerCircleBox;
            }
            i17 = i10 + 1;
            rectF5 = rectF3;
            holeRadius = f13;
            centerCircleBox = eVar;
            i15 = i13;
            radius = f14;
            rotationAngle = f10;
            circleBox = rectF;
            e02 = i12;
            drawAngles = fArr;
            a10 = f11;
            gVar2 = gVar;
        }
        g9.e.f(centerCircleBox);
    }

    public void k(Canvas canvas, String str, float f10, float f11) {
        canvas.drawText(str, f10, f11, this.f6495l);
    }

    public void l(Canvas canvas) {
        if (!this.f6490g.I() || this.f6501r == null) {
            return;
        }
        float radius = this.f6490g.getRadius();
        float holeRadius = (this.f6490g.getHoleRadius() / 100.0f) * radius;
        g9.e centerCircleBox = this.f6490g.getCenterCircleBox();
        if (Color.alpha(this.f6491h.getColor()) > 0) {
            this.f6501r.drawCircle(centerCircleBox.f7055c, centerCircleBox.f7056d, holeRadius, this.f6491h);
        }
        if (Color.alpha(this.f6492i.getColor()) > 0 && this.f6490g.getTransparentCircleRadius() > this.f6490g.getHoleRadius()) {
            int alpha = this.f6492i.getAlpha();
            float transparentCircleRadius = radius * (this.f6490g.getTransparentCircleRadius() / 100.0f);
            this.f6492i.setAlpha((int) (alpha * this.f6473b.a() * this.f6473b.b()));
            this.f6504u.reset();
            this.f6504u.addCircle(centerCircleBox.f7055c, centerCircleBox.f7056d, transparentCircleRadius, Path.Direction.CW);
            this.f6504u.addCircle(centerCircleBox.f7055c, centerCircleBox.f7056d, holeRadius, Path.Direction.CCW);
            this.f6501r.drawPath(this.f6504u, this.f6492i);
            this.f6492i.setAlpha(alpha);
        }
        g9.e.f(centerCircleBox);
    }

    public void m(Canvas canvas, String str, float f10, float f11, int i10) {
        this.f6477f.setColor(i10);
        canvas.drawText(str, f10, f11, this.f6477f);
    }

    public TextPaint n() {
        return this.f6494k;
    }

    public Paint o() {
        return this.f6495l;
    }

    public Paint p() {
        return this.f6491h;
    }

    public Paint q() {
        return this.f6492i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public float r(c9.g gVar) {
        if (gVar.g0()) {
            return gVar.k() / this.f6512a.s() > (gVar.Q() / ((y8.k) this.f6490g.getData()).w()) * 2.0f ? StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD : gVar.k();
        }
        return gVar.k();
    }

    public void s() {
        Canvas canvas = this.f6501r;
        if (canvas != null) {
            canvas.setBitmap(null);
            this.f6501r = null;
        }
        WeakReference<Bitmap> weakReference = this.f6500q;
        if (weakReference != null) {
            Bitmap bitmap = weakReference.get();
            if (bitmap != null) {
                bitmap.recycle();
            }
            this.f6500q.clear();
            this.f6500q = null;
        }
    }
}
