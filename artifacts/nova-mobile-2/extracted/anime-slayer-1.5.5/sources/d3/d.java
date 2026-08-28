package d3;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import g0.h;
import jc.l;

/* compiled from: Fonts.kt */
/* loaded from: classes.dex */
public final class d {
    public static final Typeface a(s2.c cVar, Integer num, Integer num2) {
        l.g(cVar, "$this$font");
        e.f5611a.a("font", num2, num);
        if (num != null) {
            return c(cVar.i(), num.intValue());
        }
        if (num2 != null) {
            TypedArray obtainStyledAttributes = cVar.i().getTheme().obtainStyledAttributes(new int[]{num2.intValue()});
            try {
                int resourceId = obtainStyledAttributes.getResourceId(0, 0);
                if (resourceId == 0) {
                    return null;
                }
                return c(cVar.i(), resourceId);
            } finally {
                obtainStyledAttributes.recycle();
            }
        }
        throw new IllegalArgumentException("Required value was null.".toString());
    }

    public static /* synthetic */ Typeface b(s2.c cVar, Integer num, Integer num2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            num = null;
        }
        if ((i10 & 2) != 0) {
            num2 = null;
        }
        return a(cVar, num, num2);
    }

    public static final Typeface c(Context context, int i10) {
        try {
            return h.g(context, i10);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }
}
