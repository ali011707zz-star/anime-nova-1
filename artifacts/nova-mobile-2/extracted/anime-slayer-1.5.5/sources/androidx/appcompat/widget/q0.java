package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.util.TypedValue;
import android.view.View;

/* compiled from: ThemeUtils.java */
/* loaded from: classes.dex */
public class q0 {

    /* renamed from: a, reason: collision with root package name */
    public static final ThreadLocal<TypedValue> f1468a = new ThreadLocal<>();

    /* renamed from: b, reason: collision with root package name */
    public static final int[] f1469b = {-16842910};

    /* renamed from: c, reason: collision with root package name */
    public static final int[] f1470c = {R.attr.state_focused};

    /* renamed from: d, reason: collision with root package name */
    public static final int[] f1471d = {R.attr.state_activated};

    /* renamed from: e, reason: collision with root package name */
    public static final int[] f1472e = {R.attr.state_pressed};

    /* renamed from: f, reason: collision with root package name */
    public static final int[] f1473f = {R.attr.state_checked};

    /* renamed from: g, reason: collision with root package name */
    public static final int[] f1474g = {R.attr.state_selected};

    /* renamed from: h, reason: collision with root package name */
    public static final int[] f1475h = {-16842919, -16842908};

    /* renamed from: i, reason: collision with root package name */
    public static final int[] f1476i = new int[0];

    /* renamed from: j, reason: collision with root package name */
    public static final int[] f1477j = new int[1];

    public static void a(View view, Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(d.j.f5447y0);
        try {
            if (!obtainStyledAttributes.hasValue(d.j.D0)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("View ");
                sb2.append(view.getClass());
                sb2.append(" is an AppCompat widget that can only be used with a Theme.AppCompat theme (or descendant).");
            }
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public static int b(Context context, int i10) {
        ColorStateList e10 = e(context, i10);
        if (e10 != null && e10.isStateful()) {
            return e10.getColorForState(f1469b, e10.getDefaultColor());
        }
        TypedValue f10 = f();
        context.getTheme().resolveAttribute(R.attr.disabledAlpha, f10, true);
        return d(context, i10, f10.getFloat());
    }

    public static int c(Context context, int i10) {
        int[] iArr = f1477j;
        iArr[0] = i10;
        v0 u10 = v0.u(context, null, iArr);
        try {
            return u10.b(0, 0);
        } finally {
            u10.w();
        }
    }

    public static int d(Context context, int i10, float f10) {
        return h0.d.j(c(context, i10), Math.round(Color.alpha(r0) * f10));
    }

    public static ColorStateList e(Context context, int i10) {
        int[] iArr = f1477j;
        iArr[0] = i10;
        v0 u10 = v0.u(context, null, iArr);
        try {
            return u10.c(0);
        } finally {
            u10.w();
        }
    }

    public static TypedValue f() {
        ThreadLocal<TypedValue> threadLocal = f1468a;
        TypedValue typedValue = threadLocal.get();
        if (typedValue != null) {
            return typedValue;
        }
        TypedValue typedValue2 = new TypedValue();
        threadLocal.set(typedValue2);
        return typedValue2;
    }
}
