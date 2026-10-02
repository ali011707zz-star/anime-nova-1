package androidx.core.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.AnimationUtils;
import android.widget.EdgeEffect;
import android.widget.FrameLayout;
import android.widget.OverScroller;
import android.widget.ScrollView;
import com.google.android.gms.common.api.Api;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.google.android.material.progressindicator.BaseProgressIndicator;
import java.util.ArrayList;
import org.apache.http.impl.auth.NTLMEngineImpl;
import q0.b0;
import q0.o;
import q0.p;
import q0.r;
import q0.t;
import r0.c;
import r0.e;

/* loaded from: classes.dex */
public class NestedScrollView extends FrameLayout implements r, o {
    public static final a F = new a();
    public static final int[] G = {R.attr.fillViewport};
    public c A;
    public final t B;
    public final p C;
    public float D;
    public b E;

    /* renamed from: f, reason: collision with root package name */
    public long f1854f;

    /* renamed from: g, reason: collision with root package name */
    public final Rect f1855g;

    /* renamed from: h, reason: collision with root package name */
    public OverScroller f1856h;

    /* renamed from: i, reason: collision with root package name */
    public EdgeEffect f1857i;

    /* renamed from: j, reason: collision with root package name */
    public EdgeEffect f1858j;

    /* renamed from: k, reason: collision with root package name */
    public int f1859k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f1860l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f1861m;

    /* renamed from: n, reason: collision with root package name */
    public View f1862n;

    /* renamed from: o, reason: collision with root package name */
    public boolean f1863o;

    /* renamed from: p, reason: collision with root package name */
    public VelocityTracker f1864p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f1865q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f1866r;

    /* renamed from: s, reason: collision with root package name */
    public int f1867s;

    /* renamed from: t, reason: collision with root package name */
    public int f1868t;

    /* renamed from: u, reason: collision with root package name */
    public int f1869u;

    /* renamed from: v, reason: collision with root package name */
    public int f1870v;

    /* renamed from: w, reason: collision with root package name */
    public final int[] f1871w;

    /* renamed from: x, reason: collision with root package name */
    public final int[] f1872x;

    /* renamed from: y, reason: collision with root package name */
    public int f1873y;

    /* renamed from: z, reason: collision with root package name */
    public int f1874z;

    /* loaded from: classes.dex */
    public static class a extends q0.a {
        @Override // q0.a
        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(view, accessibilityEvent);
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            accessibilityEvent.setClassName(ScrollView.class.getName());
            accessibilityEvent.setScrollable(nestedScrollView.getScrollRange() > 0);
            accessibilityEvent.setScrollX(nestedScrollView.getScrollX());
            accessibilityEvent.setScrollY(nestedScrollView.getScrollY());
            e.a(accessibilityEvent, nestedScrollView.getScrollX());
            e.b(accessibilityEvent, nestedScrollView.getScrollRange());
        }

        @Override // q0.a
        public void onInitializeAccessibilityNodeInfo(View view, r0.c cVar) {
            int scrollRange;
            super.onInitializeAccessibilityNodeInfo(view, cVar);
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            cVar.b0(ScrollView.class.getName());
            if (!nestedScrollView.isEnabled() || (scrollRange = nestedScrollView.getScrollRange()) <= 0) {
                return;
            }
            cVar.w0(true);
            if (nestedScrollView.getScrollY() > 0) {
                cVar.b(c.a.f12772r);
                cVar.b(c.a.C);
            }
            if (nestedScrollView.getScrollY() < scrollRange) {
                cVar.b(c.a.f12771q);
                cVar.b(c.a.E);
            }
        }

