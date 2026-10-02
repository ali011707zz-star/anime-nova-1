package com.anslayer.widget;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Transformation;
import android.widget.AbsListView;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.google.android.material.progressindicator.BaseProgressIndicator;
import com.google.android.material.shadow.ShadowDrawableWrapper;
import io.wax911.support.custom.widget.SupportCircleImageView;
import io.wax911.support.custom.widget.SupportProgressDrawable;
import org.apache.http.impl.auth.NTLMEngineImpl;
import q0.b0;
import q0.n;
import q0.o;
import q0.p;
import q0.s;
import q0.t;

/* loaded from: classes.dex */
public class SupportRefreshLayout extends ViewGroup implements s, o {
    public static final int[] T = {R.attr.enabled};
    public final DecelerateInterpolator A;
    public SupportCircleImageView[] B;
    public int C;
    public float D;
    public SupportProgressDrawable[] E;
    public Animation F;
    public Animation G;
    public Animation H;
    public Animation I;
    public Animation J;
    public boolean K;
    public int L;
    public int M;
    public final Animation N;
    public final Animation O;
    public final Animation P;
    public final Animation Q;
    public Animation.AnimationListener R;
    public Animation.AnimationListener S;

    /* renamed from: f, reason: collision with root package name */
    public View f4462f;

    /* renamed from: g, reason: collision with root package name */
    public m f4463g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f4464h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f4465i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f4466j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f4467k;

    /* renamed from: l, reason: collision with root package name */
    public int f4468l;

    /* renamed from: m, reason: collision with root package name */
    public float[] f4469m;

    /* renamed from: n, reason: collision with root package name */
    public float f4470n;

    /* renamed from: o, reason: collision with root package name */
    public final t f4471o;

    /* renamed from: p, reason: collision with root package name */
    public final p f4472p;

    /* renamed from: q, reason: collision with root package name */
    public final int[] f4473q;

    /* renamed from: r, reason: collision with root package name */
    public final int[] f4474r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f4475s;

    /* renamed from: t, reason: collision with root package name */
    public int f4476t;

    /* renamed from: u, reason: collision with root package name */
    public int f4477u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f4478v;

    /* renamed from: w, reason: collision with root package name */
    public float f4479w;

    /* renamed from: x, reason: collision with root package name */
    public boolean f4480x;

    /* renamed from: y, reason: collision with root package name */
    public boolean f4481y;

    /* renamed from: z, reason: collision with root package name */
    public boolean f4482z;

    /* loaded from: classes.dex */
    public class a extends Animation {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ int f4483f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ int f4484g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ int f4485h;

        public a(int i10, int i11, int i12) {
            this.f4483f = i10;
            this.f4484g = i11;
            this.f4485h = i12;
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f10, Transformation transformation) {
            SupportRefreshLayout.this.E[this.f4483f].setAlpha((int) (this.f4484g + ((this.f4485h - r0) * f10)));
        }
    }

    /* loaded from: classes.dex */
    public class b implements Animation.AnimationListener {
        public b() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            if (SupportRefreshLayout.this.f4464h) {
                SupportRefreshLayout.this.E[0].setAlpha(BaseProgressIndicator.MAX_ALPHA);
                SupportRefreshLayout.this.E[0].start();
                if (SupportRefreshLayout.this.K && SupportRefreshLayout.this.f4463g != null) {
                    SupportRefreshLayout.this.f4463g.b();
                }
                SupportRefreshLayout supportRefreshLayout = SupportRefreshLayout.this;
                supportRefreshLayout.f4477u = (int) supportRefreshLayout.f4469m[0];
                return;
            }
            SupportRefreshLayout.this.A();
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* loaded from: classes.dex */
    public class c implements Animation.AnimationListener {
        public c() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            if (SupportRefreshLayout.this.f4465i) {
                SupportRefreshLayout.this.E[1].setAlpha(BaseProgressIndicator.MAX_ALPHA);
                SupportRefreshLayout.this.E[1].start();
                if (SupportRefreshLayout.this.K && SupportRefreshLayout.this.f4463g != null) {
                    SupportRefreshLayout.this.f4463g.C();
                }
                SupportRefreshLayout supportRefreshLayout = SupportRefreshLayout.this;
                supportRefreshLayout.f4477u = (int) (-supportRefreshLayout.f4469m[1]);
                return;
            }
            SupportRefreshLayout.this.A();
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* loaded from: classes.dex */
    public class d implements Animation.AnimationListener {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ int f4489a;

