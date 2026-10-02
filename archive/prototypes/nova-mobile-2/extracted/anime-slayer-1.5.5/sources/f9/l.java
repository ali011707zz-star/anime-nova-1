package f9;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.util.List;
import x8.g;
import x8.h;

/* compiled from: XAxisRenderer.java */
/* loaded from: classes.dex */
public class l extends a {

    /* renamed from: h, reason: collision with root package name */
    public x8.h f6513h;

    /* renamed from: i, reason: collision with root package name */
    public Path f6514i;

    /* renamed from: j, reason: collision with root package name */
    public float[] f6515j;

    /* renamed from: k, reason: collision with root package name */
    public RectF f6516k;

    /* renamed from: l, reason: collision with root package name */
    public float[] f6517l;

    /* renamed from: m, reason: collision with root package name */
    public RectF f6518m;

    /* renamed from: n, reason: collision with root package name */
    public float[] f6519n;

    /* renamed from: o, reason: collision with root package name */
    public Path f6520o;

    public l(g9.j jVar, x8.h hVar, g9.g gVar) {
        super(jVar, gVar, hVar);
        this.f6514i = new Path();
        this.f6515j = new float[2];
        this.f6516k = new RectF();
        this.f6517l = new float[2];
        this.f6518m = new RectF();
        this.f6519n = new float[4];
        this.f6520o = new Path();
        this.f6513h = hVar;
        this.f6462e.setColor(-16777216);
        this.f6462e.setTextAlign(Paint.Align.CENTER);
        this.f6462e.setTextSize(g9.i.e(10.0f));
    }

    @Override // f9.a
    public void a(float f10, float f11, boolean z10) {
        float f12;
        double d10;
        if (this.f6512a.k() > 10.0f && !this.f6512a.v()) {
            g9.d b10 = this.f6460c.b(this.f6512a.h(), this.f6512a.j());
            g9.d b11 = this.f6460c.b(this.f6512a.i(), this.f6512a.j());
            if (z10) {
                f12 = (float) b11.f7051c;
                d10 = b10.f7051c;
            } else {
                f12 = (float) b10.f7051c;
                d10 = b11.f7051c;
            }
            g9.d.c(b10);
            g9.d.c(b11);
            f10 = f12;
            f11 = (float) d10;
        }
        b(f10, f11);
    }

    @Override // f9.a
    public void b(float f10, float f11) {
        super.b(f10, f11);
        d();
    }

    public void d() {
        String x10 = this.f6513h.x();
        this.f6462e.setTypeface(this.f6513h.c());
        this.f6462e.setTextSize(this.f6513h.b());
        g9.b b10 = g9.i.b(this.f6462e, x10);
        float f10 = b10.f7048c;
        float a10 = g9.i.a(this.f6462e, "Q");
        g9.b t10 = g9.i.t(f10, a10, this.f6513h.P());
        this.f6513h.J = Math.round(f10);
        this.f6513h.K = Math.round(a10);
        this.f6513h.L = Math.round(t10.f7048c);
        this.f6513h.M = Math.round(t10.f7049d);
        g9.b.c(t10);
        g9.b.c(b10);
    }

    public void e(Canvas canvas, float f10, float f11, Path path) {
        path.moveTo(f10, this.f6512a.f());
        path.lineTo(f10, this.f6512a.j());
        canvas.drawPath(path, this.f6461d);
        path.reset();
    }

    public void f(Canvas canvas, String str, float f10, float f11, g9.e eVar, float f12) {
        g9.i.g(canvas, str, f10, f11, this.f6462e, eVar, f12);
    }

