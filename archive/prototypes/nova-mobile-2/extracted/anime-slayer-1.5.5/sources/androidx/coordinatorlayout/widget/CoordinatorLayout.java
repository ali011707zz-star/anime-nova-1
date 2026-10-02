package androidx.coordinatorlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.google.android.material.progressindicator.BaseProgressIndicator;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import q0.b0;
import q0.m0;
import q0.q;
import q0.r;
import q0.t;
import q0.u;

/* loaded from: classes.dex */
public class CoordinatorLayout extends ViewGroup implements q, r {
    public static final Class<?>[] CONSTRUCTOR_PARAMS;
    public static final int EVENT_NESTED_SCROLL = 1;
    public static final int EVENT_PRE_DRAW = 0;
    public static final int EVENT_VIEW_REMOVED = 2;
    public static final String TAG = "CoordinatorLayout";
    public static final Comparator<View> TOP_SORTED_CHILDREN_COMPARATOR;
    private static final int TYPE_ON_INTERCEPT = 0;
    private static final int TYPE_ON_TOUCH = 1;
    public static final String WIDGET_PACKAGE_NAME;
    public static final ThreadLocal<Map<String, Constructor<c>>> sConstructors;
    private static final p0.f<Rect> sRectPool;
    private u mApplyWindowInsetsListener;
    private final int[] mBehaviorConsumed;
    private View mBehaviorTouchView;
    private final c0.a<View> mChildDag;
    private final List<View> mDependencySortedChildren;
    private boolean mDisallowInterceptReset;
    private boolean mDrawStatusBarBackground;
    private boolean mIsAttachedToWindow;
    private int[] mKeylines;
    private m0 mLastInsets;
    private boolean mNeedsPreDrawListener;
    private final t mNestedScrollingParentHelper;
    private View mNestedScrollingTarget;
    private final int[] mNestedScrollingV2ConsumedCompat;
    public ViewGroup.OnHierarchyChangeListener mOnHierarchyChangeListener;
    private g mOnPreDrawListener;
    private Paint mScrimPaint;
    private Drawable mStatusBarBackground;
    private final List<View> mTempDependenciesList;
    private final List<View> mTempList1;

    /* loaded from: classes.dex */
    public class a implements u {
        public a() {
        }

        @Override // q0.u
        public m0 onApplyWindowInsets(View view, m0 m0Var) {
            return CoordinatorLayout.this.setWindowInsets(m0Var);
        }
    }

    /* loaded from: classes.dex */
    public interface b {
        c getBehavior();
    }

    /* loaded from: classes.dex */
    public static abstract class c<V extends View> {
        public c() {
        }

        public static Object getTag(View view) {
            return ((f) view.getLayoutParams()).f1828r;
        }

        public static void setTag(View view, Object obj) {
            ((f) view.getLayoutParams()).f1828r = obj;
        }

        public boolean blocksInteractionBelow(CoordinatorLayout coordinatorLayout, V v10) {
            return getScrimOpacity(coordinatorLayout, v10) > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        }

        public boolean getInsetDodgeRect(CoordinatorLayout coordinatorLayout, V v10, Rect rect) {
            return false;
        }

        public int getScrimColor(CoordinatorLayout coordinatorLayout, V v10) {
            return -16777216;
        }

        public float getScrimOpacity(CoordinatorLayout coordinatorLayout, V v10) {
            return StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        }

        public boolean layoutDependsOn(CoordinatorLayout coordinatorLayout, V v10, View view) {
            return false;
        }

        public m0 onApplyWindowInsets(CoordinatorLayout coordinatorLayout, V v10, m0 m0Var) {
            return m0Var;
        }

        public void onAttachedToLayoutParams(f fVar) {
        }

        public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, V v10, View view) {
            return false;
        }

        public void onDependentViewRemoved(CoordinatorLayout coordinatorLayout, V v10, View view) {
        }

        public void onDetachedFromLayoutParams() {
        }