        public d(int i10) {
            this.f4489a = i10;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            if (SupportRefreshLayout.this.f4481y) {
                return;
            }
            SupportRefreshLayout.this.K(this.f4489a, null);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* loaded from: classes.dex */
    public class e extends Animation {
        public e() {
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f10, Transformation transformation) {
            SupportRefreshLayout supportRefreshLayout = SupportRefreshLayout.this;
            float f11 = supportRefreshLayout.C;
            float f12 = supportRefreshLayout.f4469m[0];
            SupportRefreshLayout supportRefreshLayout2 = SupportRefreshLayout.this;
            supportRefreshLayout.G(0, (int) ((f11 + ((f12 - supportRefreshLayout2.C) * f10)) - supportRefreshLayout2.f4477u));
            SupportRefreshLayout.this.E[0].setArrowScale(1.0f - f10);
        }
    }

    /* loaded from: classes.dex */
    public class f extends Animation {
        public f() {
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f10, Transformation transformation) {
            SupportRefreshLayout supportRefreshLayout = SupportRefreshLayout.this;
            float f11 = supportRefreshLayout.C;
            float f12 = -supportRefreshLayout.f4469m[1];
            SupportRefreshLayout supportRefreshLayout2 = SupportRefreshLayout.this;
            supportRefreshLayout.G(1, (int) ((f11 + ((f12 - supportRefreshLayout2.C) * f10)) - supportRefreshLayout2.f4477u));
            SupportRefreshLayout.this.E[1].setArrowScale(1.0f - f10);
        }
    }

    /* loaded from: classes.dex */
    public class g extends Animation {
        public g() {
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f10, Transformation transformation) {
            SupportRefreshLayout.this.z(0, f10);
        }
    }

    /* loaded from: classes.dex */
    public class h extends Animation {
        public h() {
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f10, Transformation transformation) {
            SupportRefreshLayout.this.z(1, f10);
        }
    }

    /* loaded from: classes.dex */
    public class i extends Animation {
        public i() {
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f10, Transformation transformation) {
            SupportRefreshLayout.this.B(0, SupportRefreshLayout.this.D + ((-SupportRefreshLayout.this.D) * f10));
            SupportRefreshLayout.this.z(0, f10);
        }
    }

    /* loaded from: classes.dex */
    public class j extends Animation {
        public j() {
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f10, Transformation transformation) {
            SupportRefreshLayout.this.B(1, SupportRefreshLayout.this.D + ((-SupportRefreshLayout.this.D) * f10));
            SupportRefreshLayout.this.z(1, f10);
        }
    }

    /* loaded from: classes.dex */
    public class k extends Animation {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ int f4497f;

        public k(int i10) {
            this.f4497f = i10;
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f10, Transformation transformation) {
            SupportRefreshLayout.this.B(this.f4497f, f10);
        }
    }

    /* loaded from: classes.dex */
    public class l extends Animation {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ int f4499f;

        public l(int i10) {
            this.f4499f = i10;
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f10, Transformation transformation) {
            SupportRefreshLayout.this.B(this.f4499f, 1.0f - f10);
        }
    }

    /* loaded from: classes.dex */
    public interface m {
        void C();

        void b();
    }

    public SupportRefreshLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4464h = false;
        this.f4465i = false;
        this.f4466j = true;
        this.f4467k = true;
        this.f4469m = new float[]{-1.0f, -1.0f};
        this.f4473q = new int[2];
        this.f4474r = new int[2];
        this.f4478v = false;
        this.f4481y = false;
        this.N = new e();
        this.O = new f();
        this.P = new g();
        this.Q = new h();
        this.R = new b();
        this.S = new c();
        this.f4468l = ViewConfiguration.get(context).getScaledTouchSlop();
        this.f4476t = getResources().getInteger(R.integer.config_mediumAnimTime);
        setWillNotDraw(false);
        this.A = new DecelerateInterpolator(2.0f);
        float f10 = getResources().getDisplayMetrics().density;
        this.L = (int) (f10 * 40.0f);
        this.M = (int) (40.0f * f10);
        float[] fArr = this.f4469m;
        fArr[0] = f10 * 64.0f;
        fArr[1] = f10 * 64.0f;
        t();
        setChildrenDrawingOrderEnabled(true);
        this.f4471o = new t(this);
        this.f4472p = new p(this);
        setNestedScrollingEnabled(true);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, T);
        setEnabled(obtainStyledAttributes.getBoolean(0, true));
        obtainStyledAttributes.recycle();
    }

