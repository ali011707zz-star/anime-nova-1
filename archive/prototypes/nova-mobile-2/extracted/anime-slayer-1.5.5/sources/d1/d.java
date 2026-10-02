package d1;

import android.view.animation.Interpolator;
import com.google.android.material.internal.StaticLayoutBuilderCompat;

/* compiled from: LookupTableInterpolator.java */
/* loaded from: classes.dex */
public abstract class d implements Interpolator {

    /* renamed from: a, reason: collision with root package name */
    public final float[] f5516a;

    /* renamed from: b, reason: collision with root package name */
    public final float f5517b;

    public d(float[] fArr) {
        this.f5516a = fArr;
        this.f5517b = 1.0f / (fArr.length - 1);
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f10) {
        if (f10 >= 1.0f) {
            return 1.0f;
        }
        if (f10 <= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            return StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        }
        float[] fArr = this.f5516a;
        int min = Math.min((int) ((fArr.length - 1) * f10), fArr.length - 2);
        float f11 = this.f5517b;
        float f12 = (f10 - (min * f11)) / f11;
        float[] fArr2 = this.f5516a;
        return fArr2[min] + (f12 * (fArr2[min + 1] - fArr2[min]));
    }
}
