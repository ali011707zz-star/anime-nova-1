package androidx.swiperefreshlayout.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Transformation;
import android.widget.AbsListView;
import android.widget.ListView;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.google.android.material.progressindicator.BaseProgressIndicator;
import com.google.android.material.shadow.ShadowDrawableWrapper;
import org.apache.http.impl.auth.NTLMEngineImpl;
import q0.b0;
import q0.o;
import q0.p;
import q0.q;
import q0.r;
import q0.s;
import q0.t;

/* loaded from: classes.dex */
public class SwipeRefreshLayout extends ViewGroup implements r, q, o, s {
    public static final String V = SwipeRefreshLayout.class.getSimpleName();
    public static final int[] W = {R.attr.enabled};
    public v1.a A;
    public int B;
    public int C;
    public float D;
    public int E;
    public int F;
    public int G;
    public v1.b H;
    public Animation I;
    public Animation J;
    public Animation K;
    public Animation L;
    public Animation M;
    public boolean N;
    public int O;
    public boolean P;
    public i Q;
    public boolean R;
    public Animation.AnimationListener S;
    public final Animation T;
    public final Animation U;

    /* renamed from: f, reason: collision with root package name */
    public View f3183f;

    /* renamed from: g, reason: collision with root package name */
    public j f3184g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f3185h;

    /* renamed from: i, reason: collision with root package name */
    public int f3186i;

    /* renamed from: j, reason: collision with root package name */
    public float f3187j;

    /* renamed from: k, reason: collision with root package name */
    public float f3188k;

    /* renamed from: l, reason: collision with root package name */
    public final t f3189l;

    /* renamed from: m, reason: collision with root package name */
    public final p f3190m;

    /* renamed from: n, reason: collision with root package name */
    public final int[] f3191n;

    /* renamed from: o, reason: collision with root package name */
    public final int[] f3192o;

    /* renamed from: p, reason: collision with root package name */
    public final int[] f3193p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f3194q;

    /* renamed from: r, reason: collision with root package name */
    public int f3195r;

    /* renamed from: s, reason: collision with root package name */
    public int f3196s;

    /* renamed from: t, reason: collision with root package name */
    public float f3197t;

    /* renamed from: u, reason: collision with root package name */
    public float f3198u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f3199v;

    /* renamed from: w, reason: collision with root package name */
    public int f3200w;

    /* renamed from: x, reason: collision with root package name */
    public boolean f3201x;

    /* renamed from: y, reason: collision with root package name */
    public boolean f3202y;

    /* renamed from: z, reason: collision with root package name */
    public final DecelerateInterpolator f3203z;

    /* loaded from: classes.dex */
    public class a implements Animation.AnimationListener {
        public a() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            j jVar;
            SwipeRefreshLayout swipeRefreshLayout = SwipeRefreshLayout.this;
            if (swipeRefreshLayout.f3185h) {
                swipeRefreshLayout.H.setAlpha(BaseProgressIndicator.MAX_ALPHA);
                SwipeRefreshLayout.this.H.start();
                SwipeRefreshLayout swipeRefreshLayout2 = SwipeRefreshLayout.this;
                if (swipeRefreshLayout2.N && (jVar = swipeRefreshLayout2.f3184g) != null) {
                    jVar.b();
                }
                SwipeRefreshLayout swipeRefreshLayout3 = SwipeRefreshLayout.this;
                swipeRefreshLayout3.f3196s = swipeRefreshLayout3.A.getTop();
                return;
            }
            swipeRefreshLayout.l();
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* loaded from: classes.dex */
    public class b extends Animation {
        public b() {
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f10, Transformation transformation) {
            SwipeRefreshLayout.this.setAnimationProgress(f10);
        }
    }

    /* loaded from: classes.dex */
    public class c extends Animation {
        public c() {
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f10, Transformation transformation) {
            SwipeRefreshLayout.this.setAnimationProgress(1.0f - f10);
        }
    }

