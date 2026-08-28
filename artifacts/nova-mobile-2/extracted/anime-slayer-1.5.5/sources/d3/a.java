package d3;

import android.graphics.Color;
import com.google.android.material.progressindicator.BaseProgressIndicator;
import jc.l;

/* compiled from: Colors.kt */
/* loaded from: classes.dex */
public final class a {
    public static final int a(int i10, float f10) {
        return Color.argb((int) (BaseProgressIndicator.MAX_ALPHA * f10), Color.red(i10), Color.green(i10), Color.blue(i10));
    }

    public static final int b(s2.c cVar, Integer num, Integer num2, ic.a<Integer> aVar) {
        l.g(cVar, "$this$resolveColor");
        return e.f5611a.k(cVar.i(), num, num2, aVar);
    }

    public static /* synthetic */ int c(s2.c cVar, Integer num, Integer num2, ic.a aVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            num = null;
        }
        if ((i10 & 2) != 0) {
            num2 = null;
        }
        if ((i10 & 4) != 0) {
            aVar = null;
        }
        return b(cVar, num, num2, aVar);
    }

    public static final int[] d(s2.c cVar, int[] iArr, ic.l<? super Integer, Integer> lVar) {
        l.g(cVar, "$this$resolveColors");
        l.g(iArr, "attrs");
        return e.f5611a.m(cVar.i(), iArr, lVar);
    }

    public static /* synthetic */ int[] e(s2.c cVar, int[] iArr, ic.l lVar, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            lVar = null;
        }
        return d(cVar, iArr, lVar);
    }
}