    public void g(Canvas canvas, float f10, g9.e eVar) {
        float P = this.f6513h.P();
        boolean z10 = this.f6513h.z();
        int i10 = this.f6513h.f16141n * 2;
        float[] fArr = new float[i10];
        for (int i11 = 0; i11 < i10; i11 += 2) {
            if (z10) {
                fArr[i11] = this.f6513h.f16140m[i11 / 2];
            } else {
                fArr[i11] = this.f6513h.f16139l[i11 / 2];
            }
        }
        this.f6460c.e(fArr);
        for (int i12 = 0; i12 < i10; i12 += 2) {
            float f11 = fArr[i12];
            if (this.f6512a.C(f11)) {
                z8.c y10 = this.f6513h.y();
                x8.h hVar = this.f6513h;
                int i13 = i12 / 2;
                String a10 = y10.a(hVar.f16139l[i13], hVar);
                if (this.f6513h.R()) {
                    int i14 = this.f6513h.f16141n;
                    if (i13 == i14 - 1 && i14 > 1) {
                        float d10 = g9.i.d(this.f6462e, a10);
                        if (d10 > this.f6512a.H() * 2.0f && f11 + d10 > this.f6512a.m()) {
                            f11 -= d10 / 2.0f;
                        }
                    } else if (i12 == 0) {
                        f11 += g9.i.d(this.f6462e, a10) / 2.0f;
                    }
                }
                f(canvas, a10, f11, f10, eVar, P);
            }
        }
    }

