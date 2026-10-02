package com.xw.repo;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Property;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.LinearInterpolator;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import java.math.BigDecimal;

/* loaded from: classes.dex */
public class BubbleSeekBar extends View {
    public int A;
    public boolean B;
    public boolean C;
    public boolean D;
    public boolean E;
    public long F;
    public boolean G;
    public long H;
    public boolean I;
    public boolean J;
    public int K;
    public int L;
    public int M;
    public float N;
    public float O;
    public float P;
    public float Q;
    public float R;
    public boolean S;
    public int T;
    public boolean U;
    public SparseArray<String> V;
    public float W;

    /* renamed from: a0, reason: collision with root package name */
    public boolean f5042a0;

    /* renamed from: b0, reason: collision with root package name */
    public k f5043b0;

    /* renamed from: c0, reason: collision with root package name */
    public float f5044c0;

    /* renamed from: d0, reason: collision with root package name */
    public float f5045d0;

    /* renamed from: e0, reason: collision with root package name */
    public Paint f5046e0;

    /* renamed from: f, reason: collision with root package name */
    public float f5047f;

    /* renamed from: f0, reason: collision with root package name */
    public Rect f5048f0;

    /* renamed from: g, reason: collision with root package name */
    public float f5049g;

    /* renamed from: g0, reason: collision with root package name */
    public WindowManager f5050g0;

    /* renamed from: h, reason: collision with root package name */
    public float f5051h;

    /* renamed from: h0, reason: collision with root package name */
    public i f5052h0;

    /* renamed from: i, reason: collision with root package name */
    public boolean f5053i;

    /* renamed from: i0, reason: collision with root package name */
    public int f5054i0;

    /* renamed from: j, reason: collision with root package name */
    public int f5055j;

    /* renamed from: j0, reason: collision with root package name */
    public float f5056j0;

    /* renamed from: k, reason: collision with root package name */
    public int f5057k;

    /* renamed from: k0, reason: collision with root package name */
    public float f5058k0;

    /* renamed from: l, reason: collision with root package name */
    public int f5059l;

    /* renamed from: l0, reason: collision with root package name */
    public float f5060l0;

    /* renamed from: m, reason: collision with root package name */
    public int f5061m;

    /* renamed from: m0, reason: collision with root package name */
    public WindowManager.LayoutParams f5062m0;

    /* renamed from: n, reason: collision with root package name */
    public int f5063n;

    /* renamed from: n0, reason: collision with root package name */
    public int[] f5064n0;

    /* renamed from: o, reason: collision with root package name */
    public int f5065o;

    /* renamed from: o0, reason: collision with root package name */
    public boolean f5066o0;

    /* renamed from: p, reason: collision with root package name */
    public int f5067p;

    /* renamed from: p0, reason: collision with root package name */
    public float f5068p0;

    /* renamed from: q, reason: collision with root package name */
    public int f5069q;

    /* renamed from: q0, reason: collision with root package name */
    public db.a f5070q0;

    /* renamed from: r, reason: collision with root package name */
    public boolean f5071r;

    /* renamed from: r0, reason: collision with root package name */
    public float f5072r0;

    /* renamed from: s, reason: collision with root package name */
    public boolean f5073s;

    /* renamed from: t, reason: collision with root package name */
    public boolean f5074t;

    /* renamed from: u, reason: collision with root package name */
    public int f5075u;

    /* renamed from: v, reason: collision with root package name */
    public int f5076v;

    /* renamed from: w, reason: collision with root package name */
    public int f5077w;

    /* renamed from: x, reason: collision with root package name */
    public int f5078x;

    /* renamed from: y, reason: collision with root package name */
    public boolean f5079y;

    /* renamed from: z, reason: collision with root package name */
    public int f5080z;

