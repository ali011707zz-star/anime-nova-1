package com.warkiz.widget;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.WindowManager;
import cb.c;
import cb.d;
import cb.e;
import cb.i;
import cb.j;
import cb.k;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.google.android.material.progressindicator.BaseProgressIndicator;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.math.BigDecimal;

/* loaded from: classes.dex */
public class IndicatorSeekBar extends View {
    public boolean A;
    public boolean A0;
    public int B;
    public float B0;
    public boolean C;
    public float C0;
    public boolean D;
    public Bitmap D0;
    public boolean E;
    public int E0;
    public float[] F;
    public int F0;
    public boolean G;
    public Drawable G0;
    public boolean H;
    public Bitmap H0;
    public boolean I;
    public int I0;
    public int J;
    public boolean J0;
    public String[] K;
    public float K0;
    public float[] L;
    public int L0;
    public float[] M;
    public boolean M0;
    public float N;
    public boolean N0;
    public int O;
    public Typeface P;
    public int Q;
    public int R;
    public int S;
    public CharSequence[] T;
    public d U;
    public int V;
    public int W;

    /* renamed from: a0, reason: collision with root package name */
    public boolean f4991a0;

    /* renamed from: b0, reason: collision with root package name */
    public int f4992b0;

    /* renamed from: c0, reason: collision with root package name */
    public View f4993c0;

    /* renamed from: d0, reason: collision with root package name */
    public View f4994d0;

    /* renamed from: e0, reason: collision with root package name */
    public int f4995e0;

    /* renamed from: f, reason: collision with root package name */
    public Context f4996f;

    /* renamed from: f0, reason: collision with root package name */
    public String f4997f0;

    /* renamed from: g, reason: collision with root package name */
    public Paint f4998g;

    /* renamed from: g0, reason: collision with root package name */
    public float[] f4999g0;

    /* renamed from: h, reason: collision with root package name */
    public TextPaint f5000h;

    /* renamed from: h0, reason: collision with root package name */
    public int f5001h0;

    /* renamed from: i, reason: collision with root package name */
    public e f5002i;

    /* renamed from: i0, reason: collision with root package name */
    public int f5003i0;

    /* renamed from: j, reason: collision with root package name */
    public Rect f5004j;

    /* renamed from: j0, reason: collision with root package name */
    public int f5005j0;

    /* renamed from: k, reason: collision with root package name */
    public float f5006k;

    /* renamed from: k0, reason: collision with root package name */
    public float f5007k0;

    /* renamed from: l, reason: collision with root package name */
    public float f5008l;

    /* renamed from: l0, reason: collision with root package name */
    public Bitmap f5009l0;

    /* renamed from: m, reason: collision with root package name */
    public float f5010m;

    /* renamed from: m0, reason: collision with root package name */
    public Bitmap f5011m0;

    /* renamed from: n, reason: collision with root package name */
    public float f5012n;

    /* renamed from: n0, reason: collision with root package name */
    public Drawable f5013n0;

    /* renamed from: o, reason: collision with root package name */
    public boolean f5014o;

    /* renamed from: o0, reason: collision with root package name */
    public int f5015o0;

    /* renamed from: p, reason: collision with root package name */
    public j f5016p;

    /* renamed from: p0, reason: collision with root package name */
    public boolean f5017p0;

    /* renamed from: q, reason: collision with root package name */
    public int f5018q;

    /* renamed from: q0, reason: collision with root package name */
    public boolean f5019q0;

    /* renamed from: r, reason: collision with root package name */
    public int f5020r;

    /* renamed from: r0, reason: collision with root package name */
    public int f5021r0;

    /* renamed from: s, reason: collision with root package name */
    public int f5022s;

    /* renamed from: s0, reason: collision with root package name */
    public boolean f5023s0;

    /* renamed from: t, reason: collision with root package name */
    public int f5024t;

    /* renamed from: t0, reason: collision with root package name */
    public RectF f5025t0;

    /* renamed from: u, reason: collision with root package name */
    public float f5026u;

    /* renamed from: u0, reason: collision with root package name */
    public RectF f5027u0;

    /* renamed from: v, reason: collision with root package name */
    public float f5028v;

    /* renamed from: v0, reason: collision with root package name */
    public int f5029v0;

    /* renamed from: w, reason: collision with root package name */
    public boolean f5030w;

    /* renamed from: w0, reason: collision with root package name */
    public int f5031w0;

    /* renamed from: x, reason: collision with root package name */
    public float f5032x;

    /* renamed from: x0, reason: collision with root package name */
    public int f5033x0;

    /* renamed from: y, reason: collision with root package name */
    public float f5034y;

    /* renamed from: y0, reason: collision with root package name */
    public int f5035y0;

    /* renamed from: z, reason: collision with root package name */
    public float f5036z;

    /* renamed from: z0, reason: collision with root package name */
    public int[] f5037z0;

