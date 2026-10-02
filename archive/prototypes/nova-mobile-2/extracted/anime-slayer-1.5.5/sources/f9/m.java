package f9;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import com.github.mikephil.charting.charts.BarChart;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.util.List;
import x8.g;
import x8.h;

/* compiled from: XAxisRendererHorizontalBarChart.java */
/* loaded from: classes.dex */
public class m extends l {

    /* renamed from: p, reason: collision with root package name */
    public BarChart f6521p;

    /* renamed from: q, reason: collision with root package name */
    public Path f6522q;

    public m(g9.j jVar, x8.h hVar, g9.g gVar, BarChart barChart) {
        super(jVar, hVar, gVar);
        this.f6522q = new Path();
        this.f6521p = barChart;
    }

    @Override // f9.l, f9.a
    public void a(float f10, float f11, boolean z10) {
        float f12;
        double d10;
        if (this.f6512a.k() > 10.0f && !this.f6512a.w()) {
            g9.d b10 = this.f6460c.b(this.f6512a.h(), this.f6512a.f());
            g9.d b11 = this.f6460c.b(this.f6512a.h(), this.f6512a.j());
            if (z10) {
                f12 = (float) b11.f7052d;
                d10 = b10.f7052d;
            } else {
                f12 = (float) b10.f7052d;
                d10 = b11.f7052d;
            }
            g9.d.c(b10);
            g9.d.c(b11);
            f10 = f12;
            f11 = (float) d10;
        }
        b(f10, f11);
    }

    @Override // f9.l
    public void d() {
        this.f6462e.setTypeface(this.f6513h.c());
        this.f6462e.setTextSize(this.f6513h.b());
        g9.b b10 = g9.i.b(this.f6462e, this.f6513h.x());
        float d10 = (int) (b10.f7048c + (this.f6513h.d() * 3.5f));
        float f10 = b10.f7049d;
        g9.b t10 = g9.i.t(b10.f7048c, f10, this.f6513h.P());
        this.f6513h.J = Math.round(d10);
        this.f6513h.K = Math.round(f10);
        x8.h hVar = this.f6513h;
        hVar.L = (int) (t10.f7048c + (hVar.d() * 3.5f));
        this.f6513h.M = Math.round(t10.f7049d);
        g9.b.c(t10);
    }

    @Override // f9.l
    public void e(Canvas canvas, float f10, float f11, Path path) {
        path.moveTo(this.f6512a.i(), f11);
        path.lineTo(this.f6512a.h(), f11);
        canvas.drawPath(path, this.f6461d);
        path.reset();
    }

    @Override // f9.l
    public void g(Canvas canvas, float f10, g9.e eVar) {
        float P = this.f6513h.P();
        boolean z10 = this.f6513h.z();
        int i10 = this.f6513h.f16141n * 2;
        float[] fArr = new float[i10];
        for (int i11 = 0; i11 < i10; i11 += 2) {
            if (z10) {
                fArr[i11 + 1] = this.f6513h.f16140m[i11 / 2];
            } else {
                fArr[i11 + 1] = this.f6513h.f16139l[i11 / 2];
            }
        }
        this.f6460c.e(fArr);
        for (int i12 = 0; i12 < i10; i12 += 2) {
            float f11 = fArr[i12 + 1];
            if (this.f6512a.D(f11)) {
                z8.c y10 = this.f6513h.y();
                x8.h hVar = this.f6513h;
                f(canvas, y10.a(hVar.f16139l[i12 / 2], hVar), f10, f11, eVar, P);
            }
        }
    }

    @Override // f9.l
    public RectF h() {
        this.f6516k.set(this.f6512a.o());
        this.f6516k.inset(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, -this.f6459b.u());
        return this.f6516k;
    }

