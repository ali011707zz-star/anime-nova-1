package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.widget.TextView;
import com.google.android.gms.common.api.Api;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: AppCompatTextViewAutoSizeHelper.java */
/* loaded from: classes.dex */
public class z {

    /* renamed from: l, reason: collision with root package name */
    public static final RectF f1571l = new RectF();

    /* renamed from: m, reason: collision with root package name */
    @SuppressLint({"BanConcurrentHashMap"})
    public static ConcurrentHashMap<String, Method> f1572m = new ConcurrentHashMap<>();

    /* renamed from: n, reason: collision with root package name */
    @SuppressLint({"BanConcurrentHashMap"})
    public static ConcurrentHashMap<String, Field> f1573n = new ConcurrentHashMap<>();

    /* renamed from: a, reason: collision with root package name */
    public int f1574a = 0;

    /* renamed from: b, reason: collision with root package name */
    public boolean f1575b = false;

    /* renamed from: c, reason: collision with root package name */
    public float f1576c = -1.0f;

    /* renamed from: d, reason: collision with root package name */
    public float f1577d = -1.0f;

    /* renamed from: e, reason: collision with root package name */
    public float f1578e = -1.0f;

    /* renamed from: f, reason: collision with root package name */
    public int[] f1579f = new int[0];

    /* renamed from: g, reason: collision with root package name */
    public boolean f1580g = false;

    /* renamed from: h, reason: collision with root package name */
    public TextPaint f1581h;

    /* renamed from: i, reason: collision with root package name */
    public final TextView f1582i;

    /* renamed from: j, reason: collision with root package name */
    public final Context f1583j;

    /* renamed from: k, reason: collision with root package name */
    public final c f1584k;

    /* compiled from: AppCompatTextViewAutoSizeHelper.java */
    /* loaded from: classes.dex */
    public static class a extends c {
        @Override // androidx.appcompat.widget.z.c
        public void a(StaticLayout.Builder builder, TextView textView) {
            builder.setTextDirection((TextDirectionHeuristic) z.r(textView, "getTextDirectionHeuristic", TextDirectionHeuristics.FIRSTSTRONG_LTR));
        }
    }

    /* compiled from: AppCompatTextViewAutoSizeHelper.java */
    /* loaded from: classes.dex */
    public static class b extends a {
        @Override // androidx.appcompat.widget.z.a, androidx.appcompat.widget.z.c
        public void a(StaticLayout.Builder builder, TextView textView) {
            builder.setTextDirection(textView.getTextDirectionHeuristic());
        }

        @Override // androidx.appcompat.widget.z.c
        public boolean b(TextView textView) {
            return textView.isHorizontallyScrollable();
        }
    }

    /* compiled from: AppCompatTextViewAutoSizeHelper.java */
    /* loaded from: classes.dex */
    public static class c {
        public void a(StaticLayout.Builder builder, TextView textView) {
        }

        public boolean b(TextView textView) {
            return ((Boolean) z.r(textView, "getHorizontallyScrolling", Boolean.FALSE)).booleanValue();
        }
    }