    /* loaded from: classes.dex */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BubbleSeekBar.this.requestLayout();
        }
    }

    /* loaded from: classes.dex */
    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BubbleSeekBar.this.f5066o0 = false;
            BubbleSeekBar.this.z();
        }
    }

    /* loaded from: classes.dex */
    public class c extends AnimatorListenerAdapter {
        public c() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            BubbleSeekBar.this.S = false;
            BubbleSeekBar.this.invalidate();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BubbleSeekBar.this.S = false;
            BubbleSeekBar.this.invalidate();
        }
    }

    /* loaded from: classes.dex */
    public class d implements Runnable {

        /* loaded from: classes.dex */
        public class a extends AnimatorListenerAdapter {
            public a() {
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                if (!BubbleSeekBar.this.G) {
                    BubbleSeekBar.this.G();
                }
                BubbleSeekBar.this.S = false;
                BubbleSeekBar.this.invalidate();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (!BubbleSeekBar.this.G) {
                    BubbleSeekBar.this.G();
                }
                BubbleSeekBar.this.S = false;
                BubbleSeekBar.this.invalidate();
            }
        }

        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BubbleSeekBar.this.f5052h0.animate().alpha(BubbleSeekBar.this.G ? 1.0f : StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD).setDuration(BubbleSeekBar.this.F).setListener(new a()).start();
        }
    }

    /* loaded from: classes.dex */
    public class e implements ValueAnimator.AnimatorUpdateListener {
        public e() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            BubbleSeekBar.this.P = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            BubbleSeekBar bubbleSeekBar = BubbleSeekBar.this;
            bubbleSeekBar.f5051h = bubbleSeekBar.C();
            if (BubbleSeekBar.this.I || BubbleSeekBar.this.f5052h0.getParent() == null) {
                BubbleSeekBar.this.M();
            } else {
                BubbleSeekBar bubbleSeekBar2 = BubbleSeekBar.this;
                bubbleSeekBar2.f5060l0 = bubbleSeekBar2.B();
                BubbleSeekBar.this.f5062m0.x = (int) (BubbleSeekBar.this.f5060l0 + 0.5f);
                BubbleSeekBar.this.f5050g0.updateViewLayout(BubbleSeekBar.this.f5052h0, BubbleSeekBar.this.f5062m0);
                BubbleSeekBar.this.f5052h0.a(BubbleSeekBar.this.B ? String.valueOf(BubbleSeekBar.this.getProgressFloat()) : String.valueOf(BubbleSeekBar.this.getProgress()));
            }
            BubbleSeekBar.this.invalidate();
            if (BubbleSeekBar.this.f5043b0 != null) {
                k kVar = BubbleSeekBar.this.f5043b0;
                BubbleSeekBar bubbleSeekBar3 = BubbleSeekBar.this;
                kVar.a(bubbleSeekBar3, bubbleSeekBar3.getProgress(), BubbleSeekBar.this.getProgressFloat(), true);
            }
        }
    }

    /* loaded from: classes.dex */
    public class f extends AnimatorListenerAdapter {
        public f() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            if (!BubbleSeekBar.this.I && !BubbleSeekBar.this.G) {
                BubbleSeekBar.this.G();
            }
            BubbleSeekBar bubbleSeekBar = BubbleSeekBar.this;
            bubbleSeekBar.f5051h = bubbleSeekBar.C();
            BubbleSeekBar.this.S = false;
            BubbleSeekBar.this.f5066o0 = true;
            BubbleSeekBar.this.invalidate();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (!BubbleSeekBar.this.I && !BubbleSeekBar.this.G) {
                BubbleSeekBar.this.G();
            }
            BubbleSeekBar bubbleSeekBar = BubbleSeekBar.this;
            bubbleSeekBar.f5051h = bubbleSeekBar.C();
            BubbleSeekBar.this.S = false;
            BubbleSeekBar.this.f5066o0 = true;
            BubbleSeekBar.this.invalidate();
            if (BubbleSeekBar.this.f5043b0 != null) {
                k kVar = BubbleSeekBar.this.f5043b0;
                BubbleSeekBar bubbleSeekBar2 = BubbleSeekBar.this;
                kVar.b(bubbleSeekBar2, bubbleSeekBar2.getProgress(), BubbleSeekBar.this.getProgressFloat(), true);
            }
        }
    }

    /* loaded from: classes.dex */
    public class g extends AnimatorListenerAdapter {
        public g() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            BubbleSeekBar.this.f5050g0.addView(BubbleSeekBar.this.f5052h0, BubbleSeekBar.this.f5062m0);
        }
    }

    /* loaded from: classes.dex */
    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BubbleSeekBar.this.N();
            BubbleSeekBar.this.U = true;
        }
    }

    /* loaded from: classes.dex */
    public class i extends View {

        /* renamed from: f, reason: collision with root package name */
        public Paint f5090f;

        /* renamed from: g, reason: collision with root package name */
        public Path f5091g;

        /* renamed from: h, reason: collision with root package name */
        public RectF f5092h;

        /* renamed from: i, reason: collision with root package name */
        public Rect f5093i;

        /* renamed from: j, reason: collision with root package name */
        public String f5094j;

        public i(BubbleSeekBar bubbleSeekBar, Context context) {
            this(bubbleSeekBar, context, null);
        }

        public void a(String str) {
            if (str == null || this.f5094j.equals(str)) {
                return;
            }
            this.f5094j = str;
            invalidate();
        }

        @Override // android.view.View
        public void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            this.f5091g.reset();
            float measuredWidth = getMeasuredWidth() / 2.0f;
            float measuredHeight = getMeasuredHeight() - (BubbleSeekBar.this.f5054i0 / 3.0f);
            this.f5091g.moveTo(measuredWidth, measuredHeight);
            double measuredWidth2 = getMeasuredWidth() / 2.0f;
            double sqrt = Math.sqrt(3.0d) / 2.0d;
            double d10 = BubbleSeekBar.this.f5054i0;
            Double.isNaN(d10);
            Double.isNaN(measuredWidth2);
            float f10 = (float) (measuredWidth2 - (sqrt * d10));
            float f11 = BubbleSeekBar.this.f5054i0 * 1.5f;
            this.f5091g.quadTo(f10 - db.b.a(2), f11 - db.b.a(2), f10, f11);
            this.f5091g.arcTo(this.f5092h, 150.0f, 240.0f);
            double measuredWidth3 = getMeasuredWidth() / 2.0f;
            double sqrt2 = Math.sqrt(3.0d) / 2.0d;
            double d11 = BubbleSeekBar.this.f5054i0;
            Double.isNaN(d11);
            Double.isNaN(measuredWidth3);
            this.f5091g.quadTo(((float) (measuredWidth3 + (sqrt2 * d11))) + db.b.a(2), f11 - db.b.a(2), measuredWidth, measuredHeight);
            this.f5091g.close();
            this.f5090f.setColor(BubbleSeekBar.this.K);
            canvas.drawPath(this.f5091g, this.f5090f);
            this.f5090f.setTextSize(BubbleSeekBar.this.L);
            this.f5090f.setColor(BubbleSeekBar.this.M);
            Paint paint = this.f5090f;
            String str = this.f5094j;
            paint.getTextBounds(str, 0, str.length(), this.f5093i);
            Paint.FontMetrics fontMetrics = this.f5090f.getFontMetrics();
            float f12 = BubbleSeekBar.this.f5054i0;
            float f13 = fontMetrics.descent;
            canvas.drawText(this.f5094j, getMeasuredWidth() / 2.0f, (f12 + ((f13 - fontMetrics.ascent) / 2.0f)) - f13, this.f5090f);
        }

        @Override // android.view.View
        public void onMeasure(int i10, int i11) {
            super.onMeasure(i10, i11);
            setMeasuredDimension(BubbleSeekBar.this.f5054i0 * 3, BubbleSeekBar.this.f5054i0 * 3);
            this.f5092h.set((getMeasuredWidth() / 2.0f) - BubbleSeekBar.this.f5054i0, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, (getMeasuredWidth() / 2.0f) + BubbleSeekBar.this.f5054i0, BubbleSeekBar.this.f5054i0 * 2);
        }

        public i(BubbleSeekBar bubbleSeekBar, Context context, AttributeSet attributeSet) {
            this(context, attributeSet, 0);
        }

        public i(Context context, AttributeSet attributeSet, int i10) {
            super(context, attributeSet, i10);
            this.f5094j = "";
            Paint paint = new Paint();
            this.f5090f = paint;
            paint.setAntiAlias(true);
            this.f5090f.setTextAlign(Paint.Align.CENTER);
            this.f5091g = new Path();
            this.f5092h = new RectF();
            this.f5093i = new Rect();
        }
    }

    /* loaded from: classes.dex */
    public interface j {
        SparseArray<String> a(int i10, SparseArray<String> sparseArray);
    }

    /* loaded from: classes.dex */
    public interface k {
        void a(BubbleSeekBar bubbleSeekBar, int i10, float f10, boolean z10);

        void b(BubbleSeekBar bubbleSeekBar, int i10, float f10, boolean z10);

        void c(BubbleSeekBar bubbleSeekBar, int i10, float f10);
    }

    public BubbleSeekBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public final float A(float f10) {
        float f11 = this.f5044c0;
        if (f10 <= f11) {
            return f11;
        }
        float f12 = this.f5045d0;
        if (f10 >= f12) {
            return f12;
        }
        float f13 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        int i10 = 0;
        while (i10 <= this.f5069q) {
            float f14 = this.R;
            f13 = (i10 * f14) + this.f5044c0;
            if (f13 <= f10 && f10 - f13 <= f14) {
                break;
            }
            i10++;
        }
        float f15 = f10 - f13;
        float f16 = this.R;
        return f15 <= f16 / 2.0f ? f13 : ((i10 + 1) * f16) + this.f5044c0;
    }

    public final float B() {
        if (this.J) {
            return this.f5056j0 - ((this.Q * (this.f5051h - this.f5047f)) / this.N);
        }
        return this.f5056j0 + ((this.Q * (this.f5051h - this.f5047f)) / this.N);
    }

    public final float C() {
        float f10;
        float f11;
        if (this.J) {
            f10 = ((this.f5045d0 - this.P) * this.N) / this.Q;
            f11 = this.f5047f;
        } else {
            f10 = ((this.P - this.f5044c0) * this.N) / this.Q;
            f11 = this.f5047f;
        }
        return f10 + f11;
    }

    public final void D() {
        String E;
        String E2;
        this.f5046e0.setTextSize(this.L);
        if (this.B) {
            E = E(this.J ? this.f5049g : this.f5047f);
        } else if (this.J) {
            E = this.f5053i ? E(this.f5049g) : String.valueOf((int) this.f5049g);
        } else {
            E = this.f5053i ? E(this.f5047f) : String.valueOf((int) this.f5047f);
        }
        this.f5046e0.getTextBounds(E, 0, E.length(), this.f5048f0);
        int width = (this.f5048f0.width() + (this.T * 2)) >> 1;
        if (this.B) {
            E2 = E(this.J ? this.f5047f : this.f5049g);
        } else if (this.J) {
            E2 = this.f5053i ? E(this.f5047f) : String.valueOf((int) this.f5047f);
        } else {
            E2 = this.f5053i ? E(this.f5049g) : String.valueOf((int) this.f5049g);
        }
        this.f5046e0.getTextBounds(E2, 0, E2.length(), this.f5048f0);
        int width2 = (this.f5048f0.width() + (this.T * 2)) >> 1;
        int a10 = db.b.a(14);
        this.f5054i0 = a10;
        this.f5054i0 = Math.max(a10, Math.max(width, width2)) + this.T;
    }

    public final String E(float f10) {
        return String.valueOf(F(f10));
    }

    public final float F(float f10) {
        return BigDecimal.valueOf(f10).setScale(1, 4).floatValue();
    }

    public final void G() {
        i iVar = this.f5052h0;
        if (iVar == null) {
            return;
        }
        iVar.setVisibility(8);
        if (this.f5052h0.getParent() != null) {
            this.f5050g0.removeViewImmediate(this.f5052h0);
        }
    }

    public final void H() {
        if (this.f5047f == this.f5049g) {
            this.f5047f = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            this.f5049g = 100.0f;
        }
        float f10 = this.f5047f;
        float f11 = this.f5049g;
        if (f10 > f11) {
            this.f5049g = f10;
            this.f5047f = f11;
        }
        float f12 = this.f5051h;
        float f13 = this.f5047f;
        if (f12 < f13) {
            this.f5051h = f13;
        }
        float f14 = this.f5051h;
        float f15 = this.f5049g;
        if (f14 > f15) {
            this.f5051h = f15;
        }
        int i10 = this.f5057k;
        int i11 = this.f5055j;
        if (i10 < i11) {
            this.f5057k = i11 + db.b.a(2);
        }
        int i12 = this.f5059l;
        int i13 = this.f5057k;
        if (i12 <= i13) {
            this.f5059l = i13 + db.b.a(2);
        }
        int i14 = this.f5061m;
        int i15 = this.f5057k;
        if (i14 <= i15) {
            this.f5061m = i15 * 2;
        }
        if (this.f5069q <= 0) {
            this.f5069q = 10;
        }
        float f16 = this.f5049g - this.f5047f;
        this.N = f16;
        float f17 = f16 / this.f5069q;
        this.O = f17;
        if (f17 < 1.0f) {
            this.f5053i = true;
        }
        if (this.f5053i) {
            this.B = true;
        }
        int i16 = this.f5077w;
        if (i16 != -1) {
            this.f5074t = true;
        }
        if (this.f5074t) {
            if (i16 == -1) {
                this.f5077w = 0;
            }
            if (this.f5077w == 2) {
                this.f5071r = true;
            }
        }
        if (this.f5078x < 1) {
            this.f5078x = 1;
        }
        I();
        if (this.D) {
            this.E = false;
            this.f5073s = false;
        }
        if (this.f5073s && !this.f5071r) {
            this.f5073s = false;
        }
        if (this.E) {
            float f18 = this.f5047f;
            this.f5068p0 = f18;
            if (this.f5051h != f18) {
                this.f5068p0 = this.O;
            }
            this.f5071r = true;
            this.f5073s = true;
        }
        if (this.I) {
            this.G = false;
        }
        if (this.G) {
            setProgress(this.f5051h);
        }
        this.f5080z = (this.f5053i || this.E || (this.f5074t && this.f5077w == 2)) ? this.f5075u : this.f5080z;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x005d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void I() {
        String str;
        int i10 = 0;
        boolean z10 = this.f5077w == 2;
        boolean z11 = this.f5078x > 1 && this.f5069q % 2 == 0;
        while (true) {
            int i11 = this.f5069q;
            if (i10 > i11) {
                return;
            }
            boolean z12 = this.J;
            float f10 = z12 ? this.f5049g - (this.O * i10) : this.f5047f + (this.O * i10);
            if (z10) {
                if (z11) {
                    if (i10 % this.f5078x == 0) {
                        f10 = z12 ? this.f5049g - (this.O * i10) : this.f5047f + (this.O * i10);
                    }
                }
                SparseArray<String> sparseArray = this.V;
                if (this.f5053i) {
                    str = ((int) f10) + "";
                } else {
                    str = E(f10);
                }
                sparseArray.put(i10, str);
            } else {
                if (i10 != 0 && i10 != i11) {
                }
                SparseArray<String> sparseArray2 = this.V;
                if (this.f5053i) {
                }
                sparseArray2.put(i10, str);
            }
            i10++;
        }
    }

    public final boolean J(MotionEvent motionEvent) {
        if (!isEnabled()) {
            return false;
        }
        float f10 = (this.Q / this.N) * (this.f5051h - this.f5047f);
        float f11 = this.J ? this.f5045d0 - f10 : this.f5044c0 + f10;
        float measuredHeight = getMeasuredHeight() / 2.0f;
        return ((motionEvent.getX() - f11) * (motionEvent.getX() - f11)) + ((motionEvent.getY() - measuredHeight) * (motionEvent.getY() - measuredHeight)) <= (this.f5044c0 + ((float) db.b.a(8))) * (this.f5044c0 + ((float) db.b.a(8)));
    }

    public final boolean K(MotionEvent motionEvent) {
        return isEnabled() && motionEvent.getX() >= ((float) getPaddingLeft()) && motionEvent.getX() <= ((float) (getMeasuredWidth() - getPaddingRight())) && motionEvent.getY() >= ((float) getPaddingTop()) && motionEvent.getY() <= ((float) (getMeasuredHeight() - getPaddingBottom()));
    }

    public final void L() {
        Window window;
        getLocationInWindow(this.f5064n0);
        Object parent = getParent();
        if (parent instanceof View) {
            View view = (View) parent;
            if (view.getMeasuredWidth() > 0) {
                int[] iArr = this.f5064n0;
                iArr[0] = iArr[0] % view.getMeasuredWidth();
            }
        }
        if (this.J) {
            this.f5056j0 = (this.f5064n0[0] + this.f5045d0) - (this.f5052h0.getMeasuredWidth() / 2.0f);
        } else {
            this.f5056j0 = (this.f5064n0[0] + this.f5044c0) - (this.f5052h0.getMeasuredWidth() / 2.0f);
        }
        this.f5060l0 = B();
        float measuredHeight = this.f5064n0[1] - this.f5052h0.getMeasuredHeight();
        this.f5058k0 = measuredHeight;
        this.f5058k0 = measuredHeight - db.b.a(24);
        if (db.b.b()) {
            this.f5058k0 -= db.b.a(4);
        }
        Context context = getContext();
        if (!(context instanceof Activity) || (window = ((Activity) context).getWindow()) == null || (window.getAttributes().flags & RecyclerView.e0.FLAG_ADAPTER_FULLUPDATE) == 0) {
            return;
        }
        Resources system = Resources.getSystem();
        this.f5058k0 += system.getDimensionPixelSize(system.getIdentifier("status_bar_height", "dimen", "android"));
    }

    public final float M() {
        float f10 = this.f5051h;
        if (!this.E || !this.f5042a0) {
            return f10;
        }
        float f11 = this.O / 2.0f;
        if (this.C) {
            if (f10 == this.f5047f || f10 == this.f5049g) {
                return f10;
            }
            for (int i10 = 0; i10 <= this.f5069q; i10++) {
                float f12 = this.O;
                float f13 = i10 * f12;
                if (f13 < f10 && f13 + f12 >= f10) {
                    return f11 + f13 > f10 ? f13 : f13 + f12;
                }
            }
        }
        float f14 = this.f5068p0;
        if (f10 >= f14) {
            if (f10 < f11 + f14) {
                return f14;
            }
            float f15 = f14 + this.O;
            this.f5068p0 = f15;
            return f15;
        }
        if (f10 >= f14 - f11) {
            return f14;
        }
        float f16 = f14 - this.O;
        this.f5068p0 = f16;
        return f16;
    }

    public final void N() {
        i iVar = this.f5052h0;
        if (iVar == null || iVar.getParent() != null) {
            return;
        }
        WindowManager.LayoutParams layoutParams = this.f5062m0;
        layoutParams.x = (int) (this.f5060l0 + 0.5f);
        layoutParams.y = (int) (this.f5058k0 + 0.5f);
        this.f5052h0.setAlpha(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        this.f5052h0.setVisibility(0);
        this.f5052h0.animate().alpha(1.0f).setDuration(this.C ? 0L : this.F).setListener(new g()).start();
        this.f5052h0.a(this.B ? String.valueOf(getProgressFloat()) : String.valueOf(getProgress()));
    }

    public db.a getConfigBuilder() {
        if (this.f5070q0 == null) {
            this.f5070q0 = new db.a(this);
        }
        db.a aVar = this.f5070q0;
        aVar.f5769a = this.f5047f;
        aVar.f5770b = this.f5049g;
        aVar.f5771c = this.f5051h;
        aVar.f5772d = this.f5053i;
        aVar.f5773e = this.f5055j;
        aVar.f5774f = this.f5057k;
        aVar.f5775g = this.f5059l;
        aVar.f5776h = this.f5061m;
        aVar.f5777i = this.f5063n;
        aVar.f5778j = this.f5065o;
        aVar.f5779k = this.f5067p;
        aVar.f5780l = this.f5069q;
        aVar.f5781m = this.f5071r;
        aVar.f5782n = this.f5073s;
        aVar.f5783o = this.f5074t;
        aVar.f5784p = this.f5075u;
        aVar.f5785q = this.f5076v;
        aVar.f5786r = this.f5077w;
        aVar.f5787s = this.f5078x;
        aVar.f5788t = this.f5079y;
        aVar.f5789u = this.f5080z;
        aVar.f5790v = this.A;
        aVar.f5791w = this.B;
        aVar.f5792x = this.F;
        aVar.f5793y = this.C;
        aVar.f5794z = this.D;
        aVar.A = this.E;
        aVar.B = this.K;
        aVar.C = this.L;
        aVar.D = this.M;
        aVar.E = this.G;
        aVar.F = this.H;
        aVar.G = this.I;
        aVar.H = this.J;
        return aVar;
    }

    public float getMax() {
        return this.f5049g;
    }

    public float getMin() {
        return this.f5047f;
    }

    public k getOnProgressChangedListener() {
        return this.f5043b0;
    }

    public int getProgress() {
        return Math.round(M());
    }

    public float getProgressFloat() {
        return F(M());
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        G();
        super.onDetachedFromWindow();
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x024a, code lost:
    
        if (r2 != r17.f5049g) goto L86;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onDraw(Canvas canvas) {
        float abs;
        super.onDraw(canvas);
        float paddingLeft = getPaddingLeft();
        float measuredWidth = getMeasuredWidth() - getPaddingRight();
        float paddingTop = getPaddingTop() + this.f5061m;
        if (this.f5074t) {
            this.f5046e0.setColor(this.f5076v);
            this.f5046e0.setTextSize(this.f5075u);
            this.f5046e0.getTextBounds("0123456789", 0, 10, this.f5048f0);
            int i10 = this.f5077w;
            if (i10 == 0) {
                float height = (this.f5048f0.height() / 2.0f) + paddingTop;
                String str = this.V.get(0);
                this.f5046e0.getTextBounds(str, 0, str.length(), this.f5048f0);
                canvas.drawText(str, (this.f5048f0.width() / 2.0f) + paddingLeft, height, this.f5046e0);
                paddingLeft += this.f5048f0.width() + this.T;
                String str2 = this.V.get(this.f5069q);
                this.f5046e0.getTextBounds(str2, 0, str2.length(), this.f5048f0);
                canvas.drawText(str2, measuredWidth - ((this.f5048f0.width() + 0.5f) / 2.0f), height, this.f5046e0);
                measuredWidth -= this.f5048f0.width() + this.T;
            } else if (i10 >= 1) {
                String str3 = this.V.get(0);
                this.f5046e0.getTextBounds(str3, 0, str3.length(), this.f5048f0);
                float height2 = this.f5061m + paddingTop + this.T + this.f5048f0.height();
                float f10 = this.f5044c0;
                if (this.f5077w == 1) {
                    canvas.drawText(str3, f10, height2, this.f5046e0);
                }
                String str4 = this.V.get(this.f5069q);
                this.f5046e0.getTextBounds(str4, 0, str4.length(), this.f5048f0);
                float f11 = this.f5045d0;
                if (this.f5077w == 1) {
                    canvas.drawText(str4, f11, height2, this.f5046e0);
                }
                paddingLeft = f10;
                measuredWidth = f11;
            }
        } else if (this.f5079y && this.f5077w == -1) {
            paddingLeft = this.f5044c0;
            measuredWidth = this.f5045d0;
        }
        boolean z10 = this.f5074t;
        if ((!z10 && !this.f5079y) || this.f5077w == 0) {
            int i11 = this.f5061m;
            paddingLeft += i11;
            measuredWidth -= i11;
        }
        float f12 = paddingLeft;
        float f13 = measuredWidth;
        boolean z11 = z10 && this.f5077w == 2;
        if (z11 || this.f5071r) {
            this.f5046e0.setTextSize(this.f5075u);
            this.f5046e0.getTextBounds("0123456789", 0, 10, this.f5048f0);
            float height3 = this.f5048f0.height() + paddingTop + this.f5061m + this.T;
            float a10 = (r13 - db.b.a(2)) / 2.0f;
            if (this.J) {
                abs = this.f5045d0 - ((this.Q / this.N) * Math.abs(this.f5051h - this.f5047f));
            } else {
                abs = this.f5044c0 + ((this.Q / this.N) * Math.abs(this.f5051h - this.f5047f));
            }
            for (int i12 = 0; i12 <= this.f5069q; i12++) {
                float f14 = (i12 * this.R) + f12;
                if (this.J) {
                    this.f5046e0.setColor(f14 <= abs ? this.f5063n : this.f5065o);
                } else {
                    this.f5046e0.setColor(f14 <= abs ? this.f5065o : this.f5063n);
                }
                canvas.drawCircle(f14, paddingTop, a10, this.f5046e0);
                if (z11) {
                    this.f5046e0.setColor(this.f5076v);
                    if (this.V.get(i12, null) != null) {
                        canvas.drawText(this.V.get(i12), f14, height3, this.f5046e0);
                    }
                }
            }
        }
        boolean z12 = this.S;
        if (!z12 || this.G) {
            if (this.J) {
                this.P = f13 - ((this.Q / this.N) * (this.f5051h - this.f5047f));
            } else {
                this.P = ((this.Q / this.N) * (this.f5051h - this.f5047f)) + f12;
            }
        }
        if (this.f5079y && !z12 && this.f5066o0) {
            this.f5046e0.setColor(this.A);
            this.f5046e0.setTextSize(this.f5080z);
            this.f5046e0.getTextBounds("0123456789", 0, 10, this.f5048f0);
            float height4 = this.f5048f0.height() + paddingTop + this.f5061m + this.T;
            if (!this.f5053i) {
                if (this.B && this.f5077w == 1) {
                    float f15 = this.f5051h;
                    if (f15 != this.f5047f) {
                    }
                }
                canvas.drawText(String.valueOf(getProgress()), this.P, height4, this.f5046e0);
            }
            canvas.drawText(String.valueOf(getProgressFloat()), this.P, height4, this.f5046e0);
        }
        this.f5046e0.setColor(this.f5065o);
        this.f5046e0.setStrokeWidth(this.f5057k);
        if (this.J) {
            canvas.drawLine(f13, paddingTop, this.P, paddingTop, this.f5046e0);
        } else {
            canvas.drawLine(f12, paddingTop, this.P, paddingTop, this.f5046e0);
        }
        this.f5046e0.setColor(this.f5063n);
        this.f5046e0.setStrokeWidth(this.f5055j);
        if (this.J) {
            canvas.drawLine(this.P, paddingTop, f12, paddingTop, this.f5046e0);
        } else {
            canvas.drawLine(this.P, paddingTop, f13, paddingTop, this.f5046e0);
        }
        this.f5046e0.setColor(this.f5067p);
        canvas.drawCircle(this.P, paddingTop, this.S ? this.f5061m : this.f5059l, this.f5046e0);
    }

    @Override // android.view.View
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        if (this.I) {
            return;
        }
        L();
    }

    @Override // android.view.View
    public void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        int i12 = this.f5061m * 2;
        if (this.f5079y) {
            this.f5046e0.setTextSize(this.f5080z);
            this.f5046e0.getTextBounds("j", 0, 1, this.f5048f0);
            i12 += this.f5048f0.height();
        }
        if (this.f5074t && this.f5077w >= 1) {
            this.f5046e0.setTextSize(this.f5075u);
            this.f5046e0.getTextBounds("j", 0, 1, this.f5048f0);
            i12 = Math.max(i12, (this.f5061m * 2) + this.f5048f0.height());
        }
        setMeasuredDimension(View.resolveSize(db.b.a(BaseTransientBottomBar.ANIMATION_FADE_DURATION), i10), i12 + (this.T * 2));
        this.f5044c0 = getPaddingLeft() + this.f5061m;
        this.f5045d0 = (getMeasuredWidth() - getPaddingRight()) - this.f5061m;
        if (this.f5074t) {
            this.f5046e0.setTextSize(this.f5075u);
            int i13 = this.f5077w;
            if (i13 == 0) {
                String str = this.V.get(0);
                this.f5046e0.getTextBounds(str, 0, str.length(), this.f5048f0);
                this.f5044c0 += this.f5048f0.width() + this.T;
                String str2 = this.V.get(this.f5069q);
                this.f5046e0.getTextBounds(str2, 0, str2.length(), this.f5048f0);
                this.f5045d0 -= this.f5048f0.width() + this.T;
            } else if (i13 >= 1) {
                String str3 = this.V.get(0);
                this.f5046e0.getTextBounds(str3, 0, str3.length(), this.f5048f0);
                this.f5044c0 = getPaddingLeft() + Math.max(this.f5061m, this.f5048f0.width() / 2.0f) + this.T;
                String str4 = this.V.get(this.f5069q);
                this.f5046e0.getTextBounds(str4, 0, str4.length(), this.f5048f0);
                this.f5045d0 = ((getMeasuredWidth() - getPaddingRight()) - Math.max(this.f5061m, this.f5048f0.width() / 2.0f)) - this.T;
            }
        } else if (this.f5079y && this.f5077w == -1) {
            this.f5046e0.setTextSize(this.f5080z);
            String str5 = this.V.get(0);
            this.f5046e0.getTextBounds(str5, 0, str5.length(), this.f5048f0);
            this.f5044c0 = getPaddingLeft() + Math.max(this.f5061m, this.f5048f0.width() / 2.0f) + this.T;
            String str6 = this.V.get(this.f5069q);
            this.f5046e0.getTextBounds(str6, 0, str6.length(), this.f5048f0);
            this.f5045d0 = ((getMeasuredWidth() - getPaddingRight()) - Math.max(this.f5061m, this.f5048f0.width() / 2.0f)) - this.T;
        }
        float f10 = this.f5045d0 - this.f5044c0;
        this.Q = f10;
        this.R = (f10 * 1.0f) / this.f5069q;
        if (this.I) {
            return;
        }
        this.f5052h0.measure(i10, i11);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            this.f5051h = bundle.getFloat("progress");
            super.onRestoreInstanceState(bundle.getParcelable("save_instance"));
            i iVar = this.f5052h0;
            if (iVar != null) {
                iVar.a(this.B ? String.valueOf(getProgressFloat()) : String.valueOf(getProgress()));
            }
            setProgress(this.f5051h);
            return;
        }
        super.onRestoreInstanceState(parcelable);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable("save_instance", super.onSaveInstanceState());
        bundle.putFloat("progress", this.f5051h);
        return bundle;
    }

    @Override // android.view.View
    public void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        post(new a());
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x000e, code lost:
    
        if (r0 != 3) goto L104;
     */
    /* JADX WARN: Removed duplicated region for block: B:26:0x004d  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z10;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    if (this.S) {
                        if (this.D) {
                            float A = A(motionEvent.getX());
                            if (A != this.W) {
                                this.W = A;
                                this.P = A;
                            } else {
                                z10 = false;
                                if (z10) {
                                    this.f5051h = C();
                                    if (!this.I && this.f5052h0.getParent() != null) {
                                        float B = B();
                                        this.f5060l0 = B;
                                        WindowManager.LayoutParams layoutParams = this.f5062m0;
                                        layoutParams.x = (int) (B + 0.5f);
                                        this.f5050g0.updateViewLayout(this.f5052h0, layoutParams);
                                        this.f5052h0.a(this.B ? String.valueOf(getProgressFloat()) : String.valueOf(getProgress()));
                                    } else {
                                        M();
                                    }
                                    invalidate();
                                    k kVar = this.f5043b0;
                                    if (kVar != null) {
                                        kVar.a(this, getProgress(), getProgressFloat(), true);
                                    }
                                }
                            }
                        } else {
                            float x10 = motionEvent.getX() + this.f5072r0;
                            this.P = x10;
                            float f10 = this.f5044c0;
                            if (x10 < f10) {
                                this.P = f10;
                            }
                            float f11 = this.P;
                            float f12 = this.f5045d0;
                            if (f11 > f12) {
                                this.P = f12;
                            }
                        }
                        z10 = true;
                        if (z10) {
                        }
                    }
                }
            }
            getParent().requestDisallowInterceptTouchEvent(false);
            if (this.f5073s) {
                if (this.C) {
                    postDelayed(new b(), this.F);
                } else {
                    z();
                }
            } else if (this.S || this.C) {
                if (this.I) {
                    animate().setDuration(this.F).setStartDelay((this.S || !this.C) ? 0L : 300L).setListener(new c()).start();
                } else {
                    postDelayed(new d(), this.F);
                }
            }
            k kVar2 = this.f5043b0;
            if (kVar2 != null) {
                kVar2.a(this, getProgress(), getProgressFloat(), true);
                this.f5043b0.c(this, getProgress(), getProgressFloat());
            }
        } else {
            performClick();
            getParent().requestDisallowInterceptTouchEvent(true);
            boolean J = J(motionEvent);
            this.S = J;
            if (J) {
                if (this.E && !this.f5042a0) {
                    this.f5042a0 = true;
                }
                if (this.G && !this.U) {
                    this.U = true;
                }
                if (!this.I) {
                    N();
                }
                invalidate();
            } else if (this.C && K(motionEvent)) {
                this.S = true;
                if (this.E && !this.f5042a0) {
                    this.f5042a0 = true;
                }
                if (this.G) {
                    G();
                    this.U = true;
                }
                if (this.D) {
                    float A2 = A(motionEvent.getX());
                    this.W = A2;
                    this.P = A2;
                } else {
                    float x11 = motionEvent.getX();
                    this.P = x11;
                    float f13 = this.f5044c0;
                    if (x11 < f13) {
                        this.P = f13;
                    }
                    float f14 = this.P;
                    float f15 = this.f5045d0;
                    if (f14 > f15) {
                        this.P = f15;
                    }
                }
                this.f5051h = C();
                if (!this.I) {
                    this.f5060l0 = B();
                    N();
                }
                invalidate();
            }
            this.f5072r0 = this.P - motionEvent.getX();
        }
        return this.S || this.C || super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public void onVisibilityChanged(View view, int i10) {
        if (this.I || !this.G) {
            return;
        }
        if (i10 != 0) {
            G();
        } else if (this.U) {
            N();
        }
        super.onVisibilityChanged(view, i10);
    }

    @Override // android.view.View
    public boolean performClick() {
        return super.performClick();
    }

    public void setBubbleColor(int i10) {
        if (this.K != i10) {
            this.K = i10;
            i iVar = this.f5052h0;
            if (iVar != null) {
                iVar.invalidate();
            }
        }
    }

    public void setCustomSectionTextArray(j jVar) {
        this.V = jVar.a(this.f5069q, this.V);
        for (int i10 = 0; i10 <= this.f5069q; i10++) {
            if (this.V.get(i10) == null) {
                this.V.put(i10, "");
            }
        }
        this.f5079y = false;
        requestLayout();
        invalidate();
    }

    public void setOnProgressChangedListener(k kVar) {
        this.f5043b0 = kVar;
    }

    public void setProgress(float f10) {
        this.f5051h = f10;
        k kVar = this.f5043b0;
        if (kVar != null) {
            kVar.a(this, getProgress(), getProgressFloat(), false);
            this.f5043b0.b(this, getProgress(), getProgressFloat(), false);
        }
        if (!this.I) {
            this.f5060l0 = B();
        }
        if (this.G) {
            G();
            postDelayed(new h(), this.H);
        }
        if (this.E) {
            this.f5042a0 = false;
        }
        postInvalidate();
    }

    public void setSecondTrackColor(int i10) {
        if (this.f5065o != i10) {
            this.f5065o = i10;
            invalidate();
        }
    }

    public void setThumbColor(int i10) {
        if (this.f5067p != i10) {
            this.f5067p = i10;
            invalidate();
        }
    }

    public void setTrackColor(int i10) {
        if (this.f5063n != i10) {
            this.f5063n = i10;
            invalidate();
        }
    }

    public final void z() {
        float f10 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        int i10 = 0;
        float f11 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        while (i10 <= this.f5069q) {
            float f12 = this.R;
            f11 = (i10 * f12) + this.f5044c0;
            float f13 = this.P;
            if (f11 <= f13 && f13 - f11 <= f12) {
                break;
            } else {
                i10++;
            }
        }
        boolean z10 = BigDecimal.valueOf((double) this.P).setScale(1, 4).floatValue() == f11;
        AnimatorSet animatorSet = new AnimatorSet();
        ValueAnimator valueAnimator = null;
        if (!z10) {
            float f14 = this.P;
            float f15 = f14 - f11;
            float f16 = this.R;
            valueAnimator = f15 <= f16 / 2.0f ? ValueAnimator.ofFloat(f14, f11) : ValueAnimator.ofFloat(f14, ((i10 + 1) * f16) + this.f5044c0);
            valueAnimator.setInterpolator(new LinearInterpolator());
            valueAnimator.addUpdateListener(new e());
        }
        if (!this.I) {
            i iVar = this.f5052h0;
            Property property = View.ALPHA;
            float[] fArr = new float[1];
            if (this.G) {
                f10 = 1.0f;
            }
            fArr[0] = f10;
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(iVar, (Property<i, Float>) property, fArr);
            if (z10) {
                animatorSet.setDuration(this.F).play(ofFloat);
            } else {
                animatorSet.setDuration(this.F).playTogether(valueAnimator, ofFloat);
            }
        } else if (!z10) {
            animatorSet.setDuration(this.F).playTogether(valueAnimator);
        }
        animatorSet.addListener(new f());
        animatorSet.start();
    }

    public BubbleSeekBar(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f5077w = -1;
        this.V = new SparseArray<>();
        this.f5064n0 = new int[2];
        this.f5066o0 = true;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, eb.b.f6268p, i10, 0);
        this.f5047f = obtainStyledAttributes.getFloat(eb.b.B, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        this.f5049g = obtainStyledAttributes.getFloat(eb.b.A, 100.0f);
        this.f5051h = obtainStyledAttributes.getFloat(eb.b.C, this.f5047f);
        this.f5053i = obtainStyledAttributes.getBoolean(eb.b.f6288z, false);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(eb.b.Y, db.b.a(2));
        this.f5055j = dimensionPixelSize;
        int dimensionPixelSize2 = obtainStyledAttributes.getDimensionPixelSize(eb.b.F, dimensionPixelSize + db.b.a(2));
        this.f5057k = dimensionPixelSize2;
        this.f5059l = obtainStyledAttributes.getDimensionPixelSize(eb.b.S, dimensionPixelSize2 + db.b.a(2));
        this.f5061m = obtainStyledAttributes.getDimensionPixelSize(eb.b.T, this.f5057k * 2);
        this.f5069q = obtainStyledAttributes.getInteger(eb.b.G, 10);
        this.f5063n = obtainStyledAttributes.getColor(eb.b.X, f0.a.d(context, eb.a.f6237b));
        int color = obtainStyledAttributes.getColor(eb.b.E, f0.a.d(context, eb.a.f6236a));
        this.f5065o = color;
        this.f5067p = obtainStyledAttributes.getColor(eb.b.R, color);
        this.f5074t = obtainStyledAttributes.getBoolean(eb.b.P, false);
        this.f5075u = obtainStyledAttributes.getDimensionPixelSize(eb.b.K, db.b.c(14));
        this.f5076v = obtainStyledAttributes.getColor(eb.b.H, this.f5063n);
        this.D = obtainStyledAttributes.getBoolean(eb.b.M, false);
        this.E = obtainStyledAttributes.getBoolean(eb.b.L, false);
        int integer = obtainStyledAttributes.getInteger(eb.b.J, -1);
        if (integer == 0) {
            this.f5077w = 0;
        } else if (integer == 1) {
            this.f5077w = 1;
        } else if (integer == 2) {
            this.f5077w = 2;
        } else {
            this.f5077w = -1;
        }
        this.f5078x = obtainStyledAttributes.getInteger(eb.b.I, 1);
        this.f5079y = obtainStyledAttributes.getBoolean(eb.b.Q, false);
        this.f5080z = obtainStyledAttributes.getDimensionPixelSize(eb.b.V, db.b.c(14));
        this.A = obtainStyledAttributes.getColor(eb.b.U, this.f5065o);
        this.K = obtainStyledAttributes.getColor(eb.b.f6280v, this.f5065o);
        this.L = obtainStyledAttributes.getDimensionPixelSize(eb.b.f6284x, db.b.c(14));
        this.M = obtainStyledAttributes.getColor(eb.b.f6282w, -1);
        this.f5071r = obtainStyledAttributes.getBoolean(eb.b.O, false);
        this.f5073s = obtainStyledAttributes.getBoolean(eb.b.f6278u, false);
        this.B = obtainStyledAttributes.getBoolean(eb.b.N, false);
        int integer2 = obtainStyledAttributes.getInteger(eb.b.f6276t, -1);
        this.F = integer2 < 0 ? 200L : integer2;
        this.C = obtainStyledAttributes.getBoolean(eb.b.W, false);
        this.G = obtainStyledAttributes.getBoolean(eb.b.f6272r, false);
        int integer3 = obtainStyledAttributes.getInteger(eb.b.f6274s, 0);
        this.H = integer3 < 0 ? 0L : integer3;
        this.I = obtainStyledAttributes.getBoolean(eb.b.f6286y, false);
        this.J = obtainStyledAttributes.getBoolean(eb.b.D, false);
        setEnabled(obtainStyledAttributes.getBoolean(eb.b.f6270q, isEnabled()));
        obtainStyledAttributes.recycle();
        Paint paint = new Paint();
        this.f5046e0 = paint;
        paint.setAntiAlias(true);
        this.f5046e0.setStrokeCap(Paint.Cap.ROUND);
        this.f5046e0.setTextAlign(Paint.Align.CENTER);
        this.f5048f0 = new Rect();
        this.T = db.b.a(2);
        H();
        if (this.I) {
            return;
        }
        this.f5050g0 = (WindowManager) context.getSystemService("window");
        i iVar = new i(this, context);
        this.f5052h0 = iVar;
        iVar.a(this.B ? String.valueOf(getProgressFloat()) : String.valueOf(getProgress()));
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        this.f5062m0 = layoutParams;
        layoutParams.gravity = BadgeDrawable.TOP_START;
        layoutParams.width = -2;
        layoutParams.height = -2;
        layoutParams.format = -3;
        layoutParams.flags = 524328;
        if (!db.b.b() && Build.VERSION.SDK_INT < 25) {
            this.f5062m0.type = 2005;
        } else {
            this.f5062m0.type = 2;
        }
        D();
    }
}
