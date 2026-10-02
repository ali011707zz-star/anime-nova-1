package h0;

import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Build;
import com.google.android.material.internal.StaticLayoutBuilderCompat;

/* compiled from: PaintCompat.java */
/* loaded from: classes.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public static final ThreadLocal<p0.e<Rect, Rect>> f7156a = new ThreadLocal<>();

    public static boolean a(Paint paint, String str) {
        if (Build.VERSION.SDK_INT >= 23) {
            return paint.hasGlyph(str);
        }
        int length = str.length();
        if (length == 1 && Character.isWhitespace(str.charAt(0))) {
            return true;
        }
        float measureText = paint.measureText("\udfffd");
        float measureText2 = paint.measureText("m");
        float measureText3 = paint.measureText(str);
        float f10 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        if (measureText3 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            return false;
        }
        if (str.codePointCount(0, str.length()) > 1) {
            if (measureText3 > measureText2 * 2.0f) {
                return false;
            }
            int i10 = 0;
            while (i10 < length) {
                int charCount = Character.charCount(str.codePointAt(i10)) + i10;
                f10 += paint.measureText(str, i10, charCount);
                i10 = charCount;
            }
            if (measureText3 >= f10) {
                return false;
            }
        }
        if (measureText3 != measureText) {
            return true;
        }
        p0.e<Rect, Rect> b10 = b();
        paint.getTextBounds("\udfffd", 0, 2, b10.f11990a);
        paint.getTextBounds(str, 0, length, b10.f11991b);
        return !b10.f11990a.equals(b10.f11991b);
    }

    public static p0.e<Rect, Rect> b() {
        ThreadLocal<p0.e<Rect, Rect>> threadLocal = f7156a;
        p0.e<Rect, Rect> eVar = threadLocal.get();
        if (eVar == null) {
            p0.e<Rect, Rect> eVar2 = new p0.e<>(new Rect(), new Rect());
            threadLocal.set(eVar2);
            return eVar2;
        }
        eVar.f11990a.setEmpty();
        eVar.f11991b.setEmpty();
        return eVar;
    }
}
