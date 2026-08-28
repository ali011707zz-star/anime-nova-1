package m3;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import e3.k;
import h3.q;

/* compiled from: SolidLayer.java */
/* loaded from: classes.dex */
public class g extends a {
    public final RectF B;
    public final Paint C;
    public final float[] D;
    public final Path E;
    public final d F;
    public h3.a<ColorFilter, ColorFilter> G;

    public g(e3.f fVar, d dVar) {
        super(fVar, dVar);
        this.B = new RectF();
        f3.a aVar = new f3.a();
        this.C = aVar;
        this.D = new float[8];
        this.E = new Path();
        this.F = dVar;
        aVar.setAlpha(0);
        aVar.setStyle(Paint.Style.FILL);
        aVar.setColor(dVar.o());
    }

    @Override // m3.a, g3.e
    public void a(RectF rectF, Matrix matrix, boolean z10) {
        super.a(rectF, matrix, z10);
        this.B.set(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, this.F.q(), this.F.p());
        this.f10893m.mapRect(this.B);
        rectF.set(this.B);
    }

    @Override // m3.a, j3.f
    public <T> void e(T t10, r3.c<T> cVar) {
        super.e(t10, cVar);
        if (t10 == k.K) {
            if (cVar == null) {
                this.G = null;
            } else {
                this.G = new q(cVar);
            }
        }
    }

    @Override // m3.a
    public void t(Canvas canvas, Matrix matrix, int i10) {
        int alpha = Color.alpha(this.F.o());
        if (alpha == 0) {
            return;
        }
        int intValue = (int) ((i10 / 255.0f) * (((alpha / 255.0f) * (this.f10902v.h() == null ? 100 : this.f10902v.h().h().intValue())) / 100.0f) * 255.0f);
        this.C.setAlpha(intValue);
        h3.a<ColorFilter, ColorFilter> aVar = this.G;
        if (aVar != null) {
            this.C.setColorFilter(aVar.h());
        }
        if (intValue > 0) {
            float[] fArr = this.D;
            fArr[0] = 0.0f;
            fArr[1] = 0.0f;
            fArr[2] = this.F.q();
            float[] fArr2 = this.D;
            fArr2[3] = 0.0f;
            fArr2[4] = this.F.q();
            this.D[5] = this.F.p();
            float[] fArr3 = this.D;
            fArr3[6] = 0.0f;
            fArr3[7] = this.F.p();
            matrix.mapPoints(this.D);
            this.E.reset();
            Path path = this.E;
            float[] fArr4 = this.D;
            path.moveTo(fArr4[0], fArr4[1]);
            Path path2 = this.E;
            float[] fArr5 = this.D;
            path2.lineTo(fArr5[2], fArr5[3]);
            Path path3 = this.E;
            float[] fArr6 = this.D;
            path3.lineTo(fArr6[4], fArr6[5]);
            Path path4 = this.E;
            float[] fArr7 = this.D;
            path4.lineTo(fArr7[6], fArr7[7]);
            Path path5 = this.E;
            float[] fArr8 = this.D;
            path5.lineTo(fArr8[0], fArr8[1]);
            this.E.close();
            canvas.drawPath(this.E, this.C);
        }
    }
}