    /* loaded from: classes.dex */
    public class d extends Animation {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ int f3207f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ int f3208g;

        public d(int i10, int i11) {
            this.f3207f = i10;
            this.f3208g = i11;
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f10, Transformation transformation) {
            SwipeRefreshLayout.this.H.setAlpha((int) (this.f3207f + ((this.f3208g - r0) * f10)));
        }
    }

    /* loaded from: classes.dex */
    public class e implements Animation.AnimationListener {
        public e() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            SwipeRefreshLayout swipeRefreshLayout = SwipeRefreshLayout.this;
            if (swipeRefreshLayout.f3201x) {
                return;
            }
            swipeRefreshLayout.r(null);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* loaded from: classes.dex */
    public class f extends Animation {
        public f() {
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f10, Transformation transformation) {
            int i10;
            SwipeRefreshLayout swipeRefreshLayout = SwipeRefreshLayout.this;
            if (!swipeRefreshLayout.P) {
                i10 = swipeRefreshLayout.F - Math.abs(swipeRefreshLayout.E);
            } else {
                i10 = swipeRefreshLayout.F;
            }
            SwipeRefreshLayout swipeRefreshLayout2 = SwipeRefreshLayout.this;
            SwipeRefreshLayout.this.setTargetOffsetTopAndBottom((swipeRefreshLayout2.C + ((int) ((i10 - r1) * f10))) - swipeRefreshLayout2.A.getTop());
            SwipeRefreshLayout.this.H.e(1.0f - f10);
        }
    }

    /* loaded from: classes.dex */
    public class g extends Animation {
        public g() {
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f10, Transformation transformation) {
            SwipeRefreshLayout.this.j(f10);
        }
    }

    /* loaded from: classes.dex */
    public class h extends Animation {
        public h() {
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f10, Transformation transformation) {
            SwipeRefreshLayout swipeRefreshLayout = SwipeRefreshLayout.this;
            float f11 = swipeRefreshLayout.D;
            swipeRefreshLayout.setAnimationProgress(f11 + ((-f11) * f10));
            SwipeRefreshLayout.this.j(f10);
        }
    }

    /* loaded from: classes.dex */
    public interface i {
        boolean a(SwipeRefreshLayout swipeRefreshLayout, View view);
    }

    /* loaded from: classes.dex */
    public interface j {
        void b();
    }

    public SwipeRefreshLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f3185h = false;
        this.f3187j = -1.0f;
        this.f3191n = new int[2];
        this.f3192o = new int[2];
        this.f3193p = new int[2];
        this.f3200w = -1;
        this.B = -1;
        this.S = new a();
        this.T = new f();
        this.U = new g();
        this.f3186i = ViewConfiguration.get(context).getScaledTouchSlop();
        this.f3195r = getResources().getInteger(R.integer.config_mediumAnimTime);
        setWillNotDraw(false);
        this.f3203z = new DecelerateInterpolator(2.0f);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.O = (int) (displayMetrics.density * 40.0f);
        d();
        setChildrenDrawingOrderEnabled(true);
        int i10 = (int) (displayMetrics.density * 64.0f);
        this.F = i10;
        this.f3187j = i10;
        this.f3189l = new t(this);
        this.f3190m = new p(this);
        setNestedScrollingEnabled(true);
        int i11 = -this.O;
        this.f3196s = i11;
        this.E = i11;
        j(1.0f);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, W);
        setEnabled(obtainStyledAttributes.getBoolean(0, true));
        obtainStyledAttributes.recycle();
    }

    private void setColorViewAlpha(int i10) {
        this.A.getBackground().setAlpha(i10);
        this.H.setAlpha(i10);
    }

    public final void a(int i10, Animation.AnimationListener animationListener) {
        this.C = i10;
        this.T.reset();
        this.T.setDuration(200L);
        this.T.setInterpolator(this.f3203z);
        if (animationListener != null) {
            this.A.b(animationListener);
        }
        this.A.clearAnimation();
        this.A.startAnimation(this.T);
    }

