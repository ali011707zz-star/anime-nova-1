package f9;

import android.graphics.Canvas;
import android.graphics.Path;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.google.android.material.shadow.ShadowDrawableWrapper;
import java.util.List;

/* compiled from: YAxisRendererRadarChart.java */
/* loaded from: classes.dex */
public class q extends o {

    /* renamed from: r, reason: collision with root package name */
    public w8.e f6537r;

    /* renamed from: s, reason: collision with root package name */
    public Path f6538s;

    public q(g9.j jVar, x8.i iVar, w8.e eVar) {
        super(jVar, iVar, null);
        this.f6538s = new Path();
        this.f6537r = eVar;
    }

    @Override // f9.a
    public void b(float f10, float f11) {
        double ceil;
        double w10;
        int i10;
        float f12 = f10;
        int v10 = this.f6459b.v();
        double abs = Math.abs(f11 - f12);
        if (v10 != 0 && abs > ShadowDrawableWrapper.COS_45 && !Double.isInfinite(abs)) {
            double d10 = v10;
            Double.isNaN(abs);
            Double.isNaN(d10);
            double y10 = g9.i.y(abs / d10);
            if (this.f6459b.G() && y10 < this.f6459b.r()) {
                y10 = this.f6459b.r();
            }
            double y11 = g9.i.y(Math.pow(10.0d, (int) Math.log10(y10)));
            Double.isNaN(y11);
            if (((int) (y10 / y11)) > 5) {
                Double.isNaN(y11);
                y10 = Math.floor(y11 * 10.0d);
            }
            boolean z10 = this.f6459b.z();
            if (this.f6459b.F()) {
                float f13 = ((float) abs) / (v10 - 1);
                x8.a aVar = this.f6459b;
                aVar.f16141n = v10;
                if (aVar.f16139l.length < v10) {
                    aVar.f16139l = new float[v10];
                }
                for (int i11 = 0; i11 < v10; i11++) {
                    this.f6459b.f16139l[i11] = f12;
                    f12 += f13;
                }
            } else {
                if (y10 == ShadowDrawableWrapper.COS_45) {
                    ceil = ShadowDrawableWrapper.COS_45;
                } else {
                    double d11 = f12;
                    Double.isNaN(d11);
                    ceil = Math.ceil(d11 / y10) * y10;
                }
                if (z10) {
                    ceil -= y10;
                }
                if (y10 == ShadowDrawableWrapper.COS_45) {
                    w10 = 0.0d;
                } else {
                    double d12 = f11;
                    Double.isNaN(d12);
                    w10 = g9.i.w(Math.floor(d12 / y10) * y10);
                }
                if (y10 != ShadowDrawableWrapper.COS_45) {
                    i10 = z10 ? 1 : 0;
                    for (double d13 = ceil; d13 <= w10; d13 += y10) {
                        i10++;
                    }
                } else {
                    i10 = z10 ? 1 : 0;
                }
                int i12 = i10 + 1;
                x8.a aVar2 = this.f6459b;
                aVar2.f16141n = i12;
                if (aVar2.f16139l.length < i12) {
                    aVar2.f16139l = new float[i12];
                }
                for (int i13 = 0; i13 < i12; i13++) {
                    if (ceil == ShadowDrawableWrapper.COS_45) {
                        ceil = 0.0d;
                    }
                    this.f6459b.f16139l[i13] = (float) ceil;
                    ceil += y10;
                }
                v10 = i12;
            }
            if (y10 < 1.0d) {
                this.f6459b.f16142o = (int) Math.ceil(-Math.log10(y10));
            } else {
                this.f6459b.f16142o = 0;
            }
            if (z10) {
                x8.a aVar3 = this.f6459b;
                if (aVar3.f16140m.length < v10) {
                    aVar3.f16140m = new float[v10];
                }
                float[] fArr = aVar3.f16139l;
                float f14 = (fArr[1] - fArr[0]) / 2.0f;
                for (int i14 = 0; i14 < v10; i14++) {
                    x8.a aVar4 = this.f6459b;
                    aVar4.f16140m[i14] = aVar4.f16139l[i14] + f14;
                }
            }
            x8.a aVar5 = this.f6459b;
            float[] fArr2 = aVar5.f16139l;
            float f15 = fArr2[0];
            aVar5.H = f15;
            float f16 = fArr2[v10 - 1];
            aVar5.G = f16;
            aVar5.I = Math.abs(f16 - f15);
            return;
        }
        x8.a aVar6 = this.f6459b;
        aVar6.f16139l = new float[0];
        aVar6.f16140m = new float[0];
        aVar6.f16141n = 0;
    }

    @Override // f9.o
    public void i(Canvas canvas) {
        if (this.f6524h.f() && this.f6524h.D()) {
            this.f6462e.setTypeface(this.f6524h.c());
            this.f6462e.setTextSize(this.f6524h.b());
            this.f6462e.setColor(this.f6524h.a());
            g9.e centerOffsets = this.f6537r.getCenterOffsets();
            g9.e c10 = g9.e.c(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
            float factor = this.f6537r.getFactor();
            int i10 = this.f6524h.a0() ? this.f6524h.f16141n : this.f6524h.f16141n - 1;
            for (int i11 = !this.f6524h.Z() ? 1 : 0; i11 < i10; i11++) {
                x8.i iVar = this.f6524h;
                g9.i.r(centerOffsets, (iVar.f16139l[i11] - iVar.H) * factor, this.f6537r.getRotationAngle(), c10);
                canvas.drawText(this.f6524h.q(i11), c10.f7055c + 10.0f, c10.f7056d, this.f6462e);
            }
            g9.e.f(centerOffsets);
            g9.e.f(c10);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // f9.o
    public void l(Canvas canvas) {
        List<x8.g> w10 = this.f6524h.w();
        if (w10 == null) {
            return;
        }
        float sliceAngle = this.f6537r.getSliceAngle();
        float factor = this.f6537r.getFactor();
        g9.e centerOffsets = this.f6537r.getCenterOffsets();
        g9.e c10 = g9.e.c(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        for (int i10 = 0; i10 < w10.size(); i10++) {
            x8.g gVar = w10.get(i10);
            if (gVar.f()) {
                this.f6464g.setColor(gVar.o());
                this.f6464g.setPathEffect(gVar.k());
                this.f6464g.setStrokeWidth(gVar.p());
                float n10 = (gVar.n() - this.f6537r.getYChartMin()) * factor;
                Path path = this.f6538s;
                path.reset();
                for (int i11 = 0; i11 < ((y8.n) this.f6537r.getData()).l().e0(); i11++) {
                    g9.i.r(centerOffsets, n10, (i11 * sliceAngle) + this.f6537r.getRotationAngle(), c10);
                    if (i11 == 0) {
                        path.moveTo(c10.f7055c, c10.f7056d);
                    } else {
                        path.lineTo(c10.f7055c, c10.f7056d);
                    }
                }
                path.close();
                canvas.drawPath(path, this.f6464g);
            }
        }
        g9.e.f(centerOffsets);
        g9.e.f(c10);
    }
}
