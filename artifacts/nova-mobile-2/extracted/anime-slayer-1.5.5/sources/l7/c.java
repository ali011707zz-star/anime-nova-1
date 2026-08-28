package l7;

import android.content.res.Resources;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.google.android.material.internal.StaticLayoutBuilderCompat;

/* compiled from: LayoutHelper.java */
/* loaded from: classes.dex */
public class c {
    public static FrameLayout.LayoutParams a(int i10, int i11) {
        return new FrameLayout.LayoutParams(f(i10), f(i11));
    }

    public static FrameLayout.LayoutParams b(int i10, int i11, float f10, float f11, float f12, float f13) {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(f(i10), f(i11));
        layoutParams.setMargins(e(f10), e(f11), e(f12), e(f13));
        return layoutParams;
    }

    public static LinearLayout.LayoutParams c(int i10, int i11) {
        return new LinearLayout.LayoutParams(f(i10), f(i11));
    }

    public static LinearLayout.LayoutParams d(int i10, int i11, float f10, float f11, float f12, float f13) {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(f(i10), f(i11));
        layoutParams.setMargins(e(f10), e(f11), e(f12), e(f13));
        return layoutParams;
    }

    public static int e(float f10) {
        return (int) Math.ceil(f10 * Resources.getSystem().getDisplayMetrics().density);
    }

    public static int f(float f10) {
        if (f10 >= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            f10 = e(f10);
        }
        return (int) f10;
    }
}
