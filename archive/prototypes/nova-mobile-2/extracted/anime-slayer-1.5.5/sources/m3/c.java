package m3;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import e3.k;
import h3.q;

/* compiled from: ImageLayer.java */
/* loaded from: classes.dex */
public class c extends a {
    public final Paint B;
    public final Rect C;
    public final Rect D;
    public h3.a<ColorFilter, ColorFilter> E;
    public h3.a<Bitmap, Bitmap> F;

    public c(e3.f fVar, d dVar) {
        super(fVar, dVar);
        this.B = new f3.a(3);
        this.C = new Rect();
        this.D = new Rect();
    }

    public final Bitmap N() {
        Bitmap h10;
        h3.a<Bitmap, Bitmap> aVar = this.F;
        return (aVar == null || (h10 = aVar.h()) == null) ? this.f10894n.t(this.f10895o.m()) : h10;
    }

    @Override // m3.a, g3.e
    public void a(RectF rectF, Matrix matrix, boolean z10) {
        super.a(rectF, matrix, z10);
        if (N() != null) {
            rectF.set(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, r3.getWidth() * q3.h.e(), r3.getHeight() * q3.h.e());
            this.f10893m.mapRect(rectF);
        }
    }

    @Override // m3.a, j3.f
    public <T> void e(T t10, r3.c<T> cVar) {
        super.e(t10, cVar);
        if (t10 == k.K) {
            if (cVar == null) {
                this.E = null;
                return;
            } else {
                this.E = new q(cVar);
                return;
            }
        }
        if (t10 == k.N) {
            if (cVar == null) {
                this.F = null;
            } else {
                this.F = new q(cVar);
            }
        }
    }

    @Override // m3.a
    public void t(Canvas canvas, Matrix matrix, int i10) {
        Bitmap N = N();
        if (N == null || N.isRecycled()) {
            return;
        }
        float e10 = q3.h.e();
        this.B.setAlpha(i10);
        h3.a<ColorFilter, ColorFilter> aVar = this.E;
        if (aVar != null) {
            this.B.setColorFilter(aVar.h());
        }
        canvas.save();
        canvas.concat(matrix);
        this.C.set(0, 0, N.getWidth(), N.getHeight());
        this.D.set(0, 0, (int) (N.getWidth() * e10), (int) (N.getHeight() * e10));
        canvas.drawBitmap(N, this.C, this.D, this.B);
        canvas.restore();
    }
}