    /* loaded from: classes.dex */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            IndicatorSeekBar.this.requestLayout();
        }
    }

    /* loaded from: classes.dex */
    public class b implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ float f5039a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ int f5040b;

        public b(float f10, int i10) {
            this.f5039a = f10;
            this.f5040b = i10;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            IndicatorSeekBar indicatorSeekBar = IndicatorSeekBar.this;
            indicatorSeekBar.f5008l = indicatorSeekBar.f5036z;
            if (this.f5039a - IndicatorSeekBar.this.F[this.f5040b] > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                IndicatorSeekBar.this.f5036z = this.f5039a - ((Float) valueAnimator.getAnimatedValue()).floatValue();
            } else {
                IndicatorSeekBar.this.f5036z = this.f5039a + ((Float) valueAnimator.getAnimatedValue()).floatValue();
            }
            IndicatorSeekBar indicatorSeekBar2 = IndicatorSeekBar.this;
            indicatorSeekBar2.W(indicatorSeekBar2.f5036z);
            IndicatorSeekBar.this.setSeekListener(false);
            if (IndicatorSeekBar.this.U != null && IndicatorSeekBar.this.f4991a0) {
                IndicatorSeekBar.this.U.j();
                IndicatorSeekBar.this.Y();
            }
            IndicatorSeekBar.this.invalidate();
        }
    }

    public IndicatorSeekBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5010m = -1.0f;
        this.f5012n = -1.0f;
        this.B = 1;
        this.f4996f = context;
        z(context, attributeSet);
        C();
    }

    private float getAmplitude() {
        float f10 = this.f5032x;
        float f11 = this.f5034y;
        if (f10 - f11 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            return f10 - f11;
        }
        return 1.0f;
    }

    private int getClosestIndex() {
        float abs = Math.abs(this.f5032x - this.f5034y);
        int i10 = 0;
        int i11 = 0;
        while (true) {
            float[] fArr = this.F;
            if (i10 >= fArr.length) {
                return i11;
            }
            float abs2 = Math.abs(fArr[i10] - this.f5036z);
            if (abs2 <= abs) {
                i11 = i10;
                abs = abs2;
            }
            i10++;
        }
    }

    private int getLeftSideTickColor() {
        if (this.G) {
            return this.f5003i0;
        }
        return this.f5005j0;
    }

    private int getLeftSideTickTextsColor() {
        if (this.G) {
            return this.R;
        }
        return this.Q;
    }

    private int getLeftSideTrackSize() {
        if (this.G) {
            return this.f5029v0;
        }
        return this.f5031w0;
    }

    private int getRightSideTickColor() {
        if (this.G) {
            return this.f5005j0;
        }
        return this.f5003i0;
    }

    private int getRightSideTickTextsColor() {
        if (this.G) {
            return this.Q;
        }
        return this.R;
    }

    private int getRightSideTrackSize() {
        if (this.G) {
            return this.f5031w0;
        }
        return this.f5029v0;
    }

    private float getThumbCenterX() {
        if (this.G) {
            return this.f5027u0.right;
        }
        return this.f5025t0.right;
    }

    private int getThumbPosOnTick() {
        if (this.f5001h0 != 0) {
            return Math.round((getThumbCenterX() - this.f5018q) / this.f5028v);
        }
        return 0;
    }

    private float getThumbPosOnTickFloat() {
        return this.f5001h0 != 0 ? (getThumbCenterX() - this.f5018q) / this.f5028v : StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSeekListener(boolean z10) {
        if (this.f5002i != null && T()) {
            this.f5002i.b(o(z10));
        }
    }

    public final void A() {
        if (this.f5014o) {
            return;
        }
        int a10 = k.a(this.f4996f, 16.0f);
        if (getPaddingLeft() == 0) {
            setPadding(a10, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
        if (getPaddingRight() == 0) {
            setPadding(getPaddingLeft(), getPaddingTop(), a10, getPaddingBottom());
        }
    }

    public final void B() {
        int i10 = this.f4995e0;
        if (i10 != 0 && this.U == null) {
            d dVar = new d(this.f4996f, this, this.V, i10, this.f4992b0, this.W, this.f4993c0, this.f4994d0);
            this.U = dVar;
            this.f4993c0 = dVar.d();
        }
    }

    public final void C() {
        D();
        int i10 = this.f5029v0;
        int i11 = this.f5031w0;
        if (i10 > i11) {
            this.f5029v0 = i11;
        }
        if (this.G0 == null) {
            float f10 = this.F0 / 2.0f;
            this.B0 = f10;
            this.C0 = f10 * 1.2f;
        } else {
            float min = Math.min(k.a(this.f4996f, 30.0f), this.F0) / 2.0f;
            this.B0 = min;
            this.C0 = min;
        }
        if (this.f5013n0 == null) {
            this.f5007k0 = this.f5021r0 / 2.0f;
        } else {
            this.f5007k0 = Math.min(k.a(this.f4996f, 30.0f), this.f5021r0) / 2.0f;
        }
        this.f5006k = Math.max(this.C0, this.f5007k0) * 2.0f;
        F();
        R();
        this.f5008l = this.f5036z;
        p();
        this.f5025t0 = new RectF();
        this.f5027u0 = new RectF();
        A();
        B();
    }

    public final void D() {
        float f10 = this.f5032x;
        float f11 = this.f5034y;
        if (f10 < f11) {
            throw new IllegalArgumentException("the Argument: MAX's value must be larger than MIN's.");
        }
        if (this.f5036z < f11) {
            this.f5036z = f11;
        }
        if (this.f5036z > f10) {
            this.f5036z = f10;
        }
    }

    public final void E() {
        this.f5022s = getMeasuredWidth();
        if (Build.VERSION.SDK_INT < 17) {
            this.f5018q = getPaddingLeft();
            this.f5020r = getPaddingRight();
        } else {
            this.f5018q = getPaddingStart();
            this.f5020r = getPaddingEnd();
        }
        this.f5024t = getPaddingTop();
        float f10 = (this.f5022s - this.f5018q) - this.f5020r;
        this.f5026u = f10;
        this.f5028v = f10 / (this.f5001h0 + (-1) > 0 ? r1 - 1 : 1);
    }

    public final void F() {
        if (this.f4998g == null) {
            this.f4998g = new Paint();
        }
        if (this.f5023s0) {
            this.f4998g.setStrokeCap(Paint.Cap.ROUND);
        }
        this.f4998g.setAntiAlias(true);
        int i10 = this.f5029v0;
        if (i10 > this.f5031w0) {
            this.f5031w0 = i10;
        }
    }

    public final void G() {
        if (this.f5000h == null) {
            TextPaint textPaint = new TextPaint();
            this.f5000h = textPaint;
            textPaint.setAntiAlias(true);
            this.f5000h.setTextAlign(Paint.Align.CENTER);
            this.f5000h.setTextSize(this.O);
        }
        if (this.f5004j == null) {
            this.f5004j = new Rect();
        }
    }

    public final void H() {
        int i10 = this.f5001h0;
        if (i10 == 0) {
            return;
        }
        if (this.H) {
            this.K = new String[i10];
        }
        for (int i11 = 0; i11 < this.f4999g0.length; i11++) {
            if (this.H) {
                this.K[i11] = y(i11);
                TextPaint textPaint = this.f5000h;
                String[] strArr = this.K;
                textPaint.getTextBounds(strArr[i11], 0, strArr[i11].length(), this.f5004j);
                this.L[i11] = this.f5004j.width();
                this.M[i11] = this.f5018q + (this.f5028v * i11);
            }
            this.f4999g0[i11] = this.f5018q + (this.f5028v * i11);
        }
    }

    public final void I(int i10, Typeface typeface) {
        if (i10 == 0) {
            this.P = Typeface.DEFAULT;
            return;
        }
        if (i10 == 1) {
            this.P = Typeface.MONOSPACE;
            return;
        }
        if (i10 == 2) {
            this.P = Typeface.SANS_SERIF;
            return;
        }
        if (i10 == 3) {
            this.P = Typeface.SERIF;
        } else if (typeface == null) {
            this.P = Typeface.DEFAULT;
        } else {
            this.P = typeface;
        }
    }

    public final void J() {
        Drawable drawable = this.G0;
        if (drawable == null) {
            return;
        }
        if (drawable instanceof StateListDrawable) {
            try {
                StateListDrawable stateListDrawable = (StateListDrawable) drawable;
                Class<?> cls = stateListDrawable.getClass();
                int intValue = ((Integer) cls.getMethod("getStateCount", new Class[0]).invoke(stateListDrawable, new Object[0])).intValue();
                if (intValue == 2) {
                    Class<?> cls2 = Integer.TYPE;
                    Method method = cls.getMethod("getStateSet", cls2);
                    Method method2 = cls.getMethod("getStateDrawable", cls2);
                    for (int i10 = 0; i10 < intValue; i10++) {
                        int[] iArr = (int[]) method.invoke(stateListDrawable, Integer.valueOf(i10));
                        if (iArr.length > 0) {
                            if (iArr[0] == 16842919) {
                                this.H0 = v((Drawable) method2.invoke(stateListDrawable, Integer.valueOf(i10)), true);
                            } else {
                                throw new IllegalArgumentException("the state of the selector thumb drawable is wrong!");
                            }
                        } else {
                            this.D0 = v((Drawable) method2.invoke(stateListDrawable, Integer.valueOf(i10)), true);
                        }
                    }
                    return;
                }
                throw new IllegalArgumentException("the format of the selector thumb drawable is wrong!");
            } catch (Exception unused) {
                Bitmap v10 = v(this.G0, true);
                this.D0 = v10;
                this.H0 = v10;
                return;
            }
        }
        Bitmap v11 = v(drawable, true);
        this.D0 = v11;
        this.H0 = v11;
    }

    public final void K(ColorStateList colorStateList, int i10) {
        if (colorStateList == null) {
            this.E0 = i10;
            this.I0 = i10;
            return;
        }
        try {
            int[][] iArr = null;
            int[] iArr2 = null;
            for (Field field : colorStateList.getClass().getDeclaredFields()) {
                field.setAccessible(true);
                if ("mStateSpecs".equals(field.getName())) {
                    iArr = (int[][]) field.get(colorStateList);
                }
                if ("mColors".equals(field.getName())) {
                    iArr2 = (int[]) field.get(colorStateList);
                }
            }
            if (iArr == null || iArr2 == null) {
                return;
            }
            if (iArr.length == 1) {
                int i11 = iArr2[0];
                this.E0 = i11;
                this.I0 = i11;
            } else {
                if (iArr.length == 2) {
                    for (int i12 = 0; i12 < iArr.length; i12++) {
                        int[] iArr3 = iArr[i12];
                        if (iArr3.length == 0) {
                            this.I0 = iArr2[i12];
                        } else if (iArr3[0] == 16842919) {
                            this.E0 = iArr2[i12];
                        } else {
                            throw new IllegalArgumentException("the selector color file you set for the argument: isb_thumb_color is in wrong format.");
                        }
                    }
                    return;
                }
                throw new IllegalArgumentException("the selector color file you set for the argument: isb_thumb_color is in wrong format.");
            }
        } catch (Exception unused) {
            throw new RuntimeException("Something wrong happened when parseing thumb selector color.");
        }
    }

    public final void L() {
        Drawable drawable = this.f5013n0;
        if (drawable instanceof StateListDrawable) {
            StateListDrawable stateListDrawable = (StateListDrawable) drawable;
            try {
                Class<?> cls = stateListDrawable.getClass();
                int intValue = ((Integer) cls.getMethod("getStateCount", new Class[0]).invoke(stateListDrawable, new Object[0])).intValue();
                if (intValue == 2) {
                    Class<?> cls2 = Integer.TYPE;
                    Method method = cls.getMethod("getStateSet", cls2);
                    Method method2 = cls.getMethod("getStateDrawable", cls2);
                    for (int i10 = 0; i10 < intValue; i10++) {
                        int[] iArr = (int[]) method.invoke(stateListDrawable, Integer.valueOf(i10));
                        if (iArr.length > 0) {
                            if (iArr[0] == 16842913) {
                                this.f5011m0 = v((Drawable) method2.invoke(stateListDrawable, Integer.valueOf(i10)), false);
                            } else {
                                throw new IllegalArgumentException("the state of the selector TickMarks drawable is wrong!");
                            }
                        } else {
                            this.f5009l0 = v((Drawable) method2.invoke(stateListDrawable, Integer.valueOf(i10)), false);
                        }
                    }
                    return;
                }
                throw new IllegalArgumentException("the format of the selector TickMarks drawable is wrong!");
            } catch (Exception unused) {
                Bitmap v10 = v(this.f5013n0, false);
                this.f5009l0 = v10;
                this.f5011m0 = v10;
                return;
            }
        }
        Bitmap v11 = v(drawable, false);
        this.f5009l0 = v11;
        this.f5011m0 = v11;
    }

    public final void M(ColorStateList colorStateList, int i10) {
        if (colorStateList == null) {
            this.f5005j0 = i10;
            this.f5003i0 = i10;
            return;
        }
        try {
            int[][] iArr = null;
            int[] iArr2 = null;
            for (Field field : colorStateList.getClass().getDeclaredFields()) {
                field.setAccessible(true);
                if ("mStateSpecs".equals(field.getName())) {
                    iArr = (int[][]) field.get(colorStateList);
                }
                if ("mColors".equals(field.getName())) {
                    iArr2 = (int[]) field.get(colorStateList);
                }
            }
            if (iArr == null || iArr2 == null) {
                return;
            }
            if (iArr.length == 1) {
                int i11 = iArr2[0];
                this.f5005j0 = i11;
                this.f5003i0 = i11;
            } else {
                if (iArr.length == 2) {
                    for (int i12 = 0; i12 < iArr.length; i12++) {
                        int[] iArr3 = iArr[i12];
                        if (iArr3.length == 0) {
                            this.f5003i0 = iArr2[i12];
                        } else if (iArr3[0] == 16842913) {
                            this.f5005j0 = iArr2[i12];
                        } else {
                            throw new IllegalArgumentException("the selector color file you set for the argument: isb_tick_marks_color is in wrong format.");
                        }
                    }
                    return;
                }
                throw new IllegalArgumentException("the selector color file you set for the argument: isb_tick_marks_color is in wrong format.");
            }
        } catch (Exception e10) {
            throw new RuntimeException("Something wrong happened when parsing thumb selector color." + e10.getMessage());
        }
    }

    public final void N(ColorStateList colorStateList, int i10) {
        if (colorStateList == null) {
            this.R = i10;
            this.Q = i10;
            this.S = i10;
            return;
        }
        try {
            int[][] iArr = null;
            int[] iArr2 = null;
            for (Field field : colorStateList.getClass().getDeclaredFields()) {
                field.setAccessible(true);
                if ("mStateSpecs".equals(field.getName())) {
                    iArr = (int[][]) field.get(colorStateList);
                }
                if ("mColors".equals(field.getName())) {
                    iArr2 = (int[]) field.get(colorStateList);
                }
            }
            if (iArr == null || iArr2 == null) {
                return;
            }
            if (iArr.length == 1) {
                int i11 = iArr2[0];
                this.R = i11;
                this.Q = i11;
                this.S = i11;
                return;
            }
            if (iArr.length == 3) {
                for (int i12 = 0; i12 < iArr.length; i12++) {
                    int[] iArr3 = iArr[i12];
                    if (iArr3.length == 0) {
                        this.R = iArr2[i12];
                    } else {
                        int i13 = iArr3[0];
                        if (i13 == 16842913) {
                            this.Q = iArr2[i12];
                        } else if (i13 == 16843623) {
                            this.S = iArr2[i12];
                        } else {
                            throw new IllegalArgumentException("the selector color file you set for the argument: isb_tick_texts_color is in wrong format.");
                        }
                    }
                }
                return;
            }
            throw new IllegalArgumentException("the selector color file you set for the argument: isb_tick_texts_color is in wrong format.");
        } catch (Exception unused) {
            throw new RuntimeException("Something wrong happened when parseing thumb selector color.");
        }
    }

    public final void O() {
        if (this.G) {
            RectF rectF = this.f5027u0;
            int i10 = this.f5018q;
            rectF.left = i10;
            rectF.top = this.f5024t + this.C0;
            rectF.right = i10 + (this.f5026u * (1.0f - ((this.f5036z - this.f5034y) / getAmplitude())));
            RectF rectF2 = this.f5027u0;
            float f10 = rectF2.top;
            rectF2.bottom = f10;
            RectF rectF3 = this.f5025t0;
            rectF3.left = rectF2.right;
            rectF3.top = f10;
            rectF3.right = this.f5022s - this.f5020r;
            rectF3.bottom = f10;
            return;
        }
        RectF rectF4 = this.f5025t0;
        rectF4.left = this.f5018q;
        rectF4.top = this.f5024t + this.C0;
        rectF4.right = (((this.f5036z - this.f5034y) * this.f5026u) / getAmplitude()) + this.f5018q;
        RectF rectF5 = this.f5025t0;
        float f11 = rectF5.top;
        rectF5.bottom = f11;
        RectF rectF6 = this.f5027u0;
        rectF6.left = rectF5.right;
        rectF6.top = f11;
        rectF6.right = this.f5022s - this.f5020r;
        rectF6.bottom = f11;
    }

    public final boolean P(float f10, float f11) {
        if (this.f5010m == -1.0f) {
            this.f5010m = k.a(this.f4996f, 5.0f);
        }
        float f12 = this.f5018q;
        float f13 = this.f5010m;
        boolean z10 = f10 >= f12 - (f13 * 2.0f) && f10 <= ((float) (this.f5022s - this.f5020r)) + (2.0f * f13);
        float f14 = this.f5025t0.top;
        float f15 = this.C0;
        return z10 && ((f11 > ((f14 - f15) - f13) ? 1 : (f11 == ((f14 - f15) - f13) ? 0 : -1)) >= 0 && (f11 > ((f14 + f15) + f13) ? 1 : (f11 == ((f14 + f15) + f13) ? 0 : -1)) <= 0);
    }

    public final boolean Q(float f10) {
        float f11;
        W(this.f5036z);
        if (this.G) {
            f11 = this.f5027u0.right;
        } else {
            f11 = this.f5025t0.right;
        }
        int i10 = this.F0;
        return f11 - (((float) i10) / 2.0f) <= f10 && f10 <= f11 + (((float) i10) / 2.0f);
    }

    public final void R() {
        if (S()) {
            G();
            this.f5000h.setTypeface(this.P);
            this.f5000h.getTextBounds("j", 0, 1, this.f5004j);
            this.J = this.f5004j.height() + k.a(this.f4996f, 3.0f);
        }
    }

    public final boolean S() {
        return this.J0 || (this.f5001h0 != 0 && this.H);
    }

    public final boolean T() {
        return this.A ? this.f5008l != this.f5036z : Math.round(this.f5008l) != Math.round(this.f5036z);
    }

    public final void U(MotionEvent motionEvent) {
        W(m(n(j(motionEvent))));
        setSeekListener(true);
        invalidate();
        X();
    }

    public final void V() {
        O();
        if (S()) {
            this.f5000h.getTextBounds("j", 0, 1, this.f5004j);
            float round = this.f5024t + this.f5006k + Math.round(this.f5004j.height() - this.f5000h.descent()) + k.a(this.f4996f, 3.0f);
            this.N = round;
            this.K0 = round;
        }
        if (this.f4999g0 == null) {
            return;
        }
        H();
        if (this.f5001h0 > 2) {
            float f10 = this.F[getClosestIndex()];
            this.f5036z = f10;
            this.f5008l = f10;
        }
        W(this.f5036z);
    }

    public final void W(float f10) {
        if (this.G) {
            this.f5027u0.right = this.f5018q + (this.f5026u * (1.0f - ((f10 - this.f5034y) / getAmplitude())));
            this.f5025t0.left = this.f5027u0.right;
            return;
        }
        this.f5025t0.right = (((f10 - this.f5034y) * this.f5026u) / getAmplitude()) + this.f5018q;
        this.f5027u0.left = this.f5025t0.right;
    }

    public final void X() {
        if (this.f4991a0) {
            Y();
            return;
        }
        d dVar = this.U;
        if (dVar == null) {
            return;
        }
        dVar.g();
        if (this.U.i()) {
            this.U.p(getThumbCenterX());
        } else {
            this.U.o(getThumbCenterX());
        }
    }

    public final void Y() {
        d dVar;
        int i10;
        if (!this.f4991a0 || (dVar = this.U) == null) {
            return;
        }
        dVar.l(getIndicatorTextString());
        int i11 = 0;
        this.f4993c0.measure(0, 0);
        int measuredWidth = this.f4993c0.getMeasuredWidth();
        float thumbCenterX = getThumbCenterX();
        if (this.f5012n == -1.0f) {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            WindowManager windowManager = (WindowManager) this.f4996f.getSystemService("window");
            if (windowManager != null) {
                windowManager.getDefaultDisplay().getMetrics(displayMetrics);
                this.f5012n = displayMetrics.widthPixels;
            }
        }
        float f10 = measuredWidth / 2;
        float f11 = f10 + thumbCenterX;
        int i12 = this.f5022s;
        if (f11 > i12) {
            i11 = i12 - measuredWidth;
            i10 = (int) ((thumbCenterX - i11) - f10);
        } else if (thumbCenterX - f10 < StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            i10 = -((int) (f10 - thumbCenterX));
        } else {
            i11 = (int) (getThumbCenterX() - f10);
            i10 = 0;
        }
        this.U.r(i11);
        this.U.q(i10);
    }

    @Override // android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        ViewParent parent = getParent();
        if (parent == null) {
            return super.dispatchTouchEvent(motionEvent);
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            parent.requestDisallowInterceptTouchEvent(true);
        } else if (action == 1 || action == 3) {
            parent.requestDisallowInterceptTouchEvent(false);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public d getIndicator() {
        return this.U;
    }

    public View getIndicatorContentView() {
        return this.f4993c0;
    }

    public String getIndicatorTextString() {
        String[] strArr;
        String str = this.f4997f0;
        if (str != null && str.contains("${TICK_TEXT}")) {
            if (this.f5001h0 > 2 && (strArr = this.K) != null) {
                return this.f4997f0.replace("${TICK_TEXT}", strArr[getThumbPosOnTick()]);
            }
        } else {
            String str2 = this.f4997f0;
            if (str2 != null && str2.contains("${PROGRESS}")) {
                return this.f4997f0.replace("${PROGRESS}", x(this.f5036z));
            }
        }
        return x(this.f5036z);
    }

    public float getMax() {
        return this.f5032x;
    }

    public float getMin() {
        return this.f5034y;
    }

    public e getOnSeekChangeListener() {
        return this.f5002i;
    }

    public int getProgress() {
        return Math.round(this.f5036z);
    }

    public synchronized float getProgressFloat() {
        return BigDecimal.valueOf(this.f5036z).setScale(this.B, 4).floatValue();
    }

    public int getTickCount() {
        return this.f5001h0;
    }

    public final float j(MotionEvent motionEvent) {
        float x10 = motionEvent.getX();
        int i10 = this.f5018q;
        if (x10 >= i10) {
            float x11 = motionEvent.getX();
            int i11 = this.f5022s;
            int i12 = this.f5020r;
            if (x11 <= i11 - i12) {
                return motionEvent.getX();
            }
            i10 = i11 - i12;
        }
        return i10;
    }

    public final void k(cb.a aVar) {
        this.f5032x = aVar.f3779b;
        this.f5034y = aVar.f3780c;
        this.f5036z = aVar.f3781d;
        this.A = aVar.f3782e;
        this.f5001h0 = aVar.H;
        this.E = aVar.f3783f;
        this.G = aVar.f3784g;
        this.C = aVar.f3785h;
        this.f5014o = aVar.f3787j;
        this.D = aVar.f3786i;
        this.f4995e0 = aVar.f3788k;
        this.V = aVar.f3789l;
        this.W = aVar.f3790m;
        this.f4992b0 = aVar.f3791n;
        this.f4993c0 = aVar.f3792o;
        this.f4994d0 = aVar.f3793p;
        this.f5029v0 = aVar.f3794q;
        this.f5033x0 = aVar.f3795r;
        this.f5031w0 = aVar.f3796s;
        this.f5035y0 = aVar.f3797t;
        this.f5023s0 = aVar.f3798u;
        this.F0 = aVar.f3801x;
        this.G0 = aVar.A;
        this.L0 = aVar.f3799v;
        K(aVar.f3803z, aVar.f3802y);
        this.J0 = aVar.f3800w;
        this.f5015o0 = aVar.I;
        this.f5021r0 = aVar.K;
        this.f5013n0 = aVar.L;
        this.f5017p0 = aVar.M;
        this.f5019q0 = aVar.N;
        M(aVar.O, aVar.J);
        this.H = aVar.B;
        this.O = aVar.D;
        this.T = aVar.E;
        this.P = aVar.F;
        N(aVar.G, aVar.C);
    }

    public final boolean l() {
        if (this.f5001h0 < 3 || !this.E || !this.N0) {
            return false;
        }
        int closestIndex = getClosestIndex();
        float f10 = this.f5036z;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, Math.abs(f10 - this.F[closestIndex]));
        ofFloat.start();
        ofFloat.addUpdateListener(new b(f10, closestIndex));
        return true;
    }

    public final float m(float f10) {
        this.f5008l = this.f5036z;
        float amplitude = this.f5034y + ((getAmplitude() * (f10 - this.f5018q)) / this.f5026u);
        this.f5036z = amplitude;
        return amplitude;
    }

    public final float n(float f10) {
        if (this.f5001h0 > 2 && !this.E) {
            f10 = this.f5018q + (this.f5028v * Math.round((f10 - this.f5018q) / this.f5028v));
        }
        return this.G ? (this.f5026u - f10) + (this.f5018q * 2) : f10;
    }

    public final j o(boolean z10) {
        String[] strArr;
        if (this.f5016p == null) {
            this.f5016p = new j(this);
        }
        this.f5016p.f3887b = getProgress();
        this.f5016p.f3888c = getProgressFloat();
        this.f5016p.f3889d = z10;
        if (this.f5001h0 > 2) {
            int thumbPosOnTick = getThumbPosOnTick();
            if (this.H && (strArr = this.K) != null) {
                this.f5016p.f3891f = strArr[thumbPosOnTick];
            }
            if (this.G) {
                this.f5016p.f3890e = (this.f5001h0 - thumbPosOnTick) - 1;
            } else {
                this.f5016p.f3890e = thumbPosOnTick;
            }
        }
        return this.f5016p;
    }

    @Override // android.view.View
    public synchronized void onDraw(Canvas canvas) {
        u(canvas);
        s(canvas);
        t(canvas);
        q(canvas);
        r(canvas);
    }

    @Override // android.view.View
    public void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        setMeasuredDimension(View.resolveSize(k.a(this.f4996f, 170.0f), i10), Math.round(this.f5006k + getPaddingTop() + getPaddingBottom()) + this.J);
        E();
        V();
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            setProgress(bundle.getFloat("isb_progress"));
            super.onRestoreInstanceState(bundle.getParcelable("isb_instance_state"));
            return;
        }
        super.onRestoreInstanceState(parcelable);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable("isb_instance_state", super.onSaveInstanceState());
        bundle.putFloat("isb_progress", this.f5036z);
        return bundle;
    }

    @Override // android.view.View
    public void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        post(new a());
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0019, code lost:
    
        if (r0 != 3) goto L37;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.C || !isEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action != 1) {
                if (action == 2) {
                    U(motionEvent);
                }
            }
            this.f5030w = false;
            e eVar = this.f5002i;
            if (eVar != null) {
                eVar.c(this);
            }
            if (!l()) {
                invalidate();
            }
            d dVar = this.U;
            if (dVar != null) {
                dVar.f();
            }
        } else {
            performClick();
            float x10 = motionEvent.getX();
            if (P(x10, motionEvent.getY())) {
                if (this.D && !Q(x10)) {
                    return false;
                }
                this.f5030w = true;
                e eVar2 = this.f5002i;
                if (eVar2 != null) {
                    eVar2.a(this);
                }
                U(motionEvent);
                return true;
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    public final void p() {
        int i10 = this.f5001h0;
        if (i10 < 0 || i10 > 50) {
            throw new IllegalArgumentException("the Argument: TICK COUNT must be limited between (0-50), Now is " + this.f5001h0);
        }
        if (i10 == 0) {
            return;
        }
        this.f4999g0 = new float[i10];
        if (this.H) {
            this.M = new float[i10];
            this.L = new float[i10];
        }
        this.F = new float[i10];
        int i11 = 0;
        while (true) {
            float[] fArr = this.F;
            if (i11 >= fArr.length) {
                return;
            }
            float f10 = this.f5034y;
            fArr[i11] = f10 + ((i11 * (this.f5032x - f10)) / (this.f5001h0 + (-1) > 0 ? r4 - 1 : 1));
            i11++;
        }
    }

    @Override // android.view.View
    public boolean performClick() {
        return super.performClick();
    }

    public final void q(Canvas canvas) {
        if (this.M0) {
            return;
        }
        float thumbCenterX = getThumbCenterX();
        if (this.G0 != null) {
            if (this.D0 == null || this.H0 == null) {
                J();
            }
            if (this.D0 != null && this.H0 != null) {
                this.f4998g.setAlpha(BaseProgressIndicator.MAX_ALPHA);
                if (this.f5030w) {
                    canvas.drawBitmap(this.H0, thumbCenterX - (r1.getWidth() / 2.0f), this.f5025t0.top - (this.H0.getHeight() / 2.0f), this.f4998g);
                    return;
                } else {
                    canvas.drawBitmap(this.D0, thumbCenterX - (r1.getWidth() / 2.0f), this.f5025t0.top - (this.D0.getHeight() / 2.0f), this.f4998g);
                    return;
                }
            }
            throw new IllegalArgumentException("the format of the selector thumb drawable is wrong!");
        }
        if (this.f5030w) {
            this.f4998g.setColor(this.I0);
        } else {
            this.f4998g.setColor(this.E0);
        }
        canvas.drawCircle(thumbCenterX, this.f5025t0.top, this.f5030w ? this.C0 : this.B0, this.f4998g);
    }

    public final void r(Canvas canvas) {
        if (this.J0) {
            if (!this.H || this.f5001h0 <= 2) {
                this.f5000h.setColor(this.L0);
                canvas.drawText(x(this.f5036z), getThumbCenterX(), this.K0, this.f5000h);
            }
        }
    }

    public final void s(Canvas canvas) {
        int rightSideTrackSize;
        Bitmap bitmap;
        if (this.f5001h0 != 0) {
            if (this.f5015o0 == 0 && this.f5013n0 == null) {
                return;
            }
            float thumbCenterX = getThumbCenterX();
            for (int i10 = 0; i10 < this.f4999g0.length; i10++) {
                float thumbPosOnTickFloat = getThumbPosOnTickFloat();
                if ((!this.f5019q0 || thumbCenterX < this.f4999g0[i10]) && ((!this.f5017p0 || (i10 != 0 && i10 != this.f4999g0.length - 1)) && (i10 != getThumbPosOnTick() || this.f5001h0 <= 2 || this.E))) {
                    float f10 = i10;
                    if (f10 <= thumbPosOnTickFloat) {
                        this.f4998g.setColor(getLeftSideTickColor());
                    } else {
                        this.f4998g.setColor(getRightSideTickColor());
                    }
                    if (this.f5013n0 != null) {
                        if (this.f5011m0 == null || this.f5009l0 == null) {
                            L();
                        }
                        Bitmap bitmap2 = this.f5011m0;
                        if (bitmap2 == null || (bitmap = this.f5009l0) == null) {
                            throw new IllegalArgumentException("the format of the selector TickMarks drawable is wrong!");
                        }
                        if (f10 <= thumbPosOnTickFloat) {
                            canvas.drawBitmap(bitmap2, this.f4999g0[i10] - (bitmap.getWidth() / 2.0f), this.f5025t0.top - (this.f5009l0.getHeight() / 2.0f), this.f4998g);
                        } else {
                            canvas.drawBitmap(bitmap, this.f4999g0[i10] - (bitmap.getWidth() / 2.0f), this.f5025t0.top - (this.f5009l0.getHeight() / 2.0f), this.f4998g);
                        }
                    } else {
                        int i11 = this.f5015o0;
                        if (i11 == 1) {
                            canvas.drawCircle(this.f4999g0[i10], this.f5025t0.top, this.f5007k0, this.f4998g);
                        } else if (i11 == 3) {
                            int a10 = k.a(this.f4996f, 1.0f);
                            if (thumbCenterX >= this.f4999g0[i10]) {
                                rightSideTrackSize = getLeftSideTrackSize();
                            } else {
                                rightSideTrackSize = getRightSideTrackSize();
                            }
                            float[] fArr = this.f4999g0;
                            float f11 = a10;
                            float f12 = fArr[i10] - f11;
                            float f13 = this.f5025t0.top;
                            float f14 = rightSideTrackSize / 2.0f;
                            canvas.drawRect(f12, f13 - f14, fArr[i10] + f11, f13 + f14, this.f4998g);
                        } else if (i11 == 2) {
                            float[] fArr2 = this.f4999g0;
                            float f15 = fArr2[i10];
                            int i12 = this.f5021r0;
                            float f16 = f15 - (i12 / 2.0f);
                            float f17 = this.f5025t0.top;
                            canvas.drawRect(f16, f17 - (i12 / 2.0f), fArr2[i10] + (i12 / 2.0f), f17 + (i12 / 2.0f), this.f4998g);
                        }
                    }
                }
            }
        }
    }

    public void setDecimalScale(int i10) {
        this.B = i10;
    }

    @Override // android.view.View
    public void setEnabled(boolean z10) {
        if (z10 == isEnabled()) {
            return;
        }
        super.setEnabled(z10);
        if (isEnabled()) {
            setAlpha(1.0f);
            if (this.f4991a0) {
                this.f4993c0.setAlpha(1.0f);
                return;
            }
            return;
        }
        setAlpha(0.3f);
        if (this.f4991a0) {
            this.f4993c0.setAlpha(0.3f);
        }
    }

    public void setIndicatorStayAlways(boolean z10) {
        this.f4991a0 = z10;
    }

    public void setIndicatorTextFormat(String str) {
        this.f4997f0 = str;
        H();
        Y();
    }

    public synchronized void setMax(float f10) {
        this.f5032x = Math.max(this.f5034y, f10);
        D();
        p();
        V();
        invalidate();
        Y();
    }

    public synchronized void setMin(float f10) {
        this.f5034y = Math.min(this.f5032x, f10);
        D();
        p();
        V();
        invalidate();
        Y();
    }

    public void setOnSeekChangeListener(e eVar) {
        this.f5002i = eVar;
    }

    public synchronized void setProgress(float f10) {
        this.f5008l = this.f5036z;
        float f11 = this.f5034y;
        if (f10 >= f11) {
            f11 = this.f5032x;
            if (f10 > f11) {
            }
            this.f5036z = f10;
            if (!this.E && this.f5001h0 > 2) {
                this.f5036z = this.F[getClosestIndex()];
            }
            setSeekListener(false);
            W(this.f5036z);
            postInvalidate();
            Y();
        }
        f10 = f11;
        this.f5036z = f10;
        if (!this.E) {
            this.f5036z = this.F[getClosestIndex()];
        }
        setSeekListener(false);
        W(this.f5036z);
        postInvalidate();
        Y();
    }

    public void setR2L(boolean z10) {
        this.G = z10;
        requestLayout();
        invalidate();
        Y();
    }

    public void setThumbAdjustAuto(boolean z10) {
        this.N0 = z10;
    }

    public void setThumbDrawable(Drawable drawable) {
        if (drawable == null) {
            this.G0 = null;
            this.D0 = null;
            this.H0 = null;
        } else {
            this.G0 = drawable;
            float min = Math.min(k.a(this.f4996f, 30.0f), this.F0) / 2.0f;
            this.B0 = min;
            this.C0 = min;
            this.f5006k = Math.max(min, this.f5007k0) * 2.0f;
            J();
        }
        requestLayout();
        invalidate();
    }

    public synchronized void setTickCount(int i10) {
        int i11 = this.f5001h0;
        if (i11 >= 0 && i11 <= 50) {
            this.f5001h0 = i10;
            p();
            H();
            E();
            V();
            invalidate();
            Y();
        } else {
            throw new IllegalArgumentException("the Argument: TICK COUNT must be limited between (0-50), Now is " + this.f5001h0);
        }
    }

    public void setTickMarksDrawable(Drawable drawable) {
        if (drawable == null) {
            this.f5013n0 = null;
            this.f5009l0 = null;
            this.f5011m0 = null;
        } else {
            this.f5013n0 = drawable;
            float min = Math.min(k.a(this.f4996f, 30.0f), this.f5021r0) / 2.0f;
            this.f5007k0 = min;
            this.f5006k = Math.max(this.C0, min) * 2.0f;
            L();
        }
        invalidate();
    }

    public void setUserSeekAble(boolean z10) {
        this.C = z10;
    }

    public final void t(Canvas canvas) {
        if (this.K == null) {
            return;
        }
        float thumbPosOnTickFloat = getThumbPosOnTickFloat();
        int i10 = 0;
        while (true) {
            if (i10 >= this.K.length) {
                return;
            }
            if (!this.I || i10 == 0 || i10 == r2.length - 1) {
                if (i10 == getThumbPosOnTick() && i10 == thumbPosOnTickFloat) {
                    this.f5000h.setColor(this.S);
                } else if (i10 < thumbPosOnTickFloat) {
                    this.f5000h.setColor(getLeftSideTickTextsColor());
                } else {
                    this.f5000h.setColor(getRightSideTickTextsColor());
                }
                int length = this.G ? (this.K.length - i10) - 1 : i10;
                if (i10 == 0) {
                    canvas.drawText(this.K[length], this.M[i10] + (this.L[length] / 2.0f), this.N, this.f5000h);
                } else {
                    String[] strArr = this.K;
                    if (i10 == strArr.length - 1) {
                        canvas.drawText(strArr[length], this.M[i10] - (this.L[length] / 2.0f), this.N, this.f5000h);
                    } else {
                        canvas.drawText(strArr[length], this.M[i10], this.N, this.f5000h);
                    }
                }
            }
            i10++;
        }
    }

    public final void u(Canvas canvas) {
        if (this.A0) {
            int i10 = this.f5001h0;
            int i11 = i10 + (-1) > 0 ? i10 - 1 : 1;
            for (int i12 = 0; i12 < i11; i12++) {
                if (this.G) {
                    this.f4998g.setColor(this.f5037z0[(i11 - i12) - 1]);
                } else {
                    this.f4998g.setColor(this.f5037z0[i12]);
                }
                float thumbPosOnTickFloat = getThumbPosOnTickFloat();
                float f10 = i12;
                if (f10 < thumbPosOnTickFloat) {
                    int i13 = i12 + 1;
                    if (thumbPosOnTickFloat < i13) {
                        float thumbCenterX = getThumbCenterX();
                        this.f4998g.setStrokeWidth(getLeftSideTrackSize());
                        float f11 = this.f4999g0[i12];
                        RectF rectF = this.f5025t0;
                        canvas.drawLine(f11, rectF.top, thumbCenterX, rectF.bottom, this.f4998g);
                        this.f4998g.setStrokeWidth(getRightSideTrackSize());
                        RectF rectF2 = this.f5025t0;
                        canvas.drawLine(thumbCenterX, rectF2.top, this.f4999g0[i13], rectF2.bottom, this.f4998g);
                    }
                }
                if (f10 < thumbPosOnTickFloat) {
                    this.f4998g.setStrokeWidth(getLeftSideTrackSize());
                } else {
                    this.f4998g.setStrokeWidth(getRightSideTrackSize());
                }
                float[] fArr = this.f4999g0;
                float f12 = fArr[i12];
                RectF rectF3 = this.f5025t0;
                canvas.drawLine(f12, rectF3.top, fArr[i12 + 1], rectF3.bottom, this.f4998g);
            }
            return;
        }
        this.f4998g.setColor(this.f5035y0);
        this.f4998g.setStrokeWidth(this.f5031w0);
        RectF rectF4 = this.f5025t0;
        canvas.drawLine(rectF4.left, rectF4.top, rectF4.right, rectF4.bottom, this.f4998g);
        this.f4998g.setColor(this.f5033x0);
        this.f4998g.setStrokeWidth(this.f5029v0);
        RectF rectF5 = this.f5027u0;
        canvas.drawLine(rectF5.left, rectF5.top, rectF5.right, rectF5.bottom, this.f4998g);
    }

    public final Bitmap v(Drawable drawable, boolean z10) {
        int intrinsicHeight;
        int i10;
        if (drawable == null) {
            return null;
        }
        int a10 = k.a(this.f4996f, 30.0f);
        if (drawable.getIntrinsicWidth() > a10) {
            if (z10) {
                i10 = this.F0;
            } else {
                i10 = this.f5021r0;
            }
            intrinsicHeight = w(drawable, i10);
            if (i10 > a10) {
                intrinsicHeight = w(drawable, a10);
            } else {
                a10 = i10;
            }
        } else {
            a10 = drawable.getIntrinsicWidth();
            intrinsicHeight = drawable.getIntrinsicHeight();
        }
        Bitmap createBitmap = Bitmap.createBitmap(a10, intrinsicHeight, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawable.draw(canvas);
        return createBitmap;
    }

    public final int w(Drawable drawable, int i10) {
        return Math.round(((i10 * 1.0f) * drawable.getIntrinsicHeight()) / drawable.getIntrinsicWidth());
    }

    public final String x(float f10) {
        if (this.A) {
            return c.b(f10, this.B);
        }
        return String.valueOf(Math.round(f10));
    }

    public final String y(int i10) {
        CharSequence[] charSequenceArr = this.T;
        if (charSequenceArr == null) {
            return x(this.F[i10]);
        }
        return i10 < charSequenceArr.length ? String.valueOf(charSequenceArr[i10]) : "";
    }

    public final void z(Context context, AttributeSet attributeSet) {
        cb.a aVar = new cb.a(context);
        if (attributeSet == null) {
            k(aVar);
            return;
        }
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, i.f3875t);
        this.f5032x = obtainStyledAttributes.getFloat(i.A, aVar.f3779b);
        this.f5034y = obtainStyledAttributes.getFloat(i.B, aVar.f3780c);
        this.f5036z = obtainStyledAttributes.getFloat(i.D, aVar.f3781d);
        this.A = obtainStyledAttributes.getBoolean(i.E, aVar.f3782e);
        this.C = obtainStyledAttributes.getBoolean(i.f3848f0, aVar.f3785h);
        this.f5014o = obtainStyledAttributes.getBoolean(i.f3877u, aVar.f3787j);
        this.D = obtainStyledAttributes.getBoolean(i.C, aVar.f3786i);
        this.E = obtainStyledAttributes.getBoolean(i.G, aVar.f3783f);
        this.G = obtainStyledAttributes.getBoolean(i.F, aVar.f3784g);
        this.f5029v0 = obtainStyledAttributes.getDimensionPixelSize(i.f3840b0, aVar.f3794q);
        this.f5031w0 = obtainStyledAttributes.getDimensionPixelSize(i.f3844d0, aVar.f3796s);
        this.f5033x0 = obtainStyledAttributes.getColor(i.f3838a0, aVar.f3795r);
        this.f5035y0 = obtainStyledAttributes.getColor(i.f3842c0, aVar.f3797t);
        this.f5023s0 = obtainStyledAttributes.getBoolean(i.f3846e0, aVar.f3798u);
        this.F0 = obtainStyledAttributes.getDimensionPixelSize(i.O, aVar.f3801x);
        this.G0 = obtainStyledAttributes.getDrawable(i.N);
        this.N0 = obtainStyledAttributes.getBoolean(i.L, true);
        K(obtainStyledAttributes.getColorStateList(i.M), aVar.f3802y);
        this.J0 = obtainStyledAttributes.getBoolean(i.I, aVar.f3800w);
        this.L0 = obtainStyledAttributes.getColor(i.P, aVar.f3799v);
        this.f5001h0 = obtainStyledAttributes.getInt(i.Z, aVar.H);
        this.f5015o0 = obtainStyledAttributes.getInt(i.J, aVar.I);
        this.f5021r0 = obtainStyledAttributes.getDimensionPixelSize(i.T, aVar.K);
        M(obtainStyledAttributes.getColorStateList(i.Q), aVar.J);
        this.f5013n0 = obtainStyledAttributes.getDrawable(i.R);
        this.f5019q0 = obtainStyledAttributes.getBoolean(i.U, aVar.N);
        this.f5017p0 = obtainStyledAttributes.getBoolean(i.S, aVar.M);
        this.H = obtainStyledAttributes.getBoolean(i.K, aVar.B);
        this.O = obtainStyledAttributes.getDimensionPixelSize(i.X, aVar.D);
        N(obtainStyledAttributes.getColorStateList(i.W), aVar.C);
        this.T = obtainStyledAttributes.getTextArray(i.V);
        I(obtainStyledAttributes.getInt(i.Y, -1), aVar.F);
        this.f4995e0 = obtainStyledAttributes.getInt(i.H, aVar.f3788k);
        this.V = obtainStyledAttributes.getColor(i.f3879v, aVar.f3789l);
        this.f4992b0 = obtainStyledAttributes.getDimensionPixelSize(i.f3884y, aVar.f3791n);
        this.W = obtainStyledAttributes.getColor(i.f3883x, aVar.f3790m);
        int resourceId = obtainStyledAttributes.getResourceId(i.f3881w, 0);
        if (resourceId > 0) {
            this.f4993c0 = View.inflate(this.f4996f, resourceId, null);
        }
        int resourceId2 = obtainStyledAttributes.getResourceId(i.f3885z, 0);
        if (resourceId2 > 0) {
            this.f4994d0 = View.inflate(this.f4996f, resourceId2, null);
        }
        obtainStyledAttributes.recycle();
    }
}
