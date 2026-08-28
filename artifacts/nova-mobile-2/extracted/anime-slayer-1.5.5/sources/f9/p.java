package f9;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.util.List;
import x8.g;
import x8.i;

/* compiled from: YAxisRendererHorizontalBarChart.java */
/* loaded from: classes.dex */
public class p extends o {

    /* renamed from: r, reason: collision with root package name */
    public Path f6534r;

    /* renamed from: s, reason: collision with root package name */
    public Path f6535s;

    /* renamed from: t, reason: collision with root package name */
    public float[] f6536t;

    public p(g9.j jVar, x8.i iVar, g9.g gVar) {
        super(jVar, iVar, gVar);
        this.f6534r = new Path();
        this.f6535s = new Path();
        this.f6536t = new float[4];
        this.f6464g.setTextAlign(Paint.Align.LEFT);
    }

    @Override // f9.a
    public void a(float f10, float f11, boolean z10) {
        float f12;
        double d10;
        if (this.f6512a.g() > 10.0f && !this.f6512a.v()) {
            g9.d b10 = this.f6460c.b(this.f6512a.h(), this.f6512a.j());
            g9.d b11 = this.f6460c.b(this.f6512a.i(), this.f6512a.j());
            if (!z10) {
                f12 = (float) b10.f7051c;
                d10 = b11.f7051c;
            } else {
                f12 = (float) b11.f7051c;
                d10 = b10.f7051c;
            }
            g9.d.c(b10);
            g9.d.c(b11);
            f10 = f12;
            f11 = (float) d10;
        }
        b(f10, f11);
    }

    @Override // f9.o
    public void d(Canvas canvas, float f10, float[] fArr, float f11) {
        this.f6462e.setTypeface(this.f6524h.c());
        this.f6462e.setTextSize(this.f6524h.b());
        this.f6462e.setColor(this.f6524h.a());
        int i10 = this.f6524h.a0() ? this.f6524h.f16141n : this.f6524h.f16141n - 1;
        for (int i11 = !this.f6524h.Z() ? 1 : 0; i11 < i10; i11++) {
            canvas.drawText(this.f6524h.q(i11), fArr[i11 * 2], f10 - f11, this.f6462e);
        }
    }

