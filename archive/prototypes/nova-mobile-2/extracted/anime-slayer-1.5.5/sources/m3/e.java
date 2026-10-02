package m3;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.RectF;
import com.google.android.material.internal.StaticLayoutBuilderCompat;

/* compiled from: NullLayer.java */
/* loaded from: classes.dex */
public class e extends a {
    public e(e3.f fVar, d dVar) {
        super(fVar, dVar);
    }

    @Override // m3.a, g3.e
    public void a(RectF rectF, Matrix matrix, boolean z10) {
        super.a(rectF, matrix, z10);
        rectF.set(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
    }

    @Override // m3.a
    public void t(Canvas canvas, Matrix matrix, int i10) {
    }
}
