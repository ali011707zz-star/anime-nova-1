package u0;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.EdgeEffect;
import com.google.android.material.internal.StaticLayoutBuilderCompat;

/* compiled from: EdgeEffectCompat.java */
/* loaded from: classes.dex */
public final class e {

    /* compiled from: EdgeEffectCompat.java */
    /* loaded from: classes.dex */
    public static class a {
        public static EdgeEffect a(Context context, AttributeSet attributeSet) {
            try {
                return new EdgeEffect(context, attributeSet);
            } catch (Throwable unused) {
                return new EdgeEffect(context);
            }
        }

        public static float b(EdgeEffect edgeEffect) {
            try {
                return edgeEffect.getDistance();
            } catch (Throwable unused) {
                return StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            }
        }

        public static float c(EdgeEffect edgeEffect, float f10, float f11) {
            try {
                return edgeEffect.onPullDistance(f10, f11);
            } catch (Throwable unused) {
                edgeEffect.onPull(f10, f11);
                return StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            }
        }
    }

    public static EdgeEffect a(Context context, AttributeSet attributeSet) {
        if (m0.a.c()) {
            return a.a(context, attributeSet);
        }
        return new EdgeEffect(context);
    }

    public static float b(EdgeEffect edgeEffect) {
        return m0.a.c() ? a.b(edgeEffect) : StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
    }

    public static void c(EdgeEffect edgeEffect, float f10, float f11) {
        if (Build.VERSION.SDK_INT >= 21) {
            edgeEffect.onPull(f10, f11);
        } else {
            edgeEffect.onPull(f10);
        }
    }

    public static float d(EdgeEffect edgeEffect, float f10, float f11) {
        if (m0.a.c()) {
            return a.c(edgeEffect, f10, f11);
        }
        c(edgeEffect, f10, f11);
        return f10;
    }
}