    public RectF h() {
        this.f6516k.set(this.f6512a.o());
        this.f6516k.inset(-this.f6459b.u(), StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        return this.f6516k;
    }

    public void i(Canvas canvas) {
        if (this.f6513h.f() && this.f6513h.D()) {
            float e10 = this.f6513h.e();
            this.f6462e.setTypeface(this.f6513h.c());
            this.f6462e.setTextSize(this.f6513h.b());
            this.f6462e.setColor(this.f6513h.a());
            g9.e c10 = g9.e.c(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
            if (this.f6513h.Q() == h.a.TOP) {
                c10.f7055c = 0.5f;
                c10.f7056d = 1.0f;
                g(canvas, this.f6512a.j() - e10, c10);
            } else if (this.f6513h.Q() == h.a.TOP_INSIDE) {
                c10.f7055c = 0.5f;
                c10.f7056d = 1.0f;
                g(canvas, this.f6512a.j() + e10 + this.f6513h.M, c10);
            } else if (this.f6513h.Q() == h.a.BOTTOM) {
                c10.f7055c = 0.5f;
                c10.f7056d = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                g(canvas, this.f6512a.f() + e10, c10);
            } else if (this.f6513h.Q() == h.a.BOTTOM_INSIDE) {
                c10.f7055c = 0.5f;
                c10.f7056d = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                g(canvas, (this.f6512a.f() - e10) - this.f6513h.M, c10);
            } else {
                c10.f7055c = 0.5f;
                c10.f7056d = 1.0f;
                g(canvas, this.f6512a.j() - e10, c10);
                c10.f7055c = 0.5f;
                c10.f7056d = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                g(canvas, this.f6512a.f() + e10, c10);
            }
            g9.e.f(c10);
        }
    }

    public void j(Canvas canvas) {
        if (this.f6513h.A() && this.f6513h.f()) {
            this.f6463f.setColor(this.f6513h.n());
            this.f6463f.setStrokeWidth(this.f6513h.p());
            this.f6463f.setPathEffect(this.f6513h.o());
            if (this.f6513h.Q() == h.a.TOP || this.f6513h.Q() == h.a.TOP_INSIDE || this.f6513h.Q() == h.a.BOTH_SIDED) {
                canvas.drawLine(this.f6512a.h(), this.f6512a.j(), this.f6512a.i(), this.f6512a.j(), this.f6463f);
            }
            if (this.f6513h.Q() == h.a.BOTTOM || this.f6513h.Q() == h.a.BOTTOM_INSIDE || this.f6513h.Q() == h.a.BOTH_SIDED) {
                canvas.drawLine(this.f6512a.h(), this.f6512a.f(), this.f6512a.i(), this.f6512a.f(), this.f6463f);
            }
        }
    }

    public void k(Canvas canvas) {
        if (this.f6513h.C() && this.f6513h.f()) {
            int save = canvas.save();
            canvas.clipRect(h());
            if (this.f6515j.length != this.f6459b.f16141n * 2) {
                this.f6515j = new float[this.f6513h.f16141n * 2];
            }
            float[] fArr = this.f6515j;
            for (int i10 = 0; i10 < fArr.length; i10 += 2) {
                float[] fArr2 = this.f6513h.f16139l;
                int i11 = i10 / 2;
                fArr[i10] = fArr2[i11];
                fArr[i10 + 1] = fArr2[i11];
            }
            this.f6460c.e(fArr);
            o();
            Path path = this.f6514i;
            path.reset();
            for (int i12 = 0; i12 < fArr.length; i12 += 2) {
                e(canvas, fArr[i12], fArr[i12 + 1], path);
            }
            canvas.restoreToCount(save);
        }
    }

    public void l(Canvas canvas, x8.g gVar, float[] fArr, float f10) {
        String l10 = gVar.l();
        if (l10 == null || l10.equals("")) {
            return;
        }
        this.f6464g.setStyle(gVar.q());
        this.f6464g.setPathEffect(null);
        this.f6464g.setColor(gVar.a());
        this.f6464g.setStrokeWidth(0.5f);
        this.f6464g.setTextSize(gVar.b());
        float p10 = gVar.p() + gVar.d();
        g.a m10 = gVar.m();
        if (m10 == g.a.RIGHT_TOP) {
            float a10 = g9.i.a(this.f6464g, l10);
            this.f6464g.setTextAlign(Paint.Align.LEFT);
            canvas.drawText(l10, fArr[0] + p10, this.f6512a.j() + f10 + a10, this.f6464g);
        } else if (m10 == g.a.RIGHT_BOTTOM) {
            this.f6464g.setTextAlign(Paint.Align.LEFT);
            canvas.drawText(l10, fArr[0] + p10, this.f6512a.f() - f10, this.f6464g);
        } else if (m10 == g.a.LEFT_TOP) {
            this.f6464g.setTextAlign(Paint.Align.RIGHT);
            canvas.drawText(l10, fArr[0] - p10, this.f6512a.j() + f10 + g9.i.a(this.f6464g, l10), this.f6464g);
        } else {
            this.f6464g.setTextAlign(Paint.Align.RIGHT);
            canvas.drawText(l10, fArr[0] - p10, this.f6512a.f() - f10, this.f6464g);
        }
    }

    public void m(Canvas canvas, x8.g gVar, float[] fArr) {
        float[] fArr2 = this.f6519n;
        fArr2[0] = fArr[0];
        fArr2[1] = this.f6512a.j();
        float[] fArr3 = this.f6519n;
        fArr3[2] = fArr[0];
        fArr3[3] = this.f6512a.f();
        this.f6520o.reset();
        Path path = this.f6520o;
        float[] fArr4 = this.f6519n;
        path.moveTo(fArr4[0], fArr4[1]);
        Path path2 = this.f6520o;
        float[] fArr5 = this.f6519n;
        path2.lineTo(fArr5[2], fArr5[3]);
        this.f6464g.setStyle(Paint.Style.STROKE);
        this.f6464g.setColor(gVar.o());
        this.f6464g.setStrokeWidth(gVar.p());
        this.f6464g.setPathEffect(gVar.k());
        canvas.drawPath(this.f6520o, this.f6464g);
    }

    public void n(Canvas canvas) {
        List<x8.g> w10 = this.f6513h.w();
        if (w10 == null || w10.size() <= 0) {
            return;
        }
        float[] fArr = this.f6517l;
        fArr[0] = 0.0f;
        fArr[1] = 0.0f;
        for (int i10 = 0; i10 < w10.size(); i10++) {
            x8.g gVar = w10.get(i10);
            if (gVar.f()) {
                int save = canvas.save();
                this.f6518m.set(this.f6512a.o());
                this.f6518m.inset(-gVar.p(), StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
                canvas.clipRect(this.f6518m);
                fArr[0] = gVar.n();
                fArr[1] = 0.0f;
                this.f6460c.e(fArr);
                m(canvas, gVar, fArr);
                l(canvas, gVar, fArr, gVar.e() + 2.0f);
                canvas.restoreToCount(save);
            }
        }
    }

    public void o() {
        this.f6461d.setColor(this.f6513h.s());
        this.f6461d.setStrokeWidth(this.f6513h.u());
        this.f6461d.setPathEffect(this.f6513h.t());
    }
}
