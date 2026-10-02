package d3;

import android.content.res.Resources;
import android.util.TypedValue;
import android.view.View;
import jc.l;

/* compiled from: Dimens.kt */
/* loaded from: classes.dex */
public final class c {
    public static final float a(View view, int i10) {
        l.g(view, "$this$dp");
        Resources resources = view.getResources();
        l.b(resources, "resources");
        return TypedValue.applyDimension(1, i10, resources.getDisplayMetrics());
    }
}