    public final void b(int i10, Animation.AnimationListener animationListener) {
        if (this.f3201x) {
            s(i10, animationListener);
            return;
        }
        this.C = i10;
        this.U.reset();
        this.U.setDuration(200L);
        this.U.setInterpolator(this.f3203z);
        if (animationListener != null) {
            this.A.b(animationListener);
        }
        this.A.clearAnimation();
        this.A.startAnimation(this.U);
    }

    public boolean c() {
        i iVar = this.Q;
        if (iVar != null) {
            return iVar.a(this, this.f3183f);
        }
        View view = this.f3183f;
        if (view instanceof ListView) {
            return u0.h.a((ListView) view, -1);
        }
        return view.canScrollVertically(-1);
    }

    public final void d() {
        this.A = new v1.a(getContext());
        v1.b bVar = new v1.b(getContext());
        this.H = bVar;
        bVar.l(1);
        this.A.setImageDrawable(this.H);
        this.A.setVisibility(8);
        addView(this.A);
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f10, float f11, boolean z10) {
        return this.f3190m.a(f10, f11, z10);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f10, float f11) {
        return this.f3190m.b(f10, f11);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i10, int i11, int[] iArr, int[] iArr2) {
        return this.f3190m.c(i10, i11, iArr, iArr2);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i10, int i11, int i12, int i13, int[] iArr) {
        return this.f3190m.f(i10, i11, i12, i13, iArr);
    }

    public void e(int i10, int i11, int i12, int i13, int[] iArr, int i14, int[] iArr2) {
        if (i14 == 0) {
            this.f3190m.e(i10, i11, i12, i13, iArr, i14, iArr2);
        }
    }

    public final void f() {
        if (this.f3183f == null) {
            for (int i10 = 0; i10 < getChildCount(); i10++) {
                View childAt = getChildAt(i10);
                if (!childAt.equals(this.A)) {
                    this.f3183f = childAt;
                    return;
                }
            }
        }
    }

    public final void g(float f10) {
        if (f10 > this.f3187j) {
            m(true, true);
            return;
        }
        this.f3185h = false;
        this.H.j(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        b(this.f3196s, this.f3201x ? null : new e());
        this.H.d(false);
    }

    @Override // android.view.ViewGroup
    public int getChildDrawingOrder(int i10, int i11) {
        int i12 = this.B;
        return i12 < 0 ? i11 : i11 == i10 + (-1) ? i12 : i11 >= i12 ? i11 + 1 : i11;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.f3189l.a();
    }

    public int getProgressCircleDiameter() {
        return this.O;
    }

    public int getProgressViewEndOffset() {
        return this.F;
    }

    public int getProgressViewStartOffset() {
        return this.E;
    }

    public final boolean h(Animation animation) {
        return (animation == null || !animation.hasStarted() || animation.hasEnded()) ? false : true;
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return this.f3190m.k();
    }

    public final void i(float f10) {
        this.H.d(true);
        float min = Math.min(1.0f, Math.abs(f10 / this.f3187j));
        double d10 = min;
        Double.isNaN(d10);
        float max = (((float) Math.max(d10 - 0.4d, ShadowDrawableWrapper.COS_45)) * 5.0f) / 3.0f;
        float abs = Math.abs(f10) - this.f3187j;
        int i10 = this.G;
        if (i10 <= 0) {
            if (this.P) {
                i10 = this.F - this.E;
            } else {
                i10 = this.F;
            }
        }
        float f11 = i10;
        double max2 = Math.max(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, Math.min(abs, f11 * 2.0f) / f11) / 4.0f;
        double pow = Math.pow(max2, 2.0d);
        Double.isNaN(max2);
        float f12 = ((float) (max2 - pow)) * 2.0f;
        int i11 = this.E + ((int) ((f11 * min) + (f11 * f12 * 2.0f)));
        if (this.A.getVisibility() != 0) {
            this.A.setVisibility(0);
        }
        if (!this.f3201x) {
            this.A.setScaleX(1.0f);
            this.A.setScaleY(1.0f);
        }
        if (this.f3201x) {
            setAnimationProgress(Math.min(1.0f, f10 / this.f3187j));
        }
        if (f10 < this.f3187j) {
            if (this.H.getAlpha() > 76 && !h(this.K)) {
                q();
            }
        } else if (this.H.getAlpha() < 255 && !h(this.L)) {
            p();
        }
        this.H.j(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, Math.min(0.8f, max * 0.8f));
        this.H.e(Math.min(1.0f, max));
        this.H.g((((max * 0.4f) - 0.25f) + (f12 * 2.0f)) * 0.5f);
        setTargetOffsetTopAndBottom(i11 - this.f3196s);
    }

    @Override // android.view.View, q0.o
    public boolean isNestedScrollingEnabled() {
        return this.f3190m.m();
    }

    public void j(float f10) {
        setTargetOffsetTopAndBottom((this.C + ((int) ((this.E - r0) * f10))) - this.A.getTop());
    }

    public final void k(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f3200w) {
            this.f3200w = motionEvent.getPointerId(actionIndex == 0 ? 1 : 0);
        }
    }

