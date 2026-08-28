package y1;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.util.AttributeSet;
import android.view.InflateException;
import android.view.animation.Interpolator;
import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import org.xmlpull.v1.XmlPullParser;

/* compiled from: PathInterpolatorCompat.java */
/* loaded from: classes.dex */
public class g implements Interpolator {

    /* renamed from: a, reason: collision with root package name */
    public float[] f16352a;

    /* renamed from: b, reason: collision with root package name */
    public float[] f16353b;

    public g(Context context, AttributeSet attributeSet, XmlPullParser xmlPullParser) {
        this(context.getResources(), context.getTheme(), attributeSet, xmlPullParser);
    }

    public final void a(float f10, float f11, float f12, float f13) {
        Path path = new Path();
        path.moveTo(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        path.cubicTo(f10, f11, f12, f13, 1.0f, 1.0f);
        b(path);
    }

    public final void b(Path path) {
        int i10 = 0;
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float length = pathMeasure.getLength();
        int min = Math.min(AuthApiStatusCodes.AUTH_API_INVALID_CREDENTIALS, ((int) (length / 0.002f)) + 1);
        if (min > 0) {
            this.f16352a = new float[min];
            this.f16353b = new float[min];
            float[] fArr = new float[2];
            for (int i11 = 0; i11 < min; i11++) {
                pathMeasure.getPosTan((i11 * length) / (min - 1), fArr, null);
                this.f16352a[i11] = fArr[0];
                this.f16353b[i11] = fArr[1];
            }
            if (Math.abs(this.f16352a[0]) <= 1.0E-5d && Math.abs(this.f16353b[0]) <= 1.0E-5d) {
                int i12 = min - 1;
                if (Math.abs(this.f16352a[i12] - 1.0f) <= 1.0E-5d && Math.abs(this.f16353b[i12] - 1.0f) <= 1.0E-5d) {
                    float f10 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                    int i13 = 0;
                    while (i10 < min) {
                        float[] fArr2 = this.f16352a;
                        int i14 = i13 + 1;
                        float f11 = fArr2[i13];
                        if (f11 >= f10) {
                            fArr2[i10] = f11;
                            i10++;
                            f10 = f11;
                            i13 = i14;
                        } else {
                            throw new IllegalArgumentException("The Path cannot loop back on itself, x :" + f11);
                        }
                    }
                    if (pathMeasure.nextContour()) {
                        throw new IllegalArgumentException("The Path should be continuous, can't have 2+ contours");
                    }
                    return;
                }
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("The Path must start at (0,0) and end at (1,1) start: ");
            sb2.append(this.f16352a[0]);
            sb2.append(",");
            sb2.append(this.f16353b[0]);
            sb2.append(" end:");
            int i15 = min - 1;
            sb2.append(this.f16352a[i15]);
            sb2.append(",");
            sb2.append(this.f16353b[i15]);
            throw new IllegalArgumentException(sb2.toString());
        }
        throw new IllegalArgumentException("The Path has a invalid length " + length);
    }

    public final void c(float f10, float f11) {
        Path path = new Path();
        path.moveTo(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        path.quadTo(f10, f11, 1.0f, 1.0f);
        b(path);
    }

    public final void d(TypedArray typedArray, XmlPullParser xmlPullParser) {
        if (g0.i.r(xmlPullParser, "pathData")) {
            String m10 = g0.i.m(typedArray, xmlPullParser, "pathData", 4);
            Path e10 = h0.g.e(m10);
            if (e10 != null) {
                b(e10);
                return;
            }
            throw new InflateException("The path is null, which is created from " + m10);
        }
        if (g0.i.r(xmlPullParser, "controlX1")) {
            if (g0.i.r(xmlPullParser, "controlY1")) {
                float j10 = g0.i.j(typedArray, xmlPullParser, "controlX1", 0, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
                float j11 = g0.i.j(typedArray, xmlPullParser, "controlY1", 1, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
                boolean r10 = g0.i.r(xmlPullParser, "controlX2");
                if (r10 != g0.i.r(xmlPullParser, "controlY2")) {
                    throw new InflateException("pathInterpolator requires both controlX2 and controlY2 for cubic Beziers.");
                }
                if (!r10) {
                    c(j10, j11);
                    return;
                } else {
                    a(j10, j11, g0.i.j(typedArray, xmlPullParser, "controlX2", 2, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD), g0.i.j(typedArray, xmlPullParser, "controlY2", 3, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD));
                    return;
                }
            }
            throw new InflateException("pathInterpolator requires the controlY1 attribute");
        }
        throw new InflateException("pathInterpolator requires the controlX1 attribute");
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f10) {
        if (f10 <= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            return StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        }
        if (f10 >= 1.0f) {
            return 1.0f;
        }
        int i10 = 0;
        int length = this.f16352a.length - 1;
        while (length - i10 > 1) {
            int i11 = (i10 + length) / 2;
            if (f10 < this.f16352a[i11]) {
                length = i11;
            } else {
                i10 = i11;
            }
        }
        float[] fArr = this.f16352a;
        float f11 = fArr[length] - fArr[i10];
        if (f11 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            return this.f16353b[i10];
        }
        float f12 = (f10 - fArr[i10]) / f11;
        float[] fArr2 = this.f16353b;
        float f13 = fArr2[i10];
        return f13 + (f12 * (fArr2[length] - f13));
    }

    public g(Resources resources, Resources.Theme theme, AttributeSet attributeSet, XmlPullParser xmlPullParser) {
        TypedArray s10 = g0.i.s(resources, theme, attributeSet, a.f16335l);
        d(s10, xmlPullParser);
        s10.recycle();
    }
}
