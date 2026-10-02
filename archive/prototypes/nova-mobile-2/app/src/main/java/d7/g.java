package d7;

import android.content.res.Resources;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import jc.l;

/* compiled from: CommentExtensions.kt */
/* loaded from: classes.dex */
public final class g {
    public static final int a(m4.b bVar) {
        l.f(bVar, "<this>");
        String g10 = bVar.g();
        int i10 = 0;
        for (int i11 = 0; i11 < g10.length(); i11++) {
            if (g10.charAt(i11) == '\n') {
                i10++;
            }
        }
        if (i10 > 5) {
            return i10;
        }
        Rect rect = new Rect();
        Paint paint = new Paint();
        paint.setTextSize(k7.b.i(14));
        paint.setTypeface(Typeface.SANS_SERIF);
        paint.getTextBounds(bVar.g(), 0, bVar.g().length(), rect);
        return (int) Math.ceil(rect.width() / (Resources.getSystem().getDisplayMetrics().widthPixels - k7.b.g(64)));
    }

    public static final boolean b(m4.b bVar) {
        l.f(bVar, "<this>");
        return l.a(bVar.r(), "Yes");
    }

    public static final boolean c(m4.b bVar) {
        l.f(bVar, "<this>");
        return l.a(bVar.t(), "Yes");
    }

    public static final boolean d(m4.b bVar) {
        l.f(bVar, "<this>");
        return l.a(bVar.o(), "Yes") || bVar.p() > 3;
    }
}