    public void l() {
        this.A.clearAnimation();
        this.H.stop();
        this.A.setVisibility(8);
        setColorViewAlpha(BaseProgressIndicator.MAX_ALPHA);
        if (this.f3201x) {
            setAnimationProgress(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        } else {
            setTargetOffsetTopAndBottom(this.E - this.f3196s);
        }
        this.f3196s = this.A.getTop();
    }

    public final void m(boolean z10, boolean z11) {
        if (this.f3185h != z10) {
            this.N = z11;
            f();
            this.f3185h = z10;
            if (z10) {
                a(this.f3196s, this.S);
            } else {
                r(this.S);
            }
        }
    }

    public final Animation n(int i10, int i11) {
        d dVar = new d(i10, i11);
        dVar.setDuration(300L);
        this.A.b(null);
        this.A.clearAnimation();
        this.A.startAnimation(dVar);
        return dVar;
    }

    public final void o(float f10) {
        float f11 = this.f3198u;
        float f12 = f10 - f11;
        int i10 = this.f3186i;
        if (f12 <= i10 || this.f3199v) {
            return;
        }
        this.f3197t = f11 + i10;
        this.f3199v = true;
        this.H.setAlpha(76);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        l();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int findPointerIndex;
        f();
        int actionMasked = motionEvent.getActionMasked();
        if (this.f3202y && actionMasked == 0) {
            this.f3202y = false;
        }
        if (!isEnabled() || this.f3202y || c() || this.f3185h || this.f3194q) {
            return false;
        }
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    int i10 = this.f3200w;
                    if (i10 == -1 || (findPointerIndex = motionEvent.findPointerIndex(i10)) < 0) {
                        return false;
                    }
                    o(motionEvent.getY(findPointerIndex));
                } else if (actionMasked != 3) {
                    if (actionMasked == 6) {
                        k(motionEvent);
                    }
                }
            }
            this.f3199v = false;
            this.f3200w = -1;
        } else {
            setTargetOffsetTopAndBottom(this.E - this.A.getTop());
            int pointerId = motionEvent.getPointerId(0);
            this.f3200w = pointerId;
            this.f3199v = false;
            int findPointerIndex2 = motionEvent.findPointerIndex(pointerId);
            if (findPointerIndex2 < 0) {
                return false;
            }
            this.f3198u = motionEvent.getY(findPointerIndex2);
        }
        return this.f3199v;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        if (getChildCount() == 0) {
            return;
        }
        if (this.f3183f == null) {
            f();
        }
        View view = this.f3183f;
        if (view == null) {
            return;
        }
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        view.layout(paddingLeft, paddingTop, ((measuredWidth - getPaddingLeft()) - getPaddingRight()) + paddingLeft, ((measuredHeight - getPaddingTop()) - getPaddingBottom()) + paddingTop);
        int measuredWidth2 = this.A.getMeasuredWidth();
        int measuredHeight2 = this.A.getMeasuredHeight();
        int i14 = measuredWidth / 2;
        int i15 = measuredWidth2 / 2;
        int i16 = this.f3196s;
        this.A.layout(i14 - i15, i16, i14 + i15, measuredHeight2 + i16);
    }

    @Override // android.view.View
    public void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (this.f3183f == null) {
            f();
        }
        View view = this.f3183f;
        if (view == null) {
            return;
        }
        view.measure(View.MeasureSpec.makeMeasureSpec((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH), View.MeasureSpec.makeMeasureSpec((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH));
        this.A.measure(View.MeasureSpec.makeMeasureSpec(this.O, NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH), View.MeasureSpec.makeMeasureSpec(this.O, NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH));
        this.B = -1;
        for (int i12 = 0; i12 < getChildCount(); i12++) {
            if (getChildAt(i12) == this.A) {
                this.B = i12;
                return;
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, q0.s
    public boolean onNestedFling(View view, float f10, float f11, boolean z10) {
        return dispatchNestedFling(f10, f11, z10);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, q0.s
    public boolean onNestedPreFling(View view, float f10, float f11) {
        return dispatchNestedPreFling(f10, f11);
    }

    @Override // q0.q
    public void onNestedPreScroll(View view, int i10, int i11, int[] iArr, int i12) {
        if (i12 == 0) {
            onNestedPreScroll(view, i10, i11, iArr);
        }
    }

    @Override // q0.r
    public void onNestedScroll(View view, int i10, int i11, int i12, int i13, int i14, int[] iArr) {
        if (i14 != 0) {
            return;
        }
        int i15 = iArr[1];
        e(i10, i11, i12, i13, this.f3192o, i14, iArr);
        int i16 = i13 - (iArr[1] - i15);
        if ((i16 == 0 ? i13 + this.f3192o[1] : i16) >= 0 || c()) {
            return;
        }
        float abs = this.f3188k + Math.abs(r1);
        this.f3188k = abs;
        i(abs);
        iArr[1] = iArr[1] + i16;
    }

    @Override // q0.q
    public void onNestedScrollAccepted(View view, View view2, int i10, int i11) {
        if (i11 == 0) {
            onNestedScrollAccepted(view, view2, i10);
        }
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        k kVar = (k) parcelable;
        super.onRestoreInstanceState(kVar.getSuperState());
        setRefreshing(kVar.f3214f);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        return new k(super.onSaveInstanceState(), this.f3185h);
    }

    @Override // q0.q
    public boolean onStartNestedScroll(View view, View view2, int i10, int i11) {
        if (i11 == 0) {
            return onStartNestedScroll(view, view2, i10);
        }
        return false;
    }

    @Override // q0.q
    public void onStopNestedScroll(View view, int i10) {
        if (i10 == 0) {
            onStopNestedScroll(view);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (this.f3202y && actionMasked == 0) {
            this.f3202y = false;
        }
        if (!isEnabled() || this.f3202y || c() || this.f3185h || this.f3194q) {
            return false;
        }
        if (actionMasked == 0) {
            this.f3200w = motionEvent.getPointerId(0);
            this.f3199v = false;
        } else {
            if (actionMasked == 1) {
                int findPointerIndex = motionEvent.findPointerIndex(this.f3200w);
                if (findPointerIndex < 0) {
                    return false;
                }
                if (this.f3199v) {
                    float y10 = (motionEvent.getY(findPointerIndex) - this.f3197t) * 0.5f;
                    this.f3199v = false;
                    g(y10);
                }
                this.f3200w = -1;
                return false;
            }
            if (actionMasked == 2) {
                int findPointerIndex2 = motionEvent.findPointerIndex(this.f3200w);
                if (findPointerIndex2 < 0) {
                    return false;
                }
                float y11 = motionEvent.getY(findPointerIndex2);
                o(y11);
                if (this.f3199v) {
                    float f10 = (y11 - this.f3197t) * 0.5f;
                    if (f10 <= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                        return false;
                    }
                    getParent().requestDisallowInterceptTouchEvent(true);
                    i(f10);
                }
            } else {
                if (actionMasked == 3) {
                    return false;
                }
                if (actionMasked == 5) {
                    int actionIndex = motionEvent.getActionIndex();
                    if (actionIndex < 0) {
                        return false;
                    }
                    this.f3200w = motionEvent.getPointerId(actionIndex);
                } else if (actionMasked == 6) {
                    k(motionEvent);
                }
            }
        }
        return true;
    }

    public final void p() {
        this.L = n(this.H.getAlpha(), BaseProgressIndicator.MAX_ALPHA);
    }

    public final void q() {
        this.K = n(this.H.getAlpha(), 76);
    }

    public void r(Animation.AnimationListener animationListener) {
        c cVar = new c();
        this.J = cVar;
        cVar.setDuration(150L);
        this.A.b(animationListener);
        this.A.clearAnimation();
        this.A.startAnimation(this.J);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z10) {
        View view;
        ViewParent parent;
        if ((Build.VERSION.SDK_INT < 21 && (this.f3183f instanceof AbsListView)) || ((view = this.f3183f) != null && !b0.Y(view))) {
            if (this.R || (parent = getParent()) == null) {
                return;
            }
            parent.requestDisallowInterceptTouchEvent(z10);
            return;
        }
        super.requestDisallowInterceptTouchEvent(z10);
    }

    public final void s(int i10, Animation.AnimationListener animationListener) {
        this.C = i10;
        this.D = this.A.getScaleX();
        h hVar = new h();
        this.M = hVar;
        hVar.setDuration(150L);
        if (animationListener != null) {
            this.A.b(animationListener);
        }
        this.A.clearAnimation();
        this.A.startAnimation(this.M);
    }

    public void setAnimationProgress(float f10) {
        this.A.setScaleX(f10);
        this.A.setScaleY(f10);
    }

    @Deprecated
    public void setColorScheme(int... iArr) {
        setColorSchemeResources(iArr);
    }

    public void setColorSchemeColors(int... iArr) {
        f();
        this.H.f(iArr);
    }

    public void setColorSchemeResources(int... iArr) {
        Context context = getContext();
        int[] iArr2 = new int[iArr.length];
        for (int i10 = 0; i10 < iArr.length; i10++) {
            iArr2[i10] = f0.a.d(context, iArr[i10]);
        }
        setColorSchemeColors(iArr2);
    }

    public void setDistanceToTriggerSync(int i10) {
        this.f3187j = i10;
    }

    @Override // android.view.View
    public void setEnabled(boolean z10) {
        super.setEnabled(z10);
        if (z10) {
            return;
        }
        l();
    }

    @Deprecated
    public void setLegacyRequestDisallowInterceptTouchEventEnabled(boolean z10) {
        this.R = z10;
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z10) {
        this.f3190m.n(z10);
    }

    public void setOnChildScrollUpCallback(i iVar) {
        this.Q = iVar;
    }

    public void setOnRefreshListener(j jVar) {
        this.f3184g = jVar;
    }

    @Deprecated
    public void setProgressBackgroundColor(int i10) {
        setProgressBackgroundColorSchemeResource(i10);
    }

    public void setProgressBackgroundColorSchemeColor(int i10) {
        this.A.setBackgroundColor(i10);
    }

    public void setProgressBackgroundColorSchemeResource(int i10) {
        setProgressBackgroundColorSchemeColor(f0.a.d(getContext(), i10));
    }

    public void setRefreshing(boolean z10) {
        int i10;
        if (z10 && this.f3185h != z10) {
            this.f3185h = z10;
            if (!this.P) {
                i10 = this.F + this.E;
            } else {
                i10 = this.F;
            }
            setTargetOffsetTopAndBottom(i10 - this.f3196s);
            this.N = false;
            t(this.S);
            return;
        }
        m(z10, false);
    }

    public void setSize(int i10) {
        if (i10 == 0 || i10 == 1) {
            DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
            if (i10 == 0) {
                this.O = (int) (displayMetrics.density * 56.0f);
            } else {
                this.O = (int) (displayMetrics.density * 40.0f);
            }
            this.A.setImageDrawable(null);
            this.H.l(i10);
            this.A.setImageDrawable(this.H);
        }
    }

    public void setSlingshotDistance(int i10) {
        this.G = i10;
    }

    public void setTargetOffsetTopAndBottom(int i10) {
        this.A.bringToFront();
        b0.e0(this.A, i10);
        this.f3196s = this.A.getTop();
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i10) {
        return this.f3190m.p(i10);
    }

    @Override // android.view.View, q0.o
    public void stopNestedScroll() {
        this.f3190m.r();
    }

    public final void t(Animation.AnimationListener animationListener) {
        this.A.setVisibility(0);
        this.H.setAlpha(BaseProgressIndicator.MAX_ALPHA);
        b bVar = new b();
        this.I = bVar;
        bVar.setDuration(this.f3195r);
        if (animationListener != null) {
            this.A.b(animationListener);
        }
        this.A.clearAnimation();
        this.A.startAnimation(this.I);
    }

    /* loaded from: classes.dex */
    public static class k extends View.BaseSavedState {
        public static final Parcelable.Creator<k> CREATOR = new a();

        /* renamed from: f, reason: collision with root package name */
        public final boolean f3214f;

        /* loaded from: classes.dex */
        public class a implements Parcelable.Creator<k> {
            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public k createFromParcel(Parcel parcel) {
                return new k(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public k[] newArray(int i10) {
                return new k[i10];
            }
        }

        public k(Parcelable parcelable, boolean z10) {
            super(parcelable);
            this.f3214f = z10;
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeByte(this.f3214f ? (byte) 1 : (byte) 0);
        }

        public k(Parcel parcel) {
            super(parcel);
            this.f3214f = parcel.readByte() != 0;
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, q0.s
    public void onNestedPreScroll(View view, int i10, int i11, int[] iArr) {
        if (i11 > 0) {
            float f10 = this.f3188k;
            if (f10 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                float f11 = i11;
                if (f11 > f10) {
                    iArr[1] = (int) f10;
                    this.f3188k = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                } else {
                    this.f3188k = f10 - f11;
                    iArr[1] = i11;
                }
                i(this.f3188k);
            }
        }
        if (this.P && i11 > 0 && this.f3188k == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD && Math.abs(i11 - iArr[1]) > 0) {
            this.A.setVisibility(8);
        }
        int[] iArr2 = this.f3191n;
        if (dispatchNestedPreScroll(i10 - iArr[0], i11 - iArr[1], iArr2, null)) {
            iArr[0] = iArr[0] + iArr2[0];
            iArr[1] = iArr[1] + iArr2[1];
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, q0.s
    public void onNestedScrollAccepted(View view, View view2, int i10) {
        this.f3189l.b(view, view2, i10);
        startNestedScroll(i10 & 2);
        this.f3188k = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        this.f3194q = true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, q0.s
    public boolean onStartNestedScroll(View view, View view2, int i10) {
        return (!isEnabled() || this.f3202y || this.f3185h || (i10 & 2) == 0) ? false : true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, q0.s
    public void onStopNestedScroll(View view) {
        this.f3189l.d(view);
        this.f3194q = false;
        float f10 = this.f3188k;
        if (f10 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            g(f10);
            this.f3188k = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        }
        stopNestedScroll();
    }

    @Override // q0.q
    public void onNestedScroll(View view, int i10, int i11, int i12, int i13, int i14) {
        onNestedScroll(view, i10, i11, i12, i13, i14, this.f3193p);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, q0.s
    public void onNestedScroll(View view, int i10, int i11, int i12, int i13) {
        onNestedScroll(view, i10, i11, i12, i13, 0, this.f3193p);
    }
}
