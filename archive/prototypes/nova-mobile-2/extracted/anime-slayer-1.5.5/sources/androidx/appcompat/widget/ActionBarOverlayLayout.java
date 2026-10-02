package androidx.appcompat.widget;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.view.WindowInsets;
import android.widget.OverScroller;
import androidx.appcompat.view.menu.i;
import com.google.android.gms.common.api.Api;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import q0.m0;

@SuppressLint({"UnknownNullness"})
/* loaded from: classes.dex */
public class ActionBarOverlayLayout extends ViewGroup implements b0, q0.s, q0.q, q0.r {
    public static final int[] K = {d.a.f5183b, R.attr.windowContentOverlay};
    public q0.m0 A;
    public q0.m0 B;
    public q0.m0 C;
    public d D;
    public OverScroller E;
    public ViewPropertyAnimator F;
    public final AnimatorListenerAdapter G;
    public final Runnable H;
    public final Runnable I;
    public final q0.t J;

    /* renamed from: f, reason: collision with root package name */
    public int f1121f;

    /* renamed from: g, reason: collision with root package name */
    public int f1122g;

    /* renamed from: h, reason: collision with root package name */
    public ContentFrameLayout f1123h;

    /* renamed from: i, reason: collision with root package name */
    public ActionBarContainer f1124i;

    /* renamed from: j, reason: collision with root package name */
    public c0 f1125j;

    /* renamed from: k, reason: collision with root package name */
    public Drawable f1126k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f1127l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f1128m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f1129n;

    /* renamed from: o, reason: collision with root package name */
    public boolean f1130o;

    /* renamed from: p, reason: collision with root package name */
    public boolean f1131p;

    /* renamed from: q, reason: collision with root package name */
    public int f1132q;

    /* renamed from: r, reason: collision with root package name */
    public int f1133r;

    /* renamed from: s, reason: collision with root package name */
    public final Rect f1134s;

    /* renamed from: t, reason: collision with root package name */
    public final Rect f1135t;

    /* renamed from: u, reason: collision with root package name */
    public final Rect f1136u;

    /* renamed from: v, reason: collision with root package name */
    public final Rect f1137v;

    /* renamed from: w, reason: collision with root package name */
    public final Rect f1138w;

    /* renamed from: x, reason: collision with root package name */
    public final Rect f1139x;

    /* renamed from: y, reason: collision with root package name */
    public final Rect f1140y;

    /* renamed from: z, reason: collision with root package name */
    public q0.m0 f1141z;