    @Override // f9.l
    public void i(Canvas canvas) {
        if (this.f6513h.f() && this.f6513h.D()) {
            float d10 = this.f6513h.d();
            this.f6462e.setTypeface(this.f6513h.c());
            this.f6462e.setTextSize(this.f6513h.b());
            this.f6462e.setColor(this.f6513h.a());
            g9.e c10 = g9.e.c(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
            if (this.f6513h.Q() == h.a.TOP) {
                c10.f7055c = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                c10.f7056d = 0.5f;
                g(canvas, this.f6512a.i() + d10, c10);
            } else if (this.f6513h.Q() == h.a.TOP_INSIDE) {
                c10.f7055c = 1.0f;
                c10.f7056d = 0.5f;
                g(canvas, this.f6512a.i() - d10, c10);
            } else if (this.f6513h.Q() == h.a.BOTTOM) {
                c10.f7055c = 1.0f;
                c10.f7056d = 0.5f;
                g(canvas, this.f6512a.h() - d10, c10);
            } else if (this.f6513h.Q() == h.a.BOTTOM_INSIDE) {
                c10.f7055c = 1.0f;
                c10.f7056d = 0.5f;
                g(canvas, this.f6512a.h() + d10, c10);
            } else {
                c10.f7055c = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                c10.f7056d = 0.5f;
                g(canvas, this.f6512a.i() + d10, c10);
                c10.f7055c = 1.0f;
                c10.f7056d = 0.5f;
                g(canvas, this.f6512a.h() - d10, c10);
            }
            g9.e.f(c10);
        }
    }

    @Override // f9.l
    public void j(Canvas canvas) {
        if (this.f6513h.A() && this.f6513h.f()) {
            this.f6463f.setColor(this.f6513h.n());
            this.f6463f.setStrokeWidth(this.f6513h.p());
            if (this.f6513h.Q() == h.a.TOP || this.f6513h.Q() == h.a.TOP_INSIDE || this.f6513h.Q() == h.a.BOTH_SIDED) {
                canvas.drawLine(this.f6512a.i(), this.f6512a.j(), this.f6512a.i(), this.f6512a.f(), this.f6463f);
            }
            if (this.f6513h.Q() == h.a.BOTTOM || this.f6513h.Q() == h.a.BOTTOM_INSIDE || this.f6513h.Q() == h.a.BOTH_SIDED) {
                canvas.drawLine(this.f6512a.h(), this.f6512a.j(), this.f6512a.h(), this.f6512a.f(), this.f6463f);
            }
        }
    }

    @Override // f9.l
    public void n(Canvas canvas) {
        List<x8.g> w10 = this.f6513h.w();
        if (w10 == null || w10.size() <= 0) {
            return;
        }
        float[] fArr = this.f6517l;
        fArr[0] = 0.0f;
        fArr[1] = 0.0f;
        Path path = this.f6522q;
        path.reset();
        for (int i10 = 0; i10 < w10.size(); i10++) {
            x8.g gVar = w10.get(i10);
            if (gVar.f()) {
                int save = canvas.save();
                this.f6518m.set(this.f6512a.o());
                this.f6518m.inset(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, -gVar.p());
                canvas.clipRect(this.f6518m);
                this.f6464g.setStyle(Paint.Style.STROKE);
                this.f6464g.setColor(gVar.o());
                this.f6464g.setStrokeWidth(gVar.p());
                this.f6464g.setPathEffect(gVar.k());
                fArr[1] = gVar.n();
                this.f6460c.e(fArr);
                path.moveTo(this.f6512a.h(), fArr[1]);
                path.lineTo(this.f6512a.i(), fArr[1]);
                canvas.drawPath(path, this.f6464g);
                path.reset();
                String l10 = gVar.l();
                if (l10 != null && !l10.equals("")) {
                    this.f6464g.setStyle(gVar.q());
                    this.f6464g.setPathEffect(null);
                    this.f6464g.setColor(gVar.a());
                    this.f6464g.setStrokeWidth(0.5f);
                    this.f6464g.setTextSize(gVar.b());
                    float a10 = g9.i.a(this.f6464g, l10);
                    float e10 = g9.i.e(4.0f) + gVar.d();
                    float p10 = gVar.p() + a10 + gVar.e();
                    g.a m10 = gVar.m();
                    if (m10 == g.a.RIGHT_TOP) {
                        this.f6464g.setTextAlign(Paint.Align.RIGHT);
                        canvas.drawText(l10, this.f6512a.i() - e10, (fArr[1] - p10) + a10, this.f6464g);
                    } else if (m10 == g.a.RIGHT_BOTTOM) {
                        this.f6464g.setTextAlign(Paint.Align.RIGHT);
                        canvas.drawText(l10, this.f6512a.i() - e10, fArr[1] + p10, this.f6464g);
                    } else if (m10 == g.a.LEFT_TOP) {
                        this.f6464g.setTextAlign(Paint.Align.LEFT);
                        canvas.drawText(l10, this.f6512a.h() + e10, (fArr[1] - p10) + a10, this.f6464g);
                    } else {
                        this.f6464g.setTextAlign(Paint.Align.LEFT);
                        canvas.drawText(l10, this.f6512a.G() + e10, fArr[1] + p10, this.f6464g);
                    }
                }
                canvas.restoreToCount(save);
            }
        }
    }
}