    public z(TextView textView) {
        this.f1582i = textView;
        this.f1583j = textView.getContext();
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 29) {
            this.f1584k = new b();
        } else if (i10 >= 23) {
            this.f1584k = new a();
        } else {
            this.f1584k = new c();
        }
    }

    public static <T> T a(Object obj, String str, T t10) {
        try {
            Field o10 = o(str);
            return o10 == null ? t10 : (T) o10.get(obj);
        } catch (IllegalAccessException unused) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Failed to access TextView#");
            sb2.append(str);
            sb2.append(" member");
            return t10;
        }
    }

    public static Field o(String str) {
        try {
            Field field = f1573n.get(str);
            if (field == null && (field = TextView.class.getDeclaredField(str)) != null) {
                field.setAccessible(true);
                f1573n.put(str, field);
            }
            return field;
        } catch (NoSuchFieldException unused) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Failed to access TextView#");
            sb2.append(str);
            sb2.append(" member");
            return null;
        }
    }

    public static Method p(String str) {
        try {
            Method method = f1572m.get(str);
            if (method == null && (method = TextView.class.getDeclaredMethod(str, new Class[0])) != null) {
                method.setAccessible(true);
                f1572m.put(str, method);
            }
            return method;
        } catch (Exception unused) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Failed to retrieve TextView#");
            sb2.append(str);
            sb2.append("() method");
            return null;
        }
    }

    public static <T> T r(Object obj, String str, T t10) {
        try {
            return (T) p(str).invoke(obj, new Object[0]);
        } catch (Exception unused) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Failed to invoke TextView#");
            sb2.append(str);
            sb2.append("() method");
            return t10;
        }
    }

    public final void A(TypedArray typedArray) {
        int length = typedArray.length();
        int[] iArr = new int[length];
        if (length > 0) {
            for (int i10 = 0; i10 < length; i10++) {
                iArr[i10] = typedArray.getDimensionPixelSize(i10, -1);
            }
            this.f1579f = c(iArr);
            B();
        }
    }

    public final boolean B() {
        boolean z10 = this.f1579f.length > 0;
        this.f1580g = z10;
        if (z10) {
            this.f1574a = 1;
            this.f1577d = r0[0];
            this.f1578e = r0[r1 - 1];
            this.f1576c = -1.0f;
        }
        return z10;
    }

    public final boolean C(int i10, RectF rectF) {
        CharSequence transformation;
        CharSequence text = this.f1582i.getText();
        TransformationMethod transformationMethod = this.f1582i.getTransformationMethod();
        if (transformationMethod != null && (transformation = transformationMethod.getTransformation(text, this.f1582i)) != null) {
            text = transformation;
        }
        int maxLines = Build.VERSION.SDK_INT >= 16 ? this.f1582i.getMaxLines() : -1;
        q(i10);
        StaticLayout e10 = e(text, (Layout.Alignment) r(this.f1582i, "getLayoutAlignment", Layout.Alignment.ALIGN_NORMAL), Math.round(rectF.right), maxLines);
        return (maxLines == -1 || (e10.getLineCount() <= maxLines && e10.getLineEnd(e10.getLineCount() - 1) == text.length())) && ((float) e10.getHeight()) <= rectF.bottom;
    }

    public final boolean D() {
        return !(this.f1582i instanceof AppCompatEditText);
    }

    public final void E(float f10, float f11, float f12) throws IllegalArgumentException {
        if (f10 <= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            throw new IllegalArgumentException("Minimum auto-size text size (" + f10 + "px) is less or equal to (0px)");
        }
        if (f11 <= f10) {
            throw new IllegalArgumentException("Maximum auto-size text size (" + f11 + "px) is less or equal to minimum auto-size text size (" + f10 + "px)");
        }
        if (f12 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            this.f1574a = 1;
            this.f1577d = f10;
            this.f1578e = f11;
            this.f1576c = f12;
            this.f1580g = false;
            return;
        }
        throw new IllegalArgumentException("The auto-size step granularity (" + f12 + "px) is less or equal to (0px)");
    }

    public void b() {
        if (s()) {
            if (this.f1575b) {
                if (this.f1582i.getMeasuredHeight() <= 0 || this.f1582i.getMeasuredWidth() <= 0) {
                    return;
                }
                int measuredWidth = this.f1584k.b(this.f1582i) ? 1048576 : (this.f1582i.getMeasuredWidth() - this.f1582i.getTotalPaddingLeft()) - this.f1582i.getTotalPaddingRight();
                int height = (this.f1582i.getHeight() - this.f1582i.getCompoundPaddingBottom()) - this.f1582i.getCompoundPaddingTop();
                if (measuredWidth <= 0 || height <= 0) {
                    return;
                }
                RectF rectF = f1571l;
                synchronized (rectF) {
                    rectF.setEmpty();
                    rectF.right = measuredWidth;
                    rectF.bottom = height;
                    float i10 = i(rectF);
                    if (i10 != this.f1582i.getTextSize()) {
                        y(0, i10);
                    }
                }
            }
            this.f1575b = true;
        }
    }

    public final int[] c(int[] iArr) {
        int length = iArr.length;
        if (length == 0) {
            return iArr;
        }
        Arrays.sort(iArr);
        ArrayList arrayList = new ArrayList();
        for (int i10 : iArr) {
            if (i10 > 0 && Collections.binarySearch(arrayList, Integer.valueOf(i10)) < 0) {
                arrayList.add(Integer.valueOf(i10));
            }
        }
        if (length == arrayList.size()) {
            return iArr;
        }
        int size = arrayList.size();
        int[] iArr2 = new int[size];
        for (int i11 = 0; i11 < size; i11++) {
            iArr2[i11] = ((Integer) arrayList.get(i11)).intValue();
        }
        return iArr2;
    }

    public final void d() {
        this.f1574a = 0;
        this.f1577d = -1.0f;
        this.f1578e = -1.0f;
        this.f1576c = -1.0f;
        this.f1579f = new int[0];
        this.f1575b = false;
    }

    public StaticLayout e(CharSequence charSequence, Layout.Alignment alignment, int i10, int i11) {
        int i12 = Build.VERSION.SDK_INT;
        if (i12 >= 23) {
            return f(charSequence, alignment, i10, i11);
        }
        if (i12 >= 16) {
            return h(charSequence, alignment, i10);
        }
        return g(charSequence, alignment, i10);
    }

    public final StaticLayout f(CharSequence charSequence, Layout.Alignment alignment, int i10, int i11) {
        StaticLayout.Builder obtain = StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), this.f1581h, i10);
        StaticLayout.Builder hyphenationFrequency = obtain.setAlignment(alignment).setLineSpacing(this.f1582i.getLineSpacingExtra(), this.f1582i.getLineSpacingMultiplier()).setIncludePad(this.f1582i.getIncludeFontPadding()).setBreakStrategy(this.f1582i.getBreakStrategy()).setHyphenationFrequency(this.f1582i.getHyphenationFrequency());
        if (i11 == -1) {
            i11 = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        }
        hyphenationFrequency.setMaxLines(i11);
        try {
            this.f1584k.a(obtain, this.f1582i);
        } catch (ClassCastException unused) {
        }
        return obtain.build();
    }

    public final StaticLayout g(CharSequence charSequence, Layout.Alignment alignment, int i10) {
        return new StaticLayout(charSequence, this.f1581h, i10, alignment, ((Float) a(this.f1582i, "mSpacingMult", Float.valueOf(1.0f))).floatValue(), ((Float) a(this.f1582i, "mSpacingAdd", Float.valueOf(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD))).floatValue(), ((Boolean) a(this.f1582i, "mIncludePad", Boolean.TRUE)).booleanValue());
    }

    public final StaticLayout h(CharSequence charSequence, Layout.Alignment alignment, int i10) {
        return new StaticLayout(charSequence, this.f1581h, i10, alignment, this.f1582i.getLineSpacingMultiplier(), this.f1582i.getLineSpacingExtra(), this.f1582i.getIncludeFontPadding());
    }

    public final int i(RectF rectF) {
        int length = this.f1579f.length;
        if (length != 0) {
            int i10 = length - 1;
            int i11 = 1;
            int i12 = 0;
            while (i11 <= i10) {
                int i13 = (i11 + i10) / 2;
                if (C(this.f1579f[i13], rectF)) {
                    int i14 = i13 + 1;
                    i12 = i11;
                    i11 = i14;
                } else {
                    i12 = i13 - 1;
                    i10 = i12;
                }
            }
            return this.f1579f[i12];
        }
        throw new IllegalStateException("No available text sizes to choose from.");
    }

    public int j() {
        return Math.round(this.f1578e);
    }

    public int k() {
        return Math.round(this.f1577d);
    }

    public int l() {
        return Math.round(this.f1576c);
    }

    public int[] m() {
        return this.f1579f;
    }

    public int n() {
        return this.f1574a;
    }

    public void q(int i10) {
        TextPaint textPaint = this.f1581h;
        if (textPaint == null) {
            this.f1581h = new TextPaint();
        } else {
            textPaint.reset();
        }
        this.f1581h.set(this.f1582i.getPaint());
        this.f1581h.setTextSize(i10);
    }

    public boolean s() {
        return D() && this.f1574a != 0;
    }

    public void t(AttributeSet attributeSet, int i10) {
        int resourceId;
        Context context = this.f1583j;
        int[] iArr = d.j.f5357g0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i10, 0);
        TextView textView = this.f1582i;
        q0.b0.r0(textView, textView.getContext(), iArr, attributeSet, obtainStyledAttributes, i10, 0);
        int i11 = d.j.f5382l0;
        if (obtainStyledAttributes.hasValue(i11)) {
            this.f1574a = obtainStyledAttributes.getInt(i11, 0);
        }
        int i12 = d.j.f5377k0;
        float dimension = obtainStyledAttributes.hasValue(i12) ? obtainStyledAttributes.getDimension(i12, -1.0f) : -1.0f;
        int i13 = d.j.f5367i0;
        float dimension2 = obtainStyledAttributes.hasValue(i13) ? obtainStyledAttributes.getDimension(i13, -1.0f) : -1.0f;
        int i14 = d.j.f5362h0;
        float dimension3 = obtainStyledAttributes.hasValue(i14) ? obtainStyledAttributes.getDimension(i14, -1.0f) : -1.0f;
        int i15 = d.j.f5372j0;
        if (obtainStyledAttributes.hasValue(i15) && (resourceId = obtainStyledAttributes.getResourceId(i15, 0)) > 0) {
            TypedArray obtainTypedArray = obtainStyledAttributes.getResources().obtainTypedArray(resourceId);
            A(obtainTypedArray);
            obtainTypedArray.recycle();
        }
        obtainStyledAttributes.recycle();
        if (D()) {
            if (this.f1574a == 1) {
                if (!this.f1580g) {
                    DisplayMetrics displayMetrics = this.f1583j.getResources().getDisplayMetrics();
                    if (dimension2 == -1.0f) {
                        dimension2 = TypedValue.applyDimension(2, 12.0f, displayMetrics);
                    }
                    if (dimension3 == -1.0f) {
                        dimension3 = TypedValue.applyDimension(2, 112.0f, displayMetrics);
                    }
                    if (dimension == -1.0f) {
                        dimension = 1.0f;
                    }
                    E(dimension2, dimension3, dimension);
                }
                z();
                return;
            }
            return;
        }
        this.f1574a = 0;
    }

    public void u(int i10, int i11, int i12, int i13) throws IllegalArgumentException {
        if (D()) {
            DisplayMetrics displayMetrics = this.f1583j.getResources().getDisplayMetrics();
            E(TypedValue.applyDimension(i13, i10, displayMetrics), TypedValue.applyDimension(i13, i11, displayMetrics), TypedValue.applyDimension(i13, i12, displayMetrics));
            if (z()) {
                b();
            }
        }
    }

    public void v(int[] iArr, int i10) throws IllegalArgumentException {
        if (D()) {
            int length = iArr.length;
            if (length > 0) {
                int[] iArr2 = new int[length];
                if (i10 == 0) {
                    iArr2 = Arrays.copyOf(iArr, length);
                } else {
                    DisplayMetrics displayMetrics = this.f1583j.getResources().getDisplayMetrics();
                    for (int i11 = 0; i11 < length; i11++) {
                        iArr2[i11] = Math.round(TypedValue.applyDimension(i10, iArr[i11], displayMetrics));
                    }
                }
                this.f1579f = c(iArr2);
                if (!B()) {
                    throw new IllegalArgumentException("None of the preset sizes is valid: " + Arrays.toString(iArr));
                }
            } else {
                this.f1580g = false;
            }
            if (z()) {
                b();
            }
        }
    }

    public void w(int i10) {
        if (D()) {
            if (i10 == 0) {
                d();
                return;
            }
            if (i10 == 1) {
                DisplayMetrics displayMetrics = this.f1583j.getResources().getDisplayMetrics();
                E(TypedValue.applyDimension(2, 12.0f, displayMetrics), TypedValue.applyDimension(2, 112.0f, displayMetrics), 1.0f);
                if (z()) {
                    b();
                    return;
                }
                return;
            }
            throw new IllegalArgumentException("Unknown auto-size text type: " + i10);
        }
    }

    public final void x(float f10) {
        if (f10 != this.f1582i.getPaint().getTextSize()) {
            this.f1582i.getPaint().setTextSize(f10);
            boolean isInLayout = Build.VERSION.SDK_INT >= 18 ? this.f1582i.isInLayout() : false;
            if (this.f1582i.getLayout() != null) {
                this.f1575b = false;
                try {
                    Method p10 = p("nullLayouts");
                    if (p10 != null) {
                        p10.invoke(this.f1582i, new Object[0]);
                    }
                } catch (Exception unused) {
                }
                if (!isInLayout) {
                    this.f1582i.requestLayout();
                } else {
                    this.f1582i.forceLayout();
                }
                this.f1582i.invalidate();
            }
        }
    }

    public void y(int i10, float f10) {
        Resources resources;
        Context context = this.f1583j;
        if (context == null) {
            resources = Resources.getSystem();
        } else {
            resources = context.getResources();
        }
        x(TypedValue.applyDimension(i10, f10, resources.getDisplayMetrics()));
    }

    public final boolean z() {
        if (D() && this.f1574a == 1) {
            if (!this.f1580g || this.f1579f.length == 0) {
                int floor = ((int) Math.floor((this.f1578e - this.f1577d) / this.f1576c)) + 1;
                int[] iArr = new int[floor];
                for (int i10 = 0; i10 < floor; i10++) {
                    iArr[i10] = Math.round(this.f1577d + (i10 * this.f1576c));
                }
                this.f1579f = c(iArr);
            }
            this.f1575b = true;
        } else {
            this.f1575b = false;
        }
        return this.f1575b;
    }
}