        public boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, V v10, MotionEvent motionEvent) {
            return false;
        }

        public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, V v10, int i10) {
            return false;
        }

        public boolean onMeasureChild(CoordinatorLayout coordinatorLayout, V v10, int i10, int i11, int i12, int i13) {
            return false;
        }

        public boolean onNestedFling(CoordinatorLayout coordinatorLayout, V v10, View view, float f10, float f11, boolean z10) {
            return false;
        }

        public boolean onNestedPreFling(CoordinatorLayout coordinatorLayout, V v10, View view, float f10, float f11) {
            return false;
        }

        @Deprecated
        public void onNestedPreScroll(CoordinatorLayout coordinatorLayout, V v10, View view, int i10, int i11, int[] iArr) {
        }

        public void onNestedPreScroll(CoordinatorLayout coordinatorLayout, V v10, View view, int i10, int i11, int[] iArr, int i12) {
            if (i12 == 0) {
                onNestedPreScroll(coordinatorLayout, v10, view, i10, i11, iArr);
            }
        }

        @Deprecated
        public void onNestedScroll(CoordinatorLayout coordinatorLayout, V v10, View view, int i10, int i11, int i12, int i13) {
        }

        @Deprecated
        public void onNestedScroll(CoordinatorLayout coordinatorLayout, V v10, View view, int i10, int i11, int i12, int i13, int i14) {
            if (i14 == 0) {
                onNestedScroll(coordinatorLayout, v10, view, i10, i11, i12, i13);
            }
        }

        @Deprecated
        public void onNestedScrollAccepted(CoordinatorLayout coordinatorLayout, V v10, View view, View view2, int i10) {
        }

        public void onNestedScrollAccepted(CoordinatorLayout coordinatorLayout, V v10, View view, View view2, int i10, int i11) {
            if (i11 == 0) {
                onNestedScrollAccepted(coordinatorLayout, v10, view, view2, i10);
            }
        }

        public boolean onRequestChildRectangleOnScreen(CoordinatorLayout coordinatorLayout, V v10, Rect rect, boolean z10) {
            return false;
        }

        public void onRestoreInstanceState(CoordinatorLayout coordinatorLayout, V v10, Parcelable parcelable) {
        }

        public Parcelable onSaveInstanceState(CoordinatorLayout coordinatorLayout, V v10) {
            return View.BaseSavedState.EMPTY_STATE;
        }

        @Deprecated
        public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, V v10, View view, View view2, int i10) {
            return false;
        }

        public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, V v10, View view, View view2, int i10, int i11) {
            if (i11 == 0) {
                return onStartNestedScroll(coordinatorLayout, v10, view, view2, i10);
            }
            return false;
        }

        @Deprecated
        public void onStopNestedScroll(CoordinatorLayout coordinatorLayout, V v10, View view) {
        }

        public void onStopNestedScroll(CoordinatorLayout coordinatorLayout, V v10, View view, int i10) {
            if (i10 == 0) {
                onStopNestedScroll(coordinatorLayout, v10, view);
            }
        }

        public boolean onTouchEvent(CoordinatorLayout coordinatorLayout, V v10, MotionEvent motionEvent) {
            return false;
        }

        public c(Context context, AttributeSet attributeSet) {
        }

        public void onNestedScroll(CoordinatorLayout coordinatorLayout, V v10, View view, int i10, int i11, int i12, int i13, int i14, int[] iArr) {
            iArr[0] = iArr[0] + i12;
            iArr[1] = iArr[1] + i13;
            onNestedScroll(coordinatorLayout, v10, view, i10, i11, i12, i13, i14);
        }
    }

    @Retention(RetentionPolicy.RUNTIME)
    @Deprecated
    /* loaded from: classes.dex */
    public @interface d {
        Class<? extends c> value();
    }

    /* loaded from: classes.dex */
    public class e implements ViewGroup.OnHierarchyChangeListener {
        public e() {
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewAdded(View view, View view2) {
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = CoordinatorLayout.this.mOnHierarchyChangeListener;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewAdded(view, view2);
            }
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewRemoved(View view, View view2) {
            CoordinatorLayout.this.onChildViewsChanged(2);
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = CoordinatorLayout.this.mOnHierarchyChangeListener;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewRemoved(view, view2);
            }
        }
    }

    /* loaded from: classes.dex */
    public class g implements ViewTreeObserver.OnPreDrawListener {
        public g() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            CoordinatorLayout.this.onChildViewsChanged(0);
            return true;
        }
    }

    /* loaded from: classes.dex */
    public static class i implements Comparator<View> {
        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(View view, View view2) {
            float R = b0.R(view);
            float R2 = b0.R(view2);
            if (R > R2) {
                return -1;
            }
            return R < R2 ? 1 : 0;
        }
    }

    static {
        Package r02 = CoordinatorLayout.class.getPackage();
        WIDGET_PACKAGE_NAME = r02 != null ? r02.getName() : null;
        if (Build.VERSION.SDK_INT >= 21) {
            TOP_SORTED_CHILDREN_COMPARATOR = new i();
        } else {
            TOP_SORTED_CHILDREN_COMPARATOR = null;
        }
        CONSTRUCTOR_PARAMS = new Class[]{Context.class, AttributeSet.class};
        sConstructors = new ThreadLocal<>();
        sRectPool = new p0.h(12);
    }

    public CoordinatorLayout(Context context) {
        this(context, null);
    }

    private static Rect acquireTempRect() {
        Rect b10 = sRectPool.b();
        return b10 == null ? new Rect() : b10;
    }

    private static int clamp(int i10, int i11, int i12) {
        return i10 < i11 ? i11 : i10 > i12 ? i12 : i10;
    }

    private void constrainChildRect(f fVar, Rect rect, int i10, int i11) {
        int width = getWidth();
        int height = getHeight();
        int max = Math.max(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) fVar).leftMargin, Math.min(rect.left, ((width - getPaddingRight()) - i10) - ((ViewGroup.MarginLayoutParams) fVar).rightMargin));
        int max2 = Math.max(getPaddingTop() + ((ViewGroup.MarginLayoutParams) fVar).topMargin, Math.min(rect.top, ((height - getPaddingBottom()) - i11) - ((ViewGroup.MarginLayoutParams) fVar).bottomMargin));
        rect.set(max, max2, i10 + max, i11 + max2);
    }

    private m0 dispatchApplyWindowInsetsToBehaviors(m0 m0Var) {
        c f10;
        if (m0Var.p()) {
            return m0Var;
        }
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (b0.B(childAt) && (f10 = ((f) childAt.getLayoutParams()).f()) != null) {
                m0Var = f10.onApplyWindowInsets(this, childAt, m0Var);
                if (m0Var.p()) {
                    break;
                }
            }
        }
        return m0Var;
    }

    private void getDesiredAnchoredChildRectWithoutConstraints(View view, int i10, Rect rect, Rect rect2, f fVar, int i11, int i12) {
        int width;
        int height;
        int b10 = q0.e.b(resolveAnchoredChildGravity(fVar.f1813c), i10);
        int b11 = q0.e.b(resolveGravity(fVar.f1814d), i10);
        int i13 = b10 & 7;
        int i14 = b10 & 112;
        int i15 = b11 & 7;
        int i16 = b11 & 112;
        if (i15 == 1) {
            width = rect.left + (rect.width() / 2);
        } else if (i15 != 5) {
            width = rect.left;
        } else {
            width = rect.right;
        }
        if (i16 == 16) {
            height = rect.top + (rect.height() / 2);
        } else if (i16 != 80) {
            height = rect.top;
        } else {
            height = rect.bottom;
        }
        if (i13 == 1) {
            width -= i11 / 2;
        } else if (i13 != 5) {
            width -= i11;
        }
        if (i14 == 16) {
            height -= i12 / 2;
        } else if (i14 != 80) {
            height -= i12;
        }
        rect2.set(width, height, i11 + width, i12 + height);
    }

    private int getKeyline(int i10) {
        int[] iArr = this.mKeylines;
        if (iArr == null) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("No keylines defined for ");
            sb2.append(this);
            sb2.append(" - attempted index lookup ");
            sb2.append(i10);
            return 0;
        }
        if (i10 >= 0 && i10 < iArr.length) {
            return iArr[i10];
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append("Keyline index ");
        sb3.append(i10);
        sb3.append(" out of range for ");
        sb3.append(this);
        return 0;
    }

    private void getTopSortedChildren(List<View> list) {
        list.clear();
        boolean isChildrenDrawingOrderEnabled = isChildrenDrawingOrderEnabled();
        int childCount = getChildCount();
        for (int i10 = childCount - 1; i10 >= 0; i10--) {
            list.add(getChildAt(isChildrenDrawingOrderEnabled ? getChildDrawingOrder(childCount, i10) : i10));
        }
        Comparator<View> comparator = TOP_SORTED_CHILDREN_COMPARATOR;
        if (comparator != null) {
            Collections.sort(list, comparator);
        }
    }

    private boolean hasDependencies(View view) {
        return this.mChildDag.j(view);
    }

    private void layoutChild(View view, int i10) {
        f fVar = (f) view.getLayoutParams();
        Rect acquireTempRect = acquireTempRect();
        acquireTempRect.set(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) fVar).leftMargin, getPaddingTop() + ((ViewGroup.MarginLayoutParams) fVar).topMargin, (getWidth() - getPaddingRight()) - ((ViewGroup.MarginLayoutParams) fVar).rightMargin, (getHeight() - getPaddingBottom()) - ((ViewGroup.MarginLayoutParams) fVar).bottomMargin);
        if (this.mLastInsets != null && b0.B(this) && !b0.B(view)) {
            acquireTempRect.left += this.mLastInsets.j();
            acquireTempRect.top += this.mLastInsets.l();
            acquireTempRect.right -= this.mLastInsets.k();
            acquireTempRect.bottom -= this.mLastInsets.i();
        }
        Rect acquireTempRect2 = acquireTempRect();
        q0.e.a(resolveGravity(fVar.f1813c), view.getMeasuredWidth(), view.getMeasuredHeight(), acquireTempRect, acquireTempRect2, i10);
        view.layout(acquireTempRect2.left, acquireTempRect2.top, acquireTempRect2.right, acquireTempRect2.bottom);
        releaseTempRect(acquireTempRect);
        releaseTempRect(acquireTempRect2);
    }

    private void layoutChildWithAnchor(View view, View view2, int i10) {
        Rect acquireTempRect = acquireTempRect();
        Rect acquireTempRect2 = acquireTempRect();
        try {
            getDescendantRect(view2, acquireTempRect);
            getDesiredAnchoredChildRect(view, i10, acquireTempRect, acquireTempRect2);
            view.layout(acquireTempRect2.left, acquireTempRect2.top, acquireTempRect2.right, acquireTempRect2.bottom);
        } finally {
            releaseTempRect(acquireTempRect);
            releaseTempRect(acquireTempRect2);
        }
    }

    private void layoutChildWithKeyline(View view, int i10, int i11) {
        f fVar = (f) view.getLayoutParams();
        int b10 = q0.e.b(resolveKeylineGravity(fVar.f1813c), i11);
        int i12 = b10 & 7;
        int i13 = b10 & 112;
        int width = getWidth();
        int height = getHeight();
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        if (i11 == 1) {
            i10 = width - i10;
        }
        int keyline = getKeyline(i10) - measuredWidth;
        int i14 = 0;
        if (i12 == 1) {
            keyline += measuredWidth / 2;
        } else if (i12 == 5) {
            keyline += measuredWidth;
        }
        if (i13 == 16) {
            i14 = 0 + (measuredHeight / 2);
        } else if (i13 == 80) {
            i14 = measuredHeight + 0;
        }
        int max = Math.max(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) fVar).leftMargin, Math.min(keyline, ((width - getPaddingRight()) - measuredWidth) - ((ViewGroup.MarginLayoutParams) fVar).rightMargin));
        int max2 = Math.max(getPaddingTop() + ((ViewGroup.MarginLayoutParams) fVar).topMargin, Math.min(i14, ((height - getPaddingBottom()) - measuredHeight) - ((ViewGroup.MarginLayoutParams) fVar).bottomMargin));
        view.layout(max, max2, measuredWidth + max, measuredHeight + max2);
    }

    private void offsetChildByInset(View view, Rect rect, int i10) {
        boolean z10;
        boolean z11;
        int width;
        int i11;
        int i12;
        int i13;
        int height;
        int i14;
        int i15;
        int i16;
        if (b0.X(view) && view.getWidth() > 0 && view.getHeight() > 0) {
            f fVar = (f) view.getLayoutParams();
            c f10 = fVar.f();
            Rect acquireTempRect = acquireTempRect();
            Rect acquireTempRect2 = acquireTempRect();
            acquireTempRect2.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            if (f10 != null && f10.getInsetDodgeRect(this, view, acquireTempRect)) {
                if (!acquireTempRect2.contains(acquireTempRect)) {
                    throw new IllegalArgumentException("Rect should be within the child's bounds. Rect:" + acquireTempRect.toShortString() + " | Bounds:" + acquireTempRect2.toShortString());
                }
            } else {
                acquireTempRect.set(acquireTempRect2);
            }
            releaseTempRect(acquireTempRect2);
            if (acquireTempRect.isEmpty()) {
                releaseTempRect(acquireTempRect);
                return;
            }
            int b10 = q0.e.b(fVar.f1818h, i10);
            boolean z12 = true;
            if ((b10 & 48) != 48 || (i15 = (acquireTempRect.top - ((ViewGroup.MarginLayoutParams) fVar).topMargin) - fVar.f1820j) >= (i16 = rect.top)) {
                z10 = false;
            } else {
                setInsetOffsetY(view, i16 - i15);
                z10 = true;
            }
            if ((b10 & 80) == 80 && (height = ((getHeight() - acquireTempRect.bottom) - ((ViewGroup.MarginLayoutParams) fVar).bottomMargin) + fVar.f1820j) < (i14 = rect.bottom)) {
                setInsetOffsetY(view, height - i14);
                z10 = true;
            }
            if (!z10) {
                setInsetOffsetY(view, 0);
            }
            if ((b10 & 3) != 3 || (i12 = (acquireTempRect.left - ((ViewGroup.MarginLayoutParams) fVar).leftMargin) - fVar.f1819i) >= (i13 = rect.left)) {
                z11 = false;
            } else {
                setInsetOffsetX(view, i13 - i12);
                z11 = true;
            }
            if ((b10 & 5) != 5 || (width = ((getWidth() - acquireTempRect.right) - ((ViewGroup.MarginLayoutParams) fVar).rightMargin) + fVar.f1819i) >= (i11 = rect.right)) {
                z12 = z11;
            } else {
                setInsetOffsetX(view, width - i11);
            }
            if (!z12) {
                setInsetOffsetX(view, 0);
            }
            releaseTempRect(acquireTempRect);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static c parseBehavior(Context context, AttributeSet attributeSet, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.startsWith(".")) {
            str = context.getPackageName() + str;
        } else if (str.indexOf(46) < 0) {
            String str2 = WIDGET_PACKAGE_NAME;
            if (!TextUtils.isEmpty(str2)) {
                str = str2 + '.' + str;
            }
        }
        try {
            ThreadLocal<Map<String, Constructor<c>>> threadLocal = sConstructors;
            Map<String, Constructor<c>> map = threadLocal.get();
            if (map == null) {
                map = new HashMap<>();
                threadLocal.set(map);
            }
            Constructor<c> constructor = map.get(str);
            if (constructor == null) {
                constructor = Class.forName(str, false, context.getClassLoader()).getConstructor(CONSTRUCTOR_PARAMS);
                constructor.setAccessible(true);
                map.put(str, constructor);
            }
            return constructor.newInstance(context, attributeSet);
        } catch (Exception e10) {
            throw new RuntimeException("Could not inflate Behavior subclass " + str, e10);
        }
    }

    private boolean performIntercept(MotionEvent motionEvent, int i10) {
        int actionMasked = motionEvent.getActionMasked();
        List<View> list = this.mTempList1;
        getTopSortedChildren(list);
        int size = list.size();
        MotionEvent motionEvent2 = null;
        boolean z10 = false;
        boolean z11 = false;
        for (int i11 = 0; i11 < size; i11++) {
            View view = list.get(i11);
            f fVar = (f) view.getLayoutParams();
            c f10 = fVar.f();
            if (!(z10 || z11) || actionMasked == 0) {
                if (!z10 && f10 != null) {
                    if (i10 == 0) {
                        z10 = f10.onInterceptTouchEvent(this, view, motionEvent);
                    } else if (i10 == 1) {
                        z10 = f10.onTouchEvent(this, view, motionEvent);
                    }
                    if (z10) {
                        this.mBehaviorTouchView = view;
                    }
                }
                boolean c10 = fVar.c();
                boolean i12 = fVar.i(this, view);
                z11 = i12 && !c10;
                if (i12 && !z11) {
                    break;
                }
            } else if (f10 != null) {
                if (motionEvent2 == null) {
                    long uptimeMillis = SystemClock.uptimeMillis();
                    motionEvent2 = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, 0);
                }
                if (i10 == 0) {
                    f10.onInterceptTouchEvent(this, view, motionEvent2);
                } else if (i10 == 1) {
                    f10.onTouchEvent(this, view, motionEvent2);
                }
            }
        }
        list.clear();
        return z10;
    }

    private void prepareChildren() {
        this.mDependencySortedChildren.clear();
        this.mChildDag.c();
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            f resolvedLayoutParams = getResolvedLayoutParams(childAt);
            resolvedLayoutParams.d(this, childAt);
            this.mChildDag.b(childAt);
            for (int i11 = 0; i11 < childCount; i11++) {
                if (i11 != i10) {
                    View childAt2 = getChildAt(i11);
                    if (resolvedLayoutParams.b(this, childAt, childAt2)) {
                        if (!this.mChildDag.d(childAt2)) {
                            this.mChildDag.b(childAt2);
                        }
                        this.mChildDag.a(childAt2, childAt);
                    }
                }
            }
        }
        this.mDependencySortedChildren.addAll(this.mChildDag.i());
        Collections.reverse(this.mDependencySortedChildren);
    }

    private static void releaseTempRect(Rect rect) {
        rect.setEmpty();
        sRectPool.a(rect);
    }

    private void resetTouchBehaviors(boolean z10) {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            c f10 = ((f) childAt.getLayoutParams()).f();
            if (f10 != null) {
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, 0);
                if (z10) {
                    f10.onInterceptTouchEvent(this, childAt, obtain);
                } else {
                    f10.onTouchEvent(this, childAt, obtain);
                }
                obtain.recycle();
            }
        }
        for (int i11 = 0; i11 < childCount; i11++) {
            ((f) getChildAt(i11).getLayoutParams()).m();
        }
        this.mBehaviorTouchView = null;
        this.mDisallowInterceptReset = false;
    }

    private static int resolveAnchoredChildGravity(int i10) {
        if (i10 == 0) {
            return 17;
        }
        return i10;
    }

    private static int resolveGravity(int i10) {
        if ((i10 & 7) == 0) {
            i10 |= 8388611;
        }
        return (i10 & 112) == 0 ? i10 | 48 : i10;
    }

    private static int resolveKeylineGravity(int i10) {
        return i10 == 0 ? BadgeDrawable.TOP_END : i10;
    }

    private void setInsetOffsetX(View view, int i10) {
        f fVar = (f) view.getLayoutParams();
        int i11 = fVar.f1819i;
        if (i11 != i10) {
            b0.d0(view, i10 - i11);
            fVar.f1819i = i10;
        }
    }

    private void setInsetOffsetY(View view, int i10) {
        f fVar = (f) view.getLayoutParams();
        int i11 = fVar.f1820j;
        if (i11 != i10) {
            b0.e0(view, i10 - i11);
            fVar.f1820j = i10;
        }
    }

    private void setupForInsets() {
        if (Build.VERSION.SDK_INT < 21) {
            return;
        }
        if (b0.B(this)) {
            if (this.mApplyWindowInsetsListener == null) {
                this.mApplyWindowInsetsListener = new a();
            }
            b0.G0(this, this.mApplyWindowInsetsListener);
            setSystemUiVisibility(1280);
            return;
        }
        b0.G0(this, null);
    }

    public void addPreDrawListener() {
        if (this.mIsAttachedToWindow) {
            if (this.mOnPreDrawListener == null) {
                this.mOnPreDrawListener = new g();
            }
            getViewTreeObserver().addOnPreDrawListener(this.mOnPreDrawListener);
        }
        this.mNeedsPreDrawListener = true;
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof f) && super.checkLayoutParams(layoutParams);
    }

    public void dispatchDependentViewsChanged(View view) {
        List g10 = this.mChildDag.g(view);
        if (g10 == null || g10.isEmpty()) {
            return;
        }
        for (int i10 = 0; i10 < g10.size(); i10++) {
            View view2 = (View) g10.get(i10);
            c f10 = ((f) view2.getLayoutParams()).f();
            if (f10 != null) {
                f10.onDependentViewChanged(this, view2, view);
            }
        }
    }

    public boolean doViewsOverlap(View view, View view2) {
        boolean z10 = false;
        if (view.getVisibility() != 0 || view2.getVisibility() != 0) {
            return false;
        }
        Rect acquireTempRect = acquireTempRect();
        getChildRect(view, view.getParent() != this, acquireTempRect);
        Rect acquireTempRect2 = acquireTempRect();
        getChildRect(view2, view2.getParent() != this, acquireTempRect2);
        try {
            if (acquireTempRect.left <= acquireTempRect2.right && acquireTempRect.top <= acquireTempRect2.bottom && acquireTempRect.right >= acquireTempRect2.left) {
                if (acquireTempRect.bottom >= acquireTempRect2.top) {
                    z10 = true;
                }
            }
            return z10;
        } finally {
            releaseTempRect(acquireTempRect);
            releaseTempRect(acquireTempRect2);
        }
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j10) {
        f fVar = (f) view.getLayoutParams();
        c cVar = fVar.f1811a;
        if (cVar != null) {
            float scrimOpacity = cVar.getScrimOpacity(this, view);
            if (scrimOpacity > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                if (this.mScrimPaint == null) {
                    this.mScrimPaint = new Paint();
                }
                this.mScrimPaint.setColor(fVar.f1811a.getScrimColor(this, view));
                this.mScrimPaint.setAlpha(clamp(Math.round(scrimOpacity * 255.0f), 0, BaseProgressIndicator.MAX_ALPHA));
                int save = canvas.save();
                if (view.isOpaque()) {
                    canvas.clipRect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom(), Region.Op.DIFFERENCE);
                }
                canvas.drawRect(getPaddingLeft(), getPaddingTop(), getWidth() - getPaddingRight(), getHeight() - getPaddingBottom(), this.mScrimPaint);
                canvas.restoreToCount(save);
            }
        }
        return super.drawChild(canvas, view, j10);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.mStatusBarBackground;
        boolean z10 = false;
        if (drawable != null && drawable.isStateful()) {
            z10 = false | drawable.setState(drawableState);
        }
        if (z10) {
            invalidate();
        }
    }

    public void ensurePreDrawListener() {
        int childCount = getChildCount();
        boolean z10 = false;
        int i10 = 0;
        while (true) {
            if (i10 >= childCount) {
                break;
            }
            if (hasDependencies(getChildAt(i10))) {
                z10 = true;
                break;
            }
            i10++;
        }
        if (z10 != this.mNeedsPreDrawListener) {
            if (z10) {
                addPreDrawListener();
            } else {
                removePreDrawListener();
            }
        }
    }

    public void getChildRect(View view, boolean z10, Rect rect) {
        if (view.isLayoutRequested() || view.getVisibility() == 8) {
            rect.setEmpty();
        } else if (z10) {
            getDescendantRect(view, rect);
        } else {
            rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
    }

    public List<View> getDependencies(View view) {
        List<View> h10 = this.mChildDag.h(view);
        this.mTempDependenciesList.clear();
        if (h10 != null) {
            this.mTempDependenciesList.addAll(h10);
        }
        return this.mTempDependenciesList;
    }

    public final List<View> getDependencySortedChildren() {
        prepareChildren();
        return Collections.unmodifiableList(this.mDependencySortedChildren);
    }

    public List<View> getDependents(View view) {
        List g10 = this.mChildDag.g(view);
        this.mTempDependenciesList.clear();
        if (g10 != null) {
            this.mTempDependenciesList.addAll(g10);
        }
        return this.mTempDependenciesList;
    }

    public void getDescendantRect(View view, Rect rect) {
        c0.b.a(this, view, rect);
    }

    public void getDesiredAnchoredChildRect(View view, int i10, Rect rect, Rect rect2) {
        f fVar = (f) view.getLayoutParams();
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        getDesiredAnchoredChildRectWithoutConstraints(view, i10, rect, rect2, fVar, measuredWidth, measuredHeight);
        constrainChildRect(fVar, rect2, measuredWidth, measuredHeight);
    }

    public void getLastChildRect(View view, Rect rect) {
        rect.set(((f) view.getLayoutParams()).h());
    }

    public final m0 getLastWindowInsets() {
        return this.mLastInsets;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.mNestedScrollingParentHelper.a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public f getResolvedLayoutParams(View view) {
        f fVar = (f) view.getLayoutParams();
        if (!fVar.f1812b) {
            if (view instanceof b) {
                fVar.o(((b) view).getBehavior());
                fVar.f1812b = true;
            } else {
                d dVar = null;
                for (Class<?> cls = view.getClass(); cls != null; cls = cls.getSuperclass()) {
                    dVar = (d) cls.getAnnotation(d.class);
                    if (dVar != null) {
                        break;
                    }
                }
                if (dVar != null) {
                    try {
                        fVar.o(dVar.value().getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
                    } catch (Exception unused) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("Default behavior class ");
                        sb2.append(dVar.value().getName());
                        sb2.append(" could not be instantiated. Did you forget a default constructor?");
                    }
                }
                fVar.f1812b = true;
            }
        }
        return fVar;
    }

    public Drawable getStatusBarBackground() {
        return this.mStatusBarBackground;
    }

    @Override // android.view.View
    public int getSuggestedMinimumHeight() {
        return Math.max(super.getSuggestedMinimumHeight(), getPaddingTop() + getPaddingBottom());
    }

    @Override // android.view.View
    public int getSuggestedMinimumWidth() {
        return Math.max(super.getSuggestedMinimumWidth(), getPaddingLeft() + getPaddingRight());
    }

    public boolean isPointInChildBounds(View view, int i10, int i11) {
        Rect acquireTempRect = acquireTempRect();
        getDescendantRect(view, acquireTempRect);
        try {
            return acquireTempRect.contains(i10, i11);
        } finally {
            releaseTempRect(acquireTempRect);
        }
    }

    public void offsetChildToAnchor(View view, int i10) {
        c f10;
        f fVar = (f) view.getLayoutParams();
        if (fVar.f1821k != null) {
            Rect acquireTempRect = acquireTempRect();
            Rect acquireTempRect2 = acquireTempRect();
            Rect acquireTempRect3 = acquireTempRect();
            getDescendantRect(fVar.f1821k, acquireTempRect);
            getChildRect(view, false, acquireTempRect2);
            int measuredWidth = view.getMeasuredWidth();
            int measuredHeight = view.getMeasuredHeight();
            getDesiredAnchoredChildRectWithoutConstraints(view, i10, acquireTempRect, acquireTempRect3, fVar, measuredWidth, measuredHeight);
            boolean z10 = (acquireTempRect3.left == acquireTempRect2.left && acquireTempRect3.top == acquireTempRect2.top) ? false : true;
            constrainChildRect(fVar, acquireTempRect3, measuredWidth, measuredHeight);
            int i11 = acquireTempRect3.left - acquireTempRect2.left;
            int i12 = acquireTempRect3.top - acquireTempRect2.top;
            if (i11 != 0) {
                b0.d0(view, i11);
            }
            if (i12 != 0) {
                b0.e0(view, i12);
            }
            if (z10 && (f10 = fVar.f()) != null) {
                f10.onDependentViewChanged(this, view, fVar.f1821k);
            }
            releaseTempRect(acquireTempRect);
            releaseTempRect(acquireTempRect2);
            releaseTempRect(acquireTempRect3);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        resetTouchBehaviors(false);
        if (this.mNeedsPreDrawListener) {
            if (this.mOnPreDrawListener == null) {
                this.mOnPreDrawListener = new g();
            }
            getViewTreeObserver().addOnPreDrawListener(this.mOnPreDrawListener);
        }
        if (this.mLastInsets == null && b0.B(this)) {
            b0.q0(this);
        }
        this.mIsAttachedToWindow = true;
    }

    public final void onChildViewsChanged(int i10) {
        boolean z10;
        int E = b0.E(this);
        int size = this.mDependencySortedChildren.size();
        Rect acquireTempRect = acquireTempRect();
        Rect acquireTempRect2 = acquireTempRect();
        Rect acquireTempRect3 = acquireTempRect();
        for (int i11 = 0; i11 < size; i11++) {
            View view = this.mDependencySortedChildren.get(i11);
            f fVar = (f) view.getLayoutParams();
            if (i10 != 0 || view.getVisibility() != 8) {
                for (int i12 = 0; i12 < i11; i12++) {
                    if (fVar.f1822l == this.mDependencySortedChildren.get(i12)) {
                        offsetChildToAnchor(view, E);
                    }
                }
                getChildRect(view, true, acquireTempRect2);
                if (fVar.f1817g != 0 && !acquireTempRect2.isEmpty()) {
                    int b10 = q0.e.b(fVar.f1817g, E);
                    int i13 = b10 & 112;
                    if (i13 == 48) {
                        acquireTempRect.top = Math.max(acquireTempRect.top, acquireTempRect2.bottom);
                    } else if (i13 == 80) {
                        acquireTempRect.bottom = Math.max(acquireTempRect.bottom, getHeight() - acquireTempRect2.top);
                    }
                    int i14 = b10 & 7;
                    if (i14 == 3) {
                        acquireTempRect.left = Math.max(acquireTempRect.left, acquireTempRect2.right);
                    } else if (i14 == 5) {
                        acquireTempRect.right = Math.max(acquireTempRect.right, getWidth() - acquireTempRect2.left);
                    }
                }
                if (fVar.f1818h != 0 && view.getVisibility() == 0) {
                    offsetChildByInset(view, acquireTempRect, E);
                }
                if (i10 != 2) {
                    getLastChildRect(view, acquireTempRect3);
                    if (!acquireTempRect3.equals(acquireTempRect2)) {
                        recordLastChildRect(view, acquireTempRect2);
                    }
                }
                for (int i15 = i11 + 1; i15 < size; i15++) {
                    View view2 = this.mDependencySortedChildren.get(i15);
                    f fVar2 = (f) view2.getLayoutParams();
                    c f10 = fVar2.f();
                    if (f10 != null && f10.layoutDependsOn(this, view2, view)) {
                        if (i10 == 0 && fVar2.g()) {
                            fVar2.k();
                        } else {
                            if (i10 != 2) {
                                z10 = f10.onDependentViewChanged(this, view2, view);
                            } else {
                                f10.onDependentViewRemoved(this, view2, view);
                                z10 = true;
                            }
                            if (i10 == 1) {
                                fVar2.p(z10);
                            }
                        }
                    }
                }
            }
        }
        releaseTempRect(acquireTempRect);
        releaseTempRect(acquireTempRect2);
        releaseTempRect(acquireTempRect3);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        resetTouchBehaviors(false);
        if (this.mNeedsPreDrawListener && this.mOnPreDrawListener != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.mOnPreDrawListener);
        }
        View view = this.mNestedScrollingTarget;
        if (view != null) {
            onStopNestedScroll(view);
        }
        this.mIsAttachedToWindow = false;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!this.mDrawStatusBarBackground || this.mStatusBarBackground == null) {
            return;
        }
        m0 m0Var = this.mLastInsets;
        int l10 = m0Var != null ? m0Var.l() : 0;
        if (l10 > 0) {
            this.mStatusBarBackground.setBounds(0, 0, getWidth(), l10);
            this.mStatusBarBackground.draw(canvas);
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            resetTouchBehaviors(true);
        }
        boolean performIntercept = performIntercept(motionEvent, 0);
        if (actionMasked == 1 || actionMasked == 3) {
            resetTouchBehaviors(true);
        }
        return performIntercept;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        c f10;
        int E = b0.E(this);
        int size = this.mDependencySortedChildren.size();
        for (int i14 = 0; i14 < size; i14++) {
            View view = this.mDependencySortedChildren.get(i14);
            if (view.getVisibility() != 8 && ((f10 = ((f) view.getLayoutParams()).f()) == null || !f10.onLayoutChild(this, view, E))) {
                onLayoutChild(view, E);
            }
        }
    }

    public void onLayoutChild(View view, int i10) {
        f fVar = (f) view.getLayoutParams();
        if (!fVar.a()) {
            View view2 = fVar.f1821k;
            if (view2 != null) {
                layoutChildWithAnchor(view, view2, i10);
                return;
            }
            int i11 = fVar.f1815e;
            if (i11 >= 0) {
                layoutChildWithKeyline(view, i11, i10);
                return;
            } else {
                layoutChild(view, i10);
                return;
            }
        }
        throw new IllegalStateException("An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete.");
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x011a, code lost:
    
        if (r0.onMeasureChild(r30, r20, r11, r21, r23, 0) == false) goto L46;
     */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x011d  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onMeasure(int i10, int i11) {
        int i12;
        int i13;
        int i14;
        int i15;
        c f10;
        f fVar;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        prepareChildren();
        ensurePreDrawListener();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        int E = b0.E(this);
        boolean z10 = E == 1;
        int mode = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i10);
        int mode2 = View.MeasureSpec.getMode(i11);
        int size2 = View.MeasureSpec.getSize(i11);
        int i22 = paddingLeft + paddingRight;
        int i23 = paddingTop + paddingBottom;
        int suggestedMinimumWidth = getSuggestedMinimumWidth();
        int suggestedMinimumHeight = getSuggestedMinimumHeight();
        boolean z11 = this.mLastInsets != null && b0.B(this);
        int size3 = this.mDependencySortedChildren.size();
        int i24 = suggestedMinimumWidth;
        int i25 = suggestedMinimumHeight;
        int i26 = 0;
        int i27 = 0;
        while (i27 < size3) {
            View view = this.mDependencySortedChildren.get(i27);
            if (view.getVisibility() == 8) {
                i20 = i27;
                i17 = size3;
                i18 = paddingLeft;
            } else {
                f fVar2 = (f) view.getLayoutParams();
                int i28 = fVar2.f1815e;
                if (i28 < 0 || mode == 0) {
                    i12 = i26;
                } else {
                    int keyline = getKeyline(i28);
                    int b10 = q0.e.b(resolveKeylineGravity(fVar2.f1813c), E) & 7;
                    i12 = i26;
                    if ((b10 == 3 && !z10) || (b10 == 5 && z10)) {
                        i13 = Math.max(0, (size - paddingRight) - keyline);
                    } else if ((b10 == 5 && !z10) || (b10 == 3 && z10)) {
                        i13 = Math.max(0, keyline - paddingLeft);
                    }
                    if (z11 || b0.B(view)) {
                        i14 = i10;
                        i15 = i11;
                    } else {
                        int j10 = this.mLastInsets.j() + this.mLastInsets.k();
                        int l10 = this.mLastInsets.l() + this.mLastInsets.i();
                        i14 = View.MeasureSpec.makeMeasureSpec(size - j10, mode);
                        i15 = View.MeasureSpec.makeMeasureSpec(size2 - l10, mode2);
                    }
                    f10 = fVar2.f();
                    if (f10 == null) {
                        fVar = fVar2;
                        i19 = i12;
                        i20 = i27;
                        i16 = i25;
                        i18 = paddingLeft;
                        i21 = i24;
                        i17 = size3;
                    } else {
                        fVar = fVar2;
                        i16 = i25;
                        i17 = size3;
                        i18 = paddingLeft;
                        i19 = i12;
                        i20 = i27;
                        i21 = i24;
                    }
                    onMeasureChild(view, i14, i13, i15, 0);
                    f fVar3 = fVar;
                    int max = Math.max(i21, i22 + view.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) fVar3).leftMargin + ((ViewGroup.MarginLayoutParams) fVar3).rightMargin);
                    int max2 = Math.max(i16, i23 + view.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) fVar3).topMargin + ((ViewGroup.MarginLayoutParams) fVar3).bottomMargin);
                    i26 = View.combineMeasuredStates(i19, view.getMeasuredState());
                    i24 = max;
                    i25 = max2;
                }
                i13 = 0;
                if (z11) {
                }
                i14 = i10;
                i15 = i11;
                f10 = fVar2.f();
                if (f10 == null) {
                }
                onMeasureChild(view, i14, i13, i15, 0);
                f fVar32 = fVar;
                int max3 = Math.max(i21, i22 + view.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) fVar32).leftMargin + ((ViewGroup.MarginLayoutParams) fVar32).rightMargin);
                int max22 = Math.max(i16, i23 + view.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) fVar32).topMargin + ((ViewGroup.MarginLayoutParams) fVar32).bottomMargin);
                i26 = View.combineMeasuredStates(i19, view.getMeasuredState());
                i24 = max3;
                i25 = max22;
            }
            i27 = i20 + 1;
            paddingLeft = i18;
            size3 = i17;
        }
        int i29 = i26;
        setMeasuredDimension(View.resolveSizeAndState(i24, i10, (-16777216) & i29), View.resolveSizeAndState(i25, i11, i29 << 16));
    }

    public void onMeasureChild(View view, int i10, int i11, int i12, int i13) {
        measureChildWithMargins(view, i10, i11, i12, i13);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, q0.s
    public boolean onNestedFling(View view, float f10, float f11, boolean z10) {
        c f12;
        int childCount = getChildCount();
        boolean z11 = false;
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() != 8) {
                f fVar = (f) childAt.getLayoutParams();
                if (fVar.j(0) && (f12 = fVar.f()) != null) {
                    z11 |= f12.onNestedFling(this, childAt, view, f10, f11, z10);
                }
            }
        }
        if (z11) {
            onChildViewsChanged(1);
        }
        return z11;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, q0.s
    public boolean onNestedPreFling(View view, float f10, float f11) {
        c f12;
        int childCount = getChildCount();
        boolean z10 = false;
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() != 8) {
                f fVar = (f) childAt.getLayoutParams();
                if (fVar.j(0) && (f12 = fVar.f()) != null) {
                    z10 |= f12.onNestedPreFling(this, childAt, view, f10, f11);
                }
            }
        }
        return z10;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, q0.s
    public void onNestedPreScroll(View view, int i10, int i11, int[] iArr) {
        onNestedPreScroll(view, i10, i11, iArr, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, q0.s
    public void onNestedScroll(View view, int i10, int i11, int i12, int i13) {
        onNestedScroll(view, i10, i11, i12, i13, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, q0.s
    public void onNestedScrollAccepted(View view, View view2, int i10) {
        onNestedScrollAccepted(view, view2, i10, 0);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        Parcelable parcelable2;
        if (!(parcelable instanceof h)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        h hVar = (h) parcelable;
        super.onRestoreInstanceState(hVar.getSuperState());
        SparseArray<Parcelable> sparseArray = hVar.f1830f;
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            int id2 = childAt.getId();
            c f10 = getResolvedLayoutParams(childAt).f();
            if (id2 != -1 && f10 != null && (parcelable2 = sparseArray.get(id2)) != null) {
                f10.onRestoreInstanceState(this, childAt, parcelable2);
            }
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        Parcelable onSaveInstanceState;
        h hVar = new h(super.onSaveInstanceState());
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            int id2 = childAt.getId();
            c f10 = ((f) childAt.getLayoutParams()).f();
            if (id2 != -1 && f10 != null && (onSaveInstanceState = f10.onSaveInstanceState(this, childAt)) != null) {
                sparseArray.append(id2, onSaveInstanceState);
            }
        }
        hVar.f1830f = sparseArray;
        return hVar;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, q0.s
    public boolean onStartNestedScroll(View view, View view2, int i10) {
        return onStartNestedScroll(view, view2, i10, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, q0.s
    public void onStopNestedScroll(View view) {
        onStopNestedScroll(view, 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0012, code lost:
    
        if (r3 != false) goto L8;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0031  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z10;
        boolean onTouchEvent;
        MotionEvent motionEvent2;
        int actionMasked = motionEvent.getActionMasked();
        if (this.mBehaviorTouchView == null) {
            z10 = performIntercept(motionEvent, 1);
        } else {
            z10 = false;
        }
        c f10 = ((f) this.mBehaviorTouchView.getLayoutParams()).f();
        if (f10 != null) {
            onTouchEvent = f10.onTouchEvent(this, this.mBehaviorTouchView, motionEvent);
            motionEvent2 = null;
            if (this.mBehaviorTouchView != null) {
                onTouchEvent |= super.onTouchEvent(motionEvent);
            } else if (z10) {
                long uptimeMillis = SystemClock.uptimeMillis();
                motionEvent2 = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, 0);
                super.onTouchEvent(motionEvent2);
            }
            if (motionEvent2 != null) {
                motionEvent2.recycle();
            }
            if (actionMasked != 1 || actionMasked == 3) {
                resetTouchBehaviors(false);
            }
            return onTouchEvent;
        }
        onTouchEvent = false;
        motionEvent2 = null;
        if (this.mBehaviorTouchView != null) {
        }
        if (motionEvent2 != null) {
        }
        if (actionMasked != 1) {
        }
        resetTouchBehaviors(false);
        return onTouchEvent;
    }

    public void recordLastChildRect(View view, Rect rect) {
        ((f) view.getLayoutParams()).q(rect);
    }

    public void removePreDrawListener() {
        if (this.mIsAttachedToWindow && this.mOnPreDrawListener != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.mOnPreDrawListener);
        }
        this.mNeedsPreDrawListener = false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z10) {
        c f10 = ((f) view.getLayoutParams()).f();
        if (f10 == null || !f10.onRequestChildRectangleOnScreen(this, view, rect, z10)) {
            return super.requestChildRectangleOnScreen(view, rect, z10);
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z10) {
        super.requestDisallowInterceptTouchEvent(z10);
        if (!z10 || this.mDisallowInterceptReset) {
            return;
        }
        resetTouchBehaviors(false);
        this.mDisallowInterceptReset = true;
    }

    @Override // android.view.View
    public void setFitsSystemWindows(boolean z10) {
        super.setFitsSystemWindows(z10);
        setupForInsets();
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.mOnHierarchyChangeListener = onHierarchyChangeListener;
    }

    public void setStatusBarBackground(Drawable drawable) {
        Drawable drawable2 = this.mStatusBarBackground;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable mutate = drawable != null ? drawable.mutate() : null;
            this.mStatusBarBackground = mutate;
            if (mutate != null) {
                if (mutate.isStateful()) {
                    this.mStatusBarBackground.setState(getDrawableState());
                }
                i0.a.m(this.mStatusBarBackground, b0.E(this));
                this.mStatusBarBackground.setVisible(getVisibility() == 0, false);
                this.mStatusBarBackground.setCallback(this);
            }
            b0.k0(this);
        }
    }

    public void setStatusBarBackgroundColor(int i10) {
        setStatusBarBackground(new ColorDrawable(i10));
    }

    public void setStatusBarBackgroundResource(int i10) {
        setStatusBarBackground(i10 != 0 ? f0.a.f(getContext(), i10) : null);
    }

    @Override // android.view.View
    public void setVisibility(int i10) {
        super.setVisibility(i10);
        boolean z10 = i10 == 0;
        Drawable drawable = this.mStatusBarBackground;
        if (drawable == null || drawable.isVisible() == z10) {
            return;
        }
        this.mStatusBarBackground.setVisible(z10, false);
    }

    public final m0 setWindowInsets(m0 m0Var) {
        if (p0.d.a(this.mLastInsets, m0Var)) {
            return m0Var;
        }
        this.mLastInsets = m0Var;
        boolean z10 = m0Var != null && m0Var.l() > 0;
        this.mDrawStatusBarBackground = z10;
        setWillNotDraw(!z10 && getBackground() == null);
        m0 dispatchApplyWindowInsetsToBehaviors = dispatchApplyWindowInsetsToBehaviors(m0Var);
        requestLayout();
        return dispatchApplyWindowInsetsToBehaviors;
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.mStatusBarBackground;
    }

    public CoordinatorLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, b0.a.f3423a);
    }

    @Override // android.view.ViewGroup
    public f generateDefaultLayoutParams() {
        return new f(-2, -2);
    }

    @Override // q0.q
    public void onNestedPreScroll(View view, int i10, int i11, int[] iArr, int i12) {
        c f10;
        int childCount = getChildCount();
        boolean z10 = false;
        int i13 = 0;
        int i14 = 0;
        for (int i15 = 0; i15 < childCount; i15++) {
            View childAt = getChildAt(i15);
            if (childAt.getVisibility() != 8) {
                f fVar = (f) childAt.getLayoutParams();
                if (fVar.j(i12) && (f10 = fVar.f()) != null) {
                    int[] iArr2 = this.mBehaviorConsumed;
                    iArr2[0] = 0;
                    iArr2[1] = 0;
                    f10.onNestedPreScroll(this, childAt, view, i10, i11, iArr2, i12);
                    int[] iArr3 = this.mBehaviorConsumed;
                    i13 = i10 > 0 ? Math.max(i13, iArr3[0]) : Math.min(i13, iArr3[0]);
                    int[] iArr4 = this.mBehaviorConsumed;
                    i14 = i11 > 0 ? Math.max(i14, iArr4[1]) : Math.min(i14, iArr4[1]);
                    z10 = true;
                }
            }
        }
        iArr[0] = i13;
        iArr[1] = i14;
        if (z10) {
            onChildViewsChanged(1);
        }
    }

    @Override // q0.q
    public void onNestedScroll(View view, int i10, int i11, int i12, int i13, int i14) {
        onNestedScroll(view, i10, i11, i12, i13, 0, this.mNestedScrollingV2ConsumedCompat);
    }

    @Override // q0.q
    public void onNestedScrollAccepted(View view, View view2, int i10, int i11) {
        c f10;
        this.mNestedScrollingParentHelper.c(view, view2, i10, i11);
        this.mNestedScrollingTarget = view2;
        int childCount = getChildCount();
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getChildAt(i12);
            f fVar = (f) childAt.getLayoutParams();
            if (fVar.j(i11) && (f10 = fVar.f()) != null) {
                f10.onNestedScrollAccepted(this, childAt, view, view2, i10, i11);
            }
        }
    }

    @Override // q0.q
    public boolean onStartNestedScroll(View view, View view2, int i10, int i11) {
        int childCount = getChildCount();
        boolean z10 = false;
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getChildAt(i12);
            if (childAt.getVisibility() != 8) {
                f fVar = (f) childAt.getLayoutParams();
                c f10 = fVar.f();
                if (f10 != null) {
                    boolean onStartNestedScroll = f10.onStartNestedScroll(this, childAt, view, view2, i10, i11);
                    z10 |= onStartNestedScroll;
                    fVar.r(i11, onStartNestedScroll);
                } else {
                    fVar.r(i11, false);
                }
            }
        }
        return z10;
    }

    @Override // q0.q
    public void onStopNestedScroll(View view, int i10) {
        this.mNestedScrollingParentHelper.e(view, i10);
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            f fVar = (f) childAt.getLayoutParams();
            if (fVar.j(i10)) {
                c f10 = fVar.f();
                if (f10 != null) {
                    f10.onStopNestedScroll(this, childAt, view, i10);
                }
                fVar.l(i10);
                fVar.k();
            }
        }
        this.mNestedScrollingTarget = null;
    }

    public CoordinatorLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        TypedArray obtainStyledAttributes;
        this.mDependencySortedChildren = new ArrayList();
        this.mChildDag = new c0.a<>();
        this.mTempList1 = new ArrayList();
        this.mTempDependenciesList = new ArrayList();
        this.mBehaviorConsumed = new int[2];
        this.mNestedScrollingV2ConsumedCompat = new int[2];
        this.mNestedScrollingParentHelper = new t(this);
        if (i10 == 0) {
            obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, b0.c.f3426b, 0, b0.b.f3424a);
        } else {
            obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, b0.c.f3426b, i10, 0);
        }
        if (Build.VERSION.SDK_INT >= 29) {
            if (i10 == 0) {
                saveAttributeDataForStyleable(context, b0.c.f3426b, attributeSet, obtainStyledAttributes, 0, b0.b.f3424a);
            } else {
                saveAttributeDataForStyleable(context, b0.c.f3426b, attributeSet, obtainStyledAttributes, i10, 0);
            }
        }
        int resourceId = obtainStyledAttributes.getResourceId(b0.c.f3427c, 0);
        if (resourceId != 0) {
            Resources resources = context.getResources();
            this.mKeylines = resources.getIntArray(resourceId);
            float f10 = resources.getDisplayMetrics().density;
            int length = this.mKeylines.length;
            for (int i11 = 0; i11 < length; i11++) {
                this.mKeylines[i11] = (int) (r12[i11] * f10);
            }
        }
        this.mStatusBarBackground = obtainStyledAttributes.getDrawable(b0.c.f3428d);
        obtainStyledAttributes.recycle();
        setupForInsets();
        super.setOnHierarchyChangeListener(new e());
        if (b0.C(this) == 0) {
            b0.E0(this, 1);
        }
    }

    @Override // android.view.ViewGroup
    public f generateLayoutParams(AttributeSet attributeSet) {
        return new f(getContext(), attributeSet);
    }

    @Override // q0.r
    public void onNestedScroll(View view, int i10, int i11, int i12, int i13, int i14, int[] iArr) {
        c f10;
        int min;
        int childCount = getChildCount();
        boolean z10 = false;
        int i15 = 0;
        int i16 = 0;
        for (int i17 = 0; i17 < childCount; i17++) {
            View childAt = getChildAt(i17);
            if (childAt.getVisibility() != 8) {
                f fVar = (f) childAt.getLayoutParams();
                if (fVar.j(i14) && (f10 = fVar.f()) != null) {
                    int[] iArr2 = this.mBehaviorConsumed;
                    iArr2[0] = 0;
                    iArr2[1] = 0;
                    f10.onNestedScroll(this, childAt, view, i10, i11, i12, i13, i14, iArr2);
                    int[] iArr3 = this.mBehaviorConsumed;
                    i15 = i12 > 0 ? Math.max(i15, iArr3[0]) : Math.min(i15, iArr3[0]);
                    if (i13 > 0) {
                        min = Math.max(i16, this.mBehaviorConsumed[1]);
                    } else {
                        min = Math.min(i16, this.mBehaviorConsumed[1]);
                    }
                    i16 = min;
                    z10 = true;
                }
            }
        }
        iArr[0] = iArr[0] + i15;
        iArr[1] = iArr[1] + i16;
        if (z10) {
            onChildViewsChanged(1);
        }
    }

    @Override // android.view.ViewGroup
    public f generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof f) {
            return new f((f) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new f((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new f(layoutParams);
    }

    /* loaded from: classes.dex */
    public static class h extends w0.a {
        public static final Parcelable.Creator<h> CREATOR = new a();

        /* renamed from: f, reason: collision with root package name */
        public SparseArray<Parcelable> f1830f;

        /* loaded from: classes.dex */
        public static class a implements Parcelable.ClassLoaderCreator<h> {
            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public h createFromParcel(Parcel parcel) {
                return new h(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public h createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new h(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: c, reason: merged with bridge method [inline-methods] */
            public h[] newArray(int i10) {
                return new h[i10];
            }
        }

        public h(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            int readInt = parcel.readInt();
            int[] iArr = new int[readInt];
            parcel.readIntArray(iArr);
            Parcelable[] readParcelableArray = parcel.readParcelableArray(classLoader);
            this.f1830f = new SparseArray<>(readInt);
            for (int i10 = 0; i10 < readInt; i10++) {
                this.f1830f.append(iArr[i10], readParcelableArray[i10]);
            }
        }

        @Override // w0.a, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            SparseArray<Parcelable> sparseArray = this.f1830f;
            int size = sparseArray != null ? sparseArray.size() : 0;
            parcel.writeInt(size);
            int[] iArr = new int[size];
            Parcelable[] parcelableArr = new Parcelable[size];
            for (int i11 = 0; i11 < size; i11++) {
                iArr[i11] = this.f1830f.keyAt(i11);
                parcelableArr[i11] = this.f1830f.valueAt(i11);
            }
            parcel.writeIntArray(iArr);
            parcel.writeParcelableArray(parcelableArr, i10);
        }

        public h(Parcelable parcelable) {
            super(parcelable);
        }
    }

    /* loaded from: classes.dex */
    public static class f extends ViewGroup.MarginLayoutParams {

        /* renamed from: a, reason: collision with root package name */
        public c f1811a;

        /* renamed from: b, reason: collision with root package name */
        public boolean f1812b;

        /* renamed from: c, reason: collision with root package name */
        public int f1813c;

        /* renamed from: d, reason: collision with root package name */
        public int f1814d;

        /* renamed from: e, reason: collision with root package name */
        public int f1815e;

        /* renamed from: f, reason: collision with root package name */
        public int f1816f;

        /* renamed from: g, reason: collision with root package name */
        public int f1817g;

        /* renamed from: h, reason: collision with root package name */
        public int f1818h;

        /* renamed from: i, reason: collision with root package name */
        public int f1819i;

        /* renamed from: j, reason: collision with root package name */
        public int f1820j;

        /* renamed from: k, reason: collision with root package name */
        public View f1821k;

        /* renamed from: l, reason: collision with root package name */
        public View f1822l;

        /* renamed from: m, reason: collision with root package name */
        public boolean f1823m;

        /* renamed from: n, reason: collision with root package name */
        public boolean f1824n;

        /* renamed from: o, reason: collision with root package name */
        public boolean f1825o;

        /* renamed from: p, reason: collision with root package name */
        public boolean f1826p;

        /* renamed from: q, reason: collision with root package name */
        public final Rect f1827q;

        /* renamed from: r, reason: collision with root package name */
        public Object f1828r;

        public f(int i10, int i11) {
            super(i10, i11);
            this.f1812b = false;
            this.f1813c = 0;
            this.f1814d = 0;
            this.f1815e = -1;
            this.f1816f = -1;
            this.f1817g = 0;
            this.f1818h = 0;
            this.f1827q = new Rect();
        }

        public boolean a() {
            return this.f1821k == null && this.f1816f != -1;
        }

        public boolean b(CoordinatorLayout coordinatorLayout, View view, View view2) {
            c cVar;
            return view2 == this.f1822l || s(view2, b0.E(coordinatorLayout)) || ((cVar = this.f1811a) != null && cVar.layoutDependsOn(coordinatorLayout, view, view2));
        }

        public boolean c() {
            if (this.f1811a == null) {
                this.f1823m = false;
            }
            return this.f1823m;
        }

        public View d(CoordinatorLayout coordinatorLayout, View view) {
            if (this.f1816f == -1) {
                this.f1822l = null;
                this.f1821k = null;
                return null;
            }
            if (this.f1821k == null || !t(view, coordinatorLayout)) {
                n(view, coordinatorLayout);
            }
            return this.f1821k;
        }

        public int e() {
            return this.f1816f;
        }

        public c f() {
            return this.f1811a;
        }

        public boolean g() {
            return this.f1826p;
        }

        public Rect h() {
            return this.f1827q;
        }

        public boolean i(CoordinatorLayout coordinatorLayout, View view) {
            boolean z10 = this.f1823m;
            if (z10) {
                return true;
            }
            c cVar = this.f1811a;
            boolean blocksInteractionBelow = (cVar != null ? cVar.blocksInteractionBelow(coordinatorLayout, view) : false) | z10;
            this.f1823m = blocksInteractionBelow;
            return blocksInteractionBelow;
        }

        public boolean j(int i10) {
            if (i10 == 0) {
                return this.f1824n;
            }
            if (i10 != 1) {
                return false;
            }
            return this.f1825o;
        }

        public void k() {
            this.f1826p = false;
        }

        public void l(int i10) {
            r(i10, false);
        }

        public void m() {
            this.f1823m = false;
        }

        public final void n(View view, CoordinatorLayout coordinatorLayout) {
            View findViewById = coordinatorLayout.findViewById(this.f1816f);
            this.f1821k = findViewById;
            if (findViewById == null) {
                if (coordinatorLayout.isInEditMode()) {
                    this.f1822l = null;
                    this.f1821k = null;
                    return;
                }
                throw new IllegalStateException("Could not find CoordinatorLayout descendant view with id " + coordinatorLayout.getResources().getResourceName(this.f1816f) + " to anchor view " + view);
            }
            if (findViewById == coordinatorLayout) {
                if (coordinatorLayout.isInEditMode()) {
                    this.f1822l = null;
                    this.f1821k = null;
                    return;
                }
                throw new IllegalStateException("View can not be anchored to the the parent CoordinatorLayout");
            }
            for (ViewParent parent = findViewById.getParent(); parent != coordinatorLayout && parent != null; parent = parent.getParent()) {
                if (parent == view) {
                    if (coordinatorLayout.isInEditMode()) {
                        this.f1822l = null;
                        this.f1821k = null;
                        return;
                    }
                    throw new IllegalStateException("Anchor must not be a descendant of the anchored view");
                }
                if (parent instanceof View) {
                    findViewById = parent;
                }
            }
            this.f1822l = findViewById;
        }

        public void o(c cVar) {
            c cVar2 = this.f1811a;
            if (cVar2 != cVar) {
                if (cVar2 != null) {
                    cVar2.onDetachedFromLayoutParams();
                }
                this.f1811a = cVar;
                this.f1828r = null;
                this.f1812b = true;
                if (cVar != null) {
                    cVar.onAttachedToLayoutParams(this);
                }
            }
        }

        public void p(boolean z10) {
            this.f1826p = z10;
        }

        public void q(Rect rect) {
            this.f1827q.set(rect);
        }

        public void r(int i10, boolean z10) {
            if (i10 == 0) {
                this.f1824n = z10;
            } else {
                if (i10 != 1) {
                    return;
                }
                this.f1825o = z10;
            }
        }

        public final boolean s(View view, int i10) {
            int b10 = q0.e.b(((f) view.getLayoutParams()).f1817g, i10);
            return b10 != 0 && (q0.e.b(this.f1818h, i10) & b10) == b10;
        }

        public final boolean t(View view, CoordinatorLayout coordinatorLayout) {
            if (this.f1821k.getId() != this.f1816f) {
                return false;
            }
            View view2 = this.f1821k;
            for (ViewParent parent = view2.getParent(); parent != coordinatorLayout; parent = parent.getParent()) {
                if (parent != null && parent != view) {
                    if (parent instanceof View) {
                        view2 = parent;
                    }
                } else {
                    this.f1822l = null;
                    this.f1821k = null;
                    return false;
                }
            }
            this.f1822l = view2;
            return true;
        }

        public f(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f1812b = false;
            this.f1813c = 0;
            this.f1814d = 0;
            this.f1815e = -1;
            this.f1816f = -1;
            this.f1817g = 0;
            this.f1818h = 0;
            this.f1827q = new Rect();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, b0.c.f3429e);
            this.f1813c = obtainStyledAttributes.getInteger(b0.c.f3430f, 0);
            this.f1816f = obtainStyledAttributes.getResourceId(b0.c.f3431g, -1);
            this.f1814d = obtainStyledAttributes.getInteger(b0.c.f3432h, 0);
            this.f1815e = obtainStyledAttributes.getInteger(b0.c.f3436l, -1);
            this.f1817g = obtainStyledAttributes.getInt(b0.c.f3435k, 0);
            this.f1818h = obtainStyledAttributes.getInt(b0.c.f3434j, 0);
            int i10 = b0.c.f3433i;
            boolean hasValue = obtainStyledAttributes.hasValue(i10);
            this.f1812b = hasValue;
            if (hasValue) {
                this.f1811a = CoordinatorLayout.parseBehavior(context, attributeSet, obtainStyledAttributes.getString(i10));
            }
            obtainStyledAttributes.recycle();
            c cVar = this.f1811a;
            if (cVar != null) {
                cVar.onAttachedToLayoutParams(this);
            }
        }

        public f(f fVar) {
            super((ViewGroup.MarginLayoutParams) fVar);
            this.f1812b = false;
            this.f1813c = 0;
            this.f1814d = 0;
            this.f1815e = -1;
            this.f1816f = -1;
            this.f1817g = 0;
            this.f1818h = 0;
            this.f1827q = new Rect();
        }

        public f(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f1812b = false;
            this.f1813c = 0;
            this.f1814d = 0;
            this.f1815e = -1;
            this.f1816f = -1;
            this.f1817g = 0;
            this.f1818h = 0;
            this.f1827q = new Rect();
        }

        public f(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f1812b = false;
            this.f1813c = 0;
            this.f1814d = 0;
            this.f1815e = -1;
            this.f1816f = -1;
            this.f1817g = 0;
            this.f1818h = 0;
            this.f1827q = new Rect();
        }
    }
}