    @Override // f9.o
    public void e(Canvas canvas) {
        int save = canvas.save();
        this.f6530n.set(this.f6512a.o());
        this.f6530n.inset(-this.f6524h.Y(), StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        canvas.clipRect(this.f6533q);
        g9.d a10 = this.f6460c.a(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        this.f6525i.setColor(this.f6524h.X());
        this.f6525i.setStrokeWidth(this.f6524h.Y());
        Path path = this.f6534r;
        path.reset();
        path.moveTo(((float) a10.f7051c) - 1.0f, this.f6512a.j());
        path.lineTo(((float) a10.f7051c) - 1.0f, this.f6512a.f());
        canvas.drawPath(path, this.f6525i);
        canvas.restoreToCount(save);
    }

    @Override // f9.o
    public RectF f() {
        this.f6527k.set(this.f6512a.o());
        this.f6527k.inset(-this.f6459b.u(), StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        return this.f6527k;
    }

    @Override // f9.o
    public float[] g() {
        int length = this.f6528l.length;
        int i10 = this.f6524h.f16141n;
        if (length != i10 * 2) {
            this.f6528l = new float[i10 * 2];
        }
        float[] fArr = this.f6528l;
        for (int i11 = 0; i11 < fArr.length; i11 += 2) {
            fArr[i11] = this.f6524h.f16139l[i11 / 2];
        }
        this.f6460c.e(fArr);
        return fArr;
    }

    @Override // f9.o
    public Path h(Path path, int i10, float[] fArr) {
        path.moveTo(fArr[i10], this.f6512a.j());
        path.lineTo(fArr[i10], this.f6512a.f());
        return path;
    }

    @Override // f9.o
    public void i(Canvas canvas) {
        float f10;
        float f11;
        float j10;
        if (this.f6524h.f() && this.f6524h.D()) {
            float[] g10 = g();
            this.f6462e.setTypeface(this.f6524h.c());
            this.f6462e.setTextSize(this.f6524h.b());
            this.f6462e.setColor(this.f6524h.a());
            this.f6462e.setTextAlign(Paint.Align.CENTER);
            float e10 = g9.i.e(2.5f);
            float a10 = g9.i.a(this.f6462e, "Q");
            i.a P = this.f6524h.P();
            i.b Q = this.f6524h.Q();
            if (P == i.a.LEFT) {
                if (Q == i.b.OUTSIDE_CHART) {
                    j10 = this.f6512a.j();
                } else {
                    j10 = this.f6512a.j();
                }
                f11 = j10 - e10;
            } else {
                if (Q == i.b.OUTSIDE_CHART) {
                    f10 = this.f6512a.f();
                } else {
                    f10 = this.f6512a.f();
                }
                f11 = f10 + a10 + e10;
            }
            d(canvas, f11, g10, this.f6524h.e());
        }
    }

    @Override // f9.o
    public void j(Canvas canvas) {
        if (this.f6524h.f() && this.f6524h.A()) {
            this.f6463f.setColor(this.f6524h.n());
            this.f6463f.setStrokeWidth(this.f6524h.p());
            if (this.f6524h.P() == i.a.LEFT) {
                canvas.drawLine(this.f6512a.h(), this.f6512a.j(), this.f6512a.i(), this.f6512a.j(), this.f6463f);
            } else {
                canvas.drawLine(this.f6512a.h(), this.f6512a.f(), this.f6512a.i(), this.f6512a.f(), this.f6463f);
            }
        }
    }

    @Override // f9.o
    public void l(Canvas canvas) {
        List<x8.g> w10 = this.f6524h.w();
        if (w10 == null || w10.size() <= 0) {
            return;
        }
        float[] fArr = this.f6536t;
        float f10 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        fArr[0] = 0.0f;
        char c10 = 1;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        Path path = this.f6535s;
        path.reset();
        int i10 = 0;
        while (i10 < w10.size()) {
            x8.g gVar = w10.get(i10);
            if (gVar.f()) {
                int save = canvas.save();
                this.f6533q.set(this.f6512a.o());
                this.f6533q.inset(-gVar.p(), f10);
                canvas.clipRect(this.f6533q);
                fArr[0] = gVar.n();
                fArr[2] = gVar.n();
                this.f6460c.e(fArr);
                fArr[c10] = this.f6512a.j();
                fArr[3] = this.f6512a.f();
                path.moveTo(fArr[0], fArr[c10]);
                path.lineTo(fArr[2], fArr[3]);
                this.f6464g.setStyle(Paint.Style.STROKE);
                this.f6464g.setColor(gVar.o());
                this.f6464g.setPathEffect(gVar.k());
                this.f6464g.setStrokeWidth(gVar.p());
                canvas.drawPath(path, this.f6464g);
                path.reset();
                String l10 = gVar.l();
                if (l10 != null && !l10.equals("")) {
                    this.f6464g.setStyle(gVar.q());
                    this.f6464g.setPathEffect(null);
                    this.f6464g.setColor(gVar.a());
                    this.f6464g.setTypeface(gVar.c());
                    this.f6464g.setStrokeWidth(0.5f);
                    this.f6464g.setTextSize(gVar.b());
                    float p10 = gVar.p() + gVar.d();
                    float e10 = g9.i.e(2.0f) + gVar.e();
                    g.a m10 = gVar.m();
                    if (m10 == g.a.RIGHT_TOP) {
                        float a10 = g9.i.a(this.f6464g, l10);
                        this.f6464g.setTextAlign(Paint.Align.LEFT);
                        canvas.drawText(l10, fArr[0] + p10, this.f6512a.j() + e10 + a10, this.f6464g);
                    } else if (m10 == g.a.RIGHT_BOTTOM) {
                        this.f6464g.setTextAlign(Paint.Align.LEFT);
                        canvas.drawText(l10, fArr[0] + p10, this.f6512a.f() - e10, this.f6464g);
                    } else if (m10 == g.a.LEFT_TOP) {
                        this.f6464g.setTextAlign(Paint.Align.RIGHT);
                        canvas.drawText(l10, fArr[0] - p10, this.f6512a.j() + e10 + g9.i.a(this.f6464g, l10), this.f6464g);
                    } else {
                        this.f6464g.setTextAlign(Paint.Align.RIGHT);
                        canvas.drawText(l10, fArr[0] - p10, this.f6512a.f() - e10, this.f6464g);
                    }
                }
                canvas.restoreToCount(save);
            }
            i10++;
            f10 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            c10 = 1;
        }
    }
}
