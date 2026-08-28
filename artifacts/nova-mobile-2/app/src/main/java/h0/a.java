package h0;

import android.graphics.BlendMode;
import android.graphics.BlendModeColorFilter;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.os.Build;

/* compiled from: BlendModeColorFilterCompat.java */
/* loaded from: classes.dex */
public class a {
    public static ColorFilter a(int i10, b bVar) {
        if (Build.VERSION.SDK_INT >= 29) {
            BlendMode a10 = c.a(bVar);
            if (a10 != null) {
                return new BlendModeColorFilter(i10, a10);
            }
            return null;
        }
        PorterDuff.Mode b10 = c.b(bVar);
        if (b10 != null) {
            return new PorterDuffColorFilter(i10, b10);
        }
        return null;
    }
}
