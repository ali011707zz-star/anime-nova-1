package y1;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import android.animation.Keyframe;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.os.Build;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.util.Xml;
import android.view.InflateException;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import h0.g;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import org.apache.http.HttpStatus;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: AnimatorInflaterCompat.java */
/* loaded from: classes.dex */
public class e {

    /* compiled from: AnimatorInflaterCompat.java */
    /* loaded from: classes.dex */
    public static class a implements TypeEvaluator<g.b[]> {

        /* renamed from: a, reason: collision with root package name */
        public g.b[] f16350a;

        @Override // android.animation.TypeEvaluator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public g.b[] evaluate(float f10, g.b[] bVarArr, g.b[] bVarArr2) {
            if (h0.g.b(bVarArr, bVarArr2)) {
                if (!h0.g.b(this.f16350a, bVarArr)) {
                    this.f16350a = h0.g.f(bVarArr);
                }
                for (int i10 = 0; i10 < bVarArr.length; i10++) {
                    this.f16350a[i10].d(bVarArr[i10], bVarArr2[i10], f10);
                }
                return this.f16350a;
            }
            throw new IllegalArgumentException("Can't interpolate between two incompatible pathData");
        }
    }

    public static Animator a(Context context, Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser, float f10) throws XmlPullParserException, IOException {
        return b(context, resources, theme, xmlPullParser, Xml.asAttributeSet(xmlPullParser), null, 0, f10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00b8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Animator b(Context context, Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser, AttributeSet attributeSet, AnimatorSet animatorSet, int i10, float f10) throws XmlPullParserException, IOException {
        int i11;
        int depth = xmlPullParser.getDepth();
        ValueAnimator valueAnimator = null;
        ArrayList arrayList = null;
        while (true) {
            int next = xmlPullParser.next();
            i11 = 0;
            if ((next != 3 || xmlPullParser.getDepth() > depth) && next != 1) {
                if (next == 2) {
                    String name = xmlPullParser.getName();
                    if (name.equals("objectAnimator")) {
                        valueAnimator = n(context, resources, theme, attributeSet, f10, xmlPullParser);
                    } else if (name.equals("animator")) {
                        valueAnimator = l(context, resources, theme, attributeSet, null, f10, xmlPullParser);
                    } else {
                        if (name.equals("set")) {
                            AnimatorSet animatorSet2 = new AnimatorSet();
                            TypedArray s10 = g0.i.s(resources, theme, attributeSet, y1.a.f16331h);
                            b(context, resources, theme, xmlPullParser, attributeSet, animatorSet2, g0.i.k(s10, xmlPullParser, "ordering", 0, 0), f10);
                            s10.recycle();
                            valueAnimator = animatorSet2;
                        } else if (name.equals("propertyValuesHolder")) {
                            PropertyValuesHolder[] p10 = p(context, resources, theme, xmlPullParser, Xml.asAttributeSet(xmlPullParser));
                            if (p10 != null && (valueAnimator instanceof ValueAnimator)) {
                                valueAnimator.setValues(p10);
                            }
                            i11 = 1;
                        } else {
                            throw new RuntimeException("Unknown animator name: " + xmlPullParser.getName());
                        }
                        if (animatorSet != null && i11 == 0) {
                            if (arrayList == null) {
                                arrayList = new ArrayList();
                            }
                            arrayList.add(valueAnimator);
                        }
                    }
                    if (animatorSet != null) {
                        if (arrayList == null) {
                        }
                        arrayList.add(valueAnimator);
                    }
                }
            }
        }
        if (animatorSet != null && arrayList != null) {
            Animator[] animatorArr = new Animator[arrayList.size()];
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                animatorArr[i11] = (Animator) it2.next();
                i11++;
            }
            if (i10 == 0) {
                animatorSet.playTogether(animatorArr);
            } else {
                animatorSet.playSequentially(animatorArr);
            }
        }
        return valueAnimator;
    }

    public static Keyframe c(Keyframe keyframe, float f10) {
        if (keyframe.getType() == Float.TYPE) {
            return Keyframe.ofFloat(f10);
        }
        if (keyframe.getType() == Integer.TYPE) {
            return Keyframe.ofInt(f10);
        }
        return Keyframe.ofObject(f10);
    }

    public static void d(Keyframe[] keyframeArr, float f10, int i10, int i11) {
        float f11 = f10 / ((i11 - i10) + 2);
        while (i10 <= i11) {
            keyframeArr[i10].setFraction(keyframeArr[i10 - 1].getFraction() + f11);
            i10++;
        }
    }

    public static PropertyValuesHolder e(TypedArray typedArray, int i10, int i11, int i12, String str) {
        int i13;
        int i14;
        int i15;
        float f10;
        PropertyValuesHolder ofFloat;
        float f11;
        float f12;
        PropertyValuesHolder ofObject;
        TypedValue peekValue = typedArray.peekValue(i11);
        boolean z10 = peekValue != null;
        int i16 = z10 ? peekValue.type : 0;
        TypedValue peekValue2 = typedArray.peekValue(i12);
        boolean z11 = peekValue2 != null;
        int i17 = z11 ? peekValue2.type : 0;
        if (i10 == 4) {
            i10 = ((z10 && h(i16)) || (z11 && h(i17))) ? 3 : 0;
        }
        boolean z12 = i10 == 0;
        PropertyValuesHolder propertyValuesHolder = null;
        if (i10 == 2) {
            String string = typedArray.getString(i11);
            String string2 = typedArray.getString(i12);
            g.b[] d10 = h0.g.d(string);
            g.b[] d11 = h0.g.d(string2);
            if (d10 == null && d11 == null) {
                return null;
            }
            if (d10 == null) {
                if (d11 != null) {
                    return PropertyValuesHolder.ofObject(str, new a(), d11);
                }
                return null;
            }
            a aVar = new a();
            if (d11 != null) {
                if (h0.g.b(d10, d11)) {
                    ofObject = PropertyValuesHolder.ofObject(str, aVar, d10, d11);
                } else {
                    throw new InflateException(" Can't morph from " + string + " to " + string2);
                }
            } else {
                ofObject = PropertyValuesHolder.ofObject(str, aVar, d10);
            }
            return ofObject;
        }
        f a10 = i10 == 3 ? f.a() : null;
        if (z12) {
            if (z10) {
                if (i16 == 5) {
                    f11 = typedArray.getDimension(i11, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
                } else {
                    f11 = typedArray.getFloat(i11, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
                }
                if (z11) {
                    if (i17 == 5) {
                        f12 = typedArray.getDimension(i12, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
                    } else {
                        f12 = typedArray.getFloat(i12, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
                    }
                    ofFloat = PropertyValuesHolder.ofFloat(str, f11, f12);
                } else {
                    ofFloat = PropertyValuesHolder.ofFloat(str, f11);
                }
            } else {
                if (i17 == 5) {
                    f10 = typedArray.getDimension(i12, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
                } else {
                    f10 = typedArray.getFloat(i12, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
                }
                ofFloat = PropertyValuesHolder.ofFloat(str, f10);
            }
            propertyValuesHolder = ofFloat;
        } else if (z10) {
            if (i16 == 5) {
                i14 = (int) typedArray.getDimension(i11, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
            } else if (h(i16)) {
                i14 = typedArray.getColor(i11, 0);
            } else {
                i14 = typedArray.getInt(i11, 0);
            }
            if (z11) {
                if (i17 == 5) {
                    i15 = (int) typedArray.getDimension(i12, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
                } else if (h(i17)) {
                    i15 = typedArray.getColor(i12, 0);
                } else {
                    i15 = typedArray.getInt(i12, 0);
                }
                propertyValuesHolder = PropertyValuesHolder.ofInt(str, i14, i15);
            } else {
                propertyValuesHolder = PropertyValuesHolder.ofInt(str, i14);
            }
        } else if (z11) {
            if (i17 == 5) {
                i13 = (int) typedArray.getDimension(i12, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
            } else if (h(i17)) {
                i13 = typedArray.getColor(i12, 0);
            } else {
                i13 = typedArray.getInt(i12, 0);
            }
            propertyValuesHolder = PropertyValuesHolder.ofInt(str, i13);
        }
        if (propertyValuesHolder == null || a10 == null) {
            return propertyValuesHolder;
        }
        propertyValuesHolder.setEvaluator(a10);
        return propertyValuesHolder;
    }

    public static int f(TypedArray typedArray, int i10, int i11) {
        TypedValue peekValue = typedArray.peekValue(i10);
        boolean z10 = peekValue != null;
        int i12 = z10 ? peekValue.type : 0;
        TypedValue peekValue2 = typedArray.peekValue(i11);
        boolean z11 = peekValue2 != null;
        return ((z10 && h(i12)) || (z11 && h(z11 ? peekValue2.type : 0))) ? 3 : 0;
    }

    public static int g(Resources resources, Resources.Theme theme, AttributeSet attributeSet, XmlPullParser xmlPullParser) {
        TypedArray s10 = g0.i.s(resources, theme, attributeSet, y1.a.f16333j);
        int i10 = 0;
        TypedValue t10 = g0.i.t(s10, xmlPullParser, AppMeasurementSdk.ConditionalUserProperty.VALUE, 0);
        if ((t10 != null) && h(t10.type)) {
            i10 = 3;
        }
        s10.recycle();
        return i10;
    }

    public static boolean h(int i10) {
        return i10 >= 28 && i10 <= 31;
    }

    public static Animator i(Context context, int i10) throws Resources.NotFoundException {
        if (Build.VERSION.SDK_INT >= 24) {
            return AnimatorInflater.loadAnimator(context, i10);
        }
        return j(context, context.getResources(), context.getTheme(), i10);
    }

    public static Animator j(Context context, Resources resources, Resources.Theme theme, int i10) throws Resources.NotFoundException {
        return k(context, resources, theme, i10, 1.0f);
    }

    public static Animator k(Context context, Resources resources, Resources.Theme theme, int i10, float f10) throws Resources.NotFoundException {
        XmlResourceParser xmlResourceParser = null;
        try {
            try {
                try {
                    xmlResourceParser = resources.getAnimation(i10);
                    return a(context, resources, theme, xmlResourceParser, f10);
                } catch (XmlPullParserException e10) {
                    Resources.NotFoundException notFoundException = new Resources.NotFoundException("Can't load animation resource ID #0x" + Integer.toHexString(i10));
                    notFoundException.initCause(e10);
                    throw notFoundException;
                }
            } catch (IOException e11) {
                Resources.NotFoundException notFoundException2 = new Resources.NotFoundException("Can't load animation resource ID #0x" + Integer.toHexString(i10));
                notFoundException2.initCause(e11);
                throw notFoundException2;
            }
        } finally {
            if (xmlResourceParser != null) {
                xmlResourceParser.close();
            }
        }
    }

    public static ValueAnimator l(Context context, Resources resources, Resources.Theme theme, AttributeSet attributeSet, ValueAnimator valueAnimator, float f10, XmlPullParser xmlPullParser) throws Resources.NotFoundException {
        TypedArray s10 = g0.i.s(resources, theme, attributeSet, y1.a.f16330g);
        TypedArray s11 = g0.i.s(resources, theme, attributeSet, y1.a.f16334k);
        if (valueAnimator == null) {
            valueAnimator = new ValueAnimator();
        }
        q(valueAnimator, s10, s11, f10, xmlPullParser);
        int l10 = g0.i.l(s10, xmlPullParser, "interpolator", 0, 0);
        if (l10 > 0) {
            valueAnimator.setInterpolator(d.b(context, l10));
        }
        s10.recycle();
        if (s11 != null) {
            s11.recycle();
        }
        return valueAnimator;
    }

    public static Keyframe m(Context context, Resources resources, Resources.Theme theme, AttributeSet attributeSet, int i10, XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        Keyframe ofInt;
        TypedArray s10 = g0.i.s(resources, theme, attributeSet, y1.a.f16333j);
        float j10 = g0.i.j(s10, xmlPullParser, "fraction", 3, -1.0f);
        TypedValue t10 = g0.i.t(s10, xmlPullParser, AppMeasurementSdk.ConditionalUserProperty.VALUE, 0);
        boolean z10 = t10 != null;
        if (i10 == 4) {
            i10 = (z10 && h(t10.type)) ? 3 : 0;
        }
        if (z10) {
            if (i10 != 0) {
                ofInt = (i10 == 1 || i10 == 3) ? Keyframe.ofInt(j10, g0.i.k(s10, xmlPullParser, AppMeasurementSdk.ConditionalUserProperty.VALUE, 0, 0)) : null;
            } else {
                ofInt = Keyframe.ofFloat(j10, g0.i.j(s10, xmlPullParser, AppMeasurementSdk.ConditionalUserProperty.VALUE, 0, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD));
            }
        } else if (i10 == 0) {
            ofInt = Keyframe.ofFloat(j10);
        } else {
            ofInt = Keyframe.ofInt(j10);
        }
        int l10 = g0.i.l(s10, xmlPullParser, "interpolator", 1, 0);
        if (l10 > 0) {
            ofInt.setInterpolator(d.b(context, l10));
        }
        s10.recycle();
        return ofInt;
    }

    public static ObjectAnimator n(Context context, Resources resources, Resources.Theme theme, AttributeSet attributeSet, float f10, XmlPullParser xmlPullParser) throws Resources.NotFoundException {
        ObjectAnimator objectAnimator = new ObjectAnimator();
        l(context, resources, theme, attributeSet, objectAnimator, f10, xmlPullParser);
        return objectAnimator;
    }

    public static PropertyValuesHolder o(Context context, Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser, String str, int i10) throws XmlPullParserException, IOException {
        int size;
        PropertyValuesHolder propertyValuesHolder = null;
        ArrayList arrayList = null;
        while (true) {
            int next = xmlPullParser.next();
            if (next == 3 || next == 1) {
                break;
            }
            if (xmlPullParser.getName().equals("keyframe")) {
                if (i10 == 4) {
                    i10 = g(resources, theme, Xml.asAttributeSet(xmlPullParser), xmlPullParser);
                }
                Keyframe m10 = m(context, resources, theme, Xml.asAttributeSet(xmlPullParser), i10, xmlPullParser);
                if (m10 != null) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(m10);
                }
                xmlPullParser.next();
            }
        }
        if (arrayList != null && (size = arrayList.size()) > 0) {
            Keyframe keyframe = (Keyframe) arrayList.get(0);
            Keyframe keyframe2 = (Keyframe) arrayList.get(size - 1);
            float fraction = keyframe2.getFraction();
            if (fraction < 1.0f) {
                if (fraction < StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                    keyframe2.setFraction(1.0f);
                } else {
                    arrayList.add(arrayList.size(), c(keyframe2, 1.0f));
                    size++;
                }
            }
            float fraction2 = keyframe.getFraction();
            if (fraction2 != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                if (fraction2 < StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                    keyframe.setFraction(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
                } else {
                    arrayList.add(0, c(keyframe, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD));
                    size++;
                }
            }
            Keyframe[] keyframeArr = new Keyframe[size];
            arrayList.toArray(keyframeArr);
            for (int i11 = 0; i11 < size; i11++) {
                Keyframe keyframe3 = keyframeArr[i11];
                if (keyframe3.getFraction() < StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                    if (i11 == 0) {
                        keyframe3.setFraction(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
                    } else {
                        int i12 = size - 1;
                        if (i11 == i12) {
                            keyframe3.setFraction(1.0f);
                        } else {
                            int i13 = i11;
                            for (int i14 = i11 + 1; i14 < i12 && keyframeArr[i14].getFraction() < StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD; i14++) {
                                i13 = i14;
                            }
                            d(keyframeArr, keyframeArr[i13 + 1].getFraction() - keyframeArr[i11 - 1].getFraction(), i11, i13);
                        }
                    }
                }
            }
            propertyValuesHolder = PropertyValuesHolder.ofKeyframe(str, keyframeArr);
            if (i10 == 3) {
                propertyValuesHolder.setEvaluator(f.a());
            }
        }
        return propertyValuesHolder;
    }

    public static PropertyValuesHolder[] p(Context context, Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        int i10;
        PropertyValuesHolder[] propertyValuesHolderArr = null;
        ArrayList arrayList = null;
        while (true) {
            int eventType = xmlPullParser.getEventType();
            if (eventType == 3 || eventType == 1) {
                break;
            }
            if (eventType != 2) {
                xmlPullParser.next();
            } else {
                if (xmlPullParser.getName().equals("propertyValuesHolder")) {
                    TypedArray s10 = g0.i.s(resources, theme, attributeSet, y1.a.f16332i);
                    String m10 = g0.i.m(s10, xmlPullParser, "propertyName", 3);
                    int k10 = g0.i.k(s10, xmlPullParser, "valueType", 2, 4);
                    PropertyValuesHolder o10 = o(context, resources, theme, xmlPullParser, m10, k10);
                    if (o10 == null) {
                        o10 = e(s10, k10, 0, 1, m10);
                    }
                    if (o10 != null) {
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add(o10);
                    }
                    s10.recycle();
                }
                xmlPullParser.next();
            }
        }
        if (arrayList != null) {
            int size = arrayList.size();
            propertyValuesHolderArr = new PropertyValuesHolder[size];
            for (i10 = 0; i10 < size; i10++) {
                propertyValuesHolderArr[i10] = (PropertyValuesHolder) arrayList.get(i10);
            }
        }
        return propertyValuesHolderArr;
    }

    public static void q(ValueAnimator valueAnimator, TypedArray typedArray, TypedArray typedArray2, float f10, XmlPullParser xmlPullParser) {
        long k10 = g0.i.k(typedArray, xmlPullParser, "duration", 1, HttpStatus.SC_MULTIPLE_CHOICES);
        long k11 = g0.i.k(typedArray, xmlPullParser, "startOffset", 2, 0);
        int k12 = g0.i.k(typedArray, xmlPullParser, "valueType", 7, 4);
        if (g0.i.r(xmlPullParser, "valueFrom") && g0.i.r(xmlPullParser, "valueTo")) {
            if (k12 == 4) {
                k12 = f(typedArray, 5, 6);
            }
            PropertyValuesHolder e10 = e(typedArray, k12, 5, 6, "");
            if (e10 != null) {
                valueAnimator.setValues(e10);
            }
        }
        valueAnimator.setDuration(k10);
        valueAnimator.setStartDelay(k11);
        valueAnimator.setRepeatCount(g0.i.k(typedArray, xmlPullParser, "repeatCount", 3, 0));
        valueAnimator.setRepeatMode(g0.i.k(typedArray, xmlPullParser, "repeatMode", 4, 1));
        if (typedArray2 != null) {
            r(valueAnimator, typedArray2, k12, f10, xmlPullParser);
        }
    }

    public static void r(ValueAnimator valueAnimator, TypedArray typedArray, int i10, float f10, XmlPullParser xmlPullParser) {
        ObjectAnimator objectAnimator = (ObjectAnimator) valueAnimator;
        String m10 = g0.i.m(typedArray, xmlPullParser, "pathData", 1);
        if (m10 != null) {
            String m11 = g0.i.m(typedArray, xmlPullParser, "propertyXName", 2);
            String m12 = g0.i.m(typedArray, xmlPullParser, "propertyYName", 3);
            if (i10 != 2) {
            }
            if (m11 == null && m12 == null) {
                throw new InflateException(typedArray.getPositionDescription() + " propertyXName or propertyYName is needed for PathData");
            }
            s(h0.g.e(m10), objectAnimator, f10 * 0.5f, m11, m12);
            return;
        }
        objectAnimator.setPropertyName(g0.i.m(typedArray, xmlPullParser, "propertyName", 0));
    }

    public static void s(Path path, ObjectAnimator objectAnimator, float f10, String str, String str2) {
        PathMeasure pathMeasure = new PathMeasure(path, false);
        ArrayList arrayList = new ArrayList();
        float f11 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        arrayList.add(Float.valueOf(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD));
        float f12 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        do {
            f12 += pathMeasure.getLength();
            arrayList.add(Float.valueOf(f12));
        } while (pathMeasure.nextContour());
        PathMeasure pathMeasure2 = new PathMeasure(path, false);
        int min = Math.min(100, ((int) (f12 / f10)) + 1);
        float[] fArr = new float[min];
        float[] fArr2 = new float[min];
        float[] fArr3 = new float[2];
        float f13 = f12 / (min - 1);
        int i10 = 0;
        int i11 = 0;
        while (true) {
            if (i10 >= min) {
                break;
            }
            pathMeasure2.getPosTan(f11 - ((Float) arrayList.get(i11)).floatValue(), fArr3, null);
            fArr[i10] = fArr3[0];
            fArr2[i10] = fArr3[1];
            f11 += f13;
            int i12 = i11 + 1;
            if (i12 < arrayList.size() && f11 > ((Float) arrayList.get(i12)).floatValue()) {
                pathMeasure2.nextContour();
                i11 = i12;
            }
            i10++;
        }
        PropertyValuesHolder ofFloat = str != null ? PropertyValuesHolder.ofFloat(str, fArr) : null;
        PropertyValuesHolder ofFloat2 = str2 != null ? PropertyValuesHolder.ofFloat(str2, fArr2) : null;
        if (ofFloat == null) {
            objectAnimator.setValues(ofFloat2);
        } else if (ofFloat2 == null) {
            objectAnimator.setValues(ofFloat);
        } else {
            objectAnimator.setValues(ofFloat, ofFloat2);
        }
    }
}
