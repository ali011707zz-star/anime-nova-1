package f9;

import android.graphics.Canvas;
import com.google.android.material.internal.StaticLayoutBuilderCompat;

/* compiled from: XAxisRendererRadarChart.java */
/* loaded from: classes.dex */
public class n extends l {

    /* renamed from: p, reason: collision with root package name */
    public w8.e f6523p;

    public n(g9.j jVar, x8.h hVar, w8.e eVar) {
        super(jVar, hVar, null);
        this.f6523p = eVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // f9.l
    public void i(Canvas canvas) {
        if (this.f6513h.f() && this.f6513h.D()) {
            float P = this.f6513h.P();
            g9.e c10 = g9.e.c(0.5f, 0.25f);
            this.f6462e.setTypeface(this.f6513h.c());
            this.f6462e.setTextSize(this.f6513h.b());
            this.f6462e.setColor(this.f6513h.a());
            float sliceAngle = this.f6523p.getSliceAngle();
            float factor = this.f6523p.getFactor();
            g9.e centerOffsets = this.f6523p.getCenterOffsets();
            g9.e c11 = g9.e.c(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
            for (int i10 = 0; i10 < ((y8.n) this.f6523p.getData()).l().e0(); i10++) {
                float f10 = i10;
                String a10 = this.f6513h.y().a(f10, this.f6513h);
                g9.i.r(centerOffsets, (this.f6523p.getYRange() * factor) + (this.f6513h.L / 2.0f), ((f10 * sliceAngle) + this.f6523p.getRotationAngle()) % 360.0f, c11);
                f(canvas, a10, c11.f7055c, c11.f7056d - (this.f6513h.M / 2.0f), c10, P);
            }
            g9.e.f(centerOffsets);
            g9.e.f(c11);
            g9.e.f(c10);
        }
    }

    @Override // f9.l
    public void n(Canvas canvas) {
    }
}
