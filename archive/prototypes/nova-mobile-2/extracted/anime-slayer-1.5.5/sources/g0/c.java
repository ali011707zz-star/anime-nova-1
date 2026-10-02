package g0;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.StateSet;
import android.util.TypedValue;
import android.util.Xml;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.google.android.material.progressindicator.BaseProgressIndicator;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: ColorStateListInflaterCompat.java */
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public static final ThreadLocal<TypedValue> f6718a = new ThreadLocal<>();

    public static ColorStateList a(Resources resources, XmlPullParser xmlPullParser, Resources.Theme theme) throws XmlPullParserException, IOException {
        int next;
        AttributeSet asAttributeSet = Xml.asAttributeSet(xmlPullParser);
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            return b(resources, xmlPullParser, asAttributeSet, theme);
        }
        throw new XmlPullParserException("No start tag found");
    }

    public static ColorStateList b(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        String name = xmlPullParser.getName();
        if (name.equals("selector")) {
            return e(resources, xmlPullParser, attributeSet, theme);
        }
        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid color state list tag " + name);
    }

    public static TypedValue c() {
        ThreadLocal<TypedValue> threadLocal = f6718a;
        TypedValue typedValue = threadLocal.get();
        if (typedValue != null) {
            return typedValue;
        }
        TypedValue typedValue2 = new TypedValue();
        threadLocal.set(typedValue2);
        return typedValue2;
    }

    public static ColorStateList d(Resources resources, int i10, Resources.Theme theme) {
        try {
            return a(resources, resources.getXml(i10), theme);
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00a8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static ColorStateList e(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        int depth;
        int color;
        float f10;
        int attributeCount;
        int i10;
        Resources resources2 = resources;
        int i11 = 1;
        int depth2 = xmlPullParser.getDepth() + 1;
        int[][] iArr = new int[20];
        int[] iArr2 = new int[20];
        int i12 = 0;
        while (true) {
            int next = xmlPullParser.next();
            if (next == i11 || ((depth = xmlPullParser.getDepth()) < depth2 && next == 3)) {
                break;
            }
            if (next == 2 && depth <= depth2 && xmlPullParser.getName().equals("item")) {
                TypedArray h10 = h(resources2, theme, attributeSet, d0.d.f5488b);
                int i13 = d0.d.f5489c;
                int resourceId = h10.getResourceId(i13, -1);
                if (resourceId != -1 && !f(resources2, resourceId)) {
                    try {
                        color = a(resources2, resources2.getXml(resourceId), theme).getDefaultColor();
                    } catch (Exception unused) {
                        color = h10.getColor(d0.d.f5489c, -65281);
                    }
                } else {
                    color = h10.getColor(i13, -65281);
                }
                float f11 = 1.0f;
                int i14 = d0.d.f5490d;
                if (h10.hasValue(i14)) {
                    f11 = h10.getFloat(i14, 1.0f);
                } else {
                    int i15 = d0.d.f5492f;
                    if (h10.hasValue(i15)) {
                        f11 = h10.getFloat(i15, 1.0f);
                    }
                }
                if (m0.a.c()) {
                    int i16 = d0.d.f5491e;
                    if (h10.hasValue(i16)) {
                        f10 = h10.getFloat(i16, -1.0f);
                        h10.recycle();
                        attributeCount = attributeSet.getAttributeCount();
                        int[] iArr3 = new int[attributeCount];
                        int i17 = 0;
                        for (i10 = 0; i10 < attributeCount; i10++) {
                            int attributeNameResource = attributeSet.getAttributeNameResource(i10);
                            if (attributeNameResource != 16843173 && attributeNameResource != 16843551 && attributeNameResource != d0.a.f5456a && attributeNameResource != d0.a.f5457b) {
                                int i18 = i17 + 1;
                                if (!attributeSet.getAttributeBooleanValue(i10, false)) {
                                    attributeNameResource = -attributeNameResource;
                                }
                                iArr3[i17] = attributeNameResource;
                                i17 = i18;
                            }
                        }
                        int[] trimStateSet = StateSet.trimStateSet(iArr3, i17);
                        iArr2 = g.a(iArr2, i12, g(color, f11, f10));
                        iArr = (int[][]) g.b(iArr, i12, trimStateSet);
                        i12++;
                    }
                }
                f10 = h10.getFloat(d0.d.f5493g, -1.0f);
                h10.recycle();
                attributeCount = attributeSet.getAttributeCount();
                int[] iArr32 = new int[attributeCount];
                int i172 = 0;
                while (i10 < attributeCount) {
                }
                int[] trimStateSet2 = StateSet.trimStateSet(iArr32, i172);
                iArr2 = g.a(iArr2, i12, g(color, f11, f10));
                iArr = (int[][]) g.b(iArr, i12, trimStateSet2);
                i12++;
            }
            i11 = 1;
            resources2 = resources;
        }
        int[] iArr4 = new int[i12];
        int[][] iArr5 = new int[i12];
        System.arraycopy(iArr2, 0, iArr4, 0, i12);
        System.arraycopy(iArr, 0, iArr5, 0, i12);
        return new ColorStateList(iArr5, iArr4);
    }

    public static boolean f(Resources resources, int i10) {
        TypedValue c10 = c();
        resources.getValue(i10, c10, true);
        int i11 = c10.type;
        return i11 >= 28 && i11 <= 31;
    }

    public static int g(int i10, float f10, float f11) {
        boolean z10 = f11 >= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD && f11 <= 100.0f;
        if (f10 == 1.0f && !z10) {
            return i10;
        }
        int b10 = k0.a.b((int) ((Color.alpha(i10) * f10) + 0.5f), 0, BaseProgressIndicator.MAX_ALPHA);
        if (z10) {
            a c10 = a.c(i10);
            i10 = a.m(c10.j(), c10.i(), f11);
        }
        return (i10 & 16777215) | (b10 << 24);
    }

    public static TypedArray h(Resources resources, Resources.Theme theme, AttributeSet attributeSet, int[] iArr) {
        if (theme == null) {
            return resources.obtainAttributes(attributeSet, iArr);
        }
        return theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }
}
