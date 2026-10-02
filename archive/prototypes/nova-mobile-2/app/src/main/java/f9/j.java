package f9;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.drawable.Drawable;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.google.android.material.progressindicator.BaseProgressIndicator;

/* compiled from: RadarChartRenderer.java */
/* loaded from: classes.dex */
public class j extends g {

    /* renamed from: i, reason: collision with root package name */
    public w8.e f6507i;

    /* renamed from: j, reason: collision with root package name */
    public Paint f6508j;

    /* renamed from: k, reason: collision with root package name */
    public Paint f6509k;

    /* renamed from: l, reason: collision with root package name */
    public Path f6510l;

    /* renamed from: m, reason: collision with root package name */
    public Path f6511m;

    public j(w8.e eVar, u8.a aVar, g9.j jVar) {
        super(aVar, jVar);
        this.f6510l = new Path();
        this.f6511m = new Path();
        this.f6507i = eVar;
        Paint paint = new Paint(1);
        this.f6475d = paint;
        paint.setStyle(Paint.Style.STROKE);
        this.f6475d.setStrokeWidth(2.0f);
        this.f6475d.setColor(Color.rgb(BaseProgressIndicator.MAX_ALPHA, 187, 115));
        Paint paint2 = new Paint(1);
        this.f6508j = paint2;
        paint2.setStyle(Paint.Style.STROKE);
        this.f6509k = new Paint(1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // f9.d
    public void b(Canvas canvas) {
        y8.n nVar = (y8.n) this.f6507i.getData();
        int e02 = nVar.l().e0();
        for (c9.h hVar : nVar.g()) {
            if (hVar.isVisible()) {
                n(canvas, hVar, e02);
            }
        }
    }

    @Override // f9.d
    public void c(Canvas canvas) {
        q(canvas);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // f9.d
    public void d(Canvas canvas, a9.c[] cVarArr) {
        int i10;
        float sliceAngle = this.f6507i.getSliceAngle();
        float factor = this.f6507i.getFactor();
        g9.e centerOffsets = this.f6507i.getCenterOffsets();
        g9.e c10 = g9.e.c(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        y8.n nVar = (y8.n) this.f6507i.getData();
        int length = cVarArr.length;
        int i11 = 0;
        int i12 = 0;
        while (i12 < length) {
            a9.c cVar = cVarArr[i12];
            c9.h e10 = nVar.e(cVar.c());
            if (e10 != null && e10.i0()) {
                y8.j jVar = (y8.o) e10.l0((int) cVar.g());
                if (h(jVar, e10)) {
                    g9.i.r(centerOffsets, (jVar.e() - this.f6507i.getYChartMin()) * factor * this.f6473b.b(), (cVar.g() * sliceAngle * this.f6473b.a()) + this.f6507i.getRotationAngle(), c10);
                    cVar.k(c10.f7055c, c10.f7056d);
                    j(canvas, c10.f7055c, c10.f7056d, e10);
                    if (e10.E() && !Float.isNaN(c10.f7055c) && !Float.isNaN(c10.f7056d)) {
                        int v10 = e10.v();
                        if (v10 == 1122867) {
                            v10 = e10.t0(i11);
                        }
                        if (e10.n() < 255) {
                            v10 = g9.a.a(v10, e10.n());
                        }
                        i10 = i12;
                        o(canvas, c10, e10.l(), e10.R(), e10.j(), v10, e10.d());
                        i12 = i10 + 1;
                        i11 = 0;
                    }
                }
            }
            i10 = i12;
            i12 = i10 + 1;
            i11 = 0;
        }
        g9.e.f(centerOffsets);
        g9.e.f(c10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // f9.d
    public void e(Canvas canvas) {
        int i10;
        float f10;
        y8.o oVar;
        int i11;
        c9.h hVar;
        int i12;
        float f11;
        g9.e eVar;
        z8.c cVar;
        float a10 = this.f6473b.a();
        float b10 = this.f6473b.b();
        float sliceAngle = this.f6507i.getSliceAngle();
        float factor = this.f6507i.getFactor();
        g9.e centerOffsets = this.f6507i.getCenterOffsets();
        g9.e c10 = g9.e.c(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        g9.e c11 = g9.e.c(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        float e10 = g9.i.e(5.0f);
        int i13 = 0;
        while (i13 < ((y8.n) this.f6507i.getData()).f()) {
            c9.h e11 = ((y8.n) this.f6507i.getData()).e(i13);
            if (i(e11)) {
                a(e11);
                z8.c d02 = e11.d0();
                g9.e d10 = g9.e.d(e11.f0());
                d10.f7055c = g9.i.e(d10.f7055c);
                d10.f7056d = g9.i.e(d10.f7056d);
                int i14 = 0;
                while (i14 < e11.e0()) {
                    y8.o oVar2 = (y8.o) e11.l0(i14);
                    g9.e eVar2 = d10;
                    float f12 = i14 * sliceAngle * a10;
                    g9.i.r(centerOffsets, (oVar2.e() - this.f6507i.getYChartMin()) * factor * b10, f12 + this.f6507i.getRotationAngle(), c10);
                    if (e11.U()) {
                        oVar = oVar2;
                        i11 = i14;
                        f11 = a10;
                        eVar = eVar2;
                        cVar = d02;
                        hVar = e11;
                        i12 = i13;
                        p(canvas, d02.f(oVar2), c10.f7055c, c10.f7056d - e10, e11.p(i14));
                    } else {
                        oVar = oVar2;
                        i11 = i14;
                        hVar = e11;
                        i12 = i13;
                        f11 = a10;
                        eVar = eVar2;
                        cVar = d02;
                    }
                    if (oVar.c() != null && hVar.F()) {
                        Drawable c12 = oVar.c();
                        g9.i.r(centerOffsets, (oVar.e() * factor * b10) + eVar.f7056d, f12 + this.f6507i.getRotationAngle(), c11);
                        float f13 = c11.f7056d + eVar.f7055c;
                        c11.f7056d = f13;
                        g9.i.f(canvas, c12, (int) c11.f7055c, (int) f13, c12.getIntrinsicWidth(), c12.getIntrinsicHeight());
                    }
                    i14 = i11 + 1;
                    d10 = eVar;
                    e11 = hVar;
                    d02 = cVar;
                    i13 = i12;
                    a10 = f11;
                }
                i10 = i13;
                f10 = a10;
                g9.e.f(d10);
            } else {
                i10 = i13;
                f10 = a10;
            }
            i13 = i10 + 1;
            a10 = f10;
        }
        g9.e.f(centerOffsets);
        g9.e.f(c10);
        g9.e.f(c11);
    }

    @Override // f9.d
    public void f() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void n(Canvas canvas, c9.h hVar, int i10) {
        float a10 = this.f6473b.a();
        float b10 = this.f6473b.b();
        float sliceAngle = this.f6507i.getSliceAngle();
        float factor = this.f6507i.getFactor();
        g9.e centerOffsets = this.f6507i.getCenterOffsets();
        g9.e c10 = g9.e.c(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        Path path = this.f6510l;
        path.reset();
        boolean z10 = false;
        for (int i11 = 0; i11 < hVar.e0(); i11++) {
            this.f6474c.setColor(hVar.t0(i11));
            g9.i.r(centerOffsets, (((y8.o) hVar.l0(i11)).e() - this.f6507i.getYChartMin()) * factor * b10, (i11 * sliceAngle * a10) + this.f6507i.getRotationAngle(), c10);
            if (!Float.isNaN(c10.f7055c)) {
                if (!z10) {
                    path.moveTo(c10.f7055c, c10.f7056d);
                    z10 = true;
                } else {
                    path.lineTo(c10.f7055c, c10.f7056d);
                }
            }
        }
        if (hVar.e0() > i10) {
            path.lineTo(centerOffsets.f7055c, centerOffsets.f7056d);
        }
        path.close();
        if (hVar.n0()) {
            Drawable Z = hVar.Z();
            if (Z != null) {
                m(canvas, path, Z);
            } else {
                l(canvas, path, hVar.i(), hVar.m());
            }
        }
        this.f6474c.setStrokeWidth(hVar.x());
        this.f6474c.setStyle(Paint.Style.STROKE);
        if (!hVar.n0() || hVar.m() < 255) {
            canvas.drawPath(path, this.f6474c);
        }
        g9.e.f(centerOffsets);
        g9.e.f(c10);
    }

    public void o(Canvas canvas, g9.e eVar, float f10, float f11, int i10, int i11, float f12) {
        canvas.save();
        float e10 = g9.i.e(f11);
        float e11 = g9.i.e(f10);
        if (i10 != 1122867) {
            Path path = this.f6511m;
            path.reset();
            path.addCircle(eVar.f7055c, eVar.f7056d, e10, Path.Direction.CW);
            if (e11 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                path.addCircle(eVar.f7055c, eVar.f7056d, e11, Path.Direction.CCW);
            }
            this.f6509k.setColor(i10);
            this.f6509k.setStyle(Paint.Style.FILL);
            canvas.drawPath(path, this.f6509k);
        }
        if (i11 != 1122867) {
            this.f6509k.setColor(i11);
            this.f6509k.setStyle(Paint.Style.STROKE);
            this.f6509k.setStrokeWidth(g9.i.e(f12));
            canvas.drawCircle(eVar.f7055c, eVar.f7056d, e10, this.f6509k);
        }
        canvas.restore();
    }

    public void p(Canvas canvas, String str, float f10, float f11, int i10) {
        this.f6477f.setColor(i10);
        canvas.drawText(str, f10, f11, this.f6477f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void q(Canvas canvas) {
        float sliceAngle = this.f6507i.getSliceAngle();
        float factor = this.f6507i.getFactor();
        float rotationAngle = this.f6507i.getRotationAngle();
        g9.e centerOffsets = this.f6507i.getCenterOffsets();
        this.f6508j.setStrokeWidth(this.f6507i.getWebLineWidth());
        this.f6508j.setColor(this.f6507i.getWebColor());
        this.f6508j.setAlpha(this.f6507i.getWebAlpha());
        int skipWebLineCount = this.f6507i.getSkipWebLineCount() + 1;
        int e02 = ((y8.n) this.f6507i.getData()).l().e0();
        g9.e c10 = g9.e.c(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        for (int i10 = 0; i10 < e02; i10 += skipWebLineCount) {
            g9.i.r(centerOffsets, this.f6507i.getYRange() * factor, (i10 * sliceAngle) + rotationAngle, c10);
            canvas.drawLine(centerOffsets.f7055c, centerOffsets.f7056d, c10.f7055c, c10.f7056d, this.f6508j);
        }
        g9.e.f(c10);
        this.f6508j.setStrokeWidth(this.f6507i.getWebLineWidthInner());
        this.f6508j.setColor(this.f6507i.getWebColorInner());
        this.f6508j.setAlpha(this.f6507i.getWebAlpha());
        int i11 = this.f6507i.getYAxis().f16141n;
        g9.e c11 = g9.e.c(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        g9.e c12 = g9.e.c(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        for (int i12 = 0; i12 < i11; i12++) {
            int i13 = 0;
            while (i13 < ((y8.n) this.f6507i.getData()).h()) {
                float yChartMin = (this.f6507i.getYAxis().f16139l[i12] - this.f6507i.getYChartMin()) * factor;
                g9.i.r(centerOffsets, yChartMin, (i13 * sliceAngle) + rotationAngle, c11);
                i13++;
                g9.i.r(centerOffsets, yChartMin, (i13 * sliceAngle) + rotationAngle, c12);
                canvas.drawLine(c11.f7055c, c11.f7056d, c12.f7055c, c12.f7056d, this.f6508j);
            }
        }
        g9.e.f(c11);
        g9.e.f(c12);
    }
}
