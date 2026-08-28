package mb;

import android.view.ViewGroup;

/* compiled from: LayoutParams.kt */
/* loaded from: classes.dex */
public final class f {
    public static final boolean a(ViewGroup.MarginLayoutParams marginLayoutParams, int i10, int i11, int i12, int i13) {
        jc.l.f(marginLayoutParams, "$this$updateMargins");
        if (i10 == marginLayoutParams.leftMargin && i11 == marginLayoutParams.topMargin && i12 == marginLayoutParams.rightMargin && i13 == marginLayoutParams.bottomMargin) {
            return false;
        }
        marginLayoutParams.setMargins(i10, i11, i12, i13);
        return true;
    }
}
