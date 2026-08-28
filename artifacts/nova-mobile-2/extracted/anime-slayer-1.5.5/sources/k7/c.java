package k7;

import com.anslayer.R;
import ic.p;

/* compiled from: FragmentActivityExtensions.kt */
/* loaded from: classes.dex */
public final class c {
    public static final s2.c a(androidx.fragment.app.e eVar) {
        if (eVar == null) {
            return null;
        }
        return new s2.c(eVar, null, 2, null);
    }

    public static final s2.c b(androidx.fragment.app.e eVar, int i10, p<? super s2.c, ? super CharSequence, vb.p> pVar) {
        s2.c a10;
        s2.c y10;
        s2.c n10;
        s2.c v10;
        if (eVar == null || (a10 = a(eVar)) == null || (y10 = s2.c.y(a10, Integer.valueOf(R.string.title_dialog_email), null, 2, null)) == null || (n10 = s2.c.n(y10, Integer.valueOf(R.string.text_dialog_email), null, null, 6, null)) == null || (v10 = s2.c.v(n10, Integer.valueOf(R.string.Ok), null, null, 6, null)) == null) {
            return null;
        }
        return x2.a.d(v10, null, Integer.valueOf(R.string.hint_dialog_email), null, null, i10, null, false, false, pVar, 237, null);
    }
}