        @Override // q0.a
        public boolean performAccessibilityAction(View view, int i10, Bundle bundle) {
            if (super.performAccessibilityAction(view, i10, bundle)) {
                return true;
            }
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            if (!nestedScrollView.isEnabled()) {
                return false;
            }
            if (i10 != 4096) {
                if (i10 == 8192 || i10 == 16908344) {
                    int max = Math.max(nestedScrollView.getScrollY() - ((nestedScrollView.getHeight() - nestedScrollView.getPaddingBottom()) - nestedScrollView.getPaddingTop()), 0);
                    if (max == nestedScrollView.getScrollY()) {
                        return false;
                    }
                    nestedScrollView.J(0, max, true);
                    return true;
                }
                if (i10 != 16908346) {
                    return false;
                }
            }
            int min = Math.min(nestedScrollView.getScrollY() + ((nestedScrollView.getHeight() - nestedScrollView.getPaddingBottom()) - nestedScrollView.getPaddingTop()), nestedScrollView.getScrollRange());
            if (min == nestedScrollView.getScrollY()) {
                return false;
            }
            nestedScrollView.J(0, min, true);
            return true;
        }
    }

    /* loaded from: classes.dex */
    public interface b {
        void a(NestedScrollView nestedScrollView, int i10, int i11, int i12, int i13);
    }

    /* loaded from: classes.dex */
    public static class c extends View.BaseSavedState {
        public static final Parcelable.Creator<c> CREATOR = new a();

        /* renamed from: f, reason: collision with root package name */
        public int f1875f;

        /* loaded from: classes.dex */
        public class a implements Parcelable.Creator<c> {
            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public c createFromParcel(Parcel parcel) {
                return new c(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public c[] newArray(int i10) {
                return new c[i10];
            }
        }

        public c(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "HorizontalScrollView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " scrollPosition=" + this.f1875f + "}";
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.f1875f);
        }

        public c(Parcel parcel) {
            super(parcel);
            this.f1875f = parcel.readInt();
        }
    }

    public NestedScrollView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, d0.a.f5458c);
    }

    public static int d(int i10, int i11, int i12) {
        if (i11 >= i12 || i10 < 0) {
            return 0;
        }
        return i11 + i10 > i12 ? i12 - i11 : i10;
    }

    private float getVerticalScrollFactorCompat() {
        if (this.D == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            TypedValue typedValue = new TypedValue();
            Context context = getContext();
            if (context.getTheme().resolveAttribute(R.attr.listPreferredItemHeight, typedValue, true)) {
                this.D = typedValue.getDimension(context.getResources().getDisplayMetrics());
            } else {
                throw new IllegalStateException("Expected theme to define listPreferredItemHeight.");
            }
        }
        return this.D;
    }

    public static boolean u(View view, View view2) {
        if (view == view2) {
            return true;
        }
        Object parent = view.getParent();
        return (parent instanceof ViewGroup) && u((View) parent, view2);
    }

    public final void A() {
        VelocityTracker velocityTracker = this.f1864p;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f1864p = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0061  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int B(int i10, float f10) {
        float d10;
        int round;
        float width = f10 / getWidth();
        float height = i10 / getHeight();
        float b10 = u0.e.b(this.f1857i);
        float f11 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        if (b10 != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            d10 = -u0.e.d(this.f1857i, -height, width);
            if (u0.e.b(this.f1857i) == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                this.f1857i.onRelease();
            }
        } else {
            if (u0.e.b(this.f1858j) != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                d10 = u0.e.d(this.f1858j, height, 1.0f - width);
                if (u0.e.b(this.f1858j) == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                    this.f1858j.onRelease();
                }
            }
            round = Math.round(f11 * getHeight());
            if (round != 0) {
                invalidate();
            }
            return round;
        }
        f11 = d10;
        round = Math.round(f11 * getHeight());
        if (round != 0) {
        }
        return round;
    }

    public final void C(boolean z10) {
        if (z10) {
            K(2, 1);
        } else {
            M(1);
        }
        this.f1874z = getScrollY();
        b0.k0(this);
    }

    public final boolean D(int i10, int i11, int i12) {
        int height = getHeight();
        int scrollY = getScrollY();
        int i13 = height + scrollY;
        boolean z10 = false;
        boolean z11 = i10 == 33;
        View l10 = l(z11, i11, i12);
        if (l10 == null) {
            l10 = this;
        }
        if (i11 < scrollY || i12 > i13) {
            h(z11 ? i11 - scrollY : i12 - i13);
            z10 = true;
        }
        if (l10 != findFocus()) {
            l10.requestFocus(i10);
        }
        return z10;
    }

    public final void E(View view) {
        view.getDrawingRect(this.f1855g);
        offsetDescendantRectToMyCoords(view, this.f1855g);
        int e10 = e(this.f1855g);
        if (e10 != 0) {
            scrollBy(0, e10);
        }
    }

    public final boolean F(Rect rect, boolean z10) {
        int e10 = e(rect);
        boolean z11 = e10 != 0;
        if (z11) {
            if (z10) {
                scrollBy(0, e10);
            } else {
                G(0, e10);
            }
        }
        return z11;
    }

    public final void G(int i10, int i11) {
        H(i10, i11, 250, false);
    }

    public final void H(int i10, int i11, int i12, boolean z10) {
        if (getChildCount() == 0) {
            return;
        }
        if (AnimationUtils.currentAnimationTimeMillis() - this.f1854f > 250) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int height = childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            int height2 = (getHeight() - getPaddingTop()) - getPaddingBottom();
            int scrollY = getScrollY();
            this.f1856h.startScroll(getScrollX(), scrollY, 0, Math.max(0, Math.min(i11 + scrollY, Math.max(0, height - height2))) - scrollY, i12);
            C(z10);
        } else {
            if (!this.f1856h.isFinished()) {
                a();
            }
            scrollBy(i10, i11);
        }
        this.f1854f = AnimationUtils.currentAnimationTimeMillis();
    }

    public void I(int i10, int i11, int i12, boolean z10) {
        H(i10 - getScrollX(), i11 - getScrollY(), i12, z10);
    }

    public void J(int i10, int i11, boolean z10) {
        I(i10, i11, 250, z10);
    }

    public boolean K(int i10, int i11) {
        return this.C.q(i10, i11);
    }

    public final boolean L(MotionEvent motionEvent) {
        boolean z10;
        if (u0.e.b(this.f1857i) != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            u0.e.d(this.f1857i, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, motionEvent.getY() / getHeight());
            z10 = true;
        } else {
            z10 = false;
        }
        if (u0.e.b(this.f1858j) == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            return z10;
        }
        u0.e.d(this.f1858j, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, 1.0f - (motionEvent.getY() / getHeight()));
        return true;
    }

    public void M(int i10) {
        this.C.s(i10);
    }

    public final void a() {
        this.f1856h.abortAnimation();
        M(1);
    }

    @Override // android.view.ViewGroup
    public void addView(View view) {
        if (getChildCount() <= 0) {
            super.addView(view);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }

    public boolean b(int i10) {
        View findFocus = findFocus();
        if (findFocus == this) {
            findFocus = null;
        }
        View findNextFocus = FocusFinder.getInstance().findNextFocus(this, findFocus, i10);
        int maxScrollAmount = getMaxScrollAmount();
        if (findNextFocus != null && v(findNextFocus, maxScrollAmount, getHeight())) {
            findNextFocus.getDrawingRect(this.f1855g);
            offsetDescendantRectToMyCoords(findNextFocus, this.f1855g);
            h(e(this.f1855g));
            findNextFocus.requestFocus(i10);
        } else {
            if (i10 == 33 && getScrollY() < maxScrollAmount) {
                maxScrollAmount = getScrollY();
            } else if (i10 == 130 && getChildCount() > 0) {
                View childAt = getChildAt(0);
                maxScrollAmount = Math.min((childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin) - ((getScrollY() + getHeight()) - getPaddingBottom()), maxScrollAmount);
            }
            if (maxScrollAmount == 0) {
                return false;
            }
            if (i10 != 130) {
                maxScrollAmount = -maxScrollAmount;
            }
            h(maxScrollAmount);
        }
        if (findFocus == null || !findFocus.isFocused() || !t(findFocus)) {
            return true;
        }
        int descendantFocusability = getDescendantFocusability();
        setDescendantFocusability(131072);
        requestFocus();
        setDescendantFocusability(descendantFocusability);
        return true;
    }

    public final boolean c() {
        if (getChildCount() <= 0) {
            return false;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        return (childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin > (getHeight() - getPaddingTop()) - getPaddingBottom();
    }

    @Override // android.view.View
    public int computeHorizontalScrollExtent() {
        return super.computeHorizontalScrollExtent();
    }

    @Override // android.view.View
    public int computeHorizontalScrollOffset() {
        return super.computeHorizontalScrollOffset();
    }

    @Override // android.view.View
    public int computeHorizontalScrollRange() {
        return super.computeHorizontalScrollRange();
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.f1856h.isFinished()) {
            return;
        }
        this.f1856h.computeScrollOffset();
        int currY = this.f1856h.getCurrY();
        int i10 = currY - this.f1874z;
        this.f1874z = currY;
        int[] iArr = this.f1872x;
        boolean z10 = false;
        iArr[1] = 0;
        f(0, i10, iArr, null, 1);
        int i11 = i10 - this.f1872x[1];
        int scrollRange = getScrollRange();
        if (i11 != 0) {
            int scrollY = getScrollY();
            y(0, i11, getScrollX(), scrollY, 0, scrollRange, 0, 0, false);
            int scrollY2 = getScrollY() - scrollY;
            int i12 = i11 - scrollY2;
            int[] iArr2 = this.f1872x;
            iArr2[1] = 0;
            g(0, scrollY2, 0, i12, this.f1871w, 1, iArr2);
            i11 = i12 - this.f1872x[1];
        }
        if (i11 != 0) {
            int overScrollMode = getOverScrollMode();
            if (overScrollMode == 0 || (overScrollMode == 1 && scrollRange > 0)) {
                z10 = true;
            }
            if (z10) {
                if (i11 < 0) {
                    if (this.f1857i.isFinished()) {
                        this.f1857i.onAbsorb((int) this.f1856h.getCurrVelocity());
                    }
                } else if (this.f1858j.isFinished()) {
                    this.f1858j.onAbsorb((int) this.f1856h.getCurrVelocity());
                }
            }
            a();
        }
        if (!this.f1856h.isFinished()) {
            b0.k0(this);
        } else {
            M(1);
        }
    }

    @Override // android.view.View
    public int computeVerticalScrollExtent() {
        return super.computeVerticalScrollExtent();
    }

    @Override // android.view.View
    public int computeVerticalScrollOffset() {
        return Math.max(0, super.computeVerticalScrollOffset());
    }

    @Override // android.view.View
    public int computeVerticalScrollRange() {
        int childCount = getChildCount();
        int height = (getHeight() - getPaddingBottom()) - getPaddingTop();
        if (childCount == 0) {
            return height;
        }
        View childAt = getChildAt(0);
        int bottom = childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin;
        int scrollY = getScrollY();
        int max = Math.max(0, bottom - height);
        return scrollY < 0 ? bottom - scrollY : scrollY > max ? bottom + (scrollY - max) : bottom;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || k(keyEvent);
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f10, float f11, boolean z10) {
        return this.C.a(f10, f11, z10);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f10, float f11) {
        return this.C.b(f10, f11);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i10, int i11, int[] iArr, int[] iArr2) {
        return f(i10, i11, iArr, iArr2, 0);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i10, int i11, int i12, int i13, int[] iArr) {
        return this.C.f(i10, i11, i12, i13, iArr);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        int paddingLeft;
        super.draw(canvas);
        int scrollY = getScrollY();
        int i10 = 0;
        if (!this.f1857i.isFinished()) {
            int save = canvas.save();
            int width = getWidth();
            int height = getHeight();
            int min = Math.min(0, scrollY);
            int i11 = Build.VERSION.SDK_INT;
            if (i11 < 21 || getClipToPadding()) {
                width -= getPaddingLeft() + getPaddingRight();
                paddingLeft = getPaddingLeft() + 0;
            } else {
                paddingLeft = 0;
            }
            if (i11 >= 21 && getClipToPadding()) {
                height -= getPaddingTop() + getPaddingBottom();
                min += getPaddingTop();
            }
            canvas.translate(paddingLeft, min);
            this.f1857i.setSize(width, height);
            if (this.f1857i.draw(canvas)) {
                b0.k0(this);
            }
            canvas.restoreToCount(save);
        }
        if (this.f1858j.isFinished()) {
            return;
        }
        int save2 = canvas.save();
        int width2 = getWidth();
        int height2 = getHeight();
        int max = Math.max(getScrollRange(), scrollY) + height2;
        int i12 = Build.VERSION.SDK_INT;
        if (i12 < 21 || getClipToPadding()) {
            width2 -= getPaddingLeft() + getPaddingRight();
            i10 = 0 + getPaddingLeft();
        }
        if (i12 >= 21 && getClipToPadding()) {
            height2 -= getPaddingTop() + getPaddingBottom();
            max -= getPaddingBottom();
        }
        canvas.translate(i10 - width2, max);
        canvas.rotate(180.0f, width2, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        this.f1858j.setSize(width2, height2);
        if (this.f1858j.draw(canvas)) {
            b0.k0(this);
        }
        canvas.restoreToCount(save2);
    }

    public int e(Rect rect) {
        int i10;
        int i11;
        if (getChildCount() == 0) {
            return 0;
        }
        int height = getHeight();
        int scrollY = getScrollY();
        int i12 = scrollY + height;
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        if (rect.top > 0) {
            scrollY += verticalFadingEdgeLength;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        int i13 = rect.bottom < (childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin ? i12 - verticalFadingEdgeLength : i12;
        int i14 = rect.bottom;
        if (i14 > i13 && rect.top > scrollY) {
            if (rect.height() > height) {
                i11 = rect.top - scrollY;
            } else {
                i11 = rect.bottom - i13;
            }
            return Math.min(i11 + 0, (childAt.getBottom() + layoutParams.bottomMargin) - i12);
        }
        if (rect.top >= scrollY || i14 >= i13) {
            return 0;
        }
        if (rect.height() > height) {
            i10 = 0 - (i13 - rect.bottom);
        } else {
            i10 = 0 - (scrollY - rect.top);
        }
        return Math.max(i10, -getScrollY());
    }

    public boolean f(int i10, int i11, int[] iArr, int[] iArr2, int i12) {
        return this.C.d(i10, i11, iArr, iArr2, i12);
    }

    public void g(int i10, int i11, int i12, int i13, int[] iArr, int i14, int[] iArr2) {
        this.C.e(i10, i11, i12, i13, iArr, i14, iArr2);
    }

    @Override // android.view.View
    public float getBottomFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int bottom = ((childAt.getBottom() + layoutParams.bottomMargin) - getScrollY()) - (getHeight() - getPaddingBottom());
        if (bottom < verticalFadingEdgeLength) {
            return bottom / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    public int getMaxScrollAmount() {
        return (int) (getHeight() * 0.5f);
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.B.a();
    }

    public int getScrollRange() {
        if (getChildCount() <= 0) {
            return 0;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        return Math.max(0, ((childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin) - ((getHeight() - getPaddingTop()) - getPaddingBottom()));
    }

    @Override // android.view.View
    public float getTopFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        }
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int scrollY = getScrollY();
        if (scrollY < verticalFadingEdgeLength) {
            return scrollY / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    public final void h(int i10) {
        if (i10 != 0) {
            if (this.f1866r) {
                G(0, i10);
            } else {
                scrollBy(0, i10);
            }
        }
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return o(0);
    }

    public final boolean i(int i10) {
        if (u0.e.b(this.f1857i) != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            this.f1857i.onAbsorb(i10);
        } else {
            if (u0.e.b(this.f1858j) == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                return false;
            }
            this.f1858j.onAbsorb(-i10);
        }
        return true;
    }

    @Override // android.view.View, q0.o
    public boolean isNestedScrollingEnabled() {
        return this.C.m();
    }

    public final void j() {
        this.f1863o = false;
        A();
        M(0);
        this.f1857i.onRelease();
        this.f1858j.onRelease();
    }

    public boolean k(KeyEvent keyEvent) {
        this.f1855g.setEmpty();
        if (!c()) {
            if (!isFocused() || keyEvent.getKeyCode() == 4) {
                return false;
            }
            View findFocus = findFocus();
            if (findFocus == this) {
                findFocus = null;
            }
            View findNextFocus = FocusFinder.getInstance().findNextFocus(this, findFocus, 130);
            return (findNextFocus == null || findNextFocus == this || !findNextFocus.requestFocus(130)) ? false : true;
        }
        if (keyEvent.getAction() != 0) {
            return false;
        }
        int keyCode = keyEvent.getKeyCode();
        if (keyCode == 19) {
            if (!keyEvent.isAltPressed()) {
                return b(33);
            }
            return n(33);
        }
        if (keyCode == 20) {
            if (!keyEvent.isAltPressed()) {
                return b(130);
            }
            return n(130);
        }
        if (keyCode != 62) {
            return false;
        }
        z(keyEvent.isShiftPressed() ? 33 : 130);
        return false;
    }

    public final View l(boolean z10, int i10, int i11) {
        ArrayList focusables = getFocusables(2);
        int size = focusables.size();
        View view = null;
        boolean z11 = false;
        for (int i12 = 0; i12 < size; i12++) {
            View view2 = (View) focusables.get(i12);
            int top = view2.getTop();
            int bottom = view2.getBottom();
            if (i10 < bottom && top < i11) {
                boolean z12 = i10 < top && bottom < i11;
                if (view == null) {
                    view = view2;
                    z11 = z12;
                } else {
                    boolean z13 = (z10 && top < view.getTop()) || (!z10 && bottom > view.getBottom());
                    if (z11) {
                        if (z12) {
                            if (!z13) {
                            }
                            view = view2;
                        }
                    } else if (z12) {
                        view = view2;
                        z11 = true;
                    } else {
                        if (!z13) {
                        }
                        view = view2;
                    }
                }
            }
        }
        return view;
    }

    public void m(int i10) {
        if (getChildCount() > 0) {
            this.f1856h.fling(getScrollX(), getScrollY(), 0, i10, 0, 0, Integer.MIN_VALUE, Api.BaseClientBuilder.API_PRIORITY_OTHER, 0, 0);
            C(true);
        }
    }

    @Override // android.view.ViewGroup
    public void measureChild(View view, int i10, int i11) {
        view.measure(FrameLayout.getChildMeasureSpec(i10, getPaddingLeft() + getPaddingRight(), view.getLayoutParams().width), View.MeasureSpec.makeMeasureSpec(0, 0));
    }

    @Override // android.view.ViewGroup
    public void measureChildWithMargins(View view, int i10, int i11, int i12, int i13) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(FrameLayout.getChildMeasureSpec(i10, getPaddingLeft() + getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i11, marginLayoutParams.width), View.MeasureSpec.makeMeasureSpec(marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, 0));
    }

    public boolean n(int i10) {
        int childCount;
        boolean z10 = i10 == 130;
        int height = getHeight();
        Rect rect = this.f1855g;
        rect.top = 0;
        rect.bottom = height;
        if (z10 && (childCount = getChildCount()) > 0) {
            View childAt = getChildAt(childCount - 1);
            this.f1855g.bottom = childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin + getPaddingBottom();
            Rect rect2 = this.f1855g;
            rect2.top = rect2.bottom - height;
        }
        Rect rect3 = this.f1855g;
        return D(i10, rect3.top, rect3.bottom);
    }

    public boolean o(int i10) {
        return this.C.l(i10);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f1861m = false;
    }

    @Override // android.view.View
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        if ((motionEvent.getSource() & 2) != 0 && motionEvent.getAction() == 8 && !this.f1863o) {
            float axisValue = motionEvent.getAxisValue(9);
            if (axisValue != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                int verticalScrollFactorCompat = (int) (axisValue * getVerticalScrollFactorCompat());
                int scrollRange = getScrollRange();
                int scrollY = getScrollY();
                int i10 = scrollY - verticalScrollFactorCompat;
                if (i10 < 0) {
                    scrollRange = 0;
                } else if (i10 <= scrollRange) {
                    scrollRange = i10;
                }
                if (scrollRange != scrollY) {
                    super.scrollTo(getScrollX(), scrollRange);
                    return true;
                }
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        boolean z10 = true;
        if (action == 2 && this.f1863o) {
            return true;
        }
        int i10 = action & BaseProgressIndicator.MAX_ALPHA;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    int i11 = this.f1870v;
                    if (i11 != -1) {
                        int findPointerIndex = motionEvent.findPointerIndex(i11);
                        if (findPointerIndex == -1) {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("Invalid pointerId=");
                            sb2.append(i11);
                            sb2.append(" in onInterceptTouchEvent");
                        } else {
                            int y10 = (int) motionEvent.getY(findPointerIndex);
                            if (Math.abs(y10 - this.f1859k) > this.f1867s && (2 & getNestedScrollAxes()) == 0) {
                                this.f1863o = true;
                                this.f1859k = y10;
                                s();
                                this.f1864p.addMovement(motionEvent);
                                this.f1873y = 0;
                                ViewParent parent = getParent();
                                if (parent != null) {
                                    parent.requestDisallowInterceptTouchEvent(true);
                                }
                            }
                        }
                    }
                } else if (i10 != 3) {
                    if (i10 == 6) {
                        x(motionEvent);
                    }
                }
            }
            this.f1863o = false;
            this.f1870v = -1;
            A();
            if (this.f1856h.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                b0.k0(this);
            }
            M(0);
        } else {
            int y11 = (int) motionEvent.getY();
            if (!p((int) motionEvent.getX(), y11)) {
                if (!L(motionEvent) && this.f1856h.isFinished()) {
                    z10 = false;
                }
                this.f1863o = z10;
                A();
            } else {
                this.f1859k = y11;
                this.f1870v = motionEvent.getPointerId(0);
                q();
                this.f1864p.addMovement(motionEvent);
                this.f1856h.computeScrollOffset();
                if (!L(motionEvent) && this.f1856h.isFinished()) {
                    z10 = false;
                }
                this.f1863o = z10;
                K(2, 0);
            }
        }
        return this.f1863o;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        int i14 = 0;
        this.f1860l = false;
        View view = this.f1862n;
        if (view != null && u(view, this)) {
            E(this.f1862n);
        }
        this.f1862n = null;
        if (!this.f1861m) {
            if (this.A != null) {
                scrollTo(getScrollX(), this.A.f1875f);
                this.A = null;
            }
            if (getChildCount() > 0) {
                View childAt = getChildAt(0);
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
                i14 = childAt.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            }
            int paddingTop = ((i13 - i11) - getPaddingTop()) - getPaddingBottom();
            int scrollY = getScrollY();
            int d10 = d(scrollY, paddingTop, i14);
            if (d10 != scrollY) {
                scrollTo(getScrollX(), d10);
            }
        }
        scrollTo(getScrollX(), getScrollY());
        this.f1861m = true;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (this.f1865q && View.MeasureSpec.getMode(i11) != 0 && getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int measuredHeight2 = (((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom()) - layoutParams.topMargin) - layoutParams.bottomMargin;
            if (measuredHeight < measuredHeight2) {
                childAt.measure(FrameLayout.getChildMeasureSpec(i10, getPaddingLeft() + getPaddingRight() + layoutParams.leftMargin + layoutParams.rightMargin, layoutParams.width), View.MeasureSpec.makeMeasureSpec(measuredHeight2, NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH));
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, q0.s
    public boolean onNestedFling(View view, float f10, float f11, boolean z10) {
        if (z10) {
            return false;
        }
        dispatchNestedFling(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, f11, true);
        m((int) f11);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, q0.s
    public boolean onNestedPreFling(View view, float f10, float f11) {
        return dispatchNestedPreFling(f10, f11);
    }

    @Override // q0.q
    public void onNestedPreScroll(View view, int i10, int i11, int[] iArr, int i12) {
        f(i10, i11, iArr, null, i12);
    }

    @Override // q0.r
    public void onNestedScroll(View view, int i10, int i11, int i12, int i13, int i14, int[] iArr) {
        w(i13, i14, iArr);
    }

    @Override // q0.q
    public void onNestedScrollAccepted(View view, View view2, int i10, int i11) {
        this.B.c(view, view2, i10, i11);
        K(2, i11);
    }

    @Override // android.view.View
    public void onOverScrolled(int i10, int i11, boolean z10, boolean z11) {
        super.scrollTo(i10, i11);
    }

    @Override // android.view.ViewGroup
    public boolean onRequestFocusInDescendants(int i10, Rect rect) {
        View findNextFocusFromRect;
        if (i10 == 2) {
            i10 = 130;
        } else if (i10 == 1) {
            i10 = 33;
        }
        if (rect == null) {
            findNextFocusFromRect = FocusFinder.getInstance().findNextFocus(this, null, i10);
        } else {
            findNextFocusFromRect = FocusFinder.getInstance().findNextFocusFromRect(this, rect, i10);
        }
        if (findNextFocusFromRect == null || t(findNextFocusFromRect)) {
            return false;
        }
        return findNextFocusFromRect.requestFocus(i10, rect);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof c)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        c cVar = (c) parcelable;
        super.onRestoreInstanceState(cVar.getSuperState());
        this.A = cVar;
        requestLayout();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        c cVar = new c(super.onSaveInstanceState());
        cVar.f1875f = getScrollY();
        return cVar;
    }

    @Override // android.view.View
    public void onScrollChanged(int i10, int i11, int i12, int i13) {
        super.onScrollChanged(i10, i11, i12, i13);
        b bVar = this.E;
        if (bVar != null) {
            bVar.a(this, i10, i11, i12, i13);
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        View findFocus = findFocus();
        if (findFocus == null || this == findFocus || !v(findFocus, 0, i13)) {
            return;
        }
        findFocus.getDrawingRect(this.f1855g);
        offsetDescendantRectToMyCoords(findFocus, this.f1855g);
        h(e(this.f1855g));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, q0.s
    public boolean onStartNestedScroll(View view, View view2, int i10) {
        return onStartNestedScroll(view, view2, i10, 0);
    }

    @Override // q0.q
    public boolean onStartNestedScroll(View view, View view2, int i10, int i11) {
        return (i10 & 2) != 0;
    }

    @Override // q0.q
    public void onStopNestedScroll(View view, int i10) {
        this.B.e(view, i10);
        M(i10);
    }

    /* JADX WARN: Removed duplicated region for block: B:73:0x01cf  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouchEvent(MotionEvent motionEvent) {
        ViewParent parent;
        s();
        int actionMasked = motionEvent.getActionMasked();
        boolean z10 = false;
        if (actionMasked == 0) {
            this.f1873y = 0;
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        obtain.offsetLocation(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, this.f1873y);
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                VelocityTracker velocityTracker = this.f1864p;
                velocityTracker.computeCurrentVelocity(1000, this.f1869u);
                int yVelocity = (int) velocityTracker.getYVelocity(this.f1870v);
                if (Math.abs(yVelocity) >= this.f1868t) {
                    if (!i(yVelocity)) {
                        int i10 = -yVelocity;
                        float f10 = i10;
                        if (!dispatchNestedPreFling(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, f10)) {
                            dispatchNestedFling(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, f10, true);
                            m(i10);
                        }
                    }
                } else if (this.f1856h.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                    b0.k0(this);
                }
                this.f1870v = -1;
                j();
            } else if (actionMasked == 2) {
                int findPointerIndex = motionEvent.findPointerIndex(this.f1870v);
                if (findPointerIndex == -1) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Invalid pointerId=");
                    sb2.append(this.f1870v);
                    sb2.append(" in onTouchEvent");
                } else {
                    int y10 = (int) motionEvent.getY(findPointerIndex);
                    int i11 = this.f1859k - y10;
                    int B = i11 - B(i11, motionEvent.getX(findPointerIndex));
                    if (!this.f1863o && Math.abs(B) > this.f1867s) {
                        ViewParent parent2 = getParent();
                        if (parent2 != null) {
                            parent2.requestDisallowInterceptTouchEvent(true);
                        }
                        this.f1863o = true;
                        B = B > 0 ? B - this.f1867s : B + this.f1867s;
                    }
                    int i12 = B;
                    if (this.f1863o) {
                        if (f(0, i12, this.f1872x, this.f1871w, 0)) {
                            i12 -= this.f1872x[1];
                            this.f1873y += this.f1871w[1];
                        }
                        int i13 = i12;
                        this.f1859k = y10 - this.f1871w[1];
                        int scrollY = getScrollY();
                        int scrollRange = getScrollRange();
                        int overScrollMode = getOverScrollMode();
                        boolean z11 = overScrollMode == 0 || (overScrollMode == 1 && scrollRange > 0);
                        boolean z12 = y(0, i13, 0, getScrollY(), 0, scrollRange, 0, 0, true) && !o(0);
                        int scrollY2 = getScrollY() - scrollY;
                        int[] iArr = this.f1872x;
                        iArr[1] = 0;
                        g(0, scrollY2, 0, i13 - scrollY2, this.f1871w, 0, iArr);
                        int i14 = this.f1859k;
                        int[] iArr2 = this.f1871w;
                        this.f1859k = i14 - iArr2[1];
                        this.f1873y += iArr2[1];
                        if (z11) {
                            int i15 = i13 - this.f1872x[1];
                            int i16 = scrollY + i15;
                            if (i16 < 0) {
                                u0.e.d(this.f1857i, (-i15) / getHeight(), motionEvent.getX(findPointerIndex) / getWidth());
                                if (!this.f1858j.isFinished()) {
                                    this.f1858j.onRelease();
                                }
                            } else if (i16 > scrollRange) {
                                u0.e.d(this.f1858j, i15 / getHeight(), 1.0f - (motionEvent.getX(findPointerIndex) / getWidth()));
                                if (!this.f1857i.isFinished()) {
                                    this.f1857i.onRelease();
                                }
                            }
                            if (!this.f1857i.isFinished() || !this.f1858j.isFinished()) {
                                b0.k0(this);
                                if (z10) {
                                    this.f1864p.clear();
                                }
                            }
                        }
                        z10 = z12;
                        if (z10) {
                        }
                    }
                }
            } else if (actionMasked == 3) {
                if (this.f1863o && getChildCount() > 0 && this.f1856h.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                    b0.k0(this);
                }
                this.f1870v = -1;
                j();
            } else if (actionMasked == 5) {
                int actionIndex = motionEvent.getActionIndex();
                this.f1859k = (int) motionEvent.getY(actionIndex);
                this.f1870v = motionEvent.getPointerId(actionIndex);
            } else if (actionMasked == 6) {
                x(motionEvent);
                this.f1859k = (int) motionEvent.getY(motionEvent.findPointerIndex(this.f1870v));
            }
        } else {
            if (getChildCount() == 0) {
                return false;
            }
            if (this.f1863o && (parent = getParent()) != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
            if (!this.f1856h.isFinished()) {
                a();
            }
            this.f1859k = (int) motionEvent.getY();
            this.f1870v = motionEvent.getPointerId(0);
            K(2, 0);
        }
        VelocityTracker velocityTracker2 = this.f1864p;
        if (velocityTracker2 != null) {
            velocityTracker2.addMovement(obtain);
        }
        obtain.recycle();
        return true;
    }

    public final boolean p(int i10, int i11) {
        if (getChildCount() <= 0) {
            return false;
        }
        int scrollY = getScrollY();
        View childAt = getChildAt(0);
        return i11 >= childAt.getTop() - scrollY && i11 < childAt.getBottom() - scrollY && i10 >= childAt.getLeft() && i10 < childAt.getRight();
    }

    public final void q() {
        VelocityTracker velocityTracker = this.f1864p;
        if (velocityTracker == null) {
            this.f1864p = VelocityTracker.obtain();
        } else {
            velocityTracker.clear();
        }
    }

    public final void r() {
        this.f1856h = new OverScroller(getContext());
        setFocusable(true);
        setDescendantFocusability(262144);
        setWillNotDraw(false);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        this.f1867s = viewConfiguration.getScaledTouchSlop();
        this.f1868t = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f1869u = viewConfiguration.getScaledMaximumFlingVelocity();
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        if (!this.f1860l) {
            E(view2);
        } else {
            this.f1862n = view2;
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z10) {
        rect.offset(view.getLeft() - view.getScrollX(), view.getTop() - view.getScrollY());
        return F(rect, z10);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z10) {
        if (z10) {
            A();
        }
        super.requestDisallowInterceptTouchEvent(z10);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        this.f1860l = true;
        super.requestLayout();
    }

    public final void s() {
        if (this.f1864p == null) {
            this.f1864p = VelocityTracker.obtain();
        }
    }

    @Override // android.view.View
    public void scrollTo(int i10, int i11) {
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int width = (getWidth() - getPaddingLeft()) - getPaddingRight();
            int width2 = childAt.getWidth() + layoutParams.leftMargin + layoutParams.rightMargin;
            int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
            int height2 = childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            int d10 = d(i10, width, width2);
            int d11 = d(i11, height, height2);
            if (d10 == getScrollX() && d11 == getScrollY()) {
                return;
            }
            super.scrollTo(d10, d11);
        }
    }

    public void setFillViewport(boolean z10) {
        if (z10 != this.f1865q) {
            this.f1865q = z10;
            requestLayout();
        }
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z10) {
        this.C.n(z10);
    }

    public void setOnScrollChangeListener(b bVar) {
        this.E = bVar;
    }

    public void setSmoothScrollingEnabled(boolean z10) {
        this.f1866r = z10;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return true;
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i10) {
        return K(i10, 0);
    }

    @Override // android.view.View, q0.o
    public void stopNestedScroll() {
        M(0);
    }

    public final boolean t(View view) {
        return !v(view, 0, getHeight());
    }

    public final boolean v(View view, int i10, int i11) {
        view.getDrawingRect(this.f1855g);
        offsetDescendantRectToMyCoords(view, this.f1855g);
        return this.f1855g.bottom + i10 >= getScrollY() && this.f1855g.top - i10 <= getScrollY() + i11;
    }

    public final void w(int i10, int i11, int[] iArr) {
        int scrollY = getScrollY();
        scrollBy(0, i10);
        int scrollY2 = getScrollY() - scrollY;
        if (iArr != null) {
            iArr[1] = iArr[1] + scrollY2;
        }
        this.C.e(0, scrollY2, 0, i10 - scrollY2, null, i11, iArr);
    }

    public final void x(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f1870v) {
            int i10 = actionIndex == 0 ? 1 : 0;
            this.f1859k = (int) motionEvent.getY(i10);
            this.f1870v = motionEvent.getPointerId(i10);
            VelocityTracker velocityTracker = this.f1864p;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0083 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x005a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean y(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, boolean z10) {
        boolean z11;
        boolean z12;
        int overScrollMode = getOverScrollMode();
        boolean z13 = computeHorizontalScrollRange() > computeHorizontalScrollExtent();
        boolean z14 = computeVerticalScrollRange() > computeVerticalScrollExtent();
        boolean z15 = overScrollMode == 0 || (overScrollMode == 1 && z13);
        boolean z16 = overScrollMode == 0 || (overScrollMode == 1 && z14);
        int i18 = i12 + i10;
        int i19 = !z15 ? 0 : i16;
        int i20 = i13 + i11;
        int i21 = !z16 ? 0 : i17;
        int i22 = -i19;
        int i23 = i19 + i14;
        int i24 = -i21;
        int i25 = i21 + i15;
        if (i18 > i23) {
            i18 = i23;
        } else {
            if (i18 >= i22) {
                z11 = false;
                if (i20 <= i25) {
                    i20 = i25;
                } else {
                    if (i20 >= i24) {
                        z12 = false;
                        if (z12 && !o(1)) {
                            this.f1856h.springBack(i18, i20, 0, 0, 0, getScrollRange());
                        }
                        onOverScrolled(i18, i20, z11, z12);
                        return !z11 || z12;
                    }
                    i20 = i24;
                }
                z12 = true;
                if (z12) {
                    this.f1856h.springBack(i18, i20, 0, 0, 0, getScrollRange());
                }
                onOverScrolled(i18, i20, z11, z12);
                if (z11) {
                }
            }
            i18 = i22;
        }
        z11 = true;
        if (i20 <= i25) {
        }
        z12 = true;
        if (z12) {
        }
        onOverScrolled(i18, i20, z11, z12);
        if (z11) {
        }
    }

    public boolean z(int i10) {
        boolean z10 = i10 == 130;
        int height = getHeight();
        if (z10) {
            this.f1855g.top = getScrollY() + height;
            int childCount = getChildCount();
            if (childCount > 0) {
                View childAt = getChildAt(childCount - 1);
                int bottom = childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin + getPaddingBottom();
                Rect rect = this.f1855g;
                if (rect.top + height > bottom) {
                    rect.top = bottom - height;
                }
            }
        } else {
            this.f1855g.top = getScrollY() - height;
            Rect rect2 = this.f1855g;
            if (rect2.top < 0) {
                rect2.top = 0;
            }
        }
        Rect rect3 = this.f1855g;
        int i11 = rect3.top;
        int i12 = height + i11;
        rect3.bottom = i12;
        return D(i10, i11, i12);
    }

    public NestedScrollView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f1855g = new Rect();
        this.f1860l = true;
        this.f1861m = false;
        this.f1862n = null;
        this.f1863o = false;
        this.f1866r = true;
        this.f1870v = -1;
        this.f1871w = new int[2];
        this.f1872x = new int[2];
        this.f1857i = u0.e.a(context, attributeSet);
        this.f1858j = u0.e.a(context, attributeSet);
        r();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, G, i10, 0);
        setFillViewport(obtainStyledAttributes.getBoolean(0, false));
        obtainStyledAttributes.recycle();
        this.B = new t(this);
        this.C = new p(this);
        setNestedScrollingEnabled(true);
        b0.t0(this, F);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, q0.s
    public void onNestedPreScroll(View view, int i10, int i11, int[] iArr) {
        onNestedPreScroll(view, i10, i11, iArr, 0);
    }

    @Override // q0.q
    public void onNestedScroll(View view, int i10, int i11, int i12, int i13, int i14) {
        w(i13, i14, null);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, q0.s
    public void onNestedScroll(View view, int i10, int i11, int i12, int i13) {
        w(i13, 0, null);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, q0.s
    public void onNestedScrollAccepted(View view, View view2, int i10) {
        onNestedScrollAccepted(view, view2, i10, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, q0.s
    public void onStopNestedScroll(View view) {
        onStopNestedScroll(view, 0);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i10) {
        if (getChildCount() <= 0) {
            super.addView(view, i10);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() <= 0) {
            super.addView(view, layoutParams);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() <= 0) {
            super.addView(view, i10, layoutParams);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }
}
