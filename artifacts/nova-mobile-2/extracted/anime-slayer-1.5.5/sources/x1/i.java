package x1;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PathMeasure;
import com.google.android.material.internal.StaticLayoutBuilderCompat;

/* compiled from: PatternPathMotion.java */
/* loaded from: classes.dex */
public class i extends g {

    /* renamed from: a, reason: collision with root package name */
    public Path f15754a;

    /* renamed from: b, reason: collision with root package name */
    public final Path f15755b = new Path();

    /* renamed from: c, reason: collision with root package name */
    public final Matrix f15756c = new Matrix();

    public i(Path path) {
        b(path);
    }

    public static float a(float f10, float f11) {
        return (float) Math.sqrt((f10 * f10) + (f11 * f11));
    }

    public void b(Path path) {
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float[] fArr = new float[2];
        pathMeasure.getPosTan(pathMeasure.getLength(), fArr, null);
        float f10 = fArr[0];
        float f11 = fArr[1];
        pathMeasure.getPosTan(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, fArr, null);
        float f12 = fArr[0];
        float f13 = fArr[1];
        if (f12 == f10 && f13 == f11) {
            throw new IllegalArgumentException("pattern must not end at the starting point");
        }
        this.f15756c.setTranslate(-f12, -f13);
        float f14 = f10 - f12;
        float f15 = f11 - f13;
        float a10 = 1.0f / a(f14, f15);
        this.f15756c.postScale(a10, a10);
        this.f15756c.postRotate((float) Math.toDegrees(-Math.atan2(f15, f14)));
        path.transform(this.f15756c, this.f15755b);
        this.f15754a = path;
    }

    @Override // x1.g
    public Path getPath(float f10, float f11, float f12, float f13) {
        float f14 = f12 - f10;
        float f15 = f13 - f11;
        float a10 = a(f14, f15);
        double atan2 = Math.atan2(f15, f14);
        this.f15756c.setScale(a10, a10);
        this.f15756c.postRotate((float) Math.toDegrees(atan2));
        this.f15756c.postTranslate(f10, f11);
        Path path = new Path();
        this.f15755b.transform(this.f15756c, path);
        return path;
    }
}