    /* loaded from: classes.dex */
    public class a extends AnimatorListenerAdapter {
        public a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.F = null;
            actionBarOverlayLayout.f1131p = false;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.F = null;
            actionBarOverlayLayout.f1131p = false;
        }
    }

    /* loaded from: classes.dex */
    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ActionBarOverlayLayout.this.o();
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.F = actionBarOverlayLayout.f1124i.animate().translationY(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD).setListener(ActionBarOverlayLayout.this.G);
        }
    }

    /* loaded from: classes.dex */
    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ActionBarOverlayLayout.this.o();
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.F = actionBarOverlayLayout.f1124i.animate().translationY(-ActionBarOverlayLayout.this.f1124i.getHeight()).setListener(ActionBarOverlayLayout.this.G);
        }
    }

    /* loaded from: classes.dex */
    public interface d {
        void a();

        void b();

        void c(int i10);

        void d();

        void e(boolean z10);

        void f();
    }

    /* loaded from: classes.dex */
    public static class e extends ViewGroup.MarginLayoutParams {
        public e(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public e(int i10, int i11) {
            super(i10, i11);
        }

        public e(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    public ActionBarOverlayLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1122g = 0;
        this.f1134s = new Rect();
        this.f1135t = new Rect();
        this.f1136u = new Rect();
        this.f1137v = new Rect();
        this.f1138w = new Rect();
        this.f1139x = new Rect();
        this.f1140y = new Rect();
        q0.m0 m0Var = q0.m0.f12368b;
        this.f1141z = m0Var;
        this.A = m0Var;
        this.B = m0Var;
        this.C = m0Var;
        this.G = new a();
        this.H = new b();
        this.I = new c();
        p(context);
        this.J = new q0.t(this);
    }

    @Override // androidx.appcompat.widget.b0
    public void a(Menu menu, i.a aVar) {
        t();
        this.f1125j.a(menu, aVar);
    }

    @Override // androidx.appcompat.widget.b0
    public boolean b() {
        t();
        return this.f1125j.b();
    }

    @Override // androidx.appcompat.widget.b0
    public void c() {
        t();
        this.f1125j.c();
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof e;
    }

    @Override // androidx.appcompat.widget.b0
    public boolean d() {
        t();
        return this.f1125j.d();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.f1126k == null || this.f1127l) {
            return;
        }
        int bottom = this.f1124i.getVisibility() == 0 ? (int) (this.f1124i.getBottom() + this.f1124i.getTranslationY() + 0.5f) : 0;
        this.f1126k.setBounds(0, bottom, getWidth(), this.f1126k.getIntrinsicHeight() + bottom);
        this.f1126k.draw(canvas);
    }

    @Override // androidx.appcompat.widget.b0
    public boolean e() {
        t();
        return this.f1125j.e();
    }

    @Override // androidx.appcompat.widget.b0
    public boolean f() {
        t();
        return this.f1125j.f();
    }

    @Override // android.view.View
    public boolean fitSystemWindows(Rect rect) {
        if (Build.VERSION.SDK_INT >= 21) {
            return super.fitSystemWindows(rect);
        }
        t();
        boolean k10 = k(this.f1124i, rect, true, true, false, true);
        this.f1137v.set(rect);
        c1.a(this, this.f1137v, this.f1134s);
        if (!this.f1138w.equals(this.f1137v)) {
            this.f1138w.set(this.f1137v);
            k10 = true;
        }
        if (!this.f1135t.equals(this.f1134s)) {
            this.f1135t.set(this.f1134s);
            k10 = true;
        }
        if (k10) {
            requestLayout();
        }
        return true;
    }

    @Override // androidx.appcompat.widget.b0
    public boolean g() {
        t();
        return this.f1125j.g();
    }

    public int getActionBarHideOffset() {
        ActionBarContainer actionBarContainer = this.f1124i;
        if (actionBarContainer != null) {
            return -((int) actionBarContainer.getTranslationY());
        }
        return 0;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.J.a();
    }

    public CharSequence getTitle() {
        t();
        return this.f1125j.getTitle();
    }

    @Override // androidx.appcompat.widget.b0
    public void h(int i10) {
        t();
        if (i10 == 2) {
            this.f1125j.v();
        } else if (i10 == 5) {
            this.f1125j.w();
        } else {
            if (i10 != 109) {
                return;
            }
            setOverlayMode(true);
        }
    }

    @Override // androidx.appcompat.widget.b0
    public void i() {
        t();
        this.f1125j.h();
    }

    public final void j() {
        o();
        this.I.run();
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0021  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean k(View view, Rect rect, boolean z10, boolean z11, boolean z12, boolean z13) {
        boolean z14;
        e eVar = (e) view.getLayoutParams();
        if (z10) {
            int i10 = ((ViewGroup.MarginLayoutParams) eVar).leftMargin;
            int i11 = rect.left;
            if (i10 != i11) {
                ((ViewGroup.MarginLayoutParams) eVar).leftMargin = i11;
                z14 = true;
                if (z11) {
                    int i12 = ((ViewGroup.MarginLayoutParams) eVar).topMargin;
                    int i13 = rect.top;
                    if (i12 != i13) {
                        ((ViewGroup.MarginLayoutParams) eVar).topMargin = i13;
                        z14 = true;
                    }
                }
                if (z13) {
                    int i14 = ((ViewGroup.MarginLayoutParams) eVar).rightMargin;
                    int i15 = rect.right;
                    if (i14 != i15) {
                        ((ViewGroup.MarginLayoutParams) eVar).rightMargin = i15;
                        z14 = true;
                    }
                }
                if (z12) {
                    int i16 = ((ViewGroup.MarginLayoutParams) eVar).bottomMargin;
                    int i17 = rect.bottom;
                    if (i16 != i17) {
                        ((ViewGroup.MarginLayoutParams) eVar).bottomMargin = i17;
                        return true;
                    }
                }
                return z14;
            }
        }
        z14 = false;
        if (z11) {
        }
        if (z13) {
        }
        if (z12) {
        }
        return z14;
    }

    @Override // android.view.ViewGroup
    /* renamed from: l, reason: merged with bridge method [inline-methods] */
    public e generateDefaultLayoutParams() {
        return new e(-1, -1);
    }

    @Override // android.view.ViewGroup
    /* renamed from: m, reason: merged with bridge method [inline-methods] */
    public e generateLayoutParams(AttributeSet attributeSet) {
        return new e(getContext(), attributeSet);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final c0 n(View view) {
        if (view instanceof c0) {
            return (c0) view;
        }
        if (view instanceof Toolbar) {
            return ((Toolbar) view).getWrapper();
        }
        throw new IllegalStateException("Can't make a decor toolbar out of " + view.getClass().getSimpleName());
    }

    public void o() {
        removeCallbacks(this.H);
        removeCallbacks(this.I);
        ViewPropertyAnimator viewPropertyAnimator = this.F;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
    }

    @Override // android.view.View
    public WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        t();
        q0.m0 x10 = q0.m0.x(windowInsets, this);
        boolean k10 = k(this.f1124i, new Rect(x10.j(), x10.l(), x10.k(), x10.i()), true, true, false, true);
        q0.b0.h(this, x10, this.f1134s);
        Rect rect = this.f1134s;
        q0.m0 n10 = x10.n(rect.left, rect.top, rect.right, rect.bottom);
        this.f1141z = n10;
        boolean z10 = true;
        if (!this.A.equals(n10)) {
            this.A = this.f1141z;
            k10 = true;
        }
        if (this.f1135t.equals(this.f1134s)) {
            z10 = k10;
        } else {
            this.f1135t.set(this.f1134s);
        }
        if (z10) {
            requestLayout();
        }
        return x10.a().c().b().v();
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        p(getContext());
        q0.b0.q0(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        o();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        for (int i14 = 0; i14 < childCount; i14++) {
            View childAt = getChildAt(i14);
            if (childAt.getVisibility() != 8) {
                e eVar = (e) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i15 = ((ViewGroup.MarginLayoutParams) eVar).leftMargin + paddingLeft;
                int i16 = ((ViewGroup.MarginLayoutParams) eVar).topMargin + paddingTop;
                childAt.layout(i15, i16, measuredWidth + i15, measuredHeight + i16);
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int i10, int i11) {
        int measuredHeight;
        t();
        measureChildWithMargins(this.f1124i, i10, 0, i11, 0);
        e eVar = (e) this.f1124i.getLayoutParams();
        int max = Math.max(0, this.f1124i.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) eVar).leftMargin + ((ViewGroup.MarginLayoutParams) eVar).rightMargin);
        int max2 = Math.max(0, this.f1124i.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) eVar).topMargin + ((ViewGroup.MarginLayoutParams) eVar).bottomMargin);
        int combineMeasuredStates = View.combineMeasuredStates(0, this.f1124i.getMeasuredState());
        boolean z10 = (q0.b0.Q(this) & 256) != 0;
        if (z10) {
            measuredHeight = this.f1121f;
            if (this.f1129n && this.f1124i.getTabContainer() != null) {
                measuredHeight += this.f1121f;
            }
        } else {
            measuredHeight = this.f1124i.getVisibility() != 8 ? this.f1124i.getMeasuredHeight() : 0;
        }
        this.f1136u.set(this.f1134s);
        int i12 = Build.VERSION.SDK_INT;
        if (i12 >= 21) {
            this.B = this.f1141z;
        } else {
            this.f1139x.set(this.f1137v);
        }
        if (!this.f1128m && !z10) {
            Rect rect = this.f1136u;
            rect.top += measuredHeight;
            rect.bottom += 0;
            if (i12 >= 21) {
                this.B = this.B.n(0, measuredHeight, 0, 0);
            }
        } else if (i12 >= 21) {
            this.B = new m0.b(this.B).d(h0.e.b(this.B.j(), this.B.l() + measuredHeight, this.B.k(), this.B.i() + 0)).a();
        } else {
            Rect rect2 = this.f1139x;
            rect2.top += measuredHeight;
            rect2.bottom += 0;
        }
        k(this.f1123h, this.f1136u, true, true, true, true);
        if (i12 >= 21 && !this.C.equals(this.B)) {
            q0.m0 m0Var = this.B;
            this.C = m0Var;
            q0.b0.i(this.f1123h, m0Var);
        } else if (i12 < 21 && !this.f1140y.equals(this.f1139x)) {
            this.f1140y.set(this.f1139x);
            this.f1123h.a(this.f1139x);
        }
        measureChildWithMargins(this.f1123h, i10, 0, i11, 0);
        e eVar2 = (e) this.f1123h.getLayoutParams();
        int max3 = Math.max(max, this.f1123h.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) eVar2).leftMargin + ((ViewGroup.MarginLayoutParams) eVar2).rightMargin);
        int max4 = Math.max(max2, this.f1123h.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) eVar2).topMargin + ((ViewGroup.MarginLayoutParams) eVar2).bottomMargin);
        int combineMeasuredStates2 = View.combineMeasuredStates(combineMeasuredStates, this.f1123h.getMeasuredState());
        setMeasuredDimension(View.resolveSizeAndState(Math.max(max3 + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i10, combineMeasuredStates2), View.resolveSizeAndState(Math.max(max4 + getPaddingTop() + getPaddingBottom(), getSuggestedMinimumHeight()), i11, combineMeasuredStates2 << 16));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, q0.s
    public boolean onNestedFling(View view, float f10, float f11, boolean z10) {
        if (!this.f1130o || !z10) {
            return false;
        }
        if (v(f11)) {
            j();
        } else {
            u();
        }
        this.f1131p = true;
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, q0.s
    public boolean onNestedPreFling(View view, float f10, float f11) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, q0.s
    public void onNestedPreScroll(View view, int i10, int i11, int[] iArr) {
    }

    @Override // q0.q
    public void onNestedPreScroll(View view, int i10, int i11, int[] iArr, int i12) {
        if (i12 == 0) {
            onNestedPreScroll(view, i10, i11, iArr);
        }
    }

    @Override // q0.r
    public void onNestedScroll(View view, int i10, int i11, int i12, int i13, int i14, int[] iArr) {
        onNestedScroll(view, i10, i11, i12, i13, i14);
    }

    @Override // q0.q
    public void onNestedScrollAccepted(View view, View view2, int i10, int i11) {
        if (i11 == 0) {
            onNestedScrollAccepted(view, view2, i10);
        }
    }

    @Override // q0.q
    public boolean onStartNestedScroll(View view, View view2, int i10, int i11) {
        return i11 == 0 && onStartNestedScroll(view, view2, i10);
    }

    @Override // q0.q
    public void onStopNestedScroll(View view, int i10) {
        if (i10 == 0) {
            onStopNestedScroll(view);
        }
    }

    @Override // android.view.View
    @Deprecated
    public void onWindowSystemUiVisibilityChanged(int i10) {
        if (Build.VERSION.SDK_INT >= 16) {
            super.onWindowSystemUiVisibilityChanged(i10);
        }
        t();
        int i11 = this.f1133r ^ i10;
        this.f1133r = i10;
        boolean z10 = (i10 & 4) == 0;
        boolean z11 = (i10 & 256) != 0;
        d dVar = this.D;
        if (dVar != null) {
            dVar.e(!z11);
            if (!z10 && z11) {
                this.D.f();
            } else {
                this.D.a();
            }
        }
        if ((i11 & 256) == 0 || this.D == null) {
            return;
        }
        q0.b0.q0(this);
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i10) {
        super.onWindowVisibilityChanged(i10);
        this.f1122g = i10;
        d dVar = this.D;
        if (dVar != null) {
            dVar.c(i10);
        }
    }

    public final void p(Context context) {
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(K);
        this.f1121f = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        Drawable drawable = obtainStyledAttributes.getDrawable(1);
        this.f1126k = drawable;
        setWillNotDraw(drawable == null);
        obtainStyledAttributes.recycle();
        this.f1127l = context.getApplicationInfo().targetSdkVersion < 19;
        this.E = new OverScroller(context);
    }

    public boolean q() {
        return this.f1128m;
    }

    public final void r() {
        o();
        postDelayed(this.I, 600L);
    }

    public final void s() {
        o();
        postDelayed(this.H, 600L);
    }

    public void setActionBarHideOffset(int i10) {
        o();
        this.f1124i.setTranslationY(-Math.max(0, Math.min(i10, this.f1124i.getHeight())));
    }

    public void setActionBarVisibilityCallback(d dVar) {
        this.D = dVar;
        if (getWindowToken() != null) {
            this.D.c(this.f1122g);
            int i10 = this.f1133r;
            if (i10 != 0) {
                onWindowSystemUiVisibilityChanged(i10);
                q0.b0.q0(this);
            }
        }
    }

    public void setHasNonEmbeddedTabs(boolean z10) {
        this.f1129n = z10;
    }

    public void setHideOnContentScrollEnabled(boolean z10) {
        if (z10 != this.f1130o) {
            this.f1130o = z10;
            if (z10) {
                return;
            }
            o();
            setActionBarHideOffset(0);
        }
    }

    public void setIcon(int i10) {
        t();
        this.f1125j.setIcon(i10);
    }

    public void setLogo(int i10) {
        t();
        this.f1125j.r(i10);
    }

    public void setOverlayMode(boolean z10) {
        this.f1128m = z10;
        this.f1127l = z10 && getContext().getApplicationInfo().targetSdkVersion < 19;
    }

    public void setShowingForActionMode(boolean z10) {
    }

    public void setUiOptions(int i10) {
    }

    @Override // androidx.appcompat.widget.b0
    public void setWindowCallback(Window.Callback callback) {
        t();
        this.f1125j.setWindowCallback(callback);
    }

    @Override // androidx.appcompat.widget.b0
    public void setWindowTitle(CharSequence charSequence) {
        t();
        this.f1125j.setWindowTitle(charSequence);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public void t() {
        if (this.f1123h == null) {
            this.f1123h = (ContentFrameLayout) findViewById(d.f.f5259b);
            this.f1124i = (ActionBarContainer) findViewById(d.f.f5260c);
            this.f1125j = n(findViewById(d.f.f5258a));
        }
    }

    public final void u() {
        o();
        this.H.run();
    }

    public final boolean v(float f10) {
        this.E.fling(0, 0, 0, (int) f10, 0, 0, Integer.MIN_VALUE, Api.BaseClientBuilder.API_PRIORITY_OTHER);
        return this.E.getFinalY() > this.f1124i.getHeight();
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new e(layoutParams);
    }

    @Override // q0.q
    public void onNestedScroll(View view, int i10, int i11, int i12, int i13, int i14) {
        if (i14 == 0) {
            onNestedScroll(view, i10, i11, i12, i13);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, q0.s
    public void onNestedScrollAccepted(View view, View view2, int i10) {
        this.J.b(view, view2, i10);
        this.f1132q = getActionBarHideOffset();
        o();
        d dVar = this.D;
        if (dVar != null) {
            dVar.b();
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, q0.s
    public boolean onStartNestedScroll(View view, View view2, int i10) {
        if ((i10 & 2) == 0 || this.f1124i.getVisibility() != 0) {
            return false;
        }
        return this.f1130o;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, q0.s
    public void onStopNestedScroll(View view) {
        if (this.f1130o && !this.f1131p) {
            if (this.f1132q <= this.f1124i.getHeight()) {
                s();
            } else {
                r();
            }
        }
        d dVar = this.D;
        if (dVar != null) {
            dVar.d();
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, q0.s
    public void onNestedScroll(View view, int i10, int i11, int i12, int i13) {
        int i14 = this.f1132q + i11;
        this.f1132q = i14;
        setActionBarHideOffset(i14);
    }

    public void setIcon(Drawable drawable) {
        t();
        this.f1125j.setIcon(drawable);
    }
}
