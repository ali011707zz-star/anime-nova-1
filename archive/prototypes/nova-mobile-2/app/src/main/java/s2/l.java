package s2;

import android.R;
import android.content.Context;
import com.google.android.material.shadow.ShadowDrawableWrapper;

/* compiled from: Theme.kt */
/* loaded from: classes.dex */
public final class l {
    public static final int a(Context context, a aVar) {
        jc.l.g(context, "context");
        jc.l.g(aVar, "dialogBehavior");
        return aVar.f(!b(context));
    }

    public static final boolean b(Context context) {
        jc.l.g(context, "context");
        d3.e eVar = d3.e.f5611a;
        return d3.e.h(eVar, d3.e.l(eVar, context, null, Integer.valueOf(R.attr.textColorPrimary), null, 10, null), ShadowDrawableWrapper.COS_45, 1, null);
    }
}
