package q0;

import android.os.Build;
import android.view.ViewGroup;

/* compiled from: ViewGroupCompat.java */
/* loaded from: classes.dex */
public final class e0 {
    public static boolean a(ViewGroup viewGroup) {
        if (Build.VERSION.SDK_INT >= 21) {
            return viewGroup.isTransitionGroup();
        }
        Boolean bool = (Boolean) viewGroup.getTag(d0.c.Q);
        return ((bool == null || !bool.booleanValue()) && viewGroup.getBackground() == null && b0.O(viewGroup) == null) ? false : true;
    }
}
