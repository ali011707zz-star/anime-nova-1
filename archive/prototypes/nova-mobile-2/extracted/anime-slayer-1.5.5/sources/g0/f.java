package g0;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.LinearGradient;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.graphics.SweepGradient;
import android.util.AttributeSet;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: GradientColorInflaterCompat.java */
/* loaded from: classes.dex */
public final class f {
    public static a a(a aVar, int i10, int i11, boolean z10, int i12) {
        if (aVar != null) {
            return aVar;
        }
        if (z10) {
            return new a(i10, i12, i11);
        }
        return new a(i10, i11);
    }

    public static Shader b(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws IOException, XmlPullParserException {
        String name = xmlPullParser.getName();
        if (name.equals("gradient")) {
            TypedArray s10 = i.s(resources, theme, attributeSet, d0.d.A);
            float j10 = i.j(s10, xmlPullParser, "startX", d0.d.J, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
            float j11 = i.j(s10, xmlPullParser, "startY", d0.d.K, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
            float j12 = i.j(s10, xmlPullParser, "endX", d0.d.L, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
            float j13 = i.j(s10, xmlPullParser, "endY", d0.d.M, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
            float j14 = i.j(s10, xmlPullParser, "centerX", d0.d.E, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
            float j15 = i.j(s10, xmlPullParser, "centerY", d0.d.F, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
            int k10 = i.k(s10, xmlPullParser, "type", d0.d.D, 0);
            int f10 = i.f(s10, xmlPullParser, "startColor", d0.d.B, 0);
            boolean r10 = i.r(xmlPullParser, "centerColor");
            int f11 = i.f(s10, xmlPullParser, "centerColor", d0.d.I, 0);
            int f12 = i.f(s10, xmlPullParser, "endColor", d0.d.C, 0);
            int k11 = i.k(s10, xmlPullParser, "tileMode", d0.d.H, 0);
            float j16 = i.j(s10, xmlPullParser, "gradientRadius", d0.d.G, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
            s10.recycle();
            a a10 = a(c(resources, xmlPullParser, attributeSet, theme), f10, f12, r10, f11);
            if (k10 != 1) {
                if (k10 != 2) {
                    return new LinearGradient(j10, j11, j12, j13, a10.f6733a, a10.f6734b, d(k11));
                }
                return new SweepGradient(j14, j15, a10.f6733a, a10.f6734b);
            }
            if (j16 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                return new RadialGradient(j14, j15, j16, a10.f6733a, a10.f6734b, d(k11));
            }
            throw new XmlPullParserException("<gradient> tag requires 'gradientRadius' attribute with radial type");
        }
        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid gradient color tag " + name);
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0080, code lost:
    
        throw new org.xmlpull.v1.XmlPullParserException(r10.getPositionDescription() + ": <item> tag requires a 'color' attribute and a 'offset' attribute!");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static a c(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        int depth;
        int depth2 = xmlPullParser.getDepth() + 1;
        ArrayList arrayList = new ArrayList(20);
        ArrayList arrayList2 = new ArrayList(20);
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1 || ((depth = xmlPullParser.getDepth()) < depth2 && next == 3)) {
                break;
            }
            if (next == 2 && depth <= depth2 && xmlPullParser.getName().equals("item")) {
                TypedArray s10 = i.s(resources, theme, attributeSet, d0.d.N);
                int i10 = d0.d.O;
                boolean hasValue = s10.hasValue(i10);
                int i11 = d0.d.P;
                boolean hasValue2 = s10.hasValue(i11);
                if (!hasValue || !hasValue2) {
                    break;
                }
                int color = s10.getColor(i10, 0);
                float f10 = s10.getFloat(i11, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
                s10.recycle();
                arrayList2.add(Integer.valueOf(color));
                arrayList.add(Float.valueOf(f10));
            }
        }
        if (arrayList2.size() > 0) {
            return new a(arrayList2, arrayList);
        }
        return null;
    }

    public static Shader.TileMode d(int i10) {
        if (i10 == 1) {
            return Shader.TileMode.REPEAT;
        }
        if (i10 != 2) {
            return Shader.TileMode.CLAMP;
        }
        return Shader.TileMode.MIRROR;
    }

    /* compiled from: GradientColorInflaterCompat.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final int[] f6733a;

        /* renamed from: b, reason: collision with root package name */
        public final float[] f6734b;

        public a(List<Integer> list, List<Float> list2) {
            int size = list.size();
            this.f6733a = new int[size];
            this.f6734b = new float[size];
            for (int i10 = 0; i10 < size; i10++) {
                this.f6733a[i10] = list.get(i10).intValue();
                this.f6734b[i10] = list2.get(i10).floatValue();
            }
        }

        public a(int i10, int i11) {
            this.f6733a = new int[]{i10, i11};
            this.f6734b = new float[]{StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, 1.0f};
        }

        public a(int i10, int i11, int i12) {
            this.f6733a = new int[]{i10, i11, i12};
            this.f6734b = new float[]{StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, 0.5f, 1.0f};
        }
    }
}