    public final void A() {
        int i10 = this.f4477u;
        for (int i11 = 0; i11 < 2; i11++) {
            this.B[i11].clearAnimation();
            this.E[i11].stop();
            this.B[i11].setVisibility(8);
            C(i11, BaseProgressIndicator.MAX_ALPHA);
            if (this.f4481y) {
                B(i11, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
            } else {
                G(i11, -i10);
            }
        }
        this.f4477u = 0;
    }

    public final void B(int i10, float f10) {
        b0.J0(this.B[i10], f10);
        b0.K0(this.B[i10], f10);
    }

    public final void C(int i10, int i11) {
        this.B[i10].getBackground().setAlpha(i11);
        this.E[i10].setAlpha(i11);
    }

    public void D(int i10, int i11) {
        if (i10 == 1) {
            i11 += this.M;
        }
        this.f4469m[i10] = i11;
    }

    public final void E(boolean z10, boolean z11) {
        if ((z10 && (this.f4464h || this.f4465i)) || this.f4465i == z10) {
            return;
        }
        this.K = z11;
        u();
        this.f4465i = z10;
        if (z10) {
            p(1, this.f4477u, this.S);
        } else {
            K(1, this.S);
        }
    }

    public final void F(boolean z10, boolean z11) {
        if ((z10 && (this.f4464h || this.f4465i)) || this.f4464h == z10) {
            return;
        }
        this.K = z11;
        u();
        this.f4464h = z10;
        if (z10) {
            p(0, this.f4477u, this.R);
        } else {
            K(0, this.R);
        }
    }

    public final void G(int i10, int i11) {
        this.B[i10].bringToFront();
        this.B[i10].offsetTopAndBottom(i11);
        this.f4477u += i11;
    }

    public final Animation H(int i10, int i11, int i12) {
        a aVar = new a(i10, i11, i12);
        aVar.setDuration(300L);
        this.B[i10].setAnimationListener(null);
        this.B[i10].clearAnimation();
        this.B[i10].startAnimation(aVar);
        return aVar;
    }

    public final void I(int i10) {
        this.I = H(i10, this.E[i10].getAlpha(), BaseProgressIndicator.MAX_ALPHA);
    }

    public final void J(int i10) {
        this.H = H(i10, this.E[i10].getAlpha(), 76);
    }

    public final void K(int i10, Animation.AnimationListener animationListener) {
        l lVar = new l(i10);
        this.G = lVar;
        lVar.setDuration(150L);
        this.B[i10].setAnimationListener(animationListener);
        this.B[i10].clearAnimation();
        this.B[i10].startAnimation(this.G);
    }

    public final void L(int i10, Animation.AnimationListener animationListener) {
        this.C = i10;
        this.D = b0.M(this.B[1]);
        j jVar = new j();
        this.J = jVar;
        jVar.setDuration(150L);
        if (animationListener != null) {
            this.B[1].setAnimationListener(animationListener);
        }
        this.B[1].clearAnimation();
        this.B[1].startAnimation(this.J);
    }

    public final void M(int i10, Animation.AnimationListener animationListener) {
        this.C = i10;
        this.D = this.B[0].getScaleX();
        i iVar = new i();
        this.J = iVar;
        iVar.setDuration(150L);
        if (animationListener != null) {
            this.B[0].setAnimationListener(animationListener);
        }
        this.B[0].clearAnimation();
        this.B[0].startAnimation(this.J);
    }

    public final void N(int i10, Animation.AnimationListener animationListener) {
        this.B[i10].setVisibility(0);
        this.E[i10].setAlpha(BaseProgressIndicator.MAX_ALPHA);
        k kVar = new k(i10);
        this.F = kVar;
        kVar.setDuration(this.f4476t);
        if (animationListener != null) {
            this.B[i10].setAnimationListener(animationListener);
        }
        this.B[i10].clearAnimation();
        this.B[i10].startAnimation(this.F);
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f10, float f11, boolean z10) {
        return this.f4472p.a(f10, f11, z10);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f10, float f11) {
        return this.f4472p.b(f10, f11);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i10, int i11, int[] iArr, int[] iArr2) {
        return this.f4472p.c(i10, i11, iArr, iArr2);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i10, int i11, int i12, int i13, int[] iArr) {
        return this.f4472p.f(i10, i11, i12, i13, iArr);
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.f4471o.a();
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return this.f4472p.k();
    }

    @Override // android.view.View, q0.o
    public boolean isNestedScrollingEnabled() {
        return this.f4472p.m();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        A();
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0031, code lost:
    
        if (r0 != 3) goto L51;
     */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        u();
        int a10 = n.a(motionEvent);
        if (this.f4482z && a10 == 0) {
            this.f4482z = false;
        }
        if (!isEnabled() || this.f4482z || this.f4475s || this.f4464h || this.f4465i) {
            return false;
        }
        if (a10 != 0) {
            if (a10 != 1) {
                if (a10 == 2) {
                    float y10 = motionEvent.getY() - this.f4479w;
                    if (y10 > this.f4468l && !this.f4480x && !s() && this.f4466j) {
                        this.f4480x = true;
                        this.E[0].setAlpha(76);
                    } else if (y10 < (-this.f4468l) && !this.f4480x && !r() && this.f4467k) {
                        this.f4480x = true;
                        this.E[1].setAlpha(76);
                    }
                }
            }
            this.f4480x = false;
        } else {
            int i10 = this.f4477u;
            for (int i11 = 0; i11 < 2; i11++) {
                G(i11, -i10);
            }
            this.f4480x = false;
            float y11 = motionEvent.getY();
            if (y11 == -1.0f) {
                return false;
            }
            this.f4479w = y11;
        }
        return this.f4480x;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        if (getChildCount() == 0) {
            return;
        }
        if (this.f4462f == null) {
            u();
        }
        if (this.f4462f != null) {
            int paddingLeft = getPaddingLeft();
            int paddingTop = getPaddingTop();
            this.f4462f.layout(paddingLeft, paddingTop, ((measuredWidth - getPaddingLeft()) - getPaddingRight()) + paddingLeft, ((measuredHeight - getPaddingTop()) - getPaddingBottom()) + paddingTop);
        }
        int i14 = this.f4477u;
        if (i14 == 0) {
            SupportCircleImageView supportCircleImageView = this.B[0];
            int i15 = measuredWidth / 2;
            int i16 = this.L;
            supportCircleImageView.layout(i15 - (i16 / 2), -this.M, (i16 / 2) + i15, 0);
            this.B[1].layout(i15 - (this.L / 2), getMeasuredHeight(), i15 + (this.L / 2), getMeasuredHeight() + this.M);
            return;
        }
        if (i14 > 0) {
            SupportCircleImageView supportCircleImageView2 = this.B[0];
            int i17 = measuredWidth / 2;
            int i18 = this.L;
            supportCircleImageView2.layout(i17 - (i18 / 2), i14 - this.M, (i18 / 2) + i17, i14);
            this.B[1].layout(i17 - (this.L / 2), getMeasuredHeight(), i17 + (this.L / 2), getMeasuredHeight() + this.M);
            return;
        }
        if (i14 < 0) {
            SupportCircleImageView supportCircleImageView3 = this.B[0];
            int i19 = measuredWidth / 2;
            int i20 = this.L;
            supportCircleImageView3.layout(i19 - (i20 / 2), -this.M, (i20 / 2) + i19, 0);
            this.B[1].layout(i19 - (this.L / 2), getMeasuredHeight() + this.f4477u, i19 + (this.L / 2), getMeasuredHeight() + this.M + this.f4477u);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (this.f4462f == null) {
            u();
        }
        View view = this.f4462f;
        if (view != null) {
            view.measure(View.MeasureSpec.makeMeasureSpec((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH), View.MeasureSpec.makeMeasureSpec((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH));
        }
        for (int i12 = 0; i12 < 2; i12++) {
            this.B[i12].measure(View.MeasureSpec.makeMeasureSpec(this.L, NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH), View.MeasureSpec.makeMeasureSpec(this.M, NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH));
        }
        if (this.f4478v) {
            return;
        }
        this.f4478v = true;
        this.f4477u = 0;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, q0.s
    public boolean onNestedFling(View view, float f10, float f11, boolean z10) {
        return dispatchNestedFling(f10, f11, z10);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, q0.s
    public boolean onNestedPreFling(View view, float f10, float f11) {
        return dispatchNestedPreFling(f10, f11);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:14:? A[RETURN, SYNTHETIC] */
    @Override // android.view.ViewGroup, android.view.ViewParent, q0.s
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onNestedPreScroll(View view, int i10, int i11, int[] iArr) {
        int[] iArr2;
        if (i11 > 0) {
            float f10 = this.f4470n;
            if (f10 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                float f11 = i11;
                if (f11 > f10) {
                    iArr[1] = (int) f10;
                    this.f4470n = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                } else {
                    this.f4470n = f10 - f11;
                    iArr[1] = i11;
                }
                y(0, this.f4470n);
                iArr2 = this.f4473q;
                if (dispatchNestedPreScroll(i10 - iArr[0], i11 - iArr[1], iArr2, null)) {
                    return;
                }
                iArr[0] = iArr[0] + iArr2[0];
                iArr[1] = iArr[1] + iArr2[1];
                return;
            }
        }
        if (i11 < 0) {
            float f12 = this.f4470n;
            if (f12 < StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                float f13 = i11;
                if (f13 < f12) {
                    iArr[1] = (int) f12;
                    this.f4470n = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                } else {
                    this.f4470n = f12 - f13;
                    iArr[1] = i11;
                }
                y(1, this.f4470n);
            }
        }
        iArr2 = this.f4473q;
        if (dispatchNestedPreScroll(i10 - iArr[0], i11 - iArr[1], iArr2, null)) {
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, q0.s
    public void onNestedScroll(View view, int i10, int i11, int i12, int i13) {
        dispatchNestedScroll(i10, i11, i12, i13, this.f4474r);
        int i14 = i13 + this.f4474r[1];
        if (i14 < 0 && !s() && !this.f4464h && this.f4466j) {
            float f10 = this.f4470n - i14;
            this.f4470n = f10;
            y(0, f10);
        } else {
            if (i14 <= 0 || r() || this.f4465i || !this.f4467k) {
                return;
            }
            float f11 = this.f4470n - i14;
            this.f4470n = f11;
            y(1, f11);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, q0.s
    public void onNestedScrollAccepted(View view, View view2, int i10) {
        this.f4471o.b(view, view2, i10);
        startNestedScroll(i10 & 2);
        this.f4470n = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        this.f4475s = true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, q0.s
    public boolean onStartNestedScroll(View view, View view2, int i10) {
        return (!isEnabled() || this.f4482z || this.f4464h || this.f4465i || (!this.f4466j && !this.f4467k) || (i10 & 2) == 0) ? false : true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, q0.s
    public void onStopNestedScroll(View view) {
        this.f4471o.d(view);
        this.f4475s = false;
        float f10 = this.f4470n;
        if (f10 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            v(0, f10);
        } else if (f10 < StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            v(1, f10);
        }
        this.f4470n = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        stopNestedScroll();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (this.f4482z && actionMasked == 0) {
            this.f4482z = false;
        }
        if (!isEnabled() || this.f4482z || this.f4475s || this.f4464h || this.f4465i) {
            return false;
        }
        if (actionMasked == 0) {
            this.f4480x = false;
        } else {
            if (actionMasked == 1) {
                float y10 = (motionEvent.getY() - this.f4479w) * 0.5f;
                this.f4480x = false;
                if (y10 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD && !s()) {
                    v(0, y10);
                } else if (y10 < StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD && !r()) {
                    v(1, y10);
                }
                return false;
            }
            if (actionMasked == 2) {
                float y11 = (motionEvent.getY() - this.f4479w) * 0.5f;
                if (this.f4480x) {
                    if (y11 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD && !s()) {
                        y(0, y11);
                    } else if (y11 < StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD && !r()) {
                        y(1, y11);
                    }
                }
            } else if (actionMasked == 3) {
                return false;
            }
        }
        return true;
    }

    public final void p(int i10, int i11, Animation.AnimationListener animationListener) {
        this.C = i11;
        if (i10 == 0) {
            this.N.reset();
            this.N.setDuration(200L);
            this.N.setInterpolator(this.A);
        } else {
            this.O.reset();
            this.O.setDuration(200L);
            this.O.setInterpolator(this.A);
        }
        if (animationListener != null) {
            this.B[i10].setAnimationListener(animationListener);
        }
        this.B[i10].clearAnimation();
        this.B[i10].startAnimation(i10 == 0 ? this.N : this.O);
    }

    public final void q(int i10, int i11, Animation.AnimationListener animationListener) {
        if (this.f4481y) {
            if (i10 == 0) {
                M(i11, animationListener);
                return;
            } else {
                L(i11, animationListener);
                return;
            }
        }
        this.C = i11;
        if (i10 == 0) {
            this.P.reset();
            this.P.setDuration(200L);
            this.P.setInterpolator(this.A);
        } else {
            this.Q.reset();
            this.Q.setDuration(200L);
            this.Q.setInterpolator(this.A);
        }
        if (animationListener != null) {
            this.B[i10].setAnimationListener(animationListener);
        }
        this.B[i10].clearAnimation();
        this.B[i10].startAnimation(i10 == 0 ? this.P : this.Q);
    }

    public boolean r() {
        return this.f4462f.canScrollVertically(1);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z10) {
        if (Build.VERSION.SDK_INT >= 21 || !(this.f4462f instanceof AbsListView)) {
            View view = this.f4462f;
            if (view == null || b0.Y(view)) {
                super.requestDisallowInterceptTouchEvent(z10);
            }
        }
    }

    public boolean s() {
        return this.f4462f.canScrollVertically(-1);
    }

    @SuppressLint({"SupportAnnotationUsage"})
    public void setColorSchemeColors(int... iArr) {
        u();
        for (int i10 = 0; i10 < 2; i10++) {
            this.E[i10].setColorSchemeColors(iArr);
        }
    }

    public void setColorSchemeResources(int... iArr) {
        int[] iArr2 = new int[iArr.length];
        for (int i10 = 0; i10 < iArr.length; i10++) {
            iArr2[i10] = f0.a.d(getContext(), iArr[i10]);
        }
        setColorSchemeColors(iArr2);
    }

    public void setLoading(boolean z10) {
        if (z10 && (this.f4464h || this.f4465i)) {
            return;
        }
        if (z10) {
            this.B[0].setVisibility(8);
            this.f4465i = true;
            G(1, (int) ((-this.f4469m[1]) - this.f4477u));
            this.K = false;
            N(1, this.S);
            return;
        }
        E(false, false);
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z10) {
        this.f4472p.n(z10);
    }

    public void setOnRefreshAndLoadListener(m mVar) {
        this.f4463g = mVar;
    }

    public void setPermitLoad(boolean z10) {
        this.f4467k = z10;
        if (this.f4466j || z10) {
            return;
        }
        setEnabled(false);
    }

    public void setPermitRefresh(boolean z10) {
        this.f4466j = z10;
        if (z10 || this.f4467k) {
            return;
        }
        setEnabled(false);
    }

    public void setProgressBackgroundColorSchemeColor(int i10) {
        for (int i11 = 0; i11 < 2; i11++) {
            this.B[i11].setBackgroundColor(i10);
            this.E[i11].setBackgroundColor(i10);
        }
    }

    public void setProgressBackgroundColorSchemeResource(int i10) {
        setProgressBackgroundColorSchemeColor(f0.a.d(getContext(), i10));
    }

    public void setRefreshing(boolean z10) {
        if (z10 && (this.f4464h || this.f4465i)) {
            return;
        }
        if (z10) {
            this.B[1].setVisibility(8);
            this.f4464h = true;
            G(0, (int) (this.f4469m[0] - this.f4477u));
            this.K = false;
            N(0, this.R);
            return;
        }
        F(false, false);
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i10) {
        return this.f4472p.p(i10);
    }

    @Override // android.view.View, q0.o
    public void stopNestedScroll() {
        this.f4472p.r();
    }

    public final void t() {
        this.B = new SupportCircleImageView[]{new SupportCircleImageView(getContext(), -328966, 20.0f), new SupportCircleImageView(getContext(), -328966, 20.0f)};
        this.E = new SupportProgressDrawable[]{new SupportProgressDrawable(getContext(), this), new SupportProgressDrawable(getContext(), this)};
        for (int i10 = 0; i10 < 2; i10++) {
            this.E[i10].setBackgroundColor(-328966);
            this.B[i10].setImageDrawable(this.E[i10]);
            this.B[i10].setVisibility(8);
            addView(this.B[i10]);
        }
    }

    public final void u() {
        if (this.f4462f == null) {
            for (int i10 = 0; i10 < getChildCount(); i10++) {
                View childAt = getChildAt(i10);
                if (!childAt.equals(this.B[0]) && !childAt.equals(this.B[1])) {
                    this.f4462f = childAt;
                    return;
                }
            }
        }
    }

    public final void v(int i10, float f10) {
        if (Math.abs(f10) > this.f4469m[i10]) {
            if (i10 == 0) {
                F(true, true);
                return;
            } else {
                E(true, true);
                return;
            }
        }
        if (i10 == 0) {
            this.f4464h = false;
        } else {
            this.f4465i = false;
        }
        this.E[i10].setStartEndTrim(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        q(i10, this.f4477u, this.f4481y ? null : new d(i10));
        this.E[i10].showArrow(false);
    }

    public final boolean w(Animation animation) {
        return (animation == null || !animation.hasStarted() || animation.hasEnded()) ? false : true;
    }

    public boolean x() {
        return this.f4464h;
    }

    public final void y(int i10, float f10) {
        this.E[i10].showArrow(true);
        float min = Math.min(1.0f, Math.abs(Math.abs(f10) / this.f4469m[i10]));
        double d10 = min;
        Double.isNaN(d10);
        float max = (((float) Math.max(d10 - 0.4d, ShadowDrawableWrapper.COS_45)) * 5.0f) / 3.0f;
        float abs = Math.abs(f10);
        float[] fArr = this.f4469m;
        double max2 = Math.max(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, Math.min(abs - fArr[i10], fArr[i10] * 2.0f) / this.f4469m[i10]) / 4.0f;
        double pow = Math.pow(max2, 2.0d);
        Double.isNaN(max2);
        float f11 = ((float) (max2 - pow)) * 2.0f;
        float[] fArr2 = this.f4469m;
        int i11 = ((int) ((fArr2[i10] * min) + (fArr2[i10] * f11 * 2.0f))) * (i10 != 0 ? -1 : 1);
        if (this.B[i10].getVisibility() != 0) {
            this.B[i10].setVisibility(0);
        }
        if (!this.f4481y) {
            b0.J0(this.B[i10], 1.0f);
            b0.K0(this.B[i10], 1.0f);
        }
        if (this.f4481y) {
            B(i10, Math.min(1.0f, Math.abs(f10 / this.f4469m[i10])));
        }
        if (Math.abs(f10) < this.f4469m[i10]) {
            if (this.E[i10].getAlpha() > 76 && !w(this.H)) {
                J(i10);
            }
        } else if (this.E[i10].getAlpha() < 255 && !w(this.I)) {
            I(i10);
        }
        this.E[i10].setStartEndTrim(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, Math.min(0.8f, max * 0.8f));
        this.E[i10].setArrowScale(Math.min(1.0f, max));
        this.E[i10].setProgressRotation((((max * 0.4f) - 0.25f) + (f11 * 2.0f)) * 0.5f);
        G(i10, i11 - this.f4477u);
    }

    public final void z(int i10, float f10) {
        G(i10, ((int) (this.C * (1.0f - f10))) - this.f4477u);
    }
}
