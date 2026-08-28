package f9;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.util.List;
import x8.g;
import x8.i;

/* compiled from: YAxisRenderer.java */
/* loaded from: classes.dex */
public class o extends a {

    /* renamed from: h, reason: collision with root package name */
    public x8.i f6524h;

    /* renamed from: i, reason: collision with root package name */
    public Paint f6525i;

    /* renamed from: j, reason: collision with root package name */
    public Path f6526j;

    /* renamed from: k, reason: collision with root package name */
    public RectF f6527k;

    /* renamed from: l, reason: collision with root package name */
    public float[] f6528l;

    /* renamed from: m, reason: collision with root package name */
    public Path f6529m;

    /* renamed from: n, reason: collision with root package name */
    public RectF f6530n;

    /* renamed from: o, reason: collision with root package name */
    public Path f6531o;

    /* renamed from: p, reason: collision with root package name */
    public float[] f6532p;

    /* renamed from: q, reason: collision with root package name */
    public RectF f6533q;

    public o(g9.j jVar, x8.i iVar, g9.g gVar) {
        super(jVar, gVar, iVar);
        this.f6526j = new Path();
        this.f6527k = new RectF();
        this.f6528l = new float[2];
        this.f6529m = new Path();
        this.f6530n = new RectF();
        this.f6531o = new Path();
        this.f6532p = new float[2];
        this.f6533q = new RectF();
        this.f6524h = iVar;
        if (this.f6512a != null) {
            this.f6462e.setColor(-16777216);
            this.f6462e.setTextSize(g9.i.e(10.0f));
            Paint paint = new Paint(1);
            this.f6525i = paint;
            paint.setColor(-7829368);
            this.f6525i.setStrokeWidth(1.0f);
            this.f6525i.setStyle(Paint.Style.STROKE);
        }
    }

    public void d(Canvas canvas, float f10, float[] fArr, float f11) {
        int i10 = this.f6524h.a0() ? this.f6524h.f16141n : this.f6524h.f16141n - 1;
        for (int i11 = !this.f6524h.Z() ? 1 : 0; i11 < i10; i11++) {
            canvas.drawText(this.f6524h.q(i11), f10, fArr[(i11 * 2) + 1] + f11, this.f6462e);
        }
    }

    public void e(Canvas canvas) {
        int save = canvas.save();
        this.f6530n.set(this.f6512a.o());
        this.f6530n.inset(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, -this.f6524h.Y());
        canvas.clipRect(this.f6530n);
        g9.d a10 = this.f6460c.a(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        this.f6525i.setColor(this.f6524h.X());
        this.f6525i.setStrokeWidth(this.f6524h.Y());
        Path path = this.f6529m;
        path.reset();
        path.moveTo(this.f6512a.h(), (float) a10.f7052d);
        path.lineTo(this.f6512a.i(), (float) a10.f7052d);
        canvas.drawPath(path, this.f6525i);
        canvas.restoreToCount(save);
    }

    public RectF f() {
        this.f6527k.set(this.f6512a.o());
        this.f6527k.inset(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, -this.f6459b.u());
        return this.f6527k;
    }

    public float[] g() {
        int length = this.f6528l.length;
        int i10 = this.f6524h.f16141n;
        if (length != i10 * 2) {
            this.f6528l = new float[i10 * 2];
        }
        float[] fArr = this.f6528l;
        for (int i11 = 0; i11 < fArr.length; i11 += 2) {
            fArr[i11 + 1] = this.f6524h.f16139l[i11 / 2];
        }
        this.f6460c.e(fArr);
        return fArr;
    }

    public Path h(Path path, int i10, float[] fArr) {
        int i11 = i10 + 1;
        path.moveTo(this.f6512a.G(), fArr[i11]);
        path.lineTo(this.f6512a.i(), fArr[i11]);
        return path;
    }

    public void i(Canvas canvas) {
        float i10;
        float i11;
        float f10;
        if (this.f6524h.f() && this.f6524h.D()) {
            float[] g10 = g();
            this.f6462e.setTypeface(this.f6524h.c());
            this.f6462e.setTextSize(this.f6524h.b());
            this.f6462e.setColor(this.f6524h.a());
            float d10 = this.f6524h.d();
            float a10 = (g9.i.a(this.f6462e, "A") / 2.5f) + this.f6524h.e();
            i.a P = this.f6524h.P();
            i.b Q = this.f6524h.Q();
            if (P == i.a.LEFT) {
                if (Q == i.b.OUTSIDE_CHART) {
                    this.f6462e.setTextAlign(Paint.Align.RIGHT);
                    i10 = this.f6512a.G();
                    f10 = i10 - d10;
                } else {
                    this.f6462e.setTextAlign(Paint.Align.LEFT);
                    i11 = this.f6512a.G();
                    f10 = i11 + d10;
                }
            } else if (Q == i.b.OUTSIDE_CHART) {
                this.f6462e.setTextAlign(Paint.Align.LEFT);
                i11 = this.f6512a.i();
                f10 = i11 + d10;
            } else {
                this.f6462e.setTextAlign(Paint.Align.RIGHT);
                i10 = this.f6512a.i();
                f10 = i10 - d10;
            }
            d(canvas, f10, g10, a10);
        }
    }

    public void j(Canvas canvas) {
        if (this.f6524h.f() && this.f6524h.A()) {
            this.f6463f.setColor(this.f6524h.n());
            this.f6463f.setStrokeWidth(this.f6524h.p());
            if (this.f6524h.P() == i.a.LEFT) {
                canvas.drawLine(this.f6512a.h(), this.f6512a.j(), this.f6512a.h(), this.f6512a.f(), this.f6463f);
            } else {
                canvas.drawLine(this.f6512a.i(), this.f6512a.j(), this.f6512a.i(), this.f6512a.f(), this.f6463f);
            }
        }
    }

    public void k(Canvas canvas) {
        if (this.f6524h.f()) {
            if (this.f6524h.C()) {
                int save = canvas.save();
                canvas.clipRect(f());
                float[] g10 = g();
                this.f6461d.setColor(this.f6524h.s());
                this.f6461d.setStrokeWidth(this.f6524h.u());
                this.f6461d.setPathEffect(this.f6524h.t());
                Path path = this.f6526j;
                path.reset();
                for (int i10 = 0; i10 < g10.length; i10 += 2) {
                    canvas.drawPath(h(path, i10, g10), this.f6461d);
                    path.reset();
                }
                canvas.restoreToCount(save);
            }
            if (this.f6524h.b0()) {
                e(canvas);
            }
        }
    }

    public void l(Canvas canvas) {
        List<x8.g> w10 = this.f6524h.w();
        if (w10 == null || w10.size() <= 0) {
            return;
        }
        float[] fArr = this.f6532p;
        fArr[0] = 0.0f;
        fArr[1] = 0.0f;
        Path path = this.f6531o;
        path.reset();
        for (int i10 = 0; i10 < w10.size(); i10++) {
            x8.g gVar = w10.get(i10);
            if (gVar.f()) {
                int save = canvas.save();
                this.f6533q.set(this.f6512a.o());
                this.f6533q.inset(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, -gVar.p());
                canvas.clipRect(this.f6533q);
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
                    this.f6464g.setTypeface(gVar.c());
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
