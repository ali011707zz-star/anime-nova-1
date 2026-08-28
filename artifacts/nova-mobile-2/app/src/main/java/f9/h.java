package f9;

import android.graphics.Canvas;
import android.graphics.Path;

/* compiled from: LineScatterCandleRadarRenderer.java */
/* loaded from: classes.dex */
public abstract class h extends c {

    /* renamed from: h, reason: collision with root package name */
    public Path f6489h;

    public h(u8.a aVar, g9.j jVar) {
        super(aVar, jVar);
        this.f6489h = new Path();
    }

    public void j(Canvas canvas, float f10, float f11, c9.f fVar) {
        this.f6475d.setColor(fVar.X());
        this.f6475d.setStrokeWidth(fVar.P());
        this.f6475d.setPathEffect(fVar.r());
        if (fVar.j0()) {
            this.f6489h.reset();
            this.f6489h.moveTo(f10, this.f6512a.j());
            this.f6489h.lineTo(f10, this.f6512a.f());
            canvas.drawPath(this.f6489h, this.f6475d);
        }
        if (fVar.o0()) {
            this.f6489h.reset();
            this.f6489h.moveTo(this.f6512a.h(), f11);
            this.f6489h.lineTo(this.f6512a.i(), f11);
            canvas.drawPath(this.f6489h, this.f6475d);
        }
    }
}
