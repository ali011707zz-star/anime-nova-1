package cb;

import android.content.Context;
import android.util.TypedValue;

/* compiled from: SizeUtils.java */
/* loaded from: classes.dex */
public class k {
    public static int a(Context context, float f10) {
        return (int) TypedValue.applyDimension(1, f10, context.getResources().getDisplayMetrics());
    }

    public static int b(Context context, float f10) {
        return (int) ((f10 / context.getResources().getDisplayMetrics().scaledDensity) + 0.5f);
    }

    public static int c(Context context, float f10) {
        return (int) ((f10 * context.getResources().getDisplayMetrics().scaledDensity) + 0.5f);
    }
}
