package androidx.recyclerview.widget;

import android.R;
import android.animation.LayoutTransition;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.Observable;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.Display;
import android.view.FocusFinder;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.OverScroller;
import androidx.recyclerview.widget.a;
import androidx.recyclerview.widget.a0;
import androidx.recyclerview.widget.f;
import androidx.recyclerview.widget.l;
import androidx.recyclerview.widget.u;
import androidx.recyclerview.widget.z;
import com.google.android.gms.common.api.Api;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.apache.http.impl.auth.NTLMEngineImpl;
import r0.c;

/* loaded from: classes.dex */
public class RecyclerView extends ViewGroup implements q0.o {
    public static final boolean ALLOW_SIZE_IN_UNSPECIFIED_SPEC;
    public static final boolean ALLOW_THREAD_GAP_WORK;
    public static final boolean DEBUG = false;
    public static final int DEFAULT_ORIENTATION = 1;
    public static final boolean DISPATCH_TEMP_DETACH = false;
    private static final boolean FORCE_ABS_FOCUS_SEARCH_DIRECTION;
    public static final boolean FORCE_INVALIDATE_DISPLAY_LIST;
    public static final long FOREVER_NS = Long.MAX_VALUE;
    public static final int HORIZONTAL = 0;
    private static final boolean IGNORE_DETACHED_FOCUSED_CHILD;
    private static final int INVALID_POINTER = -1;
    public static final int INVALID_TYPE = -1;
    private static final Class<?>[] LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE;
    public static final int MAX_SCROLL_DURATION = 2000;
    private static final int[] NESTED_SCROLLING_ATTRS = {R.attr.nestedScrollingEnabled};
    public static final long NO_ID = -1;
    public static final int NO_POSITION = -1;
    public static final boolean POST_UPDATES_ON_ANIMATION;
    public static final int SCROLL_STATE_DRAGGING = 1;
    public static final int SCROLL_STATE_IDLE = 0;
    public static final int SCROLL_STATE_SETTLING = 2;
    public static final String TAG = "RecyclerView";
    public static final int TOUCH_SLOP_DEFAULT = 0;
    public static final int TOUCH_SLOP_PAGING = 1;
    public static final String TRACE_BIND_VIEW_TAG = "RV OnBindView";
    public static final String TRACE_CREATE_VIEW_TAG = "RV CreateView";
    private static final String TRACE_HANDLE_ADAPTER_UPDATES_TAG = "RV PartialInvalidate";
    public static final String TRACE_NESTED_PREFETCH_TAG = "RV Nested Prefetch";
    private static final String TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG = "RV FullInvalidate";
    private static final String TRACE_ON_LAYOUT_TAG = "RV OnLayout";
    public static final String TRACE_PREFETCH_TAG = "RV Prefetch";
    public static final String TRACE_SCROLL_TAG = "RV Scroll";
    public static final int UNDEFINED_DURATION = Integer.MIN_VALUE;
    public static final boolean VERBOSE_TRACING = false;
    public static final int VERTICAL = 1;
    public static final Interpolator sQuinticInterpolator;
    public androidx.recyclerview.widget.u mAccessibilityDelegate;
    private final AccessibilityManager mAccessibilityManager;
    public h mAdapter;
    public androidx.recyclerview.widget.a mAdapterHelper;
    public boolean mAdapterUpdateDuringMeasure;
    private EdgeEffect mBottomGlow;
    private k mChildDrawingOrderCallback;
    public androidx.recyclerview.widget.f mChildHelper;
    public boolean mClipToPadding;
    public boolean mDataSetHasChangedAfterLayout;
    public boolean mDispatchItemsChangedEvent;
    private int mDispatchScrollCounter;
    private int mEatenAccessibilityChangeFlags;
    private l mEdgeEffectFactory;
    public boolean mEnableFastScroller;
    public boolean mFirstLayoutComplete;
    public androidx.recyclerview.widget.l mGapWorker;
    public boolean mHasFixedSize;
    private boolean mIgnoreMotionEventTillDown;
    private int mInitialTouchX;
    private int mInitialTouchY;
    private int mInterceptRequestLayoutDepth;
    private t mInterceptingOnItemTouchListener;
    public boolean mIsAttached;
    public m mItemAnimator;
    private m.b mItemAnimatorListener;
    private Runnable mItemAnimatorRunner;
    public final ArrayList<o> mItemDecorations;
    public boolean mItemsAddedOrRemoved;
    public boolean mItemsChanged;
    private int mLastAutoMeasureNonExactMeasuredHeight;
    private int mLastAutoMeasureNonExactMeasuredWidth;
    private boolean mLastAutoMeasureSkippedDueToExact;
    private int mLastTouchX;
    private int mLastTouchY;
    public p mLayout;
    private int mLayoutOrScrollCounter;
    public boolean mLayoutSuppressed;
    public boolean mLayoutWasDefered;
    private EdgeEffect mLeftGlow;
    private final int mMaxFlingVelocity;
    private final int mMinFlingVelocity;
    private final int[] mMinMaxLayoutPositions;
    private final int[] mNestedOffsets;
    private final y mObserver;
    private List<r> mOnChildAttachStateListeners;
    private s mOnFlingListener;
    private final ArrayList<t> mOnItemTouchListeners;
    public final List<e0> mPendingAccessibilityImportanceChange;
    public z mPendingSavedState;
    public boolean mPostedAnimatorRunner;
    public l.b mPrefetchRegistry;
    private boolean mPreserveFocusAfterLayout;
    public final w mRecycler;
    public x mRecyclerListener;
    public final List<x> mRecyclerListeners;
    public final int[] mReusableIntPair;
    private EdgeEffect mRightGlow;
    private float mScaledHorizontalScrollFactor;
    private float mScaledVerticalScrollFactor;
    private u mScrollListener;
    private List<u> mScrollListeners;
    private final int[] mScrollOffset;
    private int mScrollPointerId;
    private int mScrollState;
    private q0.p mScrollingChildHelper;
    public final b0 mState;
    public final Rect mTempRect;
    private final Rect mTempRect2;
    public final RectF mTempRectF;
    private EdgeEffect mTopGlow;
    private int mTouchSlop;
    public final Runnable mUpdateChildViewsRunnable;
    private VelocityTracker mVelocityTracker;
    public final d0 mViewFlinger;
    private final a0.b mViewInfoProcessCallback;
    public final androidx.recyclerview.widget.a0 mViewInfoStore;

    /* loaded from: classes.dex */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            RecyclerView recyclerView = RecyclerView.this;
            if (!recyclerView.mFirstLayoutComplete || recyclerView.isLayoutRequested()) {
                return;
            }
            RecyclerView recyclerView2 = RecyclerView.this;
            if (!recyclerView2.mIsAttached) {
                recyclerView2.requestLayout();
            } else if (recyclerView2.mLayoutSuppressed) {
                recyclerView2.mLayoutWasDefered = true;
            } else {
                recyclerView2.consumePendingUpdateOperations();
            }
        }
    }

    /* loaded from: classes.dex */
    public static abstract class a0 {
        private p mLayoutManager;
        private boolean mPendingInitialRun;
        private RecyclerView mRecyclerView;
        private boolean mRunning;
        private boolean mStarted;
        private View mTargetView;
        private int mTargetPosition = -1;
        private final a mRecyclingAction = new a(0, 0);

        /* loaded from: classes.dex */
        public static class a {

            /* renamed from: a, reason: collision with root package name */
            public int f2720a;

            /* renamed from: b, reason: collision with root package name */
            public int f2721b;

            /* renamed from: c, reason: collision with root package name */
            public int f2722c;

            /* renamed from: d, reason: collision with root package name */
            public int f2723d;

            /* renamed from: e, reason: collision with root package name */
            public Interpolator f2724e;

            /* renamed from: f, reason: collision with root package name */
            public boolean f2725f;

            /* renamed from: g, reason: collision with root package name */
            public int f2726g;

            public a(int i10, int i11) {
                this(i10, i11, Integer.MIN_VALUE, null);
            }

            public boolean a() {
                return this.f2723d >= 0;
            }

            public void b(int i10) {
                this.f2723d = i10;
            }

            public void c(RecyclerView recyclerView) {
                int i10 = this.f2723d;
                if (i10 >= 0) {
                    this.f2723d = -1;
                    recyclerView.jumpToPositionForSmoothScroller(i10);
                    this.f2725f = false;
                } else {
                    if (this.f2725f) {
                        e();
                        recyclerView.mViewFlinger.e(this.f2720a, this.f2721b, this.f2722c, this.f2724e);
                        this.f2726g++;
                        this.f2725f = false;
                        return;
                    }
                    this.f2726g = 0;
                }
            }

            public void d(int i10, int i11, int i12, Interpolator interpolator) {
                this.f2720a = i10;
                this.f2721b = i11;
                this.f2722c = i12;
                this.f2724e = interpolator;
                this.f2725f = true;
            }

            public final void e() {
                if (this.f2724e != null && this.f2722c < 1) {
                    throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
                }
                if (this.f2722c < 1) {
                    throw new IllegalStateException("Scroll duration must be a positive number");
                }
            }

            public a(int i10, int i11, int i12, Interpolator interpolator) {
                this.f2723d = -1;
                this.f2725f = false;
                this.f2726g = 0;
                this.f2720a = i10;
                this.f2721b = i11;
                this.f2722c = i12;
                this.f2724e = interpolator;
            }
        }

        /* loaded from: classes.dex */
        public interface b {
            PointF computeScrollVectorForPosition(int i10);
        }

        public PointF computeScrollVectorForPosition(int i10) {
            Object layoutManager = getLayoutManager();
            if (layoutManager instanceof b) {
                return ((b) layoutManager).computeScrollVectorForPosition(i10);
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("You should override computeScrollVectorForPosition when the LayoutManager does not implement ");
            sb2.append(b.class.getCanonicalName());
            return null;
        }

        public View findViewByPosition(int i10) {
            return this.mRecyclerView.mLayout.findViewByPosition(i10);
        }

        public int getChildCount() {
            return this.mRecyclerView.mLayout.getChildCount();
        }

        public int getChildPosition(View view) {
            return this.mRecyclerView.getChildLayoutPosition(view);
        }

        public p getLayoutManager() {
            return this.mLayoutManager;
        }

        public int getTargetPosition() {
            return this.mTargetPosition;
        }

        @Deprecated
        public void instantScrollToPosition(int i10) {
            this.mRecyclerView.scrollToPosition(i10);
        }

        public boolean isPendingInitialRun() {
            return this.mPendingInitialRun;
        }

        public boolean isRunning() {
            return this.mRunning;
        }

        public void normalize(PointF pointF) {
            float f10 = pointF.x;
            float f11 = pointF.y;
            float sqrt = (float) Math.sqrt((f10 * f10) + (f11 * f11));
            pointF.x /= sqrt;
            pointF.y /= sqrt;
        }

        public void onAnimation(int i10, int i11) {
            PointF computeScrollVectorForPosition;
            RecyclerView recyclerView = this.mRecyclerView;
            if (this.mTargetPosition == -1 || recyclerView == null) {
                stop();
            }
            if (this.mPendingInitialRun && this.mTargetView == null && this.mLayoutManager != null && (computeScrollVectorForPosition = computeScrollVectorForPosition(this.mTargetPosition)) != null) {
                float f10 = computeScrollVectorForPosition.x;
                if (f10 != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD || computeScrollVectorForPosition.y != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                    recyclerView.scrollStep((int) Math.signum(f10), (int) Math.signum(computeScrollVectorForPosition.y), null);
                }
            }
            this.mPendingInitialRun = false;
            View view = this.mTargetView;
            if (view != null) {
                if (getChildPosition(view) == this.mTargetPosition) {
                    onTargetFound(this.mTargetView, recyclerView.mState, this.mRecyclingAction);
                    this.mRecyclingAction.c(recyclerView);
                    stop();
                } else {
                    this.mTargetView = null;
                }
            }
            if (this.mRunning) {
                onSeekTargetStep(i10, i11, recyclerView.mState, this.mRecyclingAction);
                boolean a10 = this.mRecyclingAction.a();
                this.mRecyclingAction.c(recyclerView);
                if (a10 && this.mRunning) {
                    this.mPendingInitialRun = true;
                    recyclerView.mViewFlinger.d();
                }
            }
        }

        public void onChildAttachedToWindow(View view) {
            if (getChildPosition(view) == getTargetPosition()) {
                this.mTargetView = view;
            }
        }

        public abstract void onSeekTargetStep(int i10, int i11, b0 b0Var, a aVar);

        public abstract void onStart();

        public abstract void onStop();

        public abstract void onTargetFound(View view, b0 b0Var, a aVar);

        public void setTargetPosition(int i10) {
            this.mTargetPosition = i10;
        }

        public void start(RecyclerView recyclerView, p pVar) {
            recyclerView.mViewFlinger.f();
            if (this.mStarted) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("An instance of ");
                sb2.append(getClass().getSimpleName());
                sb2.append(" was started more than once. Each instance of");
                sb2.append(getClass().getSimpleName());
                sb2.append(" is intended to only be used once. You should create a new instance for each use.");
            }
            this.mRecyclerView = recyclerView;
            this.mLayoutManager = pVar;
            int i10 = this.mTargetPosition;
            if (i10 != -1) {
                recyclerView.mState.f2728a = i10;
                this.mRunning = true;
                this.mPendingInitialRun = true;
                this.mTargetView = findViewByPosition(getTargetPosition());
                onStart();
                this.mRecyclerView.mViewFlinger.d();
                this.mStarted = true;
                return;
            }
            throw new IllegalArgumentException("Invalid target position");
        }

        public final void stop() {
            if (this.mRunning) {
                this.mRunning = false;
                onStop();
                this.mRecyclerView.mState.f2728a = -1;
                this.mTargetView = null;
                this.mTargetPosition = -1;
                this.mPendingInitialRun = false;
                this.mLayoutManager.onSmoothScrollerStopped(this);
                this.mLayoutManager = null;
                this.mRecyclerView = null;
            }
        }
    }

    /* loaded from: classes.dex */
    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            m mVar = RecyclerView.this.mItemAnimator;
            if (mVar != null) {
                mVar.u();
            }
            RecyclerView.this.mPostedAnimatorRunner = false;
        }
    }

    /* loaded from: classes.dex */
    public static class b0 {

        /* renamed from: b, reason: collision with root package name */
        public SparseArray<Object> f2729b;

        /* renamed from: m, reason: collision with root package name */
        public int f2740m;

        /* renamed from: n, reason: collision with root package name */
        public long f2741n;

        /* renamed from: o, reason: collision with root package name */
        public int f2742o;

        /* renamed from: p, reason: collision with root package name */
        public int f2743p;

        /* renamed from: q, reason: collision with root package name */
        public int f2744q;

        /* renamed from: a, reason: collision with root package name */
        public int f2728a = -1;

        /* renamed from: c, reason: collision with root package name */
        public int f2730c = 0;

        /* renamed from: d, reason: collision with root package name */
        public int f2731d = 0;

        /* renamed from: e, reason: collision with root package name */
        public int f2732e = 1;

        /* renamed from: f, reason: collision with root package name */
        public int f2733f = 0;

        /* renamed from: g, reason: collision with root package name */
        public boolean f2734g = false;

        /* renamed from: h, reason: collision with root package name */
        public boolean f2735h = false;

        /* renamed from: i, reason: collision with root package name */
        public boolean f2736i = false;

        /* renamed from: j, reason: collision with root package name */
        public boolean f2737j = false;

        /* renamed from: k, reason: collision with root package name */
        public boolean f2738k = false;

        /* renamed from: l, reason: collision with root package name */
        public boolean f2739l = false;

        public void a(int i10) {
            if ((this.f2732e & i10) != 0) {
                return;
            }
            throw new IllegalStateException("Layout state should be one of " + Integer.toBinaryString(i10) + " but it is " + Integer.toBinaryString(this.f2732e));
        }

        public int b() {
            if (this.f2735h) {
                return this.f2730c - this.f2731d;
            }
            return this.f2733f;
        }

        public int c() {
            return this.f2728a;
        }

        public boolean d() {
            return this.f2728a != -1;
        }

        public boolean e() {
            return this.f2735h;
        }

        public void f(h hVar) {
            this.f2732e = 1;
            this.f2733f = hVar.getItemCount();
            this.f2735h = false;
            this.f2736i = false;
            this.f2737j = false;
        }

        public boolean g() {
            return this.f2739l;
        }

        public String toString() {
            return "State{mTargetPosition=" + this.f2728a + ", mData=" + this.f2729b + ", mItemCount=" + this.f2733f + ", mIsMeasuring=" + this.f2737j + ", mPreviousLayoutItemCount=" + this.f2730c + ", mDeletedInvisibleItemCountSincePreviousLayout=" + this.f2731d + ", mStructureChanged=" + this.f2734g + ", mInPreLayout=" + this.f2735h + ", mRunSimpleAnimations=" + this.f2738k + ", mRunPredictiveAnimations=" + this.f2739l + '}';
        }
    }

    /* loaded from: classes.dex */
    public class c implements Interpolator {
        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f10) {
            float f11 = f10 - 1.0f;
            return (f11 * f11 * f11 * f11 * f11) + 1.0f;
        }
    }

    /* loaded from: classes.dex */
    public static abstract class c0 {
    }

    /* loaded from: classes.dex */
    public class d implements a0.b {
        public d() {
        }

        @Override // androidx.recyclerview.widget.a0.b
        public void a(e0 e0Var) {
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.mLayout.removeAndRecycleView(e0Var.itemView, recyclerView.mRecycler);
        }

        @Override // androidx.recyclerview.widget.a0.b
        public void b(e0 e0Var, m.c cVar, m.c cVar2) {
            RecyclerView.this.animateAppearance(e0Var, cVar, cVar2);
        }

        @Override // androidx.recyclerview.widget.a0.b
        public void c(e0 e0Var, m.c cVar, m.c cVar2) {
            RecyclerView.this.mRecycler.J(e0Var);
            RecyclerView.this.animateDisappearance(e0Var, cVar, cVar2);
        }

        @Override // androidx.recyclerview.widget.a0.b
        public void d(e0 e0Var, m.c cVar, m.c cVar2) {
            e0Var.setIsRecyclable(false);
            RecyclerView recyclerView = RecyclerView.this;
            if (recyclerView.mDataSetHasChangedAfterLayout) {
                if (recyclerView.mItemAnimator.b(e0Var, e0Var, cVar, cVar2)) {
                    RecyclerView.this.postAnimationRunner();
                }
            } else if (recyclerView.mItemAnimator.d(e0Var, cVar, cVar2)) {
                RecyclerView.this.postAnimationRunner();
            }
        }
    }

    /* loaded from: classes.dex */
    public class d0 implements Runnable {

        /* renamed from: f, reason: collision with root package name */
        public int f2746f;

        /* renamed from: g, reason: collision with root package name */
        public int f2747g;

        /* renamed from: h, reason: collision with root package name */
        public OverScroller f2748h;

        /* renamed from: i, reason: collision with root package name */
        public Interpolator f2749i;

        /* renamed from: j, reason: collision with root package name */
        public boolean f2750j;

        /* renamed from: k, reason: collision with root package name */
        public boolean f2751k;

        public d0() {
            Interpolator interpolator = RecyclerView.sQuinticInterpolator;
            this.f2749i = interpolator;
            this.f2750j = false;
            this.f2751k = false;
            this.f2748h = new OverScroller(RecyclerView.this.getContext(), interpolator);
        }

        public final int a(int i10, int i11) {
            int abs = Math.abs(i10);
            int abs2 = Math.abs(i11);
            boolean z10 = abs > abs2;
            RecyclerView recyclerView = RecyclerView.this;
            int width = z10 ? recyclerView.getWidth() : recyclerView.getHeight();
            if (!z10) {
                abs = abs2;
            }
            return Math.min((int) (((abs / width) + 1.0f) * 300.0f), 2000);
        }

        public void b(int i10, int i11) {
            RecyclerView.this.setScrollState(2);
            this.f2747g = 0;
            this.f2746f = 0;
            Interpolator interpolator = this.f2749i;
            Interpolator interpolator2 = RecyclerView.sQuinticInterpolator;
            if (interpolator != interpolator2) {
                this.f2749i = interpolator2;
                this.f2748h = new OverScroller(RecyclerView.this.getContext(), interpolator2);
            }
            this.f2748h.fling(0, 0, i10, i11, Integer.MIN_VALUE, Api.BaseClientBuilder.API_PRIORITY_OTHER, Integer.MIN_VALUE, Api.BaseClientBuilder.API_PRIORITY_OTHER);
            d();
        }

        public final void c() {
            RecyclerView.this.removeCallbacks(this);
            q0.b0.l0(RecyclerView.this, this);
        }

        public void d() {
            if (this.f2750j) {
                this.f2751k = true;
            } else {
                c();
            }
        }

        public void e(int i10, int i11, int i12, Interpolator interpolator) {
            if (i12 == Integer.MIN_VALUE) {
                i12 = a(i10, i11);
            }
            int i13 = i12;
            if (interpolator == null) {
                interpolator = RecyclerView.sQuinticInterpolator;
            }
            if (this.f2749i != interpolator) {
                this.f2749i = interpolator;
                this.f2748h = new OverScroller(RecyclerView.this.getContext(), interpolator);
            }
            this.f2747g = 0;
            this.f2746f = 0;
            RecyclerView.this.setScrollState(2);
            this.f2748h.startScroll(0, 0, i10, i11, i13);
            if (Build.VERSION.SDK_INT < 23) {
                this.f2748h.computeScrollOffset();
            }
            d();
        }

        public void f() {
            RecyclerView.this.removeCallbacks(this);
            this.f2748h.abortAnimation();
        }

        @Override // java.lang.Runnable
        public void run() {
            int i10;
            int i11;
            RecyclerView recyclerView = RecyclerView.this;
            if (recyclerView.mLayout == null) {
                f();
                return;
            }
            this.f2751k = false;
            this.f2750j = true;
            recyclerView.consumePendingUpdateOperations();
            OverScroller overScroller = this.f2748h;
            if (overScroller.computeScrollOffset()) {
                int currX = overScroller.getCurrX();
                int currY = overScroller.getCurrY();
                int i12 = currX - this.f2746f;
                int i13 = currY - this.f2747g;
                this.f2746f = currX;
                this.f2747g = currY;
                RecyclerView recyclerView2 = RecyclerView.this;
                int[] iArr = recyclerView2.mReusableIntPair;
                iArr[0] = 0;
                iArr[1] = 0;
                if (recyclerView2.dispatchNestedPreScroll(i12, i13, iArr, null, 1)) {
                    int[] iArr2 = RecyclerView.this.mReusableIntPair;
                    i12 -= iArr2[0];
                    i13 -= iArr2[1];
                }
                if (RecyclerView.this.getOverScrollMode() != 2) {
                    RecyclerView.this.considerReleasingGlowsOnScroll(i12, i13);
                }
                RecyclerView recyclerView3 = RecyclerView.this;
                if (recyclerView3.mAdapter != null) {
                    int[] iArr3 = recyclerView3.mReusableIntPair;
                    iArr3[0] = 0;
                    iArr3[1] = 0;
                    recyclerView3.scrollStep(i12, i13, iArr3);
                    RecyclerView recyclerView4 = RecyclerView.this;
                    int[] iArr4 = recyclerView4.mReusableIntPair;
                    i11 = iArr4[0];
                    i10 = iArr4[1];
                    i12 -= i11;
                    i13 -= i10;
                    a0 a0Var = recyclerView4.mLayout.mSmoothScroller;
                    if (a0Var != null && !a0Var.isPendingInitialRun() && a0Var.isRunning()) {
                        int b10 = RecyclerView.this.mState.b();
                        if (b10 == 0) {
                            a0Var.stop();
                        } else if (a0Var.getTargetPosition() >= b10) {
                            a0Var.setTargetPosition(b10 - 1);
                            a0Var.onAnimation(i11, i10);
                        } else {
                            a0Var.onAnimation(i11, i10);
                        }
                    }
                } else {
                    i10 = 0;
                    i11 = 0;
                }
                if (!RecyclerView.this.mItemDecorations.isEmpty()) {
                    RecyclerView.this.invalidate();
                }
                RecyclerView recyclerView5 = RecyclerView.this;
                int[] iArr5 = recyclerView5.mReusableIntPair;
                iArr5[0] = 0;
                iArr5[1] = 0;
                recyclerView5.dispatchNestedScroll(i11, i10, i12, i13, null, 1, iArr5);
                RecyclerView recyclerView6 = RecyclerView.this;
                int[] iArr6 = recyclerView6.mReusableIntPair;
                int i14 = i12 - iArr6[0];
                int i15 = i13 - iArr6[1];
                if (i11 != 0 || i10 != 0) {
                    recyclerView6.dispatchOnScrolled(i11, i10);
                }
                if (!RecyclerView.this.awakenScrollBars()) {
                    RecyclerView.this.invalidate();
                }
                boolean z10 = overScroller.isFinished() || (((overScroller.getCurrX() == overScroller.getFinalX()) || i14 != 0) && ((overScroller.getCurrY() == overScroller.getFinalY()) || i15 != 0));
                a0 a0Var2 = RecyclerView.this.mLayout.mSmoothScroller;
                if (!(a0Var2 != null && a0Var2.isPendingInitialRun()) && z10) {
                    if (RecyclerView.this.getOverScrollMode() != 2) {
                        int currVelocity = (int) overScroller.getCurrVelocity();
                        int i16 = i14 < 0 ? -currVelocity : i14 > 0 ? currVelocity : 0;
                        if (i15 < 0) {
                            currVelocity = -currVelocity;
                        } else if (i15 <= 0) {
                            currVelocity = 0;
                        }
                        RecyclerView.this.absorbGlows(i16, currVelocity);
                    }
                    if (RecyclerView.ALLOW_THREAD_GAP_WORK) {
                        RecyclerView.this.mPrefetchRegistry.b();
                    }
                } else {
                    d();
                    RecyclerView recyclerView7 = RecyclerView.this;
                    androidx.recyclerview.widget.l lVar = recyclerView7.mGapWorker;
                    if (lVar != null) {
                        lVar.f(recyclerView7, i11, i10);
                    }
                }
            }
            a0 a0Var3 = RecyclerView.this.mLayout.mSmoothScroller;
            if (a0Var3 != null && a0Var3.isPendingInitialRun()) {
                a0Var3.onAnimation(0, 0);
            }
            this.f2750j = false;
            if (this.f2751k) {
                c();
            } else {
                RecyclerView.this.setScrollState(0);
                RecyclerView.this.stopNestedScroll(1);
            }
        }
    }

    /* loaded from: classes.dex */
    public class e implements f.b {
        public e() {
        }

        @Override // androidx.recyclerview.widget.f.b
        public View a(int i10) {
            return RecyclerView.this.getChildAt(i10);
        }

        @Override // androidx.recyclerview.widget.f.b
        public void b(View view) {
            e0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt != null) {
                childViewHolderInt.onEnteredHiddenState(RecyclerView.this);
            }
        }

        @Override // androidx.recyclerview.widget.f.b
        public e0 c(View view) {
            return RecyclerView.getChildViewHolderInt(view);
        }

        @Override // androidx.recyclerview.widget.f.b
        public void d(int i10) {
            e0 childViewHolderInt;
            View a10 = a(i10);
            if (a10 != null && (childViewHolderInt = RecyclerView.getChildViewHolderInt(a10)) != null) {
                if (childViewHolderInt.isTmpDetached() && !childViewHolderInt.shouldIgnore()) {
                    throw new IllegalArgumentException("called detach on an already detached child " + childViewHolderInt + RecyclerView.this.exceptionLabel());
                }
                childViewHolderInt.addFlags(256);
            }
            RecyclerView.this.detachViewFromParent(i10);
        }

        @Override // androidx.recyclerview.widget.f.b
        public void e(View view) {
            e0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt != null) {
                childViewHolderInt.onLeftHiddenState(RecyclerView.this);
            }
        }

        @Override // androidx.recyclerview.widget.f.b
        public void f(View view, int i10) {
            RecyclerView.this.addView(view, i10);
            RecyclerView.this.dispatchChildAttached(view);
        }

        @Override // androidx.recyclerview.widget.f.b
        public int g() {
            return RecyclerView.this.getChildCount();
        }

        @Override // androidx.recyclerview.widget.f.b
        public void h(int i10) {
            View childAt = RecyclerView.this.getChildAt(i10);
            if (childAt != null) {
                RecyclerView.this.dispatchChildDetached(childAt);
                childAt.clearAnimation();
            }
            RecyclerView.this.removeViewAt(i10);
        }

        @Override // androidx.recyclerview.widget.f.b
        public void i() {
            int g10 = g();
            for (int i10 = 0; i10 < g10; i10++) {
                View a10 = a(i10);
                RecyclerView.this.dispatchChildDetached(a10);
                a10.clearAnimation();
            }
            RecyclerView.this.removeAllViews();
        }

        @Override // androidx.recyclerview.widget.f.b
        public void j(View view, int i10, ViewGroup.LayoutParams layoutParams) {
            e0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt != null) {
                if (!childViewHolderInt.isTmpDetached() && !childViewHolderInt.shouldIgnore()) {
                    throw new IllegalArgumentException("Called attach on a child which is not detached: " + childViewHolderInt + RecyclerView.this.exceptionLabel());
                }
                childViewHolderInt.clearTmpDetachFlag();
            }
            RecyclerView.this.attachViewToParent(view, i10, layoutParams);
        }

        @Override // androidx.recyclerview.widget.f.b
        public int k(View view) {
            return RecyclerView.this.indexOfChild(view);
        }
    }

    /* loaded from: classes.dex */
    public static abstract class e0 {
        public static final int FLAG_ADAPTER_FULLUPDATE = 1024;
        public static final int FLAG_ADAPTER_POSITION_UNKNOWN = 512;
        public static final int FLAG_APPEARED_IN_PRE_LAYOUT = 4096;
        public static final int FLAG_BOUNCED_FROM_HIDDEN_LIST = 8192;
        public static final int FLAG_BOUND = 1;
        public static final int FLAG_IGNORE = 128;
        public static final int FLAG_INVALID = 4;
        public static final int FLAG_MOVED = 2048;
        public static final int FLAG_NOT_RECYCLABLE = 16;
        public static final int FLAG_REMOVED = 8;
        public static final int FLAG_RETURNED_FROM_SCRAP = 32;
        public static final int FLAG_TMP_DETACHED = 256;
        public static final int FLAG_UPDATE = 2;
        private static final List<Object> FULLUPDATE_PAYLOADS = Collections.emptyList();
        public static final int PENDING_ACCESSIBILITY_STATE_NOT_SET = -1;
        public final View itemView;
        public h<? extends e0> mBindingAdapter;
        public int mFlags;
        public WeakReference<RecyclerView> mNestedRecyclerView;
        public RecyclerView mOwnerRecyclerView;
        public int mPosition = -1;
        public int mOldPosition = -1;
        public long mItemId = -1;
        public int mItemViewType = -1;
        public int mPreLayoutPosition = -1;
        public e0 mShadowedHolder = null;
        public e0 mShadowingHolder = null;
        public List<Object> mPayloads = null;
        public List<Object> mUnmodifiedPayloads = null;
        private int mIsRecyclableCount = 0;
        public w mScrapContainer = null;
        public boolean mInChangeScrap = false;
        private int mWasImportantForAccessibilityBeforeHidden = 0;
        public int mPendingAccessibilityState = -1;

        public e0(View view) {
            if (view != null) {
                this.itemView = view;
                return;
            }
            throw new IllegalArgumentException("itemView may not be null");
        }

        private void createPayloadsIfNeeded() {
            if (this.mPayloads == null) {
                ArrayList arrayList = new ArrayList();
                this.mPayloads = arrayList;
                this.mUnmodifiedPayloads = Collections.unmodifiableList(arrayList);
            }
        }

        public void addChangePayload(Object obj) {
            if (obj == null) {
                addFlags(FLAG_ADAPTER_FULLUPDATE);
            } else if ((1024 & this.mFlags) == 0) {
                createPayloadsIfNeeded();
                this.mPayloads.add(obj);
            }
        }

        public void addFlags(int i10) {
            this.mFlags = i10 | this.mFlags;
        }

        public void clearOldPosition() {
            this.mOldPosition = -1;
            this.mPreLayoutPosition = -1;
        }

        public void clearPayload() {
            List<Object> list = this.mPayloads;
            if (list != null) {
                list.clear();
            }
            this.mFlags &= -1025;
        }

        public void clearReturnedFromScrapFlag() {
            this.mFlags &= -33;
        }

        public void clearTmpDetachFlag() {
            this.mFlags &= -257;
        }

        public boolean doesTransientStatePreventRecycling() {
            return (this.mFlags & 16) == 0 && q0.b0.U(this.itemView);
        }

        public void flagRemovedAndOffsetPosition(int i10, int i11, boolean z10) {
            addFlags(8);
            offsetPosition(i11, z10);
            this.mPosition = i10;
        }

        public final int getAbsoluteAdapterPosition() {
            RecyclerView recyclerView = this.mOwnerRecyclerView;
            if (recyclerView == null) {
                return -1;
            }
            return recyclerView.getAdapterPositionInRecyclerView(this);
        }

        @Deprecated
        public final int getAdapterPosition() {
            return getBindingAdapterPosition();
        }

        public final h<? extends e0> getBindingAdapter() {
            return this.mBindingAdapter;
        }

        public final int getBindingAdapterPosition() {
            RecyclerView recyclerView;
            h adapter;
            int adapterPositionInRecyclerView;
            if (this.mBindingAdapter == null || (recyclerView = this.mOwnerRecyclerView) == null || (adapter = recyclerView.getAdapter()) == null || (adapterPositionInRecyclerView = this.mOwnerRecyclerView.getAdapterPositionInRecyclerView(this)) == -1) {
                return -1;
            }
            return adapter.findRelativeAdapterPositionIn(this.mBindingAdapter, this, adapterPositionInRecyclerView);
        }

        public final long getItemId() {
            return this.mItemId;
        }

        public final int getItemViewType() {
            return this.mItemViewType;
        }

        public final int getLayoutPosition() {
            int i10 = this.mPreLayoutPosition;
            return i10 == -1 ? this.mPosition : i10;
        }

        public final int getOldPosition() {
            return this.mOldPosition;
        }

        @Deprecated
        public final int getPosition() {
            int i10 = this.mPreLayoutPosition;
            return i10 == -1 ? this.mPosition : i10;
        }

        public List<Object> getUnmodifiedPayloads() {
            if ((this.mFlags & FLAG_ADAPTER_FULLUPDATE) == 0) {
                List<Object> list = this.mPayloads;
                if (list != null && list.size() != 0) {
                    return this.mUnmodifiedPayloads;
                }
                return FULLUPDATE_PAYLOADS;
            }
            return FULLUPDATE_PAYLOADS;
        }

        public boolean hasAnyOfTheFlags(int i10) {
            return (i10 & this.mFlags) != 0;
        }

        public boolean isAdapterPositionUnknown() {
            return (this.mFlags & 512) != 0 || isInvalid();
        }

        public boolean isAttachedToTransitionOverlay() {
            return (this.itemView.getParent() == null || this.itemView.getParent() == this.mOwnerRecyclerView) ? false : true;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean isBound() {
            return (this.mFlags & 1) != 0;
        }

        public boolean isInvalid() {
            return (this.mFlags & 4) != 0;
        }

        public final boolean isRecyclable() {
            return (this.mFlags & 16) == 0 && !q0.b0.U(this.itemView);
        }

        public boolean isRemoved() {
            return (this.mFlags & 8) != 0;
        }

        public boolean isScrap() {
            return this.mScrapContainer != null;
        }

        public boolean isTmpDetached() {
            return (this.mFlags & 256) != 0;
        }

        public boolean isUpdated() {
            return (this.mFlags & 2) != 0;
        }

        public boolean needsUpdate() {
            return (this.mFlags & 2) != 0;
        }

        public void offsetPosition(int i10, boolean z10) {
            if (this.mOldPosition == -1) {
                this.mOldPosition = this.mPosition;
            }
            if (this.mPreLayoutPosition == -1) {
                this.mPreLayoutPosition = this.mPosition;
            }
            if (z10) {
                this.mPreLayoutPosition += i10;
            }
            this.mPosition += i10;
            if (this.itemView.getLayoutParams() != null) {
                ((q) this.itemView.getLayoutParams()).f2779h = true;
            }
        }

        public void onEnteredHiddenState(RecyclerView recyclerView) {
            int i10 = this.mPendingAccessibilityState;
            if (i10 != -1) {
                this.mWasImportantForAccessibilityBeforeHidden = i10;
            } else {
                this.mWasImportantForAccessibilityBeforeHidden = q0.b0.C(this.itemView);
            }
            recyclerView.setChildImportantForAccessibilityInternal(this, 4);
        }

        public void onLeftHiddenState(RecyclerView recyclerView) {
            recyclerView.setChildImportantForAccessibilityInternal(this, this.mWasImportantForAccessibilityBeforeHidden);
            this.mWasImportantForAccessibilityBeforeHidden = 0;
        }

        public void resetInternal() {
            this.mFlags = 0;
            this.mPosition = -1;
            this.mOldPosition = -1;
            this.mItemId = -1L;
            this.mPreLayoutPosition = -1;
            this.mIsRecyclableCount = 0;
            this.mShadowedHolder = null;
            this.mShadowingHolder = null;
            clearPayload();
            this.mWasImportantForAccessibilityBeforeHidden = 0;
            this.mPendingAccessibilityState = -1;
            RecyclerView.clearNestedRecyclerViewIfNotNested(this);
        }

        public void saveOldPosition() {
            if (this.mOldPosition == -1) {
                this.mOldPosition = this.mPosition;
            }
        }

        public void setFlags(int i10, int i11) {
            this.mFlags = (i10 & i11) | (this.mFlags & (i11 ^ (-1)));
        }

        public final void setIsRecyclable(boolean z10) {
            int i10 = this.mIsRecyclableCount;
            int i11 = z10 ? i10 - 1 : i10 + 1;
            this.mIsRecyclableCount = i11;
            if (i11 < 0) {
                this.mIsRecyclableCount = 0;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for ");
                sb2.append(this);
                return;
            }
            if (!z10 && i11 == 1) {
                this.mFlags |= 16;
            } else if (z10 && i11 == 0) {
                this.mFlags &= -17;
            }
        }

        public void setScrapContainer(w wVar, boolean z10) {
            this.mScrapContainer = wVar;
            this.mInChangeScrap = z10;
        }

        public boolean shouldBeKeptAsChild() {
            return (this.mFlags & 16) != 0;
        }

        public boolean shouldIgnore() {
            return (this.mFlags & 128) != 0;
        }

        public void stopIgnoring() {
            this.mFlags &= -129;
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder((getClass().isAnonymousClass() ? "ViewHolder" : getClass().getSimpleName()) + "{" + Integer.toHexString(hashCode()) + " position=" + this.mPosition + " id=" + this.mItemId + ", oldPos=" + this.mOldPosition + ", pLpos:" + this.mPreLayoutPosition);
            if (isScrap()) {
                sb2.append(" scrap ");
                sb2.append(this.mInChangeScrap ? "[changeScrap]" : "[attachedScrap]");
            }
            if (isInvalid()) {
                sb2.append(" invalid");
            }
            if (!isBound()) {
                sb2.append(" unbound");
            }
            if (needsUpdate()) {
                sb2.append(" update");
            }
            if (isRemoved()) {
                sb2.append(" removed");
            }
            if (shouldIgnore()) {
                sb2.append(" ignored");
            }
            if (isTmpDetached()) {
                sb2.append(" tmpDetached");
            }
            if (!isRecyclable()) {
                sb2.append(" not recyclable(" + this.mIsRecyclableCount + ")");
            }
            if (isAdapterPositionUnknown()) {
                sb2.append(" undefined adapter position");
            }
            if (this.itemView.getParent() == null) {
                sb2.append(" no parent");
            }
            sb2.append("}");
            return sb2.toString();
        }

        public void unScrap() {
            this.mScrapContainer.J(this);
        }

        public boolean wasReturnedFromScrap() {
            return (this.mFlags & 32) != 0;
        }
    }

    /* loaded from: classes.dex */
    public class f implements a.InterfaceC0045a {
        public f() {
        }

        @Override // androidx.recyclerview.widget.a.InterfaceC0045a
        public void a(int i10, int i11) {
            RecyclerView.this.offsetPositionRecordsForMove(i10, i11);
            RecyclerView.this.mItemsAddedOrRemoved = true;
        }

        @Override // androidx.recyclerview.widget.a.InterfaceC0045a
        public void b(a.b bVar) {
            i(bVar);
        }

        @Override // androidx.recyclerview.widget.a.InterfaceC0045a
        public e0 c(int i10) {
            e0 findViewHolderForPosition = RecyclerView.this.findViewHolderForPosition(i10, true);
            if (findViewHolderForPosition == null || RecyclerView.this.mChildHelper.n(findViewHolderForPosition.itemView)) {
                return null;
            }
            return findViewHolderForPosition;
        }

        @Override // androidx.recyclerview.widget.a.InterfaceC0045a
        public void d(int i10, int i11) {
            RecyclerView.this.offsetPositionRecordsForRemove(i10, i11, false);
            RecyclerView.this.mItemsAddedOrRemoved = true;
        }

        @Override // androidx.recyclerview.widget.a.InterfaceC0045a
        public void e(int i10, int i11) {
            RecyclerView.this.offsetPositionRecordsForInsert(i10, i11);
            RecyclerView.this.mItemsAddedOrRemoved = true;
        }

        @Override // androidx.recyclerview.widget.a.InterfaceC0045a
        public void f(int i10, int i11) {
            RecyclerView.this.offsetPositionRecordsForRemove(i10, i11, true);
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.mItemsAddedOrRemoved = true;
            recyclerView.mState.f2731d += i11;
        }

        @Override // androidx.recyclerview.widget.a.InterfaceC0045a
        public void g(a.b bVar) {
            i(bVar);
        }

        @Override // androidx.recyclerview.widget.a.InterfaceC0045a
        public void h(int i10, int i11, Object obj) {
            RecyclerView.this.viewRangeUpdate(i10, i11, obj);
            RecyclerView.this.mItemsChanged = true;
        }

        public void i(a.b bVar) {
            int i10 = bVar.f2861a;
            if (i10 == 1) {
                RecyclerView recyclerView = RecyclerView.this;
                recyclerView.mLayout.onItemsAdded(recyclerView, bVar.f2862b, bVar.f2864d);
                return;
            }
            if (i10 == 2) {
                RecyclerView recyclerView2 = RecyclerView.this;
                recyclerView2.mLayout.onItemsRemoved(recyclerView2, bVar.f2862b, bVar.f2864d);
            } else if (i10 == 4) {
                RecyclerView recyclerView3 = RecyclerView.this;
                recyclerView3.mLayout.onItemsUpdated(recyclerView3, bVar.f2862b, bVar.f2864d, bVar.f2863c);
            } else {
                if (i10 != 8) {
                    return;
                }
                RecyclerView recyclerView4 = RecyclerView.this;
                recyclerView4.mLayout.onItemsMoved(recyclerView4, bVar.f2862b, bVar.f2864d, 1);
            }
        }
    }

    /* loaded from: classes.dex */
    public static /* synthetic */ class g {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f2755a;

        static {
            int[] iArr = new int[h.a.values().length];
            f2755a = iArr;
            try {
                iArr[h.a.PREVENT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2755a[h.a.PREVENT_WHEN_EMPTY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* loaded from: classes.dex */
    public static abstract class h<VH extends e0> {
        private final i mObservable = new i();
        private boolean mHasStableIds = false;
        private a mStateRestorationPolicy = a.ALLOW;

        /* loaded from: classes.dex */
        public enum a {
            ALLOW,
            PREVENT_WHEN_EMPTY,
            PREVENT
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void bindViewHolder(VH vh, int i10) {
            boolean z10 = vh.mBindingAdapter == null;
            if (z10) {
                vh.mPosition = i10;
                if (hasStableIds()) {
                    vh.mItemId = getItemId(i10);
                }
                vh.setFlags(1, 519);
                m0.k.a(RecyclerView.TRACE_BIND_VIEW_TAG);
            }
            vh.mBindingAdapter = this;
            onBindViewHolder(vh, i10, vh.getUnmodifiedPayloads());
            if (z10) {
                vh.clearPayload();
                ViewGroup.LayoutParams layoutParams = vh.itemView.getLayoutParams();
                if (layoutParams instanceof q) {
                    ((q) layoutParams).f2779h = true;
                }
                m0.k.b();
            }
        }

        public boolean canRestoreState() {
            int i10 = g.f2755a[this.mStateRestorationPolicy.ordinal()];
            if (i10 != 1) {
                return i10 != 2 || getItemCount() > 0;
            }
            return false;
        }

        public final VH createViewHolder(ViewGroup viewGroup, int i10) {
            try {
                m0.k.a(RecyclerView.TRACE_CREATE_VIEW_TAG);
                VH onCreateViewHolder = onCreateViewHolder(viewGroup, i10);
                if (onCreateViewHolder.itemView.getParent() == null) {
                    onCreateViewHolder.mItemViewType = i10;
                    return onCreateViewHolder;
                }
                throw new IllegalStateException("ViewHolder views must not be attached when created. Ensure that you are not passing 'true' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)");
            } finally {
                m0.k.b();
            }
        }

        public int findRelativeAdapterPositionIn(h<? extends e0> hVar, e0 e0Var, int i10) {
            if (hVar == this) {
                return i10;
            }
            return -1;
        }

        public abstract int getItemCount();

        public long getItemId(int i10) {
            return -1L;
        }

        public int getItemViewType(int i10) {
            return 0;
        }

        public final a getStateRestorationPolicy() {
            return this.mStateRestorationPolicy;
        }

        public final boolean hasObservers() {
            return this.mObservable.a();
        }

        public final boolean hasStableIds() {
            return this.mHasStableIds;
        }

        public final void notifyDataSetChanged() {
            this.mObservable.b();
        }

        public final void notifyItemChanged(int i10) {
            this.mObservable.d(i10, 1);
        }

        public final void notifyItemInserted(int i10) {
            this.mObservable.f(i10, 1);
        }

        public final void notifyItemMoved(int i10, int i11) {
            this.mObservable.c(i10, i11);
        }

        public final void notifyItemRangeChanged(int i10, int i11) {
            this.mObservable.d(i10, i11);
        }

        public final void notifyItemRangeInserted(int i10, int i11) {
            this.mObservable.f(i10, i11);
        }

        public final void notifyItemRangeRemoved(int i10, int i11) {
            this.mObservable.g(i10, i11);
        }

        public final void notifyItemRemoved(int i10) {
            this.mObservable.g(i10, 1);
        }

        public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        }

        public abstract void onBindViewHolder(VH vh, int i10);

        public void onBindViewHolder(VH vh, int i10, List<Object> list) {
            onBindViewHolder(vh, i10);
        }

        public abstract VH onCreateViewHolder(ViewGroup viewGroup, int i10);

        public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        }

        public boolean onFailedToRecycleView(VH vh) {
            return false;
        }

        public void onViewAttachedToWindow(VH vh) {
        }

        public void onViewDetachedFromWindow(VH vh) {
        }

        public void onViewRecycled(VH vh) {
        }

        public void registerAdapterDataObserver(j jVar) {
            this.mObservable.registerObserver(jVar);
        }

        public void setHasStableIds(boolean z10) {
            if (!hasObservers()) {
                this.mHasStableIds = z10;
                return;
            }
            throw new IllegalStateException("Cannot change whether this adapter has stable IDs while the adapter has registered observers.");
        }

        public void setStateRestorationPolicy(a aVar) {
            this.mStateRestorationPolicy = aVar;
            this.mObservable.h();
        }

        public void unregisterAdapterDataObserver(j jVar) {
            this.mObservable.unregisterObserver(jVar);
        }

        public final void notifyItemChanged(int i10, Object obj) {
            this.mObservable.e(i10, 1, obj);
        }

        public final void notifyItemRangeChanged(int i10, int i11, Object obj) {
            this.mObservable.e(i10, i11, obj);
        }
    }

    /* loaded from: classes.dex */
    public static class i extends Observable<j> {
        public boolean a() {
            return !((Observable) this).mObservers.isEmpty();
        }

        public void b() {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((j) ((Observable) this).mObservers.get(size)).onChanged();
            }
        }

        public void c(int i10, int i11) {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((j) ((Observable) this).mObservers.get(size)).onItemRangeMoved(i10, i11, 1);
            }
        }

        public void d(int i10, int i11) {
            e(i10, i11, null);
        }

        public void e(int i10, int i11, Object obj) {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((j) ((Observable) this).mObservers.get(size)).onItemRangeChanged(i10, i11, obj);
            }
        }

        public void f(int i10, int i11) {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((j) ((Observable) this).mObservers.get(size)).onItemRangeInserted(i10, i11);
            }
        }

        public void g(int i10, int i11) {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((j) ((Observable) this).mObservers.get(size)).onItemRangeRemoved(i10, i11);
            }
        }

        public void h() {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((j) ((Observable) this).mObservers.get(size)).onStateRestorationPolicyChanged();
            }
        }
    }

    /* loaded from: classes.dex */
    public static abstract class j {
        public void onChanged() {
        }

        public void onItemRangeChanged(int i10, int i11) {
        }

        public void onItemRangeChanged(int i10, int i11, Object obj) {
            onItemRangeChanged(i10, i11);
        }

        public void onItemRangeInserted(int i10, int i11) {
        }

        public void onItemRangeMoved(int i10, int i11, int i12) {
        }

        public void onItemRangeRemoved(int i10, int i11) {
        }

        public void onStateRestorationPolicyChanged() {
        }
    }

    /* loaded from: classes.dex */
    public interface k {
        int a(int i10, int i11);
    }

    /* loaded from: classes.dex */
    public static class l {
        public EdgeEffect a(RecyclerView recyclerView, int i10) {
            return new EdgeEffect(recyclerView.getContext());
        }
    }

    /* loaded from: classes.dex */
    public static abstract class m {

        /* renamed from: a, reason: collision with root package name */
        public b f2760a = null;

        /* renamed from: b, reason: collision with root package name */
        public ArrayList<a> f2761b = new ArrayList<>();

        /* renamed from: c, reason: collision with root package name */
        public long f2762c = 120;

        /* renamed from: d, reason: collision with root package name */
        public long f2763d = 120;

        /* renamed from: e, reason: collision with root package name */
        public long f2764e = 250;

        /* renamed from: f, reason: collision with root package name */
        public long f2765f = 250;

        /* loaded from: classes.dex */
        public interface a {
            void a();
        }

        /* loaded from: classes.dex */
        public interface b {
            void a(e0 e0Var);
        }

        /* loaded from: classes.dex */
        public static class c {

            /* renamed from: a, reason: collision with root package name */
            public int f2766a;

            /* renamed from: b, reason: collision with root package name */
            public int f2767b;

            /* renamed from: c, reason: collision with root package name */
            public int f2768c;

            /* renamed from: d, reason: collision with root package name */
            public int f2769d;

            public c a(e0 e0Var) {
                return b(e0Var, 0);
            }

            public c b(e0 e0Var, int i10) {
                View view = e0Var.itemView;
                this.f2766a = view.getLeft();
                this.f2767b = view.getTop();
                this.f2768c = view.getRight();
                this.f2769d = view.getBottom();
                return this;
            }
        }

        public static int e(e0 e0Var) {
            int i10 = e0Var.mFlags & 14;
            if (e0Var.isInvalid()) {
                return 4;
            }
            if ((i10 & 4) != 0) {
                return i10;
            }
            int oldPosition = e0Var.getOldPosition();
            int absoluteAdapterPosition = e0Var.getAbsoluteAdapterPosition();
            return (oldPosition == -1 || absoluteAdapterPosition == -1 || oldPosition == absoluteAdapterPosition) ? i10 : i10 | e0.FLAG_MOVED;
        }

        public abstract boolean a(e0 e0Var, c cVar, c cVar2);

        public abstract boolean b(e0 e0Var, e0 e0Var2, c cVar, c cVar2);

        public abstract boolean c(e0 e0Var, c cVar, c cVar2);

        public abstract boolean d(e0 e0Var, c cVar, c cVar2);

        public abstract boolean f(e0 e0Var);

        public boolean g(e0 e0Var, List<Object> list) {
            return f(e0Var);
        }

        public final void h(e0 e0Var) {
            r(e0Var);
            b bVar = this.f2760a;
            if (bVar != null) {
                bVar.a(e0Var);
            }
        }

        public final void i() {
            int size = this.f2761b.size();
            for (int i10 = 0; i10 < size; i10++) {
                this.f2761b.get(i10).a();
            }
            this.f2761b.clear();
        }

        public abstract void j(e0 e0Var);

        public abstract void k();

        public long l() {
            return this.f2762c;
        }

        public long m() {
            return this.f2765f;
        }

        public long n() {
            return this.f2764e;
        }

        public long o() {
            return this.f2763d;
        }

        public abstract boolean p();

        public c q() {
            return new c();
        }

        public void r(e0 e0Var) {
        }

        public c s(b0 b0Var, e0 e0Var) {
            return q().a(e0Var);
        }

        public c t(b0 b0Var, e0 e0Var, int i10, List<Object> list) {
            return q().a(e0Var);
        }

        public abstract void u();

        public void v(b bVar) {
            this.f2760a = bVar;
        }
    }

    /* loaded from: classes.dex */
    public class n implements m.b {
        public n() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.m.b
        public void a(e0 e0Var) {
            e0Var.setIsRecyclable(true);
            if (e0Var.mShadowedHolder != null && e0Var.mShadowingHolder == null) {
                e0Var.mShadowedHolder = null;
            }
            e0Var.mShadowingHolder = null;
            if (e0Var.shouldBeKeptAsChild() || RecyclerView.this.removeAnimatingView(e0Var.itemView) || !e0Var.isTmpDetached()) {
                return;
            }
            RecyclerView.this.removeDetachedView(e0Var.itemView, false);
        }
    }

    /* loaded from: classes.dex */
    public static abstract class o {
        @Deprecated
        public void getItemOffsets(Rect rect, int i10, RecyclerView recyclerView) {
            rect.set(0, 0, 0, 0);
        }

        @Deprecated
        public void onDraw(Canvas canvas, RecyclerView recyclerView) {
        }

        public void onDraw(Canvas canvas, RecyclerView recyclerView, b0 b0Var) {
            onDraw(canvas, recyclerView);
        }

        @Deprecated
        public void onDrawOver(Canvas canvas, RecyclerView recyclerView) {
        }

        public void onDrawOver(Canvas canvas, RecyclerView recyclerView, b0 b0Var) {
            onDrawOver(canvas, recyclerView);
        }

        public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, b0 b0Var) {
            getItemOffsets(rect, ((q) view.getLayoutParams()).a(), recyclerView);
        }
    }

    /* loaded from: classes.dex */
    public static abstract class p {
        public boolean mAutoMeasure;
        public androidx.recyclerview.widget.f mChildHelper;
        private int mHeight;
        private int mHeightMode;
        public androidx.recyclerview.widget.z mHorizontalBoundCheck;
        private final z.b mHorizontalBoundCheckCallback;
        public boolean mIsAttachedToWindow;
        private boolean mItemPrefetchEnabled;
        private boolean mMeasurementCacheEnabled;
        public int mPrefetchMaxCountObserved;
        public boolean mPrefetchMaxObservedInInitialPrefetch;
        public RecyclerView mRecyclerView;
        public boolean mRequestedSimpleAnimations;
        public a0 mSmoothScroller;
        public androidx.recyclerview.widget.z mVerticalBoundCheck;
        private final z.b mVerticalBoundCheckCallback;
        private int mWidth;
        private int mWidthMode;

        /* loaded from: classes.dex */
        public class a implements z.b {
            public a() {
            }

            @Override // androidx.recyclerview.widget.z.b
            public View a(int i10) {
                return p.this.getChildAt(i10);
            }

            @Override // androidx.recyclerview.widget.z.b
            public int b() {
                return p.this.getWidth() - p.this.getPaddingRight();
            }

            @Override // androidx.recyclerview.widget.z.b
            public int c(View view) {
                return p.this.getDecoratedLeft(view) - ((ViewGroup.MarginLayoutParams) ((q) view.getLayoutParams())).leftMargin;
            }

            @Override // androidx.recyclerview.widget.z.b
            public int d() {
                return p.this.getPaddingLeft();
            }

            @Override // androidx.recyclerview.widget.z.b
            public int e(View view) {
                return p.this.getDecoratedRight(view) + ((ViewGroup.MarginLayoutParams) ((q) view.getLayoutParams())).rightMargin;
            }
        }

        /* loaded from: classes.dex */
        public class b implements z.b {
            public b() {
            }

            @Override // androidx.recyclerview.widget.z.b
            public View a(int i10) {
                return p.this.getChildAt(i10);
            }

            @Override // androidx.recyclerview.widget.z.b
            public int b() {
                return p.this.getHeight() - p.this.getPaddingBottom();
            }

            @Override // androidx.recyclerview.widget.z.b
            public int c(View view) {
                return p.this.getDecoratedTop(view) - ((ViewGroup.MarginLayoutParams) ((q) view.getLayoutParams())).topMargin;
            }

            @Override // androidx.recyclerview.widget.z.b
            public int d() {
                return p.this.getPaddingTop();
            }

            @Override // androidx.recyclerview.widget.z.b
            public int e(View view) {
                return p.this.getDecoratedBottom(view) + ((ViewGroup.MarginLayoutParams) ((q) view.getLayoutParams())).bottomMargin;
            }
        }

        /* loaded from: classes.dex */
        public interface c {
            void a(int i10, int i11);
        }

        /* loaded from: classes.dex */
        public static class d {

            /* renamed from: a, reason: collision with root package name */
            public int f2773a;

            /* renamed from: b, reason: collision with root package name */
            public int f2774b;

            /* renamed from: c, reason: collision with root package name */
            public boolean f2775c;

            /* renamed from: d, reason: collision with root package name */
            public boolean f2776d;
        }

        public p() {
            a aVar = new a();
            this.mHorizontalBoundCheckCallback = aVar;
            b bVar = new b();
            this.mVerticalBoundCheckCallback = bVar;
            this.mHorizontalBoundCheck = new androidx.recyclerview.widget.z(aVar);
            this.mVerticalBoundCheck = new androidx.recyclerview.widget.z(bVar);
            this.mRequestedSimpleAnimations = false;
            this.mIsAttachedToWindow = false;
            this.mAutoMeasure = false;
            this.mMeasurementCacheEnabled = true;
            this.mItemPrefetchEnabled = true;
        }

        private void addViewInt(View view, int i10, boolean z10) {
            e0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (!z10 && !childViewHolderInt.isRemoved()) {
                this.mRecyclerView.mViewInfoStore.p(childViewHolderInt);
            } else {
                this.mRecyclerView.mViewInfoStore.b(childViewHolderInt);
            }
            q qVar = (q) view.getLayoutParams();
            if (!childViewHolderInt.wasReturnedFromScrap() && !childViewHolderInt.isScrap()) {
                if (view.getParent() == this.mRecyclerView) {
                    int m10 = this.mChildHelper.m(view);
                    if (i10 == -1) {
                        i10 = this.mChildHelper.g();
                    }
                    if (m10 == -1) {
                        throw new IllegalStateException("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:" + this.mRecyclerView.indexOfChild(view) + this.mRecyclerView.exceptionLabel());
                    }
                    if (m10 != i10) {
                        this.mRecyclerView.mLayout.moveView(m10, i10);
                    }
                } else {
                    this.mChildHelper.a(view, i10, false);
                    qVar.f2779h = true;
                    a0 a0Var = this.mSmoothScroller;
                    if (a0Var != null && a0Var.isRunning()) {
                        this.mSmoothScroller.onChildAttachedToWindow(view);
                    }
                }
            } else {
                if (childViewHolderInt.isScrap()) {
                    childViewHolderInt.unScrap();
                } else {
                    childViewHolderInt.clearReturnedFromScrapFlag();
                }
                this.mChildHelper.c(view, i10, view.getLayoutParams(), false);
            }
            if (qVar.f2780i) {
                childViewHolderInt.itemView.invalidate();
                qVar.f2780i = false;
            }
        }

        public static int chooseSize(int i10, int i11, int i12) {
            int mode = View.MeasureSpec.getMode(i10);
            int size = View.MeasureSpec.getSize(i10);
            if (mode != Integer.MIN_VALUE) {
                return mode != 1073741824 ? Math.max(i11, i12) : size;
            }
            return Math.min(size, Math.max(i11, i12));
        }

        private void detachViewInternal(int i10, View view) {
            this.mChildHelper.d(i10);
        }

        /* JADX WARN: Code restructure failed: missing block: B:3:0x000a, code lost:
        
            if (r3 >= 0) goto L8;
         */
        @Deprecated
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public static int getChildMeasureSpec(int i10, int i11, int i12, boolean z10) {
            int i13 = i10 - i11;
            int i14 = 0;
            int max = Math.max(0, i13);
            if (!z10) {
                if (i12 < 0) {
                    if (i12 == -1) {
                        i14 = NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH;
                    } else {
                        if (i12 == -2) {
                            i14 = Integer.MIN_VALUE;
                        }
                        i12 = 0;
                    }
                    i12 = max;
                }
                i14 = NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH;
            }
            return View.MeasureSpec.makeMeasureSpec(i12, i14);
        }

        private int[] getChildRectangleOnScreenScrollAmount(View view, Rect rect) {
            int[] iArr = new int[2];
            int paddingLeft = getPaddingLeft();
            int paddingTop = getPaddingTop();
            int width = getWidth() - getPaddingRight();
            int height = getHeight() - getPaddingBottom();
            int left = (view.getLeft() + rect.left) - view.getScrollX();
            int top = (view.getTop() + rect.top) - view.getScrollY();
            int width2 = rect.width() + left;
            int height2 = rect.height() + top;
            int i10 = left - paddingLeft;
            int min = Math.min(0, i10);
            int i11 = top - paddingTop;
            int min2 = Math.min(0, i11);
            int i12 = width2 - width;
            int max = Math.max(0, i12);
            int max2 = Math.max(0, height2 - height);
            if (getLayoutDirection() != 1) {
                if (min == 0) {
                    min = Math.min(i10, max);
                }
                max = min;
            } else if (max == 0) {
                max = Math.max(min, i12);
            }
            if (min2 == 0) {
                min2 = Math.min(i11, max2);
            }
            iArr[0] = max;
            iArr[1] = min2;
            return iArr;
        }

        public static d getProperties(Context context, AttributeSet attributeSet, int i10, int i11) {
            d dVar = new d();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, n1.c.f11172f, i10, i11);
            dVar.f2773a = obtainStyledAttributes.getInt(n1.c.f11173g, 1);
            dVar.f2774b = obtainStyledAttributes.getInt(n1.c.f11183q, 1);
            dVar.f2775c = obtainStyledAttributes.getBoolean(n1.c.f11182p, false);
            dVar.f2776d = obtainStyledAttributes.getBoolean(n1.c.f11184r, false);
            obtainStyledAttributes.recycle();
            return dVar;
        }

        private boolean isFocusedChildVisibleAfterScrolling(RecyclerView recyclerView, int i10, int i11) {
            View focusedChild = recyclerView.getFocusedChild();
            if (focusedChild == null) {
                return false;
            }
            int paddingLeft = getPaddingLeft();
            int paddingTop = getPaddingTop();
            int width = getWidth() - getPaddingRight();
            int height = getHeight() - getPaddingBottom();
            Rect rect = this.mRecyclerView.mTempRect;
            getDecoratedBoundsWithMargins(focusedChild, rect);
            return rect.left - i10 < width && rect.right - i10 > paddingLeft && rect.top - i11 < height && rect.bottom - i11 > paddingTop;
        }

        private static boolean isMeasurementUpToDate(int i10, int i11, int i12) {
            int mode = View.MeasureSpec.getMode(i11);
            int size = View.MeasureSpec.getSize(i11);
            if (i12 > 0 && i10 != i12) {
                return false;
            }
            if (mode == Integer.MIN_VALUE) {
                return size >= i10;
            }
            if (mode != 0) {
                return mode == 1073741824 && size == i10;
            }
            return true;
        }

        private void scrapOrRecycleView(w wVar, int i10, View view) {
            e0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt.shouldIgnore()) {
                return;
            }
            if (childViewHolderInt.isInvalid() && !childViewHolderInt.isRemoved() && !this.mRecyclerView.mAdapter.hasStableIds()) {
                removeViewAt(i10);
                wVar.C(childViewHolderInt);
            } else {
                detachViewAt(i10);
                wVar.D(view);
                this.mRecyclerView.mViewInfoStore.k(childViewHolderInt);
            }
        }

        public void addDisappearingView(View view) {
            addDisappearingView(view, -1);
        }

        public void addView(View view) {
            addView(view, -1);
        }

        public void assertInLayoutOrScroll(String str) {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                recyclerView.assertInLayoutOrScroll(str);
            }
        }

        public void assertNotInLayoutOrScroll(String str) {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                recyclerView.assertNotInLayoutOrScroll(str);
            }
        }

        public void attachView(View view, int i10, q qVar) {
            e0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt.isRemoved()) {
                this.mRecyclerView.mViewInfoStore.b(childViewHolderInt);
            } else {
                this.mRecyclerView.mViewInfoStore.p(childViewHolderInt);
            }
            this.mChildHelper.c(view, i10, qVar, childViewHolderInt.isRemoved());
        }

        public void calculateItemDecorationsForChild(View view, Rect rect) {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView == null) {
                rect.set(0, 0, 0, 0);
            } else {
                rect.set(recyclerView.getItemDecorInsetsForChild(view));
            }
        }

        public boolean canScrollHorizontally() {
            return false;
        }

        public boolean canScrollVertically() {
            return false;
        }

        public boolean checkLayoutParams(q qVar) {
            return qVar != null;
        }

        public void collectAdjacentPrefetchPositions(int i10, int i11, b0 b0Var, c cVar) {
        }

        public void collectInitialPrefetchPositions(int i10, c cVar) {
        }

        public int computeHorizontalScrollExtent(b0 b0Var) {
            return 0;
        }

        public int computeHorizontalScrollOffset(b0 b0Var) {
            return 0;
        }

        public int computeHorizontalScrollRange(b0 b0Var) {
            return 0;
        }

        public int computeVerticalScrollExtent(b0 b0Var) {
            return 0;
        }

        public int computeVerticalScrollOffset(b0 b0Var) {
            return 0;
        }

        public int computeVerticalScrollRange(b0 b0Var) {
            return 0;
        }

        public void detachAndScrapAttachedViews(w wVar) {
            for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                scrapOrRecycleView(wVar, childCount, getChildAt(childCount));
            }
        }

        public void detachAndScrapView(View view, w wVar) {
            scrapOrRecycleView(wVar, this.mChildHelper.m(view), view);
        }

        public void detachAndScrapViewAt(int i10, w wVar) {
            scrapOrRecycleView(wVar, i10, getChildAt(i10));
        }

        public void detachView(View view) {
            int m10 = this.mChildHelper.m(view);
            if (m10 >= 0) {
                detachViewInternal(m10, view);
            }
        }

        public void detachViewAt(int i10) {
            detachViewInternal(i10, getChildAt(i10));
        }

        public void dispatchAttachedToWindow(RecyclerView recyclerView) {
            this.mIsAttachedToWindow = true;
            onAttachedToWindow(recyclerView);
        }

        public void dispatchDetachedFromWindow(RecyclerView recyclerView, w wVar) {
            this.mIsAttachedToWindow = false;
            onDetachedFromWindow(recyclerView, wVar);
        }

        public void endAnimation(View view) {
            m mVar = this.mRecyclerView.mItemAnimator;
            if (mVar != null) {
                mVar.j(RecyclerView.getChildViewHolderInt(view));
            }
        }

        public View findContainingItemView(View view) {
            View findContainingItemView;
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView == null || (findContainingItemView = recyclerView.findContainingItemView(view)) == null || this.mChildHelper.n(findContainingItemView)) {
                return null;
            }
            return findContainingItemView;
        }

        public View findViewByPosition(int i10) {
            int childCount = getChildCount();
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = getChildAt(i11);
                e0 childViewHolderInt = RecyclerView.getChildViewHolderInt(childAt);
                if (childViewHolderInt != null && childViewHolderInt.getLayoutPosition() == i10 && !childViewHolderInt.shouldIgnore() && (this.mRecyclerView.mState.e() || !childViewHolderInt.isRemoved())) {
                    return childAt;
                }
            }
            return null;
        }

        public abstract q generateDefaultLayoutParams();

        public q generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
            if (layoutParams instanceof q) {
                return new q((q) layoutParams);
            }
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                return new q((ViewGroup.MarginLayoutParams) layoutParams);
            }
            return new q(layoutParams);
        }

        public int getBaseline() {
            return -1;
        }

        public int getBottomDecorationHeight(View view) {
            return ((q) view.getLayoutParams()).f2778g.bottom;
        }

        public View getChildAt(int i10) {
            androidx.recyclerview.widget.f fVar = this.mChildHelper;
            if (fVar != null) {
                return fVar.f(i10);
            }
            return null;
        }

        public int getChildCount() {
            androidx.recyclerview.widget.f fVar = this.mChildHelper;
            if (fVar != null) {
                return fVar.g();
            }
            return 0;
        }

        public boolean getClipToPadding() {
            RecyclerView recyclerView = this.mRecyclerView;
            return recyclerView != null && recyclerView.mClipToPadding;
        }

        public int getColumnCountForAccessibility(w wVar, b0 b0Var) {
            return -1;
        }

        public int getDecoratedBottom(View view) {
            return view.getBottom() + getBottomDecorationHeight(view);
        }

        public void getDecoratedBoundsWithMargins(View view, Rect rect) {
            RecyclerView.getDecoratedBoundsWithMarginsInt(view, rect);
        }

        public int getDecoratedLeft(View view) {
            return view.getLeft() - getLeftDecorationWidth(view);
        }

        public int getDecoratedMeasuredHeight(View view) {
            Rect rect = ((q) view.getLayoutParams()).f2778g;
            return view.getMeasuredHeight() + rect.top + rect.bottom;
        }

        public int getDecoratedMeasuredWidth(View view) {
            Rect rect = ((q) view.getLayoutParams()).f2778g;
            return view.getMeasuredWidth() + rect.left + rect.right;
        }

        public int getDecoratedRight(View view) {
            return view.getRight() + getRightDecorationWidth(view);
        }

        public int getDecoratedTop(View view) {
            return view.getTop() - getTopDecorationHeight(view);
        }

        public View getFocusedChild() {
            View focusedChild;
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView == null || (focusedChild = recyclerView.getFocusedChild()) == null || this.mChildHelper.n(focusedChild)) {
                return null;
            }
            return focusedChild;
        }

        public int getHeight() {
            return this.mHeight;
        }

        public int getHeightMode() {
            return this.mHeightMode;
        }

        public int getItemCount() {
            RecyclerView recyclerView = this.mRecyclerView;
            h adapter = recyclerView != null ? recyclerView.getAdapter() : null;
            if (adapter != null) {
                return adapter.getItemCount();
            }
            return 0;
        }

        public int getItemViewType(View view) {
            return RecyclerView.getChildViewHolderInt(view).getItemViewType();
        }

        public int getLayoutDirection() {
            return q0.b0.E(this.mRecyclerView);
        }

        public int getLeftDecorationWidth(View view) {
            return ((q) view.getLayoutParams()).f2778g.left;
        }

        public int getMinimumHeight() {
            return q0.b0.F(this.mRecyclerView);
        }

        public int getMinimumWidth() {
            return q0.b0.G(this.mRecyclerView);
        }

        public int getPaddingBottom() {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                return recyclerView.getPaddingBottom();
            }
            return 0;
        }

        public int getPaddingEnd() {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                return q0.b0.I(recyclerView);
            }
            return 0;
        }

        public int getPaddingLeft() {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                return recyclerView.getPaddingLeft();
            }
            return 0;
        }

        public int getPaddingRight() {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                return recyclerView.getPaddingRight();
            }
            return 0;
        }

        public int getPaddingStart() {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                return q0.b0.J(recyclerView);
            }
            return 0;
        }

        public int getPaddingTop() {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                return recyclerView.getPaddingTop();
            }
            return 0;
        }

        public int getPosition(View view) {
            return ((q) view.getLayoutParams()).a();
        }

        public int getRightDecorationWidth(View view) {
            return ((q) view.getLayoutParams()).f2778g.right;
        }

        public int getRowCountForAccessibility(w wVar, b0 b0Var) {
            return -1;
        }

        public int getSelectionModeForAccessibility(w wVar, b0 b0Var) {
            return 0;
        }

        public int getTopDecorationHeight(View view) {
            return ((q) view.getLayoutParams()).f2778g.top;
        }

        public void getTransformedBoundingBox(View view, boolean z10, Rect rect) {
            Matrix matrix;
            if (z10) {
                Rect rect2 = ((q) view.getLayoutParams()).f2778g;
                rect.set(-rect2.left, -rect2.top, view.getWidth() + rect2.right, view.getHeight() + rect2.bottom);
            } else {
                rect.set(0, 0, view.getWidth(), view.getHeight());
            }
            if (this.mRecyclerView != null && (matrix = view.getMatrix()) != null && !matrix.isIdentity()) {
                RectF rectF = this.mRecyclerView.mTempRectF;
                rectF.set(rect);
                matrix.mapRect(rectF);
                rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
            }
            rect.offset(view.getLeft(), view.getTop());
        }

        public int getWidth() {
            return this.mWidth;
        }

        public int getWidthMode() {
            return this.mWidthMode;
        }

        public boolean hasFlexibleChildInBothOrientations() {
            int childCount = getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                ViewGroup.LayoutParams layoutParams = getChildAt(i10).getLayoutParams();
                if (layoutParams.width < 0 && layoutParams.height < 0) {
                    return true;
                }
            }
            return false;
        }

        public boolean hasFocus() {
            RecyclerView recyclerView = this.mRecyclerView;
            return recyclerView != null && recyclerView.hasFocus();
        }

        public void ignoreView(View view) {
            ViewParent parent = view.getParent();
            RecyclerView recyclerView = this.mRecyclerView;
            if (parent == recyclerView && recyclerView.indexOfChild(view) != -1) {
                e0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
                childViewHolderInt.addFlags(128);
                this.mRecyclerView.mViewInfoStore.q(childViewHolderInt);
            } else {
                throw new IllegalArgumentException("View should be fully attached to be ignored" + this.mRecyclerView.exceptionLabel());
            }
        }

        public boolean isAttachedToWindow() {
            return this.mIsAttachedToWindow;
        }

        public boolean isAutoMeasureEnabled() {
            return this.mAutoMeasure;
        }

        public boolean isFocused() {
            RecyclerView recyclerView = this.mRecyclerView;
            return recyclerView != null && recyclerView.isFocused();
        }

        public final boolean isItemPrefetchEnabled() {
            return this.mItemPrefetchEnabled;
        }

        public boolean isLayoutHierarchical(w wVar, b0 b0Var) {
            return false;
        }

        public boolean isMeasurementCacheEnabled() {
            return this.mMeasurementCacheEnabled;
        }

        public boolean isSmoothScrolling() {
            a0 a0Var = this.mSmoothScroller;
            return a0Var != null && a0Var.isRunning();
        }

        public boolean isViewPartiallyVisible(View view, boolean z10, boolean z11) {
            boolean z12 = this.mHorizontalBoundCheck.b(view, 24579) && this.mVerticalBoundCheck.b(view, 24579);
            return z10 ? z12 : !z12;
        }

        public void layoutDecorated(View view, int i10, int i11, int i12, int i13) {
            Rect rect = ((q) view.getLayoutParams()).f2778g;
            view.layout(i10 + rect.left, i11 + rect.top, i12 - rect.right, i13 - rect.bottom);
        }

        public void layoutDecoratedWithMargins(View view, int i10, int i11, int i12, int i13) {
            q qVar = (q) view.getLayoutParams();
            Rect rect = qVar.f2778g;
            view.layout(i10 + rect.left + ((ViewGroup.MarginLayoutParams) qVar).leftMargin, i11 + rect.top + ((ViewGroup.MarginLayoutParams) qVar).topMargin, (i12 - rect.right) - ((ViewGroup.MarginLayoutParams) qVar).rightMargin, (i13 - rect.bottom) - ((ViewGroup.MarginLayoutParams) qVar).bottomMargin);
        }

        public void measureChild(View view, int i10, int i11) {
            q qVar = (q) view.getLayoutParams();
            Rect itemDecorInsetsForChild = this.mRecyclerView.getItemDecorInsetsForChild(view);
            int i12 = i10 + itemDecorInsetsForChild.left + itemDecorInsetsForChild.right;
            int i13 = i11 + itemDecorInsetsForChild.top + itemDecorInsetsForChild.bottom;
            int childMeasureSpec = getChildMeasureSpec(getWidth(), getWidthMode(), getPaddingLeft() + getPaddingRight() + i12, ((ViewGroup.MarginLayoutParams) qVar).width, canScrollHorizontally());
            int childMeasureSpec2 = getChildMeasureSpec(getHeight(), getHeightMode(), getPaddingTop() + getPaddingBottom() + i13, ((ViewGroup.MarginLayoutParams) qVar).height, canScrollVertically());
            if (shouldMeasureChild(view, childMeasureSpec, childMeasureSpec2, qVar)) {
                view.measure(childMeasureSpec, childMeasureSpec2);
            }
        }

        public void measureChildWithMargins(View view, int i10, int i11) {
            q qVar = (q) view.getLayoutParams();
            Rect itemDecorInsetsForChild = this.mRecyclerView.getItemDecorInsetsForChild(view);
            int i12 = i10 + itemDecorInsetsForChild.left + itemDecorInsetsForChild.right;
            int i13 = i11 + itemDecorInsetsForChild.top + itemDecorInsetsForChild.bottom;
            int childMeasureSpec = getChildMeasureSpec(getWidth(), getWidthMode(), getPaddingLeft() + getPaddingRight() + ((ViewGroup.MarginLayoutParams) qVar).leftMargin + ((ViewGroup.MarginLayoutParams) qVar).rightMargin + i12, ((ViewGroup.MarginLayoutParams) qVar).width, canScrollHorizontally());
            int childMeasureSpec2 = getChildMeasureSpec(getHeight(), getHeightMode(), getPaddingTop() + getPaddingBottom() + ((ViewGroup.MarginLayoutParams) qVar).topMargin + ((ViewGroup.MarginLayoutParams) qVar).bottomMargin + i13, ((ViewGroup.MarginLayoutParams) qVar).height, canScrollVertically());
            if (shouldMeasureChild(view, childMeasureSpec, childMeasureSpec2, qVar)) {
                view.measure(childMeasureSpec, childMeasureSpec2);
            }
        }

        public void moveView(int i10, int i11) {
            View childAt = getChildAt(i10);
            if (childAt != null) {
                detachViewAt(i10);
                attachView(childAt, i11);
            } else {
                throw new IllegalArgumentException("Cannot move a child from non-existing index:" + i10 + this.mRecyclerView.toString());
            }
        }

        public void offsetChildrenHorizontal(int i10) {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                recyclerView.offsetChildrenHorizontal(i10);
            }
        }

        public void offsetChildrenVertical(int i10) {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                recyclerView.offsetChildrenVertical(i10);
            }
        }

        public void onAdapterChanged(h hVar, h hVar2) {
        }

        public boolean onAddFocusables(RecyclerView recyclerView, ArrayList<View> arrayList, int i10, int i11) {
            return false;
        }

        public void onAttachedToWindow(RecyclerView recyclerView) {
        }

        @Deprecated
        public void onDetachedFromWindow(RecyclerView recyclerView) {
        }

        public void onDetachedFromWindow(RecyclerView recyclerView, w wVar) {
            onDetachedFromWindow(recyclerView);
        }

        public View onFocusSearchFailed(View view, int i10, w wVar, b0 b0Var) {
            return null;
        }

        public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            RecyclerView recyclerView = this.mRecyclerView;
            onInitializeAccessibilityEvent(recyclerView.mRecycler, recyclerView.mState, accessibilityEvent);
        }

        public void onInitializeAccessibilityNodeInfo(r0.c cVar) {
            RecyclerView recyclerView = this.mRecyclerView;
            onInitializeAccessibilityNodeInfo(recyclerView.mRecycler, recyclerView.mState, cVar);
        }

        public void onInitializeAccessibilityNodeInfoForItem(View view, r0.c cVar) {
            e0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt == null || childViewHolderInt.isRemoved() || this.mChildHelper.n(childViewHolderInt.itemView)) {
                return;
            }
            RecyclerView recyclerView = this.mRecyclerView;
            onInitializeAccessibilityNodeInfoForItem(recyclerView.mRecycler, recyclerView.mState, view, cVar);
        }

        public void onInitializeAccessibilityNodeInfoForItem(w wVar, b0 b0Var, View view, r0.c cVar) {
        }

        public View onInterceptFocusSearch(View view, int i10) {
            return null;
        }

        public void onItemsAdded(RecyclerView recyclerView, int i10, int i11) {
        }

        public void onItemsChanged(RecyclerView recyclerView) {
        }

        public void onItemsMoved(RecyclerView recyclerView, int i10, int i11, int i12) {
        }

        public void onItemsRemoved(RecyclerView recyclerView, int i10, int i11) {
        }

        public void onItemsUpdated(RecyclerView recyclerView, int i10, int i11) {
        }

        public void onItemsUpdated(RecyclerView recyclerView, int i10, int i11, Object obj) {
            onItemsUpdated(recyclerView, i10, i11);
        }

        public void onLayoutChildren(w wVar, b0 b0Var) {
        }

        public void onLayoutCompleted(b0 b0Var) {
        }

        public void onMeasure(w wVar, b0 b0Var, int i10, int i11) {
            this.mRecyclerView.defaultOnMeasure(i10, i11);
        }

        @Deprecated
        public boolean onRequestChildFocus(RecyclerView recyclerView, View view, View view2) {
            return isSmoothScrolling() || recyclerView.isComputingLayout();
        }

        public void onRestoreInstanceState(Parcelable parcelable) {
        }

        public Parcelable onSaveInstanceState() {
            return null;
        }

        public void onScrollStateChanged(int i10) {
        }

        public void onSmoothScrollerStopped(a0 a0Var) {
            if (this.mSmoothScroller == a0Var) {
                this.mSmoothScroller = null;
            }
        }

        public boolean performAccessibilityAction(int i10, Bundle bundle) {
            RecyclerView recyclerView = this.mRecyclerView;
            return performAccessibilityAction(recyclerView.mRecycler, recyclerView.mState, i10, bundle);
        }

        public boolean performAccessibilityActionForItem(View view, int i10, Bundle bundle) {
            RecyclerView recyclerView = this.mRecyclerView;
            return performAccessibilityActionForItem(recyclerView.mRecycler, recyclerView.mState, view, i10, bundle);
        }

        public boolean performAccessibilityActionForItem(w wVar, b0 b0Var, View view, int i10, Bundle bundle) {
            return false;
        }

        public void postOnAnimation(Runnable runnable) {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                q0.b0.l0(recyclerView, runnable);
            }
        }

        public void removeAllViews() {
            for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                this.mChildHelper.q(childCount);
            }
        }

        public void removeAndRecycleAllViews(w wVar) {
            for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                if (!RecyclerView.getChildViewHolderInt(getChildAt(childCount)).shouldIgnore()) {
                    removeAndRecycleViewAt(childCount, wVar);
                }
            }
        }

        public void removeAndRecycleScrapInt(w wVar) {
            int j10 = wVar.j();
            for (int i10 = j10 - 1; i10 >= 0; i10--) {
                View n10 = wVar.n(i10);
                e0 childViewHolderInt = RecyclerView.getChildViewHolderInt(n10);
                if (!childViewHolderInt.shouldIgnore()) {
                    childViewHolderInt.setIsRecyclable(false);
                    if (childViewHolderInt.isTmpDetached()) {
                        this.mRecyclerView.removeDetachedView(n10, false);
                    }
                    m mVar = this.mRecyclerView.mItemAnimator;
                    if (mVar != null) {
                        mVar.j(childViewHolderInt);
                    }
                    childViewHolderInt.setIsRecyclable(true);
                    wVar.y(n10);
                }
            }
            wVar.e();
            if (j10 > 0) {
                this.mRecyclerView.invalidate();
            }
        }

        public void removeAndRecycleView(View view, w wVar) {
            removeView(view);
            wVar.B(view);
        }

        public void removeAndRecycleViewAt(int i10, w wVar) {
            View childAt = getChildAt(i10);
            removeViewAt(i10);
            wVar.B(childAt);
        }

        public boolean removeCallbacks(Runnable runnable) {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                return recyclerView.removeCallbacks(runnable);
            }
            return false;
        }

        public void removeDetachedView(View view) {
            this.mRecyclerView.removeDetachedView(view, false);
        }

        public void removeView(View view) {
            this.mChildHelper.p(view);
        }

        public void removeViewAt(int i10) {
            if (getChildAt(i10) != null) {
                this.mChildHelper.q(i10);
            }
        }

        public boolean requestChildRectangleOnScreen(RecyclerView recyclerView, View view, Rect rect, boolean z10) {
            return requestChildRectangleOnScreen(recyclerView, view, rect, z10, false);
        }

        public void requestLayout() {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                recyclerView.requestLayout();
            }
        }

        public void requestSimpleAnimationsInNextLayout() {
            this.mRequestedSimpleAnimations = true;
        }

        public int scrollHorizontallyBy(int i10, w wVar, b0 b0Var) {
            return 0;
        }

        public void scrollToPosition(int i10) {
        }

        public int scrollVerticallyBy(int i10, w wVar, b0 b0Var) {
            return 0;
        }

        @Deprecated
        public void setAutoMeasureEnabled(boolean z10) {
            this.mAutoMeasure = z10;
        }

        public void setExactMeasureSpecsFrom(RecyclerView recyclerView) {
            setMeasureSpecs(View.MeasureSpec.makeMeasureSpec(recyclerView.getWidth(), NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH), View.MeasureSpec.makeMeasureSpec(recyclerView.getHeight(), NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH));
        }

        public final void setItemPrefetchEnabled(boolean z10) {
            if (z10 != this.mItemPrefetchEnabled) {
                this.mItemPrefetchEnabled = z10;
                this.mPrefetchMaxCountObserved = 0;
                RecyclerView recyclerView = this.mRecyclerView;
                if (recyclerView != null) {
                    recyclerView.mRecycler.K();
                }
            }
        }

        public void setMeasureSpecs(int i10, int i11) {
            this.mWidth = View.MeasureSpec.getSize(i10);
            int mode = View.MeasureSpec.getMode(i10);
            this.mWidthMode = mode;
            if (mode == 0 && !RecyclerView.ALLOW_SIZE_IN_UNSPECIFIED_SPEC) {
                this.mWidth = 0;
            }
            this.mHeight = View.MeasureSpec.getSize(i11);
            int mode2 = View.MeasureSpec.getMode(i11);
            this.mHeightMode = mode2;
            if (mode2 != 0 || RecyclerView.ALLOW_SIZE_IN_UNSPECIFIED_SPEC) {
                return;
            }
            this.mHeight = 0;
        }

        public void setMeasuredDimension(Rect rect, int i10, int i11) {
            setMeasuredDimension(chooseSize(i10, rect.width() + getPaddingLeft() + getPaddingRight(), getMinimumWidth()), chooseSize(i11, rect.height() + getPaddingTop() + getPaddingBottom(), getMinimumHeight()));
        }

        public void setMeasuredDimensionFromChildren(int i10, int i11) {
            int childCount = getChildCount();
            if (childCount == 0) {
                this.mRecyclerView.defaultOnMeasure(i10, i11);
                return;
            }
            int i12 = Integer.MIN_VALUE;
            int i13 = Integer.MIN_VALUE;
            int i14 = Api.BaseClientBuilder.API_PRIORITY_OTHER;
            int i15 = Api.BaseClientBuilder.API_PRIORITY_OTHER;
            for (int i16 = 0; i16 < childCount; i16++) {
                View childAt = getChildAt(i16);
                Rect rect = this.mRecyclerView.mTempRect;
                getDecoratedBoundsWithMargins(childAt, rect);
                int i17 = rect.left;
                if (i17 < i14) {
                    i14 = i17;
                }
                int i18 = rect.right;
                if (i18 > i12) {
                    i12 = i18;
                }
                int i19 = rect.top;
                if (i19 < i15) {
                    i15 = i19;
                }
                int i20 = rect.bottom;
                if (i20 > i13) {
                    i13 = i20;
                }
            }
            this.mRecyclerView.mTempRect.set(i14, i15, i12, i13);
            setMeasuredDimension(this.mRecyclerView.mTempRect, i10, i11);
        }

        public void setMeasurementCacheEnabled(boolean z10) {
            this.mMeasurementCacheEnabled = z10;
        }

        public void setRecyclerView(RecyclerView recyclerView) {
            if (recyclerView == null) {
                this.mRecyclerView = null;
                this.mChildHelper = null;
                this.mWidth = 0;
                this.mHeight = 0;
            } else {
                this.mRecyclerView = recyclerView;
                this.mChildHelper = recyclerView.mChildHelper;
                this.mWidth = recyclerView.getWidth();
                this.mHeight = recyclerView.getHeight();
            }
            this.mWidthMode = NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH;
            this.mHeightMode = NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH;
        }

        public boolean shouldMeasureChild(View view, int i10, int i11, q qVar) {
            return (!view.isLayoutRequested() && this.mMeasurementCacheEnabled && isMeasurementUpToDate(view.getWidth(), i10, ((ViewGroup.MarginLayoutParams) qVar).width) && isMeasurementUpToDate(view.getHeight(), i11, ((ViewGroup.MarginLayoutParams) qVar).height)) ? false : true;
        }

        public boolean shouldMeasureTwice() {
            return false;
        }

        public boolean shouldReMeasureChild(View view, int i10, int i11, q qVar) {
            return (this.mMeasurementCacheEnabled && isMeasurementUpToDate(view.getMeasuredWidth(), i10, ((ViewGroup.MarginLayoutParams) qVar).width) && isMeasurementUpToDate(view.getMeasuredHeight(), i11, ((ViewGroup.MarginLayoutParams) qVar).height)) ? false : true;
        }

        public void smoothScrollToPosition(RecyclerView recyclerView, b0 b0Var, int i10) {
        }

        public void startSmoothScroll(a0 a0Var) {
            a0 a0Var2 = this.mSmoothScroller;
            if (a0Var2 != null && a0Var != a0Var2 && a0Var2.isRunning()) {
                this.mSmoothScroller.stop();
            }
            this.mSmoothScroller = a0Var;
            a0Var.start(this.mRecyclerView, this);
        }

        public void stopIgnoringView(View view) {
            e0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            childViewHolderInt.stopIgnoring();
            childViewHolderInt.resetInternal();
            childViewHolderInt.addFlags(4);
        }

        public void stopSmoothScroller() {
            a0 a0Var = this.mSmoothScroller;
            if (a0Var != null) {
                a0Var.stop();
            }
        }

        public boolean supportsPredictiveItemAnimations() {
            return false;
        }

        public void addDisappearingView(View view, int i10) {
            addViewInt(view, i10, true);
        }

        public void addView(View view, int i10) {
            addViewInt(view, i10, false);
        }

        public void onInitializeAccessibilityEvent(w wVar, b0 b0Var, AccessibilityEvent accessibilityEvent) {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView == null || accessibilityEvent == null) {
                return;
            }
            boolean z10 = true;
            if (!recyclerView.canScrollVertically(1) && !this.mRecyclerView.canScrollVertically(-1) && !this.mRecyclerView.canScrollHorizontally(-1) && !this.mRecyclerView.canScrollHorizontally(1)) {
                z10 = false;
            }
            accessibilityEvent.setScrollable(z10);
            h hVar = this.mRecyclerView.mAdapter;
            if (hVar != null) {
                accessibilityEvent.setItemCount(hVar.getItemCount());
            }
        }

        public void onInitializeAccessibilityNodeInfo(w wVar, b0 b0Var, r0.c cVar) {
            if (this.mRecyclerView.canScrollVertically(-1) || this.mRecyclerView.canScrollHorizontally(-1)) {
                cVar.a(e0.FLAG_BOUNCED_FROM_HIDDEN_LIST);
                cVar.w0(true);
            }
            if (this.mRecyclerView.canScrollVertically(1) || this.mRecyclerView.canScrollHorizontally(1)) {
                cVar.a(e0.FLAG_APPEARED_IN_PRE_LAYOUT);
                cVar.w0(true);
            }
            cVar.d0(c.b.b(getRowCountForAccessibility(wVar, b0Var), getColumnCountForAccessibility(wVar, b0Var), isLayoutHierarchical(wVar, b0Var), getSelectionModeForAccessibility(wVar, b0Var)));
        }

        public boolean onRequestChildFocus(RecyclerView recyclerView, b0 b0Var, View view, View view2) {
            return onRequestChildFocus(recyclerView, view, view2);
        }

        public boolean performAccessibilityAction(w wVar, b0 b0Var, int i10, Bundle bundle) {
            int height;
            int width;
            int i11;
            int i12;
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView == null) {
                return false;
            }
            if (i10 == 4096) {
                height = recyclerView.canScrollVertically(1) ? (getHeight() - getPaddingTop()) - getPaddingBottom() : 0;
                if (this.mRecyclerView.canScrollHorizontally(1)) {
                    width = (getWidth() - getPaddingLeft()) - getPaddingRight();
                    i11 = height;
                    i12 = width;
                }
                i11 = height;
                i12 = 0;
            } else if (i10 != 8192) {
                i12 = 0;
                i11 = 0;
            } else {
                height = recyclerView.canScrollVertically(-1) ? -((getHeight() - getPaddingTop()) - getPaddingBottom()) : 0;
                if (this.mRecyclerView.canScrollHorizontally(-1)) {
                    width = -((getWidth() - getPaddingLeft()) - getPaddingRight());
                    i11 = height;
                    i12 = width;
                }
                i11 = height;
                i12 = 0;
            }
            if (i11 == 0 && i12 == 0) {
                return false;
            }
            this.mRecyclerView.smoothScrollBy(i12, i11, null, Integer.MIN_VALUE, true);
            return true;
        }

        public boolean requestChildRectangleOnScreen(RecyclerView recyclerView, View view, Rect rect, boolean z10, boolean z11) {
            int[] childRectangleOnScreenScrollAmount = getChildRectangleOnScreenScrollAmount(view, rect);
            int i10 = childRectangleOnScreenScrollAmount[0];
            int i11 = childRectangleOnScreenScrollAmount[1];
            if ((z11 && !isFocusedChildVisibleAfterScrolling(recyclerView, i10, i11)) || (i10 == 0 && i11 == 0)) {
                return false;
            }
            if (z10) {
                recyclerView.scrollBy(i10, i11);
            } else {
                recyclerView.smoothScrollBy(i10, i11);
            }
            return true;
        }

        /* JADX WARN: Code restructure failed: missing block: B:7:0x0017, code lost:
        
            if (r5 == 1073741824) goto L14;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public static int getChildMeasureSpec(int i10, int i11, int i12, int i13, boolean z10) {
            int max = Math.max(0, i10 - i12);
            if (z10) {
                if (i13 < 0) {
                    if (i13 == -1) {
                        if (i11 != Integer.MIN_VALUE) {
                            if (i11 != 0) {
                            }
                        }
                        i13 = max;
                    }
                    i11 = 0;
                    i13 = 0;
                }
                i11 = NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH;
            } else {
                if (i13 < 0) {
                    if (i13 != -1) {
                        if (i13 == -2) {
                            i11 = (i11 == Integer.MIN_VALUE || i11 == 1073741824) ? Integer.MIN_VALUE : 0;
                        }
                        i11 = 0;
                        i13 = 0;
                    }
                    i13 = max;
                }
                i11 = NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH;
            }
            return View.MeasureSpec.makeMeasureSpec(i13, i11);
        }

        public void attachView(View view, int i10) {
            attachView(view, i10, (q) view.getLayoutParams());
        }

        public q generateLayoutParams(Context context, AttributeSet attributeSet) {
            return new q(context, attributeSet);
        }

        public void setMeasuredDimension(int i10, int i11) {
            this.mRecyclerView.setMeasuredDimension(i10, i11);
        }

        public void attachView(View view) {
            attachView(view, -1);
        }
    }

    /* loaded from: classes.dex */
    public interface r {
        void a(View view);

        void b(View view);
    }

    /* loaded from: classes.dex */
    public static abstract class s {
        public abstract boolean onFling(int i10, int i11);
    }

    /* loaded from: classes.dex */
    public interface t {
        boolean a(RecyclerView recyclerView, MotionEvent motionEvent);

        void b(RecyclerView recyclerView, MotionEvent motionEvent);

        void c(boolean z10);
    }

    /* loaded from: classes.dex */
    public static abstract class u {
        public void onScrollStateChanged(RecyclerView recyclerView, int i10) {
        }

        public void onScrolled(RecyclerView recyclerView, int i10, int i11) {
        }
    }

    /* loaded from: classes.dex */
    public static class v {

        /* renamed from: a, reason: collision with root package name */
        public SparseArray<a> f2781a = new SparseArray<>();

        /* renamed from: b, reason: collision with root package name */
        public int f2782b = 0;

        /* loaded from: classes.dex */
        public static class a {

            /* renamed from: a, reason: collision with root package name */
            public final ArrayList<e0> f2783a = new ArrayList<>();

            /* renamed from: b, reason: collision with root package name */
            public int f2784b = 5;

            /* renamed from: c, reason: collision with root package name */
            public long f2785c = 0;

            /* renamed from: d, reason: collision with root package name */
            public long f2786d = 0;
        }

        public void a() {
            this.f2782b++;
        }

        public void b() {
            for (int i10 = 0; i10 < this.f2781a.size(); i10++) {
                this.f2781a.valueAt(i10).f2783a.clear();
            }
        }

        public void c() {
            this.f2782b--;
        }

        public void d(int i10, long j10) {
            a g10 = g(i10);
            g10.f2786d = j(g10.f2786d, j10);
        }

        public void e(int i10, long j10) {
            a g10 = g(i10);
            g10.f2785c = j(g10.f2785c, j10);
        }

        public e0 f(int i10) {
            a aVar = this.f2781a.get(i10);
            if (aVar == null || aVar.f2783a.isEmpty()) {
                return null;
            }
            ArrayList<e0> arrayList = aVar.f2783a;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                if (!arrayList.get(size).isAttachedToTransitionOverlay()) {
                    return arrayList.remove(size);
                }
            }
            return null;
        }

        public final a g(int i10) {
            a aVar = this.f2781a.get(i10);
            if (aVar != null) {
                return aVar;
            }
            a aVar2 = new a();
            this.f2781a.put(i10, aVar2);
            return aVar2;
        }

        public void h(h hVar, h hVar2, boolean z10) {
            if (hVar != null) {
                c();
            }
            if (!z10 && this.f2782b == 0) {
                b();
            }
            if (hVar2 != null) {
                a();
            }
        }

        public void i(e0 e0Var) {
            int itemViewType = e0Var.getItemViewType();
            ArrayList<e0> arrayList = g(itemViewType).f2783a;
            if (this.f2781a.get(itemViewType).f2784b <= arrayList.size()) {
                return;
            }
            e0Var.resetInternal();
            arrayList.add(e0Var);
        }

        public long j(long j10, long j11) {
            return j10 == 0 ? j11 : ((j10 / 4) * 3) + (j11 / 4);
        }

        public boolean k(int i10, long j10, long j11) {
            long j12 = g(i10).f2786d;
            return j12 == 0 || j10 + j12 < j11;
        }

        public boolean l(int i10, long j10, long j11) {
            long j12 = g(i10).f2785c;
            return j12 == 0 || j10 + j12 < j11;
        }
    }

    /* loaded from: classes.dex */
    public final class w {

        /* renamed from: a, reason: collision with root package name */
        public final ArrayList<e0> f2787a;

        /* renamed from: b, reason: collision with root package name */
        public ArrayList<e0> f2788b;

        /* renamed from: c, reason: collision with root package name */
        public final ArrayList<e0> f2789c;

        /* renamed from: d, reason: collision with root package name */
        public final List<e0> f2790d;

        /* renamed from: e, reason: collision with root package name */
        public int f2791e;

        /* renamed from: f, reason: collision with root package name */
        public int f2792f;

        /* renamed from: g, reason: collision with root package name */
        public v f2793g;

        public w() {
            ArrayList<e0> arrayList = new ArrayList<>();
            this.f2787a = arrayList;
            this.f2788b = null;
            this.f2789c = new ArrayList<>();
            this.f2790d = Collections.unmodifiableList(arrayList);
            this.f2791e = 2;
            this.f2792f = 2;
        }

        public void A(int i10) {
            a(this.f2789c.get(i10), true);
            this.f2789c.remove(i10);
        }

        public void B(View view) {
            e0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt.isTmpDetached()) {
                RecyclerView.this.removeDetachedView(view, false);
            }
            if (childViewHolderInt.isScrap()) {
                childViewHolderInt.unScrap();
            } else if (childViewHolderInt.wasReturnedFromScrap()) {
                childViewHolderInt.clearReturnedFromScrapFlag();
            }
            C(childViewHolderInt);
            if (RecyclerView.this.mItemAnimator == null || childViewHolderInt.isRecyclable()) {
                return;
            }
            RecyclerView.this.mItemAnimator.j(childViewHolderInt);
        }

        public void C(e0 e0Var) {
            boolean z10;
            boolean z11 = true;
            if (!e0Var.isScrap() && e0Var.itemView.getParent() == null) {
                if (!e0Var.isTmpDetached()) {
                    if (!e0Var.shouldIgnore()) {
                        boolean doesTransientStatePreventRecycling = e0Var.doesTransientStatePreventRecycling();
                        h hVar = RecyclerView.this.mAdapter;
                        if ((hVar != null && doesTransientStatePreventRecycling && hVar.onFailedToRecycleView(e0Var)) || e0Var.isRecyclable()) {
                            if (this.f2792f <= 0 || e0Var.hasAnyOfTheFlags(526)) {
                                z10 = false;
                            } else {
                                int size = this.f2789c.size();
                                if (size >= this.f2792f && size > 0) {
                                    A(0);
                                    size--;
                                }
                                if (RecyclerView.ALLOW_THREAD_GAP_WORK && size > 0 && !RecyclerView.this.mPrefetchRegistry.d(e0Var.mPosition)) {
                                    int i10 = size - 1;
                                    while (i10 >= 0) {
                                        if (!RecyclerView.this.mPrefetchRegistry.d(this.f2789c.get(i10).mPosition)) {
                                            break;
                                        } else {
                                            i10--;
                                        }
                                    }
                                    size = i10 + 1;
                                }
                                this.f2789c.add(size, e0Var);
                                z10 = true;
                            }
                            if (!z10) {
                                a(e0Var, true);
                                r1 = z10;
                                RecyclerView.this.mViewInfoStore.q(e0Var);
                                if (r1 && !z11 && doesTransientStatePreventRecycling) {
                                    e0Var.mBindingAdapter = null;
                                    e0Var.mOwnerRecyclerView = null;
                                    return;
                                }
                                return;
                            }
                            r1 = z10;
                        }
                        z11 = false;
                        RecyclerView.this.mViewInfoStore.q(e0Var);
                        if (r1) {
                            return;
                        } else {
                            return;
                        }
                    }
                    throw new IllegalArgumentException("Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle." + RecyclerView.this.exceptionLabel());
                }
                throw new IllegalArgumentException("Tmp detached view should be removed from RecyclerView before it can be recycled: " + e0Var + RecyclerView.this.exceptionLabel());
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Scrapped or attached views may not be recycled. isScrap:");
            sb2.append(e0Var.isScrap());
            sb2.append(" isAttached:");
            sb2.append(e0Var.itemView.getParent() != null);
            sb2.append(RecyclerView.this.exceptionLabel());
            throw new IllegalArgumentException(sb2.toString());
        }

        public void D(View view) {
            e0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (!childViewHolderInt.hasAnyOfTheFlags(12) && childViewHolderInt.isUpdated() && !RecyclerView.this.canReuseUpdatedViewHolder(childViewHolderInt)) {
                if (this.f2788b == null) {
                    this.f2788b = new ArrayList<>();
                }
                childViewHolderInt.setScrapContainer(this, true);
                this.f2788b.add(childViewHolderInt);
                return;
            }
            if (childViewHolderInt.isInvalid() && !childViewHolderInt.isRemoved() && !RecyclerView.this.mAdapter.hasStableIds()) {
                throw new IllegalArgumentException("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool." + RecyclerView.this.exceptionLabel());
            }
            childViewHolderInt.setScrapContainer(this, false);
            this.f2787a.add(childViewHolderInt);
        }

        public void E(v vVar) {
            v vVar2 = this.f2793g;
            if (vVar2 != null) {
                vVar2.c();
            }
            this.f2793g = vVar;
            if (vVar == null || RecyclerView.this.getAdapter() == null) {
                return;
            }
            this.f2793g.a();
        }

        public void F(c0 c0Var) {
        }

        public void G(int i10) {
            this.f2791e = i10;
            K();
        }

        public final boolean H(e0 e0Var, int i10, int i11, long j10) {
            e0Var.mBindingAdapter = null;
            e0Var.mOwnerRecyclerView = RecyclerView.this;
            int itemViewType = e0Var.getItemViewType();
            long nanoTime = RecyclerView.this.getNanoTime();
            if (j10 != RecyclerView.FOREVER_NS && !this.f2793g.k(itemViewType, nanoTime, j10)) {
                return false;
            }
            RecyclerView.this.mAdapter.bindViewHolder(e0Var, i10);
            this.f2793g.d(e0Var.getItemViewType(), RecyclerView.this.getNanoTime() - nanoTime);
            b(e0Var);
            if (!RecyclerView.this.mState.e()) {
                return true;
            }
            e0Var.mPreLayoutPosition = i11;
            return true;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x0037  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x005c  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x005f  */
        /* JADX WARN: Removed duplicated region for block: B:57:0x0130  */
        /* JADX WARN: Removed duplicated region for block: B:63:0x014d  */
        /* JADX WARN: Removed duplicated region for block: B:66:0x0170  */
        /* JADX WARN: Removed duplicated region for block: B:72:0x01a9  */
        /* JADX WARN: Removed duplicated region for block: B:75:0x01d3 A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:79:0x01b7  */
        /* JADX WARN: Removed duplicated region for block: B:85:0x017f  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public e0 I(int i10, boolean z10, long j10) {
            e0 e0Var;
            boolean z11;
            e0 e0Var2;
            boolean z12;
            boolean H;
            ViewGroup.LayoutParams layoutParams;
            q qVar;
            RecyclerView findNestedRecyclerView;
            if (i10 >= 0 && i10 < RecyclerView.this.mState.b()) {
                if (RecyclerView.this.mState.e()) {
                    e0Var = h(i10);
                    if (e0Var != null) {
                        z11 = true;
                        if (e0Var == null && (e0Var = m(i10, z10)) != null) {
                            if (L(e0Var)) {
                                if (!z10) {
                                    e0Var.addFlags(4);
                                    if (e0Var.isScrap()) {
                                        RecyclerView.this.removeDetachedView(e0Var.itemView, false);
                                        e0Var.unScrap();
                                    } else if (e0Var.wasReturnedFromScrap()) {
                                        e0Var.clearReturnedFromScrapFlag();
                                    }
                                    C(e0Var);
                                }
                                e0Var = null;
                            } else {
                                z11 = true;
                            }
                        }
                        if (e0Var == null) {
                            int m10 = RecyclerView.this.mAdapterHelper.m(i10);
                            if (m10 >= 0 && m10 < RecyclerView.this.mAdapter.getItemCount()) {
                                int itemViewType = RecyclerView.this.mAdapter.getItemViewType(m10);
                                if (RecyclerView.this.mAdapter.hasStableIds() && (e0Var = l(RecyclerView.this.mAdapter.getItemId(m10), itemViewType, z10)) != null) {
                                    e0Var.mPosition = m10;
                                    z11 = true;
                                }
                                if (e0Var == null) {
                                    e0 f10 = i().f(itemViewType);
                                    if (f10 != null) {
                                        f10.resetInternal();
                                        if (RecyclerView.FORCE_INVALIDATE_DISPLAY_LIST) {
                                            r(f10);
                                        }
                                    }
                                    e0Var = f10;
                                }
                                if (e0Var == null) {
                                    long nanoTime = RecyclerView.this.getNanoTime();
                                    if (j10 != RecyclerView.FOREVER_NS && !this.f2793g.l(itemViewType, nanoTime, j10)) {
                                        return null;
                                    }
                                    RecyclerView recyclerView = RecyclerView.this;
                                    e0 createViewHolder = recyclerView.mAdapter.createViewHolder(recyclerView, itemViewType);
                                    if (RecyclerView.ALLOW_THREAD_GAP_WORK && (findNestedRecyclerView = RecyclerView.findNestedRecyclerView(createViewHolder.itemView)) != null) {
                                        createViewHolder.mNestedRecyclerView = new WeakReference<>(findNestedRecyclerView);
                                    }
                                    this.f2793g.e(itemViewType, RecyclerView.this.getNanoTime() - nanoTime);
                                    e0Var2 = createViewHolder;
                                    z12 = z11;
                                    if (z12 && !RecyclerView.this.mState.e() && e0Var2.hasAnyOfTheFlags(e0.FLAG_BOUNCED_FROM_HIDDEN_LIST)) {
                                        e0Var2.setFlags(0, e0.FLAG_BOUNCED_FROM_HIDDEN_LIST);
                                        if (RecyclerView.this.mState.f2738k) {
                                            int e10 = m.e(e0Var2) | e0.FLAG_APPEARED_IN_PRE_LAYOUT;
                                            RecyclerView recyclerView2 = RecyclerView.this;
                                            RecyclerView.this.recordAnimationInfoIfBouncedHiddenView(e0Var2, recyclerView2.mItemAnimator.t(recyclerView2.mState, e0Var2, e10, e0Var2.getUnmodifiedPayloads()));
                                        }
                                    }
                                    if (!RecyclerView.this.mState.e() && e0Var2.isBound()) {
                                        e0Var2.mPreLayoutPosition = i10;
                                    } else if (e0Var2.isBound() || e0Var2.needsUpdate() || e0Var2.isInvalid()) {
                                        H = H(e0Var2, RecyclerView.this.mAdapterHelper.m(i10), i10, j10);
                                        layoutParams = e0Var2.itemView.getLayoutParams();
                                        if (layoutParams != null) {
                                            qVar = (q) RecyclerView.this.generateDefaultLayoutParams();
                                            e0Var2.itemView.setLayoutParams(qVar);
                                        } else if (!RecyclerView.this.checkLayoutParams(layoutParams)) {
                                            qVar = (q) RecyclerView.this.generateLayoutParams(layoutParams);
                                            e0Var2.itemView.setLayoutParams(qVar);
                                        } else {
                                            qVar = (q) layoutParams;
                                        }
                                        qVar.f2777f = e0Var2;
                                        qVar.f2780i = !z12 && H;
                                        return e0Var2;
                                    }
                                    H = false;
                                    layoutParams = e0Var2.itemView.getLayoutParams();
                                    if (layoutParams != null) {
                                    }
                                    qVar.f2777f = e0Var2;
                                    qVar.f2780i = !z12 && H;
                                    return e0Var2;
                                }
                            } else {
                                throw new IndexOutOfBoundsException("Inconsistency detected. Invalid item position " + i10 + "(offset:" + m10 + ").state:" + RecyclerView.this.mState.b() + RecyclerView.this.exceptionLabel());
                            }
                        }
                        e0Var2 = e0Var;
                        z12 = z11;
                        if (z12) {
                            e0Var2.setFlags(0, e0.FLAG_BOUNCED_FROM_HIDDEN_LIST);
                            if (RecyclerView.this.mState.f2738k) {
                            }
                        }
                        if (!RecyclerView.this.mState.e()) {
                        }
                        if (e0Var2.isBound()) {
                        }
                        H = H(e0Var2, RecyclerView.this.mAdapterHelper.m(i10), i10, j10);
                        layoutParams = e0Var2.itemView.getLayoutParams();
                        if (layoutParams != null) {
                        }
                        qVar.f2777f = e0Var2;
                        qVar.f2780i = !z12 && H;
                        return e0Var2;
                    }
                } else {
                    e0Var = null;
                }
                z11 = false;
                if (e0Var == null) {
                    if (L(e0Var)) {
                    }
                }
                if (e0Var == null) {
                }
                e0Var2 = e0Var;
                z12 = z11;
                if (z12) {
                }
                if (!RecyclerView.this.mState.e()) {
                }
                if (e0Var2.isBound()) {
                }
                H = H(e0Var2, RecyclerView.this.mAdapterHelper.m(i10), i10, j10);
                layoutParams = e0Var2.itemView.getLayoutParams();
                if (layoutParams != null) {
                }
                qVar.f2777f = e0Var2;
                qVar.f2780i = !z12 && H;
                return e0Var2;
            }
            throw new IndexOutOfBoundsException("Invalid item position " + i10 + "(" + i10 + "). Item count:" + RecyclerView.this.mState.b() + RecyclerView.this.exceptionLabel());
        }

        public void J(e0 e0Var) {
            if (e0Var.mInChangeScrap) {
                this.f2788b.remove(e0Var);
            } else {
                this.f2787a.remove(e0Var);
            }
            e0Var.mScrapContainer = null;
            e0Var.mInChangeScrap = false;
            e0Var.clearReturnedFromScrapFlag();
        }

        public void K() {
            p pVar = RecyclerView.this.mLayout;
            this.f2792f = this.f2791e + (pVar != null ? pVar.mPrefetchMaxCountObserved : 0);
            for (int size = this.f2789c.size() - 1; size >= 0 && this.f2789c.size() > this.f2792f; size--) {
                A(size);
            }
        }

        public boolean L(e0 e0Var) {
            if (e0Var.isRemoved()) {
                return RecyclerView.this.mState.e();
            }
            int i10 = e0Var.mPosition;
            if (i10 >= 0 && i10 < RecyclerView.this.mAdapter.getItemCount()) {
                if (RecyclerView.this.mState.e() || RecyclerView.this.mAdapter.getItemViewType(e0Var.mPosition) == e0Var.getItemViewType()) {
                    return !RecyclerView.this.mAdapter.hasStableIds() || e0Var.getItemId() == RecyclerView.this.mAdapter.getItemId(e0Var.mPosition);
                }
                return false;
            }
            throw new IndexOutOfBoundsException("Inconsistency detected. Invalid view holder adapter position" + e0Var + RecyclerView.this.exceptionLabel());
        }

        public void M(int i10, int i11) {
            int i12;
            int i13 = i11 + i10;
            for (int size = this.f2789c.size() - 1; size >= 0; size--) {
                e0 e0Var = this.f2789c.get(size);
                if (e0Var != null && (i12 = e0Var.mPosition) >= i10 && i12 < i13) {
                    e0Var.addFlags(2);
                    A(size);
                }
            }
        }

        public void a(e0 e0Var, boolean z10) {
            RecyclerView.clearNestedRecyclerViewIfNotNested(e0Var);
            View view = e0Var.itemView;
            androidx.recyclerview.widget.u uVar = RecyclerView.this.mAccessibilityDelegate;
            if (uVar != null) {
                q0.a itemDelegate = uVar.getItemDelegate();
                q0.b0.t0(view, itemDelegate instanceof u.a ? ((u.a) itemDelegate).a(view) : null);
            }
            if (z10) {
                g(e0Var);
            }
            e0Var.mBindingAdapter = null;
            e0Var.mOwnerRecyclerView = null;
            i().i(e0Var);
        }

        public final void b(e0 e0Var) {
            if (RecyclerView.this.isAccessibilityEnabled()) {
                View view = e0Var.itemView;
                if (q0.b0.C(view) == 0) {
                    q0.b0.E0(view, 1);
                }
                androidx.recyclerview.widget.u uVar = RecyclerView.this.mAccessibilityDelegate;
                if (uVar == null) {
                    return;
                }
                q0.a itemDelegate = uVar.getItemDelegate();
                if (itemDelegate instanceof u.a) {
                    ((u.a) itemDelegate).b(view);
                }
                q0.b0.t0(view, itemDelegate);
            }
        }

        public void c() {
            this.f2787a.clear();
            z();
        }

        public void d() {
            int size = this.f2789c.size();
            for (int i10 = 0; i10 < size; i10++) {
                this.f2789c.get(i10).clearOldPosition();
            }
            int size2 = this.f2787a.size();
            for (int i11 = 0; i11 < size2; i11++) {
                this.f2787a.get(i11).clearOldPosition();
            }
            ArrayList<e0> arrayList = this.f2788b;
            if (arrayList != null) {
                int size3 = arrayList.size();
                for (int i12 = 0; i12 < size3; i12++) {
                    this.f2788b.get(i12).clearOldPosition();
                }
            }
        }

        public void e() {
            this.f2787a.clear();
            ArrayList<e0> arrayList = this.f2788b;
            if (arrayList != null) {
                arrayList.clear();
            }
        }

        public int f(int i10) {
            if (i10 >= 0 && i10 < RecyclerView.this.mState.b()) {
                return !RecyclerView.this.mState.e() ? i10 : RecyclerView.this.mAdapterHelper.m(i10);
            }
            throw new IndexOutOfBoundsException("invalid position " + i10 + ". State item count is " + RecyclerView.this.mState.b() + RecyclerView.this.exceptionLabel());
        }

        public void g(e0 e0Var) {
            x xVar = RecyclerView.this.mRecyclerListener;
            if (xVar != null) {
                xVar.a(e0Var);
            }
            int size = RecyclerView.this.mRecyclerListeners.size();
            for (int i10 = 0; i10 < size; i10++) {
                RecyclerView.this.mRecyclerListeners.get(i10).a(e0Var);
            }
            h hVar = RecyclerView.this.mAdapter;
            if (hVar != null) {
                hVar.onViewRecycled(e0Var);
            }
            RecyclerView recyclerView = RecyclerView.this;
            if (recyclerView.mState != null) {
                recyclerView.mViewInfoStore.q(e0Var);
            }
        }

        public e0 h(int i10) {
            int size;
            int m10;
            ArrayList<e0> arrayList = this.f2788b;
            if (arrayList != null && (size = arrayList.size()) != 0) {
                for (int i11 = 0; i11 < size; i11++) {
                    e0 e0Var = this.f2788b.get(i11);
                    if (!e0Var.wasReturnedFromScrap() && e0Var.getLayoutPosition() == i10) {
                        e0Var.addFlags(32);
                        return e0Var;
                    }
                }
                if (RecyclerView.this.mAdapter.hasStableIds() && (m10 = RecyclerView.this.mAdapterHelper.m(i10)) > 0 && m10 < RecyclerView.this.mAdapter.getItemCount()) {
                    long itemId = RecyclerView.this.mAdapter.getItemId(m10);
                    for (int i12 = 0; i12 < size; i12++) {
                        e0 e0Var2 = this.f2788b.get(i12);
                        if (!e0Var2.wasReturnedFromScrap() && e0Var2.getItemId() == itemId) {
                            e0Var2.addFlags(32);
                            return e0Var2;
                        }
                    }
                }
            }
            return null;
        }

        public v i() {
            if (this.f2793g == null) {
                this.f2793g = new v();
            }
            return this.f2793g;
        }

        public int j() {
            return this.f2787a.size();
        }

        public List<e0> k() {
            return this.f2790d;
        }

        public e0 l(long j10, int i10, boolean z10) {
            for (int size = this.f2787a.size() - 1; size >= 0; size--) {
                e0 e0Var = this.f2787a.get(size);
                if (e0Var.getItemId() == j10 && !e0Var.wasReturnedFromScrap()) {
                    if (i10 == e0Var.getItemViewType()) {
                        e0Var.addFlags(32);
                        if (e0Var.isRemoved() && !RecyclerView.this.mState.e()) {
                            e0Var.setFlags(2, 14);
                        }
                        return e0Var;
                    }
                    if (!z10) {
                        this.f2787a.remove(size);
                        RecyclerView.this.removeDetachedView(e0Var.itemView, false);
                        y(e0Var.itemView);
                    }
                }
            }
            int size2 = this.f2789c.size();
            while (true) {
                size2--;
                if (size2 < 0) {
                    return null;
                }
                e0 e0Var2 = this.f2789c.get(size2);
                if (e0Var2.getItemId() == j10 && !e0Var2.isAttachedToTransitionOverlay()) {
                    if (i10 == e0Var2.getItemViewType()) {
                        if (!z10) {
                            this.f2789c.remove(size2);
                        }
                        return e0Var2;
                    }
                    if (!z10) {
                        A(size2);
                        return null;
                    }
                }
            }
        }

        public e0 m(int i10, boolean z10) {
            View e10;
            int size = this.f2787a.size();
            for (int i11 = 0; i11 < size; i11++) {
                e0 e0Var = this.f2787a.get(i11);
                if (!e0Var.wasReturnedFromScrap() && e0Var.getLayoutPosition() == i10 && !e0Var.isInvalid() && (RecyclerView.this.mState.f2735h || !e0Var.isRemoved())) {
                    e0Var.addFlags(32);
                    return e0Var;
                }
            }
            if (!z10 && (e10 = RecyclerView.this.mChildHelper.e(i10)) != null) {
                e0 childViewHolderInt = RecyclerView.getChildViewHolderInt(e10);
                RecyclerView.this.mChildHelper.s(e10);
                int m10 = RecyclerView.this.mChildHelper.m(e10);
                if (m10 != -1) {
                    RecyclerView.this.mChildHelper.d(m10);
                    D(e10);
                    childViewHolderInt.addFlags(8224);
                    return childViewHolderInt;
                }
                throw new IllegalStateException("layout index should not be -1 after unhiding a view:" + childViewHolderInt + RecyclerView.this.exceptionLabel());
            }
            int size2 = this.f2789c.size();
            for (int i12 = 0; i12 < size2; i12++) {
                e0 e0Var2 = this.f2789c.get(i12);
                if (!e0Var2.isInvalid() && e0Var2.getLayoutPosition() == i10 && !e0Var2.isAttachedToTransitionOverlay()) {
                    if (!z10) {
                        this.f2789c.remove(i12);
                    }
                    return e0Var2;
                }
            }
            return null;
        }

        public View n(int i10) {
            return this.f2787a.get(i10).itemView;
        }

        public View o(int i10) {
            return p(i10, false);
        }

        public View p(int i10, boolean z10) {
            return I(i10, z10, RecyclerView.FOREVER_NS).itemView;
        }

        public final void q(ViewGroup viewGroup, boolean z10) {
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                if (childAt instanceof ViewGroup) {
                    q((ViewGroup) childAt, true);
                }
            }
            if (z10) {
                if (viewGroup.getVisibility() == 4) {
                    viewGroup.setVisibility(0);
                    viewGroup.setVisibility(4);
                } else {
                    int visibility = viewGroup.getVisibility();
                    viewGroup.setVisibility(4);
                    viewGroup.setVisibility(visibility);
                }
            }
        }

        public final void r(e0 e0Var) {
            View view = e0Var.itemView;
            if (view instanceof ViewGroup) {
                q((ViewGroup) view, false);
            }
        }

        public void s() {
            int size = this.f2789c.size();
            for (int i10 = 0; i10 < size; i10++) {
                q qVar = (q) this.f2789c.get(i10).itemView.getLayoutParams();
                if (qVar != null) {
                    qVar.f2779h = true;
                }
            }
        }

        public void t() {
            int size = this.f2789c.size();
            for (int i10 = 0; i10 < size; i10++) {
                e0 e0Var = this.f2789c.get(i10);
                if (e0Var != null) {
                    e0Var.addFlags(6);
                    e0Var.addChangePayload(null);
                }
            }
            h hVar = RecyclerView.this.mAdapter;
            if (hVar == null || !hVar.hasStableIds()) {
                z();
            }
        }

        public void u(int i10, int i11) {
            int size = this.f2789c.size();
            for (int i12 = 0; i12 < size; i12++) {
                e0 e0Var = this.f2789c.get(i12);
                if (e0Var != null && e0Var.mPosition >= i10) {
                    e0Var.offsetPosition(i11, false);
                }
            }
        }

        public void v(int i10, int i11) {
            int i12;
            int i13;
            int i14;
            int i15;
            if (i10 < i11) {
                i12 = -1;
                i14 = i10;
                i13 = i11;
            } else {
                i12 = 1;
                i13 = i10;
                i14 = i11;
            }
            int size = this.f2789c.size();
            for (int i16 = 0; i16 < size; i16++) {
                e0 e0Var = this.f2789c.get(i16);
                if (e0Var != null && (i15 = e0Var.mPosition) >= i14 && i15 <= i13) {
                    if (i15 == i10) {
                        e0Var.offsetPosition(i11 - i10, false);
                    } else {
                        e0Var.offsetPosition(i12, false);
                    }
                }
            }
        }

        public void w(int i10, int i11, boolean z10) {
            int i12 = i10 + i11;
            for (int size = this.f2789c.size() - 1; size >= 0; size--) {
                e0 e0Var = this.f2789c.get(size);
                if (e0Var != null) {
                    int i13 = e0Var.mPosition;
                    if (i13 >= i12) {
                        e0Var.offsetPosition(-i11, z10);
                    } else if (i13 >= i10) {
                        e0Var.addFlags(8);
                        A(size);
                    }
                }
            }
        }

        public void x(h hVar, h hVar2, boolean z10) {
            c();
            i().h(hVar, hVar2, z10);
        }

        public void y(View view) {
            e0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            childViewHolderInt.mScrapContainer = null;
            childViewHolderInt.mInChangeScrap = false;
            childViewHolderInt.clearReturnedFromScrapFlag();
            C(childViewHolderInt);
        }

        public void z() {
            for (int size = this.f2789c.size() - 1; size >= 0; size--) {
                A(size);
            }
            this.f2789c.clear();
            if (RecyclerView.ALLOW_THREAD_GAP_WORK) {
                RecyclerView.this.mPrefetchRegistry.b();
            }
        }
    }

    /* loaded from: classes.dex */
    public interface x {
        void a(e0 e0Var);
    }

    /* loaded from: classes.dex */
    public class y extends j {
        public y() {
        }

        public void a() {
            if (RecyclerView.POST_UPDATES_ON_ANIMATION) {
                RecyclerView recyclerView = RecyclerView.this;
                if (recyclerView.mHasFixedSize && recyclerView.mIsAttached) {
                    q0.b0.l0(recyclerView, recyclerView.mUpdateChildViewsRunnable);
                    return;
                }
            }
            RecyclerView recyclerView2 = RecyclerView.this;
            recyclerView2.mAdapterUpdateDuringMeasure = true;
            recyclerView2.requestLayout();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.j
        public void onChanged() {
            RecyclerView.this.assertNotInLayoutOrScroll(null);
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.mState.f2734g = true;
            recyclerView.processDataSetCompletelyChanged(true);
            if (RecyclerView.this.mAdapterHelper.p()) {
                return;
            }
            RecyclerView.this.requestLayout();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.j
        public void onItemRangeChanged(int i10, int i11, Object obj) {
            RecyclerView.this.assertNotInLayoutOrScroll(null);
            if (RecyclerView.this.mAdapterHelper.r(i10, i11, obj)) {
                a();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.j
        public void onItemRangeInserted(int i10, int i11) {
            RecyclerView.this.assertNotInLayoutOrScroll(null);
            if (RecyclerView.this.mAdapterHelper.s(i10, i11)) {
                a();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.j
        public void onItemRangeMoved(int i10, int i11, int i12) {
            RecyclerView.this.assertNotInLayoutOrScroll(null);
            if (RecyclerView.this.mAdapterHelper.t(i10, i11, i12)) {
                a();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.j
        public void onItemRangeRemoved(int i10, int i11) {
            RecyclerView.this.assertNotInLayoutOrScroll(null);
            if (RecyclerView.this.mAdapterHelper.u(i10, i11)) {
                a();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.j
        public void onStateRestorationPolicyChanged() {
            h hVar;
            RecyclerView recyclerView = RecyclerView.this;
            if (recyclerView.mPendingSavedState == null || (hVar = recyclerView.mAdapter) == null || !hVar.canRestoreState()) {
                return;
            }
            RecyclerView.this.requestLayout();
        }
    }

    static {
        int i10 = Build.VERSION.SDK_INT;
        FORCE_INVALIDATE_DISPLAY_LIST = i10 == 18 || i10 == 19 || i10 == 20;
        ALLOW_SIZE_IN_UNSPECIFIED_SPEC = i10 >= 23;
        POST_UPDATES_ON_ANIMATION = i10 >= 16;
        ALLOW_THREAD_GAP_WORK = i10 >= 21;
        FORCE_ABS_FOCUS_SEARCH_DIRECTION = i10 <= 15;
        IGNORE_DETACHED_FOCUSED_CHILD = i10 <= 15;
        Class<?> cls = Integer.TYPE;
        LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE = new Class[]{Context.class, AttributeSet.class, cls, cls};
        sQuinticInterpolator = new c();
    }

    public RecyclerView(Context context) {
        this(context, null);
    }

    private void addAnimatingView(e0 e0Var) {
        View view = e0Var.itemView;
        boolean z10 = view.getParent() == this;
        this.mRecycler.J(getChildViewHolder(view));
        if (e0Var.isTmpDetached()) {
            this.mChildHelper.c(view, -1, view.getLayoutParams(), true);
        } else if (!z10) {
            this.mChildHelper.b(view, true);
        } else {
            this.mChildHelper.k(view);
        }
    }

    private void animateChange(e0 e0Var, e0 e0Var2, m.c cVar, m.c cVar2, boolean z10, boolean z11) {
        e0Var.setIsRecyclable(false);
        if (z10) {
            addAnimatingView(e0Var);
        }
        if (e0Var != e0Var2) {
            if (z11) {
                addAnimatingView(e0Var2);
            }
            e0Var.mShadowedHolder = e0Var2;
            addAnimatingView(e0Var);
            this.mRecycler.J(e0Var);
            e0Var2.setIsRecyclable(false);
            e0Var2.mShadowingHolder = e0Var;
        }
        if (this.mItemAnimator.b(e0Var, e0Var2, cVar, cVar2)) {
            postAnimationRunner();
        }
    }

    private void cancelScroll() {
        resetScroll();
        setScrollState(0);
    }

    public static void clearNestedRecyclerViewIfNotNested(e0 e0Var) {
        WeakReference<RecyclerView> weakReference = e0Var.mNestedRecyclerView;
        if (weakReference != null) {
            RecyclerView recyclerView = weakReference.get();
            while (recyclerView != null) {
                if (recyclerView == e0Var.itemView) {
                    return;
                }
                Object parent = recyclerView.getParent();
                recyclerView = parent instanceof View ? (View) parent : null;
            }
            e0Var.mNestedRecyclerView = null;
        }
    }

    private void createLayoutManager(Context context, String str, AttributeSet attributeSet, int i10, int i11) {
        ClassLoader classLoader;
        Constructor constructor;
        if (str != null) {
            String trim = str.trim();
            if (trim.isEmpty()) {
                return;
            }
            String fullClassName = getFullClassName(context, trim);
            try {
                if (isInEditMode()) {
                    classLoader = getClass().getClassLoader();
                } else {
                    classLoader = context.getClassLoader();
                }
                Class<? extends U> asSubclass = Class.forName(fullClassName, false, classLoader).asSubclass(p.class);
                Object[] objArr = null;
                try {
                    constructor = asSubclass.getConstructor(LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE);
                    objArr = new Object[]{context, attributeSet, Integer.valueOf(i10), Integer.valueOf(i11)};
                } catch (NoSuchMethodException e10) {
                    try {
                        constructor = asSubclass.getConstructor(new Class[0]);
                    } catch (NoSuchMethodException e11) {
                        e11.initCause(e10);
                        throw new IllegalStateException(attributeSet.getPositionDescription() + ": Error creating LayoutManager " + fullClassName, e11);
                    }
                }
                constructor.setAccessible(true);
                setLayoutManager((p) constructor.newInstance(objArr));
            } catch (ClassCastException e12) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Class is not a LayoutManager " + fullClassName, e12);
            } catch (ClassNotFoundException e13) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Unable to find LayoutManager " + fullClassName, e13);
            } catch (IllegalAccessException e14) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Cannot access non-public constructor " + fullClassName, e14);
            } catch (InstantiationException e15) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + fullClassName, e15);
            } catch (InvocationTargetException e16) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + fullClassName, e16);
            }
        }
    }

    private boolean didChildRangeChange(int i10, int i11) {
        findMinMaxChildLayoutPositions(this.mMinMaxLayoutPositions);
        int[] iArr = this.mMinMaxLayoutPositions;
        return (iArr[0] == i10 && iArr[1] == i11) ? false : true;
    }

    private void dispatchContentChangedIfNecessary() {
        int i10 = this.mEatenAccessibilityChangeFlags;
        this.mEatenAccessibilityChangeFlags = 0;
        if (i10 == 0 || !isAccessibilityEnabled()) {
            return;
        }
        AccessibilityEvent obtain = AccessibilityEvent.obtain();
        obtain.setEventType(e0.FLAG_MOVED);
        r0.b.b(obtain, i10);
        sendAccessibilityEventUnchecked(obtain);
    }

    private void dispatchLayoutStep1() {
        this.mState.a(1);
        fillRemainingScrollValues(this.mState);
        this.mState.f2737j = false;
        startInterceptRequestLayout();
        this.mViewInfoStore.f();
        onEnterLayoutOrScroll();
        processAdapterUpdatesAndSetAnimationFlags();
        saveFocusInfo();
        b0 b0Var = this.mState;
        b0Var.f2736i = b0Var.f2738k && this.mItemsChanged;
        this.mItemsChanged = false;
        this.mItemsAddedOrRemoved = false;
        b0Var.f2735h = b0Var.f2739l;
        b0Var.f2733f = this.mAdapter.getItemCount();
        findMinMaxChildLayoutPositions(this.mMinMaxLayoutPositions);
        if (this.mState.f2738k) {
            int g10 = this.mChildHelper.g();
            for (int i10 = 0; i10 < g10; i10++) {
                e0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.f(i10));
                if (!childViewHolderInt.shouldIgnore() && (!childViewHolderInt.isInvalid() || this.mAdapter.hasStableIds())) {
                    this.mViewInfoStore.e(childViewHolderInt, this.mItemAnimator.t(this.mState, childViewHolderInt, m.e(childViewHolderInt), childViewHolderInt.getUnmodifiedPayloads()));
                    if (this.mState.f2736i && childViewHolderInt.isUpdated() && !childViewHolderInt.isRemoved() && !childViewHolderInt.shouldIgnore() && !childViewHolderInt.isInvalid()) {
                        this.mViewInfoStore.c(getChangedHolderKey(childViewHolderInt), childViewHolderInt);
                    }
                }
            }
        }
        if (this.mState.f2739l) {
            saveOldPositions();
            b0 b0Var2 = this.mState;
            boolean z10 = b0Var2.f2734g;
            b0Var2.f2734g = false;
            this.mLayout.onLayoutChildren(this.mRecycler, b0Var2);
            this.mState.f2734g = z10;
            for (int i11 = 0; i11 < this.mChildHelper.g(); i11++) {
                e0 childViewHolderInt2 = getChildViewHolderInt(this.mChildHelper.f(i11));
                if (!childViewHolderInt2.shouldIgnore() && !this.mViewInfoStore.i(childViewHolderInt2)) {
                    int e10 = m.e(childViewHolderInt2);
                    boolean hasAnyOfTheFlags = childViewHolderInt2.hasAnyOfTheFlags(e0.FLAG_BOUNCED_FROM_HIDDEN_LIST);
                    if (!hasAnyOfTheFlags) {
                        e10 |= e0.FLAG_APPEARED_IN_PRE_LAYOUT;
                    }
                    m.c t10 = this.mItemAnimator.t(this.mState, childViewHolderInt2, e10, childViewHolderInt2.getUnmodifiedPayloads());
                    if (hasAnyOfTheFlags) {
                        recordAnimationInfoIfBouncedHiddenView(childViewHolderInt2, t10);
                    } else {
                        this.mViewInfoStore.a(childViewHolderInt2, t10);
                    }
                }
            }
            clearOldPositions();
        } else {
            clearOldPositions();
        }
        onExitLayoutOrScroll();
        stopInterceptRequestLayout(false);
        this.mState.f2732e = 2;
    }

    private void dispatchLayoutStep2() {
        startInterceptRequestLayout();
        onEnterLayoutOrScroll();
        this.mState.a(6);
        this.mAdapterHelper.j();
        this.mState.f2733f = this.mAdapter.getItemCount();
        this.mState.f2731d = 0;
        if (this.mPendingSavedState != null && this.mAdapter.canRestoreState()) {
            Parcelable parcelable = this.mPendingSavedState.f2796f;
            if (parcelable != null) {
                this.mLayout.onRestoreInstanceState(parcelable);
            }
            this.mPendingSavedState = null;
        }
        b0 b0Var = this.mState;
        b0Var.f2735h = false;
        this.mLayout.onLayoutChildren(this.mRecycler, b0Var);
        b0 b0Var2 = this.mState;
        b0Var2.f2734g = false;
        b0Var2.f2738k = b0Var2.f2738k && this.mItemAnimator != null;
        b0Var2.f2732e = 4;
        onExitLayoutOrScroll();
        stopInterceptRequestLayout(false);
    }

    private void dispatchLayoutStep3() {
        this.mState.a(4);
        startInterceptRequestLayout();
        onEnterLayoutOrScroll();
        b0 b0Var = this.mState;
        b0Var.f2732e = 1;
        if (b0Var.f2738k) {
            for (int g10 = this.mChildHelper.g() - 1; g10 >= 0; g10--) {
                e0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.f(g10));
                if (!childViewHolderInt.shouldIgnore()) {
                    long changedHolderKey = getChangedHolderKey(childViewHolderInt);
                    m.c s10 = this.mItemAnimator.s(this.mState, childViewHolderInt);
                    e0 g11 = this.mViewInfoStore.g(changedHolderKey);
                    if (g11 != null && !g11.shouldIgnore()) {
                        boolean h10 = this.mViewInfoStore.h(g11);
                        boolean h11 = this.mViewInfoStore.h(childViewHolderInt);
                        if (h10 && g11 == childViewHolderInt) {
                            this.mViewInfoStore.d(childViewHolderInt, s10);
                        } else {
                            m.c n10 = this.mViewInfoStore.n(g11);
                            this.mViewInfoStore.d(childViewHolderInt, s10);
                            m.c m10 = this.mViewInfoStore.m(childViewHolderInt);
                            if (n10 == null) {
                                handleMissingPreInfoForChangeError(changedHolderKey, childViewHolderInt, g11);
                            } else {
                                animateChange(g11, childViewHolderInt, n10, m10, h10, h11);
                            }
                        }
                    } else {
                        this.mViewInfoStore.d(childViewHolderInt, s10);
                    }
                }
            }
            this.mViewInfoStore.o(this.mViewInfoProcessCallback);
        }
        this.mLayout.removeAndRecycleScrapInt(this.mRecycler);
        b0 b0Var2 = this.mState;
        b0Var2.f2730c = b0Var2.f2733f;
        this.mDataSetHasChangedAfterLayout = false;
        this.mDispatchItemsChangedEvent = false;
        b0Var2.f2738k = false;
        b0Var2.f2739l = false;
        this.mLayout.mRequestedSimpleAnimations = false;
        ArrayList<e0> arrayList = this.mRecycler.f2788b;
        if (arrayList != null) {
            arrayList.clear();
        }
        p pVar = this.mLayout;
        if (pVar.mPrefetchMaxObservedInInitialPrefetch) {
            pVar.mPrefetchMaxCountObserved = 0;
            pVar.mPrefetchMaxObservedInInitialPrefetch = false;
            this.mRecycler.K();
        }
        this.mLayout.onLayoutCompleted(this.mState);
        onExitLayoutOrScroll();
        stopInterceptRequestLayout(false);
        this.mViewInfoStore.f();
        int[] iArr = this.mMinMaxLayoutPositions;
        if (didChildRangeChange(iArr[0], iArr[1])) {
            dispatchOnScrolled(0, 0);
        }
        recoverFocusFromState();
        resetFocusInfo();
    }

    private boolean dispatchToOnItemTouchListeners(MotionEvent motionEvent) {
        t tVar = this.mInterceptingOnItemTouchListener;
        if (tVar == null) {
            if (motionEvent.getAction() == 0) {
                return false;
            }
            return findInterceptingOnItemTouchListener(motionEvent);
        }
        tVar.b(this, motionEvent);
        int action = motionEvent.getAction();
        if (action == 3 || action == 1) {
            this.mInterceptingOnItemTouchListener = null;
        }
        return true;
    }

    private boolean findInterceptingOnItemTouchListener(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        int size = this.mOnItemTouchListeners.size();
        for (int i10 = 0; i10 < size; i10++) {
            t tVar = this.mOnItemTouchListeners.get(i10);
            if (tVar.a(this, motionEvent) && action != 3) {
                this.mInterceptingOnItemTouchListener = tVar;
                return true;
            }
        }
        return false;
    }

    private void findMinMaxChildLayoutPositions(int[] iArr) {
        int g10 = this.mChildHelper.g();
        if (g10 == 0) {
            iArr[0] = -1;
            iArr[1] = -1;
            return;
        }
        int i10 = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        int i11 = Integer.MIN_VALUE;
        for (int i12 = 0; i12 < g10; i12++) {
            e0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.f(i12));
            if (!childViewHolderInt.shouldIgnore()) {
                int layoutPosition = childViewHolderInt.getLayoutPosition();
                if (layoutPosition < i10) {
                    i10 = layoutPosition;
                }
                if (layoutPosition > i11) {
                    i11 = layoutPosition;
                }
            }
        }
        iArr[0] = i10;
        iArr[1] = i11;
    }

    public static RecyclerView findNestedRecyclerView(View view) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        if (view instanceof RecyclerView) {
            return (RecyclerView) view;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            RecyclerView findNestedRecyclerView = findNestedRecyclerView(viewGroup.getChildAt(i10));
            if (findNestedRecyclerView != null) {
                return findNestedRecyclerView;
            }
        }
        return null;
    }

    private View findNextViewToFocus() {
        e0 findViewHolderForAdapterPosition;
        b0 b0Var = this.mState;
        int i10 = b0Var.f2740m;
        if (i10 == -1) {
            i10 = 0;
        }
        int b10 = b0Var.b();
        for (int i11 = i10; i11 < b10; i11++) {
            e0 findViewHolderForAdapterPosition2 = findViewHolderForAdapterPosition(i11);
            if (findViewHolderForAdapterPosition2 == null) {
                break;
            }
            if (findViewHolderForAdapterPosition2.itemView.hasFocusable()) {
                return findViewHolderForAdapterPosition2.itemView;
            }
        }
        int min = Math.min(b10, i10);
        do {
            min--;
            if (min < 0 || (findViewHolderForAdapterPosition = findViewHolderForAdapterPosition(min)) == null) {
                return null;
            }
        } while (!findViewHolderForAdapterPosition.itemView.hasFocusable());
        return findViewHolderForAdapterPosition.itemView;
    }

    public static e0 getChildViewHolderInt(View view) {
        if (view == null) {
            return null;
        }
        return ((q) view.getLayoutParams()).f2777f;
    }

    public static void getDecoratedBoundsWithMarginsInt(View view, Rect rect) {
        q qVar = (q) view.getLayoutParams();
        Rect rect2 = qVar.f2778g;
        rect.set((view.getLeft() - rect2.left) - ((ViewGroup.MarginLayoutParams) qVar).leftMargin, (view.getTop() - rect2.top) - ((ViewGroup.MarginLayoutParams) qVar).topMargin, view.getRight() + rect2.right + ((ViewGroup.MarginLayoutParams) qVar).rightMargin, view.getBottom() + rect2.bottom + ((ViewGroup.MarginLayoutParams) qVar).bottomMargin);
    }

    private int getDeepestFocusedViewWithId(View view) {
        int id2 = view.getId();
        while (!view.isFocused() && (view instanceof ViewGroup) && view.hasFocus()) {
            view = ((ViewGroup) view).getFocusedChild();
            if (view.getId() != -1) {
                id2 = view.getId();
            }
        }
        return id2;
    }

    private String getFullClassName(Context context, String str) {
        if (str.charAt(0) == '.') {
            return context.getPackageName() + str;
        }
        if (str.contains(".")) {
            return str;
        }
        return RecyclerView.class.getPackage().getName() + '.' + str;
    }

    private q0.p getScrollingChildHelper() {
        if (this.mScrollingChildHelper == null) {
            this.mScrollingChildHelper = new q0.p(this);
        }
        return this.mScrollingChildHelper;
    }

    private void handleMissingPreInfoForChangeError(long j10, e0 e0Var, e0 e0Var2) {
        int g10 = this.mChildHelper.g();
        for (int i10 = 0; i10 < g10; i10++) {
            e0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.f(i10));
            if (childViewHolderInt != e0Var && getChangedHolderKey(childViewHolderInt) == j10) {
                h hVar = this.mAdapter;
                if (hVar != null && hVar.hasStableIds()) {
                    throw new IllegalStateException("Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:" + childViewHolderInt + " \n View Holder 2:" + e0Var + exceptionLabel());
                }
                throw new IllegalStateException("Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:" + childViewHolderInt + " \n View Holder 2:" + e0Var + exceptionLabel());
            }
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Problem while matching changed view holders with the newones. The pre-layout information for the change holder ");
        sb2.append(e0Var2);
        sb2.append(" cannot be found but it is necessary for ");
        sb2.append(e0Var);
        sb2.append(exceptionLabel());
    }

    private boolean hasUpdatedView() {
        int g10 = this.mChildHelper.g();
        for (int i10 = 0; i10 < g10; i10++) {
            e0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.f(i10));
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore() && childViewHolderInt.isUpdated()) {
                return true;
            }
        }
        return false;
    }

    @SuppressLint({"InlinedApi"})
    private void initAutofill() {
        if (q0.b0.D(this) == 0) {
            q0.b0.F0(this, 8);
        }
    }

    private void initChildrenHelper() {
        this.mChildHelper = new androidx.recyclerview.widget.f(new e());
    }

    private boolean isPreferredNextFocus(View view, View view2, int i10) {
        int i11;
        if (view2 == null || view2 == this || view2 == view || findContainingItemView(view2) == null) {
            return false;
        }
        if (view == null || findContainingItemView(view) == null) {
            return true;
        }
        this.mTempRect.set(0, 0, view.getWidth(), view.getHeight());
        this.mTempRect2.set(0, 0, view2.getWidth(), view2.getHeight());
        offsetDescendantRectToMyCoords(view, this.mTempRect);
        offsetDescendantRectToMyCoords(view2, this.mTempRect2);
        char c10 = 65535;
        int i12 = this.mLayout.getLayoutDirection() == 1 ? -1 : 1;
        Rect rect = this.mTempRect;
        int i13 = rect.left;
        Rect rect2 = this.mTempRect2;
        int i14 = rect2.left;
        if ((i13 < i14 || rect.right <= i14) && rect.right < rect2.right) {
            i11 = 1;
        } else {
            int i15 = rect.right;
            int i16 = rect2.right;
            i11 = ((i15 > i16 || i13 >= i16) && i13 > i14) ? -1 : 0;
        }
        int i17 = rect.top;
        int i18 = rect2.top;
        if ((i17 < i18 || rect.bottom <= i18) && rect.bottom < rect2.bottom) {
            c10 = 1;
        } else {
            int i19 = rect.bottom;
            int i20 = rect2.bottom;
            if ((i19 <= i20 && i17 < i20) || i17 <= i18) {
                c10 = 0;
            }
        }
        if (i10 == 1) {
            return c10 < 0 || (c10 == 0 && i11 * i12 < 0);
        }
        if (i10 == 2) {
            return c10 > 0 || (c10 == 0 && i11 * i12 > 0);
        }
        if (i10 == 17) {
            return i11 < 0;
        }
        if (i10 == 33) {
            return c10 < 0;
        }
        if (i10 == 66) {
            return i11 > 0;
        }
        if (i10 == 130) {
            return c10 > 0;
        }
        throw new IllegalArgumentException("Invalid direction: " + i10 + exceptionLabel());
    }

    private void nestedScrollByInternal(int i10, int i11, MotionEvent motionEvent, int i12) {
        p pVar = this.mLayout;
        if (pVar == null || this.mLayoutSuppressed) {
            return;
        }
        int[] iArr = this.mReusableIntPair;
        iArr[0] = 0;
        iArr[1] = 0;
        boolean canScrollHorizontally = pVar.canScrollHorizontally();
        boolean canScrollVertically = this.mLayout.canScrollVertically();
        startNestedScroll(canScrollVertically ? (canScrollHorizontally ? 1 : 0) | 2 : canScrollHorizontally ? 1 : 0, i12);
        if (dispatchNestedPreScroll(canScrollHorizontally ? i10 : 0, canScrollVertically ? i11 : 0, this.mReusableIntPair, this.mScrollOffset, i12)) {
            int[] iArr2 = this.mReusableIntPair;
            i10 -= iArr2[0];
            i11 -= iArr2[1];
        }
        scrollByInternal(canScrollHorizontally ? i10 : 0, canScrollVertically ? i11 : 0, motionEvent, i12);
        androidx.recyclerview.widget.l lVar = this.mGapWorker;
        if (lVar != null && (i10 != 0 || i11 != 0)) {
            lVar.f(this, i10, i11);
        }
        stopNestedScroll(i12);
    }

    private void onPointerUp(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.mScrollPointerId) {
            int i10 = actionIndex == 0 ? 1 : 0;
            this.mScrollPointerId = motionEvent.getPointerId(i10);
            int x10 = (int) (motionEvent.getX(i10) + 0.5f);
            this.mLastTouchX = x10;
            this.mInitialTouchX = x10;
            int y10 = (int) (motionEvent.getY(i10) + 0.5f);
            this.mLastTouchY = y10;
            this.mInitialTouchY = y10;
        }
    }

    private boolean predictiveItemAnimationsEnabled() {
        return this.mItemAnimator != null && this.mLayout.supportsPredictiveItemAnimations();
    }

    private void processAdapterUpdatesAndSetAnimationFlags() {
        boolean z10;
        if (this.mDataSetHasChangedAfterLayout) {
            this.mAdapterHelper.y();
            if (this.mDispatchItemsChangedEvent) {
                this.mLayout.onItemsChanged(this);
            }
        }
        if (predictiveItemAnimationsEnabled()) {
            this.mAdapterHelper.w();
        } else {
            this.mAdapterHelper.j();
        }
        boolean z11 = false;
        boolean z12 = this.mItemsAddedOrRemoved || this.mItemsChanged;
        this.mState.f2738k = this.mFirstLayoutComplete && this.mItemAnimator != null && ((z10 = this.mDataSetHasChangedAfterLayout) || z12 || this.mLayout.mRequestedSimpleAnimations) && (!z10 || this.mAdapter.hasStableIds());
        b0 b0Var = this.mState;
        if (b0Var.f2738k && z12 && !this.mDataSetHasChangedAfterLayout && predictiveItemAnimationsEnabled()) {
            z11 = true;
        }
        b0Var.f2739l = z11;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0040  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void pullGlows(float f10, float f11, float f12, float f13) {
        boolean z10;
        boolean z11 = true;
        if (f11 < StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            ensureLeftGlow();
            u0.e.c(this.mLeftGlow, (-f11) / getWidth(), 1.0f - (f12 / getHeight()));
        } else {
            if (f11 <= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                z10 = false;
                if (f13 >= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                    ensureTopGlow();
                    u0.e.c(this.mTopGlow, (-f13) / getHeight(), f10 / getWidth());
                } else if (f13 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                    ensureBottomGlow();
                    u0.e.c(this.mBottomGlow, f13 / getHeight(), 1.0f - (f10 / getWidth()));
                } else {
                    z11 = z10;
                }
                if (z11 && f11 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD && f13 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                    return;
                }
                q0.b0.k0(this);
            }
            ensureRightGlow();
            u0.e.c(this.mRightGlow, f11 / getWidth(), f12 / getHeight());
        }
        z10 = true;
        if (f13 >= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
        }
        if (z11) {
        }
        q0.b0.k0(this);
    }

    private void recoverFocusFromState() {
        View findViewById;
        if (!this.mPreserveFocusAfterLayout || this.mAdapter == null || !hasFocus() || getDescendantFocusability() == 393216) {
            return;
        }
        if (getDescendantFocusability() == 131072 && isFocused()) {
            return;
        }
        if (!isFocused()) {
            View focusedChild = getFocusedChild();
            if (IGNORE_DETACHED_FOCUSED_CHILD && (focusedChild.getParent() == null || !focusedChild.hasFocus())) {
                if (this.mChildHelper.g() == 0) {
                    requestFocus();
                    return;
                }
            } else if (!this.mChildHelper.n(focusedChild)) {
                return;
            }
        }
        View view = null;
        e0 findViewHolderForItemId = (this.mState.f2741n == -1 || !this.mAdapter.hasStableIds()) ? null : findViewHolderForItemId(this.mState.f2741n);
        if (findViewHolderForItemId != null && !this.mChildHelper.n(findViewHolderForItemId.itemView) && findViewHolderForItemId.itemView.hasFocusable()) {
            view = findViewHolderForItemId.itemView;
        } else if (this.mChildHelper.g() > 0) {
            view = findNextViewToFocus();
        }
        if (view != null) {
            int i10 = this.mState.f2742o;
            if (i10 != -1 && (findViewById = view.findViewById(i10)) != null && findViewById.isFocusable()) {
                view = findViewById;
            }
            view.requestFocus();
        }
    }

    private void releaseGlows() {
        boolean z10;
        EdgeEffect edgeEffect = this.mLeftGlow;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            z10 = this.mLeftGlow.isFinished();
        } else {
            z10 = false;
        }
        EdgeEffect edgeEffect2 = this.mTopGlow;
        if (edgeEffect2 != null) {
            edgeEffect2.onRelease();
            z10 |= this.mTopGlow.isFinished();
        }
        EdgeEffect edgeEffect3 = this.mRightGlow;
        if (edgeEffect3 != null) {
            edgeEffect3.onRelease();
            z10 |= this.mRightGlow.isFinished();
        }
        EdgeEffect edgeEffect4 = this.mBottomGlow;
        if (edgeEffect4 != null) {
            edgeEffect4.onRelease();
            z10 |= this.mBottomGlow.isFinished();
        }
        if (z10) {
            q0.b0.k0(this);
        }
    }

    private void requestChildOnScreen(View view, View view2) {
        View view3 = view2 != null ? view2 : view;
        this.mTempRect.set(0, 0, view3.getWidth(), view3.getHeight());
        ViewGroup.LayoutParams layoutParams = view3.getLayoutParams();
        if (layoutParams instanceof q) {
            q qVar = (q) layoutParams;
            if (!qVar.f2779h) {
                Rect rect = qVar.f2778g;
                Rect rect2 = this.mTempRect;
                rect2.left -= rect.left;
                rect2.right += rect.right;
                rect2.top -= rect.top;
                rect2.bottom += rect.bottom;
            }
        }
        if (view2 != null) {
            offsetDescendantRectToMyCoords(view2, this.mTempRect);
            offsetRectIntoDescendantCoords(view, this.mTempRect);
        }
        this.mLayout.requestChildRectangleOnScreen(this, view, this.mTempRect, !this.mFirstLayoutComplete, view2 == null);
    }

    private void resetFocusInfo() {
        b0 b0Var = this.mState;
        b0Var.f2741n = -1L;
        b0Var.f2740m = -1;
        b0Var.f2742o = -1;
    }

    private void resetScroll() {
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker != null) {
            velocityTracker.clear();
        }
        stopNestedScroll(0);
        releaseGlows();
    }

    private void saveFocusInfo() {
        int absoluteAdapterPosition;
        View focusedChild = (this.mPreserveFocusAfterLayout && hasFocus() && this.mAdapter != null) ? getFocusedChild() : null;
        e0 findContainingViewHolder = focusedChild != null ? findContainingViewHolder(focusedChild) : null;
        if (findContainingViewHolder == null) {
            resetFocusInfo();
            return;
        }
        this.mState.f2741n = this.mAdapter.hasStableIds() ? findContainingViewHolder.getItemId() : -1L;
        b0 b0Var = this.mState;
        if (this.mDataSetHasChangedAfterLayout) {
            absoluteAdapterPosition = -1;
        } else {
            absoluteAdapterPosition = findContainingViewHolder.isRemoved() ? findContainingViewHolder.mOldPosition : findContainingViewHolder.getAbsoluteAdapterPosition();
        }
        b0Var.f2740m = absoluteAdapterPosition;
        this.mState.f2742o = getDeepestFocusedViewWithId(findContainingViewHolder.itemView);
    }

    private void setAdapterInternal(h hVar, boolean z10, boolean z11) {
        h hVar2 = this.mAdapter;
        if (hVar2 != null) {
            hVar2.unregisterAdapterDataObserver(this.mObserver);
            this.mAdapter.onDetachedFromRecyclerView(this);
        }
        if (!z10 || z11) {
            removeAndRecycleViews();
        }
        this.mAdapterHelper.y();
        h hVar3 = this.mAdapter;
        this.mAdapter = hVar;
        if (hVar != null) {
            hVar.registerAdapterDataObserver(this.mObserver);
            hVar.onAttachedToRecyclerView(this);
        }
        p pVar = this.mLayout;
        if (pVar != null) {
            pVar.onAdapterChanged(hVar3, this.mAdapter);
        }
        this.mRecycler.x(hVar3, this.mAdapter, z10);
        this.mState.f2734g = true;
    }

    private void stopScrollersInternal() {
        this.mViewFlinger.f();
        p pVar = this.mLayout;
        if (pVar != null) {
            pVar.stopSmoothScroller();
        }
    }

    public void absorbGlows(int i10, int i11) {
        if (i10 < 0) {
            ensureLeftGlow();
            if (this.mLeftGlow.isFinished()) {
                this.mLeftGlow.onAbsorb(-i10);
            }
        } else if (i10 > 0) {
            ensureRightGlow();
            if (this.mRightGlow.isFinished()) {
                this.mRightGlow.onAbsorb(i10);
            }
        }
        if (i11 < 0) {
            ensureTopGlow();
            if (this.mTopGlow.isFinished()) {
                this.mTopGlow.onAbsorb(-i11);
            }
        } else if (i11 > 0) {
            ensureBottomGlow();
            if (this.mBottomGlow.isFinished()) {
                this.mBottomGlow.onAbsorb(i11);
            }
        }
        if (i10 == 0 && i11 == 0) {
            return;
        }
        q0.b0.k0(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i10, int i11) {
        p pVar = this.mLayout;
        if (pVar == null || !pVar.onAddFocusables(this, arrayList, i10, i11)) {
            super.addFocusables(arrayList, i10, i11);
        }
    }

    public void addItemDecoration(o oVar, int i10) {
        p pVar = this.mLayout;
        if (pVar != null) {
            pVar.assertNotInLayoutOrScroll("Cannot add item decoration during a scroll  or layout");
        }
        if (this.mItemDecorations.isEmpty()) {
            setWillNotDraw(false);
        }
        if (i10 < 0) {
            this.mItemDecorations.add(oVar);
        } else {
            this.mItemDecorations.add(i10, oVar);
        }
        markItemDecorInsetsDirty();
        requestLayout();
    }

    public void addOnChildAttachStateChangeListener(r rVar) {
        if (this.mOnChildAttachStateListeners == null) {
            this.mOnChildAttachStateListeners = new ArrayList();
        }
        this.mOnChildAttachStateListeners.add(rVar);
    }

    public void addOnItemTouchListener(t tVar) {
        this.mOnItemTouchListeners.add(tVar);
    }

    public void addOnScrollListener(u uVar) {
        if (this.mScrollListeners == null) {
            this.mScrollListeners = new ArrayList();
        }
        this.mScrollListeners.add(uVar);
    }

    public void addRecyclerListener(x xVar) {
        p0.i.b(xVar != null, "'listener' arg cannot be null.");
        this.mRecyclerListeners.add(xVar);
    }

    public void animateAppearance(e0 e0Var, m.c cVar, m.c cVar2) {
        e0Var.setIsRecyclable(false);
        if (this.mItemAnimator.a(e0Var, cVar, cVar2)) {
            postAnimationRunner();
        }
    }

    public void animateDisappearance(e0 e0Var, m.c cVar, m.c cVar2) {
        addAnimatingView(e0Var);
        e0Var.setIsRecyclable(false);
        if (this.mItemAnimator.c(e0Var, cVar, cVar2)) {
            postAnimationRunner();
        }
    }

    public void assertInLayoutOrScroll(String str) {
        if (isComputingLayout()) {
            return;
        }
        if (str == null) {
            throw new IllegalStateException("Cannot call this method unless RecyclerView is computing a layout or scrolling" + exceptionLabel());
        }
        throw new IllegalStateException(str + exceptionLabel());
    }

    public void assertNotInLayoutOrScroll(String str) {
        if (isComputingLayout()) {
            if (str == null) {
                throw new IllegalStateException("Cannot call this method while RecyclerView is computing a layout or scrolling" + exceptionLabel());
            }
            throw new IllegalStateException(str);
        }
        if (this.mDispatchScrollCounter > 0) {
            new IllegalStateException("" + exceptionLabel());
        }
    }

    public boolean canReuseUpdatedViewHolder(e0 e0Var) {
        m mVar = this.mItemAnimator;
        return mVar == null || mVar.g(e0Var, e0Var.getUnmodifiedPayloads());
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof q) && this.mLayout.checkLayoutParams((q) layoutParams);
    }

    public void clearOldPositions() {
        int j10 = this.mChildHelper.j();
        for (int i10 = 0; i10 < j10; i10++) {
            e0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.i(i10));
            if (!childViewHolderInt.shouldIgnore()) {
                childViewHolderInt.clearOldPosition();
            }
        }
        this.mRecycler.d();
    }

    public void clearOnChildAttachStateChangeListeners() {
        List<r> list = this.mOnChildAttachStateListeners;
        if (list != null) {
            list.clear();
        }
    }

    public void clearOnScrollListeners() {
        List<u> list = this.mScrollListeners;
        if (list != null) {
            list.clear();
        }
    }

    @Override // android.view.View
    public int computeHorizontalScrollExtent() {
        p pVar = this.mLayout;
        if (pVar != null && pVar.canScrollHorizontally()) {
            return this.mLayout.computeHorizontalScrollExtent(this.mState);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeHorizontalScrollOffset() {
        p pVar = this.mLayout;
        if (pVar != null && pVar.canScrollHorizontally()) {
            return this.mLayout.computeHorizontalScrollOffset(this.mState);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeHorizontalScrollRange() {
        p pVar = this.mLayout;
        if (pVar != null && pVar.canScrollHorizontally()) {
            return this.mLayout.computeHorizontalScrollRange(this.mState);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollExtent() {
        p pVar = this.mLayout;
        if (pVar != null && pVar.canScrollVertically()) {
            return this.mLayout.computeVerticalScrollExtent(this.mState);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollOffset() {
        p pVar = this.mLayout;
        if (pVar != null && pVar.canScrollVertically()) {
            return this.mLayout.computeVerticalScrollOffset(this.mState);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollRange() {
        p pVar = this.mLayout;
        if (pVar != null && pVar.canScrollVertically()) {
            return this.mLayout.computeVerticalScrollRange(this.mState);
        }
        return 0;
    }

    public void considerReleasingGlowsOnScroll(int i10, int i11) {
        boolean z10;
        EdgeEffect edgeEffect = this.mLeftGlow;
        if (edgeEffect == null || edgeEffect.isFinished() || i10 <= 0) {
            z10 = false;
        } else {
            this.mLeftGlow.onRelease();
            z10 = this.mLeftGlow.isFinished();
        }
        EdgeEffect edgeEffect2 = this.mRightGlow;
        if (edgeEffect2 != null && !edgeEffect2.isFinished() && i10 < 0) {
            this.mRightGlow.onRelease();
            z10 |= this.mRightGlow.isFinished();
        }
        EdgeEffect edgeEffect3 = this.mTopGlow;
        if (edgeEffect3 != null && !edgeEffect3.isFinished() && i11 > 0) {
            this.mTopGlow.onRelease();
            z10 |= this.mTopGlow.isFinished();
        }
        EdgeEffect edgeEffect4 = this.mBottomGlow;
        if (edgeEffect4 != null && !edgeEffect4.isFinished() && i11 < 0) {
            this.mBottomGlow.onRelease();
            z10 |= this.mBottomGlow.isFinished();
        }
        if (z10) {
            q0.b0.k0(this);
        }
    }

    public void consumePendingUpdateOperations() {
        if (this.mFirstLayoutComplete && !this.mDataSetHasChangedAfterLayout) {
            if (this.mAdapterHelper.p()) {
                if (this.mAdapterHelper.o(4) && !this.mAdapterHelper.o(11)) {
                    m0.k.a(TRACE_HANDLE_ADAPTER_UPDATES_TAG);
                    startInterceptRequestLayout();
                    onEnterLayoutOrScroll();
                    this.mAdapterHelper.w();
                    if (!this.mLayoutWasDefered) {
                        if (hasUpdatedView()) {
                            dispatchLayout();
                        } else {
                            this.mAdapterHelper.i();
                        }
                    }
                    stopInterceptRequestLayout(true);
                    onExitLayoutOrScroll();
                    m0.k.b();
                    return;
                }
                if (this.mAdapterHelper.p()) {
                    m0.k.a(TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG);
                    dispatchLayout();
                    m0.k.b();
                    return;
                }
                return;
            }
            return;
        }
        m0.k.a(TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG);
        dispatchLayout();
        m0.k.b();
    }

    public void defaultOnMeasure(int i10, int i11) {
        setMeasuredDimension(p.chooseSize(i10, getPaddingLeft() + getPaddingRight(), q0.b0.G(this)), p.chooseSize(i11, getPaddingTop() + getPaddingBottom(), q0.b0.F(this)));
    }

    public void dispatchChildAttached(View view) {
        e0 childViewHolderInt = getChildViewHolderInt(view);
        onChildAttachedToWindow(view);
        h hVar = this.mAdapter;
        if (hVar != null && childViewHolderInt != null) {
            hVar.onViewAttachedToWindow(childViewHolderInt);
        }
        List<r> list = this.mOnChildAttachStateListeners;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.mOnChildAttachStateListeners.get(size).a(view);
            }
        }
    }

    public void dispatchChildDetached(View view) {
        e0 childViewHolderInt = getChildViewHolderInt(view);
        onChildDetachedFromWindow(view);
        h hVar = this.mAdapter;
        if (hVar != null && childViewHolderInt != null) {
            hVar.onViewDetachedFromWindow(childViewHolderInt);
        }
        List<r> list = this.mOnChildAttachStateListeners;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.mOnChildAttachStateListeners.get(size).b(view);
            }
        }
    }

    public void dispatchLayout() {
        if (this.mAdapter == null || this.mLayout == null) {
            return;
        }
        this.mState.f2737j = false;
        boolean z10 = this.mLastAutoMeasureSkippedDueToExact && !(this.mLastAutoMeasureNonExactMeasuredWidth == getWidth() && this.mLastAutoMeasureNonExactMeasuredHeight == getHeight());
        this.mLastAutoMeasureNonExactMeasuredWidth = 0;
        this.mLastAutoMeasureNonExactMeasuredHeight = 0;
        this.mLastAutoMeasureSkippedDueToExact = false;
        if (this.mState.f2732e == 1) {
            dispatchLayoutStep1();
            this.mLayout.setExactMeasureSpecsFrom(this);
            dispatchLayoutStep2();
        } else if (!this.mAdapterHelper.q() && !z10 && this.mLayout.getWidth() == getWidth() && this.mLayout.getHeight() == getHeight()) {
            this.mLayout.setExactMeasureSpecsFrom(this);
        } else {
            this.mLayout.setExactMeasureSpecsFrom(this);
            dispatchLayoutStep2();
        }
        dispatchLayoutStep3();
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f10, float f11, boolean z10) {
        return getScrollingChildHelper().a(f10, f11, z10);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f10, float f11) {
        return getScrollingChildHelper().b(f10, f11);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i10, int i11, int[] iArr, int[] iArr2) {
        return getScrollingChildHelper().c(i10, i11, iArr, iArr2);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i10, int i11, int i12, int i13, int[] iArr) {
        return getScrollingChildHelper().f(i10, i11, i12, i13, iArr);
    }

    public void dispatchOnScrollStateChanged(int i10) {
        p pVar = this.mLayout;
        if (pVar != null) {
            pVar.onScrollStateChanged(i10);
        }
        onScrollStateChanged(i10);
        u uVar = this.mScrollListener;
        if (uVar != null) {
            uVar.onScrollStateChanged(this, i10);
        }
        List<u> list = this.mScrollListeners;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.mScrollListeners.get(size).onScrollStateChanged(this, i10);
            }
        }
    }

    public void dispatchOnScrolled(int i10, int i11) {
        this.mDispatchScrollCounter++;
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        onScrollChanged(scrollX, scrollY, scrollX - i10, scrollY - i11);
        onScrolled(i10, i11);
        u uVar = this.mScrollListener;
        if (uVar != null) {
            uVar.onScrolled(this, i10, i11);
        }
        List<u> list = this.mScrollListeners;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.mScrollListeners.get(size).onScrolled(this, i10, i11);
            }
        }
        this.mDispatchScrollCounter--;
    }

    public void dispatchPendingImportantForAccessibilityChanges() {
        int i10;
        for (int size = this.mPendingAccessibilityImportanceChange.size() - 1; size >= 0; size--) {
            e0 e0Var = this.mPendingAccessibilityImportanceChange.get(size);
            if (e0Var.itemView.getParent() == this && !e0Var.shouldIgnore() && (i10 = e0Var.mPendingAccessibilityState) != -1) {
                q0.b0.E0(e0Var.itemView, i10);
                e0Var.mPendingAccessibilityState = -1;
            }
        }
        this.mPendingAccessibilityImportanceChange.clear();
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        onPopulateAccessibilityEvent(accessibilityEvent);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchSaveInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        boolean z10;
        super.draw(canvas);
        int size = this.mItemDecorations.size();
        boolean z11 = false;
        for (int i10 = 0; i10 < size; i10++) {
            this.mItemDecorations.get(i10).onDrawOver(canvas, this, this.mState);
        }
        EdgeEffect edgeEffect = this.mLeftGlow;
        if (edgeEffect == null || edgeEffect.isFinished()) {
            z10 = false;
        } else {
            int save = canvas.save();
            int paddingBottom = this.mClipToPadding ? getPaddingBottom() : 0;
            canvas.rotate(270.0f);
            canvas.translate((-getHeight()) + paddingBottom, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
            EdgeEffect edgeEffect2 = this.mLeftGlow;
            z10 = edgeEffect2 != null && edgeEffect2.draw(canvas);
            canvas.restoreToCount(save);
        }
        EdgeEffect edgeEffect3 = this.mTopGlow;
        if (edgeEffect3 != null && !edgeEffect3.isFinished()) {
            int save2 = canvas.save();
            if (this.mClipToPadding) {
                canvas.translate(getPaddingLeft(), getPaddingTop());
            }
            EdgeEffect edgeEffect4 = this.mTopGlow;
            z10 |= edgeEffect4 != null && edgeEffect4.draw(canvas);
            canvas.restoreToCount(save2);
        }
        EdgeEffect edgeEffect5 = this.mRightGlow;
        if (edgeEffect5 != null && !edgeEffect5.isFinished()) {
            int save3 = canvas.save();
            int width = getWidth();
            int paddingTop = this.mClipToPadding ? getPaddingTop() : 0;
            canvas.rotate(90.0f);
            canvas.translate(paddingTop, -width);
            EdgeEffect edgeEffect6 = this.mRightGlow;
            z10 |= edgeEffect6 != null && edgeEffect6.draw(canvas);
            canvas.restoreToCount(save3);
        }
        EdgeEffect edgeEffect7 = this.mBottomGlow;
        if (edgeEffect7 != null && !edgeEffect7.isFinished()) {
            int save4 = canvas.save();
            canvas.rotate(180.0f);
            if (this.mClipToPadding) {
                canvas.translate((-getWidth()) + getPaddingRight(), (-getHeight()) + getPaddingBottom());
            } else {
                canvas.translate(-getWidth(), -getHeight());
            }
            EdgeEffect edgeEffect8 = this.mBottomGlow;
            if (edgeEffect8 != null && edgeEffect8.draw(canvas)) {
                z11 = true;
            }
            z10 |= z11;
            canvas.restoreToCount(save4);
        }
        if ((z10 || this.mItemAnimator == null || this.mItemDecorations.size() <= 0 || !this.mItemAnimator.p()) ? z10 : true) {
            q0.b0.k0(this);
        }
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j10) {
        return super.drawChild(canvas, view, j10);
    }

    public void ensureBottomGlow() {
        if (this.mBottomGlow != null) {
            return;
        }
        EdgeEffect a10 = this.mEdgeEffectFactory.a(this, 3);
        this.mBottomGlow = a10;
        if (this.mClipToPadding) {
            a10.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            a10.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void ensureLeftGlow() {
        if (this.mLeftGlow != null) {
            return;
        }
        EdgeEffect a10 = this.mEdgeEffectFactory.a(this, 0);
        this.mLeftGlow = a10;
        if (this.mClipToPadding) {
            a10.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            a10.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    public void ensureRightGlow() {
        if (this.mRightGlow != null) {
            return;
        }
        EdgeEffect a10 = this.mEdgeEffectFactory.a(this, 2);
        this.mRightGlow = a10;
        if (this.mClipToPadding) {
            a10.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            a10.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    public void ensureTopGlow() {
        if (this.mTopGlow != null) {
            return;
        }
        EdgeEffect a10 = this.mEdgeEffectFactory.a(this, 1);
        this.mTopGlow = a10;
        if (this.mClipToPadding) {
            a10.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            a10.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public String exceptionLabel() {
        return " " + super.toString() + ", adapter:" + this.mAdapter + ", layout:" + this.mLayout + ", context:" + getContext();
    }

    public final void fillRemainingScrollValues(b0 b0Var) {
        if (getScrollState() == 2) {
            OverScroller overScroller = this.mViewFlinger.f2748h;
            b0Var.f2743p = overScroller.getFinalX() - overScroller.getCurrX();
            b0Var.f2744q = overScroller.getFinalY() - overScroller.getCurrY();
        } else {
            b0Var.f2743p = 0;
            b0Var.f2744q = 0;
        }
    }

    public View findChildViewUnder(float f10, float f11) {
        for (int g10 = this.mChildHelper.g() - 1; g10 >= 0; g10--) {
            View f12 = this.mChildHelper.f(g10);
            float translationX = f12.getTranslationX();
            float translationY = f12.getTranslationY();
            if (f10 >= f12.getLeft() + translationX && f10 <= f12.getRight() + translationX && f11 >= f12.getTop() + translationY && f11 <= f12.getBottom() + translationY) {
                return f12;
            }
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:?, code lost:
    
        return r3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public View findContainingItemView(View view) {
        ViewParent parent = view.getParent();
        while (parent != null && parent != this && (parent instanceof View)) {
            view = parent;
            parent = view.getParent();
        }
        return null;
    }

    public e0 findContainingViewHolder(View view) {
        View findContainingItemView = findContainingItemView(view);
        if (findContainingItemView == null) {
            return null;
        }
        return getChildViewHolder(findContainingItemView);
    }

    public e0 findViewHolderForAdapterPosition(int i10) {
        e0 e0Var = null;
        if (this.mDataSetHasChangedAfterLayout) {
            return null;
        }
        int j10 = this.mChildHelper.j();
        for (int i11 = 0; i11 < j10; i11++) {
            e0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.i(i11));
            if (childViewHolderInt != null && !childViewHolderInt.isRemoved() && getAdapterPositionInRecyclerView(childViewHolderInt) == i10) {
                if (!this.mChildHelper.n(childViewHolderInt.itemView)) {
                    return childViewHolderInt;
                }
                e0Var = childViewHolderInt;
            }
        }
        return e0Var;
    }

    public e0 findViewHolderForItemId(long j10) {
        h hVar = this.mAdapter;
        e0 e0Var = null;
        if (hVar != null && hVar.hasStableIds()) {
            int j11 = this.mChildHelper.j();
            for (int i10 = 0; i10 < j11; i10++) {
                e0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.i(i10));
                if (childViewHolderInt != null && !childViewHolderInt.isRemoved() && childViewHolderInt.getItemId() == j10) {
                    if (!this.mChildHelper.n(childViewHolderInt.itemView)) {
                        return childViewHolderInt;
                    }
                    e0Var = childViewHolderInt;
                }
            }
        }
        return e0Var;
    }

    public e0 findViewHolderForLayoutPosition(int i10) {
        return findViewHolderForPosition(i10, false);
    }

    @Deprecated
    public e0 findViewHolderForPosition(int i10) {
        return findViewHolderForPosition(i10, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r0v6 */
    public boolean fling(int i10, int i11) {
        p pVar = this.mLayout;
        if (pVar == null || this.mLayoutSuppressed) {
            return false;
        }
        int canScrollHorizontally = pVar.canScrollHorizontally();
        boolean canScrollVertically = this.mLayout.canScrollVertically();
        if (canScrollHorizontally == 0 || Math.abs(i10) < this.mMinFlingVelocity) {
            i10 = 0;
        }
        if (!canScrollVertically || Math.abs(i11) < this.mMinFlingVelocity) {
            i11 = 0;
        }
        if (i10 == 0 && i11 == 0) {
            return false;
        }
        float f10 = i10;
        float f11 = i11;
        if (!dispatchNestedPreFling(f10, f11)) {
            boolean z10 = canScrollHorizontally != 0 || canScrollVertically;
            dispatchNestedFling(f10, f11, z10);
            s sVar = this.mOnFlingListener;
            if (sVar != null && sVar.onFling(i10, i11)) {
                return true;
            }
            if (z10) {
                if (canScrollVertically) {
                    canScrollHorizontally = (canScrollHorizontally == true ? 1 : 0) | 2;
                }
                startNestedScroll(canScrollHorizontally, 1);
                int i12 = this.mMaxFlingVelocity;
                int max = Math.max(-i12, Math.min(i10, i12));
                int i13 = this.mMaxFlingVelocity;
                this.mViewFlinger.b(max, Math.max(-i13, Math.min(i11, i13)));
                return true;
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public View focusSearch(View view, int i10) {
        View view2;
        boolean z10;
        View onInterceptFocusSearch = this.mLayout.onInterceptFocusSearch(view, i10);
        if (onInterceptFocusSearch != null) {
            return onInterceptFocusSearch;
        }
        boolean z11 = (this.mAdapter == null || this.mLayout == null || isComputingLayout() || this.mLayoutSuppressed) ? false : true;
        FocusFinder focusFinder = FocusFinder.getInstance();
        if (z11 && (i10 == 2 || i10 == 1)) {
            if (this.mLayout.canScrollVertically()) {
                int i11 = i10 == 2 ? 130 : 33;
                z10 = focusFinder.findNextFocus(this, view, i11) == null;
                if (FORCE_ABS_FOCUS_SEARCH_DIRECTION) {
                    i10 = i11;
                }
            } else {
                z10 = false;
            }
            if (!z10 && this.mLayout.canScrollHorizontally()) {
                int i12 = (this.mLayout.getLayoutDirection() == 1) ^ (i10 == 2) ? 66 : 17;
                boolean z12 = focusFinder.findNextFocus(this, view, i12) == null;
                if (FORCE_ABS_FOCUS_SEARCH_DIRECTION) {
                    i10 = i12;
                }
                z10 = z12;
            }
            if (z10) {
                consumePendingUpdateOperations();
                if (findContainingItemView(view) == null) {
                    return null;
                }
                startInterceptRequestLayout();
                this.mLayout.onFocusSearchFailed(view, i10, this.mRecycler, this.mState);
                stopInterceptRequestLayout(false);
            }
            view2 = focusFinder.findNextFocus(this, view, i10);
        } else {
            View findNextFocus = focusFinder.findNextFocus(this, view, i10);
            if (findNextFocus == null && z11) {
                consumePendingUpdateOperations();
                if (findContainingItemView(view) == null) {
                    return null;
                }
                startInterceptRequestLayout();
                view2 = this.mLayout.onFocusSearchFailed(view, i10, this.mRecycler, this.mState);
                stopInterceptRequestLayout(false);
            } else {
                view2 = findNextFocus;
            }
        }
        if (view2 == null || view2.hasFocusable()) {
            return isPreferredNextFocus(view, view2, i10) ? view2 : super.focusSearch(view, i10);
        }
        if (getFocusedChild() == null) {
            return super.focusSearch(view, i10);
        }
        requestChildOnScreen(view2, null);
        return view;
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        p pVar = this.mLayout;
        if (pVar != null) {
            return pVar.generateDefaultLayoutParams();
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + exceptionLabel());
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        p pVar = this.mLayout;
        if (pVar != null) {
            return pVar.generateLayoutParams(getContext(), attributeSet);
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + exceptionLabel());
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return "androidx.recyclerview.widget.RecyclerView";
    }

    public h getAdapter() {
        return this.mAdapter;
    }

    public int getAdapterPositionInRecyclerView(e0 e0Var) {
        if (e0Var.hasAnyOfTheFlags(524) || !e0Var.isBound()) {
            return -1;
        }
        return this.mAdapterHelper.e(e0Var.mPosition);
    }

    @Override // android.view.View
    public int getBaseline() {
        p pVar = this.mLayout;
        if (pVar != null) {
            return pVar.getBaseline();
        }
        return super.getBaseline();
    }

    public long getChangedHolderKey(e0 e0Var) {
        return this.mAdapter.hasStableIds() ? e0Var.getItemId() : e0Var.mPosition;
    }

    public int getChildAdapterPosition(View view) {
        e0 childViewHolderInt = getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            return childViewHolderInt.getAbsoluteAdapterPosition();
        }
        return -1;
    }

    @Override // android.view.ViewGroup
    public int getChildDrawingOrder(int i10, int i11) {
        k kVar = this.mChildDrawingOrderCallback;
        if (kVar == null) {
            return super.getChildDrawingOrder(i10, i11);
        }
        return kVar.a(i10, i11);
    }

    public long getChildItemId(View view) {
        e0 childViewHolderInt;
        h hVar = this.mAdapter;
        if (hVar == null || !hVar.hasStableIds() || (childViewHolderInt = getChildViewHolderInt(view)) == null) {
            return -1L;
        }
        return childViewHolderInt.getItemId();
    }

    public int getChildLayoutPosition(View view) {
        e0 childViewHolderInt = getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            return childViewHolderInt.getLayoutPosition();
        }
        return -1;
    }

    @Deprecated
    public int getChildPosition(View view) {
        return getChildAdapterPosition(view);
    }

    public e0 getChildViewHolder(View view) {
        ViewParent parent = view.getParent();
        if (parent != null && parent != this) {
            throw new IllegalArgumentException("View " + view + " is not a direct child of " + this);
        }
        return getChildViewHolderInt(view);
    }

    @Override // android.view.ViewGroup
    public boolean getClipToPadding() {
        return this.mClipToPadding;
    }

    public androidx.recyclerview.widget.u getCompatAccessibilityDelegate() {
        return this.mAccessibilityDelegate;
    }

    public void getDecoratedBoundsWithMargins(View view, Rect rect) {
        getDecoratedBoundsWithMarginsInt(view, rect);
    }

    public l getEdgeEffectFactory() {
        return this.mEdgeEffectFactory;
    }

    public m getItemAnimator() {
        return this.mItemAnimator;
    }

    public Rect getItemDecorInsetsForChild(View view) {
        q qVar = (q) view.getLayoutParams();
        if (!qVar.f2779h) {
            return qVar.f2778g;
        }
        if (this.mState.e() && (qVar.c() || qVar.f())) {
            return qVar.f2778g;
        }
        Rect rect = qVar.f2778g;
        rect.set(0, 0, 0, 0);
        int size = this.mItemDecorations.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.mTempRect.set(0, 0, 0, 0);
            this.mItemDecorations.get(i10).getItemOffsets(this.mTempRect, view, this, this.mState);
            int i11 = rect.left;
            Rect rect2 = this.mTempRect;
            rect.left = i11 + rect2.left;
            rect.top += rect2.top;
            rect.right += rect2.right;
            rect.bottom += rect2.bottom;
        }
        qVar.f2779h = false;
        return rect;
    }

    public o getItemDecorationAt(int i10) {
        int itemDecorationCount = getItemDecorationCount();
        if (i10 >= 0 && i10 < itemDecorationCount) {
            return this.mItemDecorations.get(i10);
        }
        throw new IndexOutOfBoundsException(i10 + " is an invalid index for size " + itemDecorationCount);
    }

    public int getItemDecorationCount() {
        return this.mItemDecorations.size();
    }

    public p getLayoutManager() {
        return this.mLayout;
    }

    public int getMaxFlingVelocity() {
        return this.mMaxFlingVelocity;
    }

    public int getMinFlingVelocity() {
        return this.mMinFlingVelocity;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getNanoTime() {
        if (ALLOW_THREAD_GAP_WORK) {
            return System.nanoTime();
        }
        return 0L;
    }

    public s getOnFlingListener() {
        return this.mOnFlingListener;
    }

    public boolean getPreserveFocusAfterLayout() {
        return this.mPreserveFocusAfterLayout;
    }

    public v getRecycledViewPool() {
        return this.mRecycler.i();
    }

    public int getScrollState() {
        return this.mScrollState;
    }

    public boolean hasFixedSize() {
        return this.mHasFixedSize;
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return getScrollingChildHelper().k();
    }

    public boolean hasPendingAdapterUpdates() {
        return !this.mFirstLayoutComplete || this.mDataSetHasChangedAfterLayout || this.mAdapterHelper.p();
    }

    public void initAdapterManager() {
        this.mAdapterHelper = new androidx.recyclerview.widget.a(new f());
    }

    public void initFastScroller(StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2) {
        if (stateListDrawable != null && drawable != null && stateListDrawable2 != null && drawable2 != null) {
            Resources resources = getContext().getResources();
            new androidx.recyclerview.widget.k(this, stateListDrawable, drawable, stateListDrawable2, drawable2, resources.getDimensionPixelSize(n1.b.f11164a), resources.getDimensionPixelSize(n1.b.f11166c), resources.getDimensionPixelOffset(n1.b.f11165b));
        } else {
            throw new IllegalArgumentException("Trying to set fast scroller without both required drawables." + exceptionLabel());
        }
    }

    public void invalidateGlows() {
        this.mBottomGlow = null;
        this.mTopGlow = null;
        this.mRightGlow = null;
        this.mLeftGlow = null;
    }

    public void invalidateItemDecorations() {
        if (this.mItemDecorations.size() == 0) {
            return;
        }
        p pVar = this.mLayout;
        if (pVar != null) {
            pVar.assertNotInLayoutOrScroll("Cannot invalidate item decorations during a scroll or layout");
        }
        markItemDecorInsetsDirty();
        requestLayout();
    }

    public boolean isAccessibilityEnabled() {
        AccessibilityManager accessibilityManager = this.mAccessibilityManager;
        return accessibilityManager != null && accessibilityManager.isEnabled();
    }

    public boolean isAnimating() {
        m mVar = this.mItemAnimator;
        return mVar != null && mVar.p();
    }

    @Override // android.view.View
    public boolean isAttachedToWindow() {
        return this.mIsAttached;
    }

    public boolean isComputingLayout() {
        return this.mLayoutOrScrollCounter > 0;
    }

    @Deprecated
    public boolean isLayoutFrozen() {
        return isLayoutSuppressed();
    }

    @Override // android.view.ViewGroup
    public final boolean isLayoutSuppressed() {
        return this.mLayoutSuppressed;
    }

    @Override // android.view.View, q0.o
    public boolean isNestedScrollingEnabled() {
        return getScrollingChildHelper().m();
    }

    public void jumpToPositionForSmoothScroller(int i10) {
        if (this.mLayout == null) {
            return;
        }
        setScrollState(2);
        this.mLayout.scrollToPosition(i10);
        awakenScrollBars();
    }

    public void markItemDecorInsetsDirty() {
        int j10 = this.mChildHelper.j();
        for (int i10 = 0; i10 < j10; i10++) {
            ((q) this.mChildHelper.i(i10).getLayoutParams()).f2779h = true;
        }
        this.mRecycler.s();
    }

    public void markKnownViewsInvalid() {
        int j10 = this.mChildHelper.j();
        for (int i10 = 0; i10 < j10; i10++) {
            e0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.i(i10));
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore()) {
                childViewHolderInt.addFlags(6);
            }
        }
        markItemDecorInsetsDirty();
        this.mRecycler.t();
    }

    public void nestedScrollBy(int i10, int i11) {
        nestedScrollByInternal(i10, i11, null, 1);
    }

    public void offsetChildrenHorizontal(int i10) {
        int g10 = this.mChildHelper.g();
        for (int i11 = 0; i11 < g10; i11++) {
            this.mChildHelper.f(i11).offsetLeftAndRight(i10);
        }
    }

    public void offsetChildrenVertical(int i10) {
        int g10 = this.mChildHelper.g();
        for (int i11 = 0; i11 < g10; i11++) {
            this.mChildHelper.f(i11).offsetTopAndBottom(i10);
        }
    }

    public void offsetPositionRecordsForInsert(int i10, int i11) {
        int j10 = this.mChildHelper.j();
        for (int i12 = 0; i12 < j10; i12++) {
            e0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.i(i12));
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore() && childViewHolderInt.mPosition >= i10) {
                childViewHolderInt.offsetPosition(i11, false);
                this.mState.f2734g = true;
            }
        }
        this.mRecycler.u(i10, i11);
        requestLayout();
    }

    public void offsetPositionRecordsForMove(int i10, int i11) {
        int i12;
        int i13;
        int i14;
        int i15;
        int j10 = this.mChildHelper.j();
        if (i10 < i11) {
            i14 = -1;
            i13 = i10;
            i12 = i11;
        } else {
            i12 = i10;
            i13 = i11;
            i14 = 1;
        }
        for (int i16 = 0; i16 < j10; i16++) {
            e0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.i(i16));
            if (childViewHolderInt != null && (i15 = childViewHolderInt.mPosition) >= i13 && i15 <= i12) {
                if (i15 == i10) {
                    childViewHolderInt.offsetPosition(i11 - i10, false);
                } else {
                    childViewHolderInt.offsetPosition(i14, false);
                }
                this.mState.f2734g = true;
            }
        }
        this.mRecycler.v(i10, i11);
        requestLayout();
    }

    public void offsetPositionRecordsForRemove(int i10, int i11, boolean z10) {
        int i12 = i10 + i11;
        int j10 = this.mChildHelper.j();
        for (int i13 = 0; i13 < j10; i13++) {
            e0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.i(i13));
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore()) {
                int i14 = childViewHolderInt.mPosition;
                if (i14 >= i12) {
                    childViewHolderInt.offsetPosition(-i11, z10);
                    this.mState.f2734g = true;
                } else if (i14 >= i10) {
                    childViewHolderInt.flagRemovedAndOffsetPosition(i10 - 1, -i11, z10);
                    this.mState.f2734g = true;
                }
            }
        }
        this.mRecycler.w(i10, i11, z10);
        requestLayout();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mLayoutOrScrollCounter = 0;
        this.mIsAttached = true;
        this.mFirstLayoutComplete = this.mFirstLayoutComplete && !isLayoutRequested();
        p pVar = this.mLayout;
        if (pVar != null) {
            pVar.dispatchAttachedToWindow(this);
        }
        this.mPostedAnimatorRunner = false;
        if (ALLOW_THREAD_GAP_WORK) {
            ThreadLocal<androidx.recyclerview.widget.l> threadLocal = androidx.recyclerview.widget.l.f3044j;
            androidx.recyclerview.widget.l lVar = threadLocal.get();
            this.mGapWorker = lVar;
            if (lVar == null) {
                this.mGapWorker = new androidx.recyclerview.widget.l();
                Display x10 = q0.b0.x(this);
                float f10 = 60.0f;
                if (!isInEditMode() && x10 != null) {
                    float refreshRate = x10.getRefreshRate();
                    if (refreshRate >= 30.0f) {
                        f10 = refreshRate;
                    }
                }
                androidx.recyclerview.widget.l lVar2 = this.mGapWorker;
                lVar2.f3048h = 1.0E9f / f10;
                threadLocal.set(lVar2);
            }
            this.mGapWorker.a(this);
        }
    }

    public void onChildAttachedToWindow(View view) {
    }

    public void onChildDetachedFromWindow(View view) {
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        androidx.recyclerview.widget.l lVar;
        super.onDetachedFromWindow();
        m mVar = this.mItemAnimator;
        if (mVar != null) {
            mVar.k();
        }
        stopScroll();
        this.mIsAttached = false;
        p pVar = this.mLayout;
        if (pVar != null) {
            pVar.dispatchDetachedFromWindow(this, this.mRecycler);
        }
        this.mPendingAccessibilityImportanceChange.clear();
        removeCallbacks(this.mItemAnimatorRunner);
        this.mViewInfoStore.j();
        if (!ALLOW_THREAD_GAP_WORK || (lVar = this.mGapWorker) == null) {
            return;
        }
        lVar.j(this);
        this.mGapWorker = null;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int size = this.mItemDecorations.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.mItemDecorations.get(i10).onDraw(canvas, this, this.mState);
        }
    }

    public void onEnterLayoutOrScroll() {
        this.mLayoutOrScrollCounter++;
    }

    public void onExitLayoutOrScroll() {
        onExitLayoutOrScroll(true);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0066  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        float f10;
        float f11;
        if (this.mLayout != null && !this.mLayoutSuppressed && motionEvent.getAction() == 8) {
            if ((motionEvent.getSource() & 2) != 0) {
                f10 = this.mLayout.canScrollVertically() ? -motionEvent.getAxisValue(9) : StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                if (this.mLayout.canScrollHorizontally()) {
                    f11 = motionEvent.getAxisValue(10);
                    if (f10 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD || f11 != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                        nestedScrollByInternal((int) (f11 * this.mScaledHorizontalScrollFactor), (int) (f10 * this.mScaledVerticalScrollFactor), motionEvent, 1);
                    }
                }
                f11 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                if (f10 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                }
                nestedScrollByInternal((int) (f11 * this.mScaledHorizontalScrollFactor), (int) (f10 * this.mScaledVerticalScrollFactor), motionEvent, 1);
            } else {
                if ((motionEvent.getSource() & 4194304) != 0) {
                    float axisValue = motionEvent.getAxisValue(26);
                    if (!this.mLayout.canScrollVertically()) {
                        if (this.mLayout.canScrollHorizontally()) {
                            f11 = axisValue;
                            f10 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                            if (f10 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                            }
                            nestedScrollByInternal((int) (f11 * this.mScaledHorizontalScrollFactor), (int) (f10 * this.mScaledVerticalScrollFactor), motionEvent, 1);
                        }
                    } else {
                        f10 = -axisValue;
                        f11 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                        if (f10 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                        }
                        nestedScrollByInternal((int) (f11 * this.mScaledHorizontalScrollFactor), (int) (f10 * this.mScaledVerticalScrollFactor), motionEvent, 1);
                    }
                }
                f10 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                f11 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                if (f10 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                }
                nestedScrollByInternal((int) (f11 * this.mScaledHorizontalScrollFactor), (int) (f10 * this.mScaledVerticalScrollFactor), motionEvent, 1);
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z10;
        if (this.mLayoutSuppressed) {
            return false;
        }
        this.mInterceptingOnItemTouchListener = null;
        if (findInterceptingOnItemTouchListener(motionEvent)) {
            cancelScroll();
            return true;
        }
        p pVar = this.mLayout;
        if (pVar == null) {
            return false;
        }
        boolean canScrollHorizontally = pVar.canScrollHorizontally();
        boolean canScrollVertically = this.mLayout.canScrollVertically();
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            if (this.mIgnoreMotionEventTillDown) {
                this.mIgnoreMotionEventTillDown = false;
            }
            this.mScrollPointerId = motionEvent.getPointerId(0);
            int x10 = (int) (motionEvent.getX() + 0.5f);
            this.mLastTouchX = x10;
            this.mInitialTouchX = x10;
            int y10 = (int) (motionEvent.getY() + 0.5f);
            this.mLastTouchY = y10;
            this.mInitialTouchY = y10;
            if (this.mScrollState == 2) {
                getParent().requestDisallowInterceptTouchEvent(true);
                setScrollState(1);
                stopNestedScroll(1);
            }
            int[] iArr = this.mNestedOffsets;
            iArr[1] = 0;
            iArr[0] = 0;
            int i10 = canScrollHorizontally;
            if (canScrollVertically) {
                i10 = (canScrollHorizontally ? 1 : 0) | 2;
            }
            startNestedScroll(i10, 0);
        } else if (actionMasked == 1) {
            this.mVelocityTracker.clear();
            stopNestedScroll(0);
        } else if (actionMasked == 2) {
            int findPointerIndex = motionEvent.findPointerIndex(this.mScrollPointerId);
            if (findPointerIndex < 0) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Error processing scroll; pointer index for id ");
                sb2.append(this.mScrollPointerId);
                sb2.append(" not found. Did any MotionEvents get skipped?");
                return false;
            }
            int x11 = (int) (motionEvent.getX(findPointerIndex) + 0.5f);
            int y11 = (int) (motionEvent.getY(findPointerIndex) + 0.5f);
            if (this.mScrollState != 1) {
                int i11 = x11 - this.mInitialTouchX;
                int i12 = y11 - this.mInitialTouchY;
                if (canScrollHorizontally == 0 || Math.abs(i11) <= this.mTouchSlop) {
                    z10 = false;
                } else {
                    this.mLastTouchX = x11;
                    z10 = true;
                }
                if (canScrollVertically && Math.abs(i12) > this.mTouchSlop) {
                    this.mLastTouchY = y11;
                    z10 = true;
                }
                if (z10) {
                    setScrollState(1);
                }
            }
        } else if (actionMasked == 3) {
            cancelScroll();
        } else if (actionMasked == 5) {
            this.mScrollPointerId = motionEvent.getPointerId(actionIndex);
            int x12 = (int) (motionEvent.getX(actionIndex) + 0.5f);
            this.mLastTouchX = x12;
            this.mInitialTouchX = x12;
            int y12 = (int) (motionEvent.getY(actionIndex) + 0.5f);
            this.mLastTouchY = y12;
            this.mInitialTouchY = y12;
        } else if (actionMasked == 6) {
            onPointerUp(motionEvent);
        }
        return this.mScrollState == 1;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        m0.k.a(TRACE_ON_LAYOUT_TAG);
        dispatchLayout();
        m0.k.b();
        this.mFirstLayoutComplete = true;
    }

    @Override // android.view.View
    public void onMeasure(int i10, int i11) {
        p pVar = this.mLayout;
        if (pVar == null) {
            defaultOnMeasure(i10, i11);
            return;
        }
        boolean z10 = false;
        if (pVar.isAutoMeasureEnabled()) {
            int mode = View.MeasureSpec.getMode(i10);
            int mode2 = View.MeasureSpec.getMode(i11);
            this.mLayout.onMeasure(this.mRecycler, this.mState, i10, i11);
            if (mode == 1073741824 && mode2 == 1073741824) {
                z10 = true;
            }
            this.mLastAutoMeasureSkippedDueToExact = z10;
            if (z10 || this.mAdapter == null) {
                return;
            }
            if (this.mState.f2732e == 1) {
                dispatchLayoutStep1();
            }
            this.mLayout.setMeasureSpecs(i10, i11);
            this.mState.f2737j = true;
            dispatchLayoutStep2();
            this.mLayout.setMeasuredDimensionFromChildren(i10, i11);
            if (this.mLayout.shouldMeasureTwice()) {
                this.mLayout.setMeasureSpecs(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH));
                this.mState.f2737j = true;
                dispatchLayoutStep2();
                this.mLayout.setMeasuredDimensionFromChildren(i10, i11);
            }
            this.mLastAutoMeasureNonExactMeasuredWidth = getMeasuredWidth();
            this.mLastAutoMeasureNonExactMeasuredHeight = getMeasuredHeight();
            return;
        }
        if (this.mHasFixedSize) {
            this.mLayout.onMeasure(this.mRecycler, this.mState, i10, i11);
            return;
        }
        if (this.mAdapterUpdateDuringMeasure) {
            startInterceptRequestLayout();
            onEnterLayoutOrScroll();
            processAdapterUpdatesAndSetAnimationFlags();
            onExitLayoutOrScroll();
            b0 b0Var = this.mState;
            if (b0Var.f2739l) {
                b0Var.f2735h = true;
            } else {
                this.mAdapterHelper.j();
                this.mState.f2735h = false;
            }
            this.mAdapterUpdateDuringMeasure = false;
            stopInterceptRequestLayout(false);
        } else if (this.mState.f2739l) {
            setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
            return;
        }
        h hVar = this.mAdapter;
        if (hVar != null) {
            this.mState.f2733f = hVar.getItemCount();
        } else {
            this.mState.f2733f = 0;
        }
        startInterceptRequestLayout();
        this.mLayout.onMeasure(this.mRecycler, this.mState, i10, i11);
        stopInterceptRequestLayout(false);
        this.mState.f2735h = false;
    }

    @Override // android.view.ViewGroup
    public boolean onRequestFocusInDescendants(int i10, Rect rect) {
        if (isComputingLayout()) {
            return false;
        }
        return super.onRequestFocusInDescendants(i10, rect);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof z)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        z zVar = (z) parcelable;
        this.mPendingSavedState = zVar;
        super.onRestoreInstanceState(zVar.getSuperState());
        requestLayout();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        z zVar = new z(super.onSaveInstanceState());
        z zVar2 = this.mPendingSavedState;
        if (zVar2 != null) {
            zVar.a(zVar2);
        } else {
            p pVar = this.mLayout;
            if (pVar != null) {
                zVar.f2796f = pVar.onSaveInstanceState();
            } else {
                zVar.f2796f = null;
            }
        }
        return zVar;
    }

    public void onScrollStateChanged(int i10) {
    }

    public void onScrolled(int i10, int i11) {
    }

    @Override // android.view.View
    public void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        if (i10 == i12 && i11 == i13) {
            return;
        }
        invalidateGlows();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00ef  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z10;
        boolean z11 = false;
        if (this.mLayoutSuppressed || this.mIgnoreMotionEventTillDown) {
            return false;
        }
        if (dispatchToOnItemTouchListeners(motionEvent)) {
            cancelScroll();
            return true;
        }
        p pVar = this.mLayout;
        if (pVar == null) {
            return false;
        }
        boolean canScrollHorizontally = pVar.canScrollHorizontally();
        boolean canScrollVertically = this.mLayout.canScrollVertically();
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            int[] iArr = this.mNestedOffsets;
            iArr[1] = 0;
            iArr[0] = 0;
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        int[] iArr2 = this.mNestedOffsets;
        obtain.offsetLocation(iArr2[0], iArr2[1]);
        if (actionMasked == 0) {
            this.mScrollPointerId = motionEvent.getPointerId(0);
            int x10 = (int) (motionEvent.getX() + 0.5f);
            this.mLastTouchX = x10;
            this.mInitialTouchX = x10;
            int y10 = (int) (motionEvent.getY() + 0.5f);
            this.mLastTouchY = y10;
            this.mInitialTouchY = y10;
            int i10 = canScrollHorizontally;
            if (canScrollVertically) {
                i10 = (canScrollHorizontally ? 1 : 0) | 2;
            }
            startNestedScroll(i10, 0);
        } else if (actionMasked == 1) {
            this.mVelocityTracker.addMovement(obtain);
            this.mVelocityTracker.computeCurrentVelocity(1000, this.mMaxFlingVelocity);
            float f10 = canScrollHorizontally != 0 ? -this.mVelocityTracker.getXVelocity(this.mScrollPointerId) : StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            float f11 = canScrollVertically ? -this.mVelocityTracker.getYVelocity(this.mScrollPointerId) : StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            if ((f10 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD && f11 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) || !fling((int) f10, (int) f11)) {
                setScrollState(0);
            }
            resetScroll();
            z11 = true;
        } else if (actionMasked == 2) {
            int findPointerIndex = motionEvent.findPointerIndex(this.mScrollPointerId);
            if (findPointerIndex < 0) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Error processing scroll; pointer index for id ");
                sb2.append(this.mScrollPointerId);
                sb2.append(" not found. Did any MotionEvents get skipped?");
                return false;
            }
            int x11 = (int) (motionEvent.getX(findPointerIndex) + 0.5f);
            int y11 = (int) (motionEvent.getY(findPointerIndex) + 0.5f);
            int i11 = this.mLastTouchX - x11;
            int i12 = this.mLastTouchY - y11;
            if (this.mScrollState != 1) {
                if (canScrollHorizontally != 0) {
                    if (i11 > 0) {
                        i11 = Math.max(0, i11 - this.mTouchSlop);
                    } else {
                        i11 = Math.min(0, i11 + this.mTouchSlop);
                    }
                    if (i11 != 0) {
                        z10 = true;
                        if (canScrollVertically) {
                            if (i12 > 0) {
                                i12 = Math.max(0, i12 - this.mTouchSlop);
                            } else {
                                i12 = Math.min(0, i12 + this.mTouchSlop);
                            }
                            if (i12 != 0) {
                                z10 = true;
                            }
                        }
                        if (z10) {
                            setScrollState(1);
                        }
                    }
                }
                z10 = false;
                if (canScrollVertically) {
                }
                if (z10) {
                }
            }
            int i13 = i11;
            int i14 = i12;
            if (this.mScrollState == 1) {
                int[] iArr3 = this.mReusableIntPair;
                iArr3[0] = 0;
                iArr3[1] = 0;
                if (dispatchNestedPreScroll(canScrollHorizontally != 0 ? i13 : 0, canScrollVertically ? i14 : 0, iArr3, this.mScrollOffset, 0)) {
                    int[] iArr4 = this.mReusableIntPair;
                    i13 -= iArr4[0];
                    i14 -= iArr4[1];
                    int[] iArr5 = this.mNestedOffsets;
                    int i15 = iArr5[0];
                    int[] iArr6 = this.mScrollOffset;
                    iArr5[0] = i15 + iArr6[0];
                    iArr5[1] = iArr5[1] + iArr6[1];
                    getParent().requestDisallowInterceptTouchEvent(true);
                }
                int i16 = i14;
                int[] iArr7 = this.mScrollOffset;
                this.mLastTouchX = x11 - iArr7[0];
                this.mLastTouchY = y11 - iArr7[1];
                if (scrollByInternal(canScrollHorizontally != 0 ? i13 : 0, canScrollVertically ? i16 : 0, motionEvent, 0)) {
                    getParent().requestDisallowInterceptTouchEvent(true);
                }
                androidx.recyclerview.widget.l lVar = this.mGapWorker;
                if (lVar != null && (i13 != 0 || i16 != 0)) {
                    lVar.f(this, i13, i16);
                }
            }
        } else if (actionMasked == 3) {
            cancelScroll();
        } else if (actionMasked == 5) {
            this.mScrollPointerId = motionEvent.getPointerId(actionIndex);
            int x12 = (int) (motionEvent.getX(actionIndex) + 0.5f);
            this.mLastTouchX = x12;
            this.mInitialTouchX = x12;
            int y12 = (int) (motionEvent.getY(actionIndex) + 0.5f);
            this.mLastTouchY = y12;
            this.mInitialTouchY = y12;
        } else if (actionMasked == 6) {
            onPointerUp(motionEvent);
        }
        if (!z11) {
            this.mVelocityTracker.addMovement(obtain);
        }
        obtain.recycle();
        return true;
    }

    public void postAnimationRunner() {
        if (this.mPostedAnimatorRunner || !this.mIsAttached) {
            return;
        }
        q0.b0.l0(this, this.mItemAnimatorRunner);
        this.mPostedAnimatorRunner = true;
    }

    public void processDataSetCompletelyChanged(boolean z10) {
        this.mDispatchItemsChangedEvent = z10 | this.mDispatchItemsChangedEvent;
        this.mDataSetHasChangedAfterLayout = true;
        markKnownViewsInvalid();
    }

    public void recordAnimationInfoIfBouncedHiddenView(e0 e0Var, m.c cVar) {
        e0Var.setFlags(0, e0.FLAG_BOUNCED_FROM_HIDDEN_LIST);
        if (this.mState.f2736i && e0Var.isUpdated() && !e0Var.isRemoved() && !e0Var.shouldIgnore()) {
            this.mViewInfoStore.c(getChangedHolderKey(e0Var), e0Var);
        }
        this.mViewInfoStore.e(e0Var, cVar);
    }

    public void removeAndRecycleViews() {
        m mVar = this.mItemAnimator;
        if (mVar != null) {
            mVar.k();
        }
        p pVar = this.mLayout;
        if (pVar != null) {
            pVar.removeAndRecycleAllViews(this.mRecycler);
            this.mLayout.removeAndRecycleScrapInt(this.mRecycler);
        }
        this.mRecycler.c();
    }

    public boolean removeAnimatingView(View view) {
        startInterceptRequestLayout();
        boolean r10 = this.mChildHelper.r(view);
        if (r10) {
            e0 childViewHolderInt = getChildViewHolderInt(view);
            this.mRecycler.J(childViewHolderInt);
            this.mRecycler.C(childViewHolderInt);
        }
        stopInterceptRequestLayout(!r10);
        return r10;
    }

    @Override // android.view.ViewGroup
    public void removeDetachedView(View view, boolean z10) {
        e0 childViewHolderInt = getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            if (childViewHolderInt.isTmpDetached()) {
                childViewHolderInt.clearTmpDetachFlag();
            } else if (!childViewHolderInt.shouldIgnore()) {
                throw new IllegalArgumentException("Called removeDetachedView with a view which is not flagged as tmp detached." + childViewHolderInt + exceptionLabel());
            }
        }
        view.clearAnimation();
        dispatchChildDetached(view);
        super.removeDetachedView(view, z10);
    }

    public void removeItemDecoration(o oVar) {
        p pVar = this.mLayout;
        if (pVar != null) {
            pVar.assertNotInLayoutOrScroll("Cannot remove item decoration during a scroll  or layout");
        }
        this.mItemDecorations.remove(oVar);
        if (this.mItemDecorations.isEmpty()) {
            setWillNotDraw(getOverScrollMode() == 2);
        }
        markItemDecorInsetsDirty();
        requestLayout();
    }

    public void removeItemDecorationAt(int i10) {
        int itemDecorationCount = getItemDecorationCount();
        if (i10 >= 0 && i10 < itemDecorationCount) {
            removeItemDecoration(getItemDecorationAt(i10));
            return;
        }
        throw new IndexOutOfBoundsException(i10 + " is an invalid index for size " + itemDecorationCount);
    }

    public void removeOnChildAttachStateChangeListener(r rVar) {
        List<r> list = this.mOnChildAttachStateListeners;
        if (list == null) {
            return;
        }
        list.remove(rVar);
    }

    public void removeOnItemTouchListener(t tVar) {
        this.mOnItemTouchListeners.remove(tVar);
        if (this.mInterceptingOnItemTouchListener == tVar) {
            this.mInterceptingOnItemTouchListener = null;
        }
    }

    public void removeOnScrollListener(u uVar) {
        List<u> list = this.mScrollListeners;
        if (list != null) {
            list.remove(uVar);
        }
    }

    public void removeRecyclerListener(x xVar) {
        this.mRecyclerListeners.remove(xVar);
    }

    public void repositionShadowingViews() {
        e0 e0Var;
        int g10 = this.mChildHelper.g();
        for (int i10 = 0; i10 < g10; i10++) {
            View f10 = this.mChildHelper.f(i10);
            e0 childViewHolder = getChildViewHolder(f10);
            if (childViewHolder != null && (e0Var = childViewHolder.mShadowingHolder) != null) {
                View view = e0Var.itemView;
                int left = f10.getLeft();
                int top = f10.getTop();
                if (left != view.getLeft() || top != view.getTop()) {
                    view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
                }
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        if (!this.mLayout.onRequestChildFocus(this, this.mState, view, view2) && view2 != null) {
            requestChildOnScreen(view, view2);
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z10) {
        return this.mLayout.requestChildRectangleOnScreen(this, view, rect, z10);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z10) {
        int size = this.mOnItemTouchListeners.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.mOnItemTouchListeners.get(i10).c(z10);
        }
        super.requestDisallowInterceptTouchEvent(z10);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.mInterceptRequestLayoutDepth == 0 && !this.mLayoutSuppressed) {
            super.requestLayout();
        } else {
            this.mLayoutWasDefered = true;
        }
    }

    public void saveOldPositions() {
        int j10 = this.mChildHelper.j();
        for (int i10 = 0; i10 < j10; i10++) {
            e0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.i(i10));
            if (!childViewHolderInt.shouldIgnore()) {
                childViewHolderInt.saveOldPosition();
            }
        }
    }

    @Override // android.view.View
    public void scrollBy(int i10, int i11) {
        p pVar = this.mLayout;
        if (pVar == null || this.mLayoutSuppressed) {
            return;
        }
        boolean canScrollHorizontally = pVar.canScrollHorizontally();
        boolean canScrollVertically = this.mLayout.canScrollVertically();
        if (canScrollHorizontally || canScrollVertically) {
            if (!canScrollHorizontally) {
                i10 = 0;
            }
            if (!canScrollVertically) {
                i11 = 0;
            }
            scrollByInternal(i10, i11, null, 0);
        }
    }

    public boolean scrollByInternal(int i10, int i11, MotionEvent motionEvent, int i12) {
        int i13;
        int i14;
        int i15;
        int i16;
        consumePendingUpdateOperations();
        if (this.mAdapter != null) {
            int[] iArr = this.mReusableIntPair;
            iArr[0] = 0;
            iArr[1] = 0;
            scrollStep(i10, i11, iArr);
            int[] iArr2 = this.mReusableIntPair;
            int i17 = iArr2[0];
            int i18 = iArr2[1];
            i13 = i18;
            i14 = i17;
            i15 = i10 - i17;
            i16 = i11 - i18;
        } else {
            i13 = 0;
            i14 = 0;
            i15 = 0;
            i16 = 0;
        }
        if (!this.mItemDecorations.isEmpty()) {
            invalidate();
        }
        int[] iArr3 = this.mReusableIntPair;
        iArr3[0] = 0;
        iArr3[1] = 0;
        dispatchNestedScroll(i14, i13, i15, i16, this.mScrollOffset, i12, iArr3);
        int[] iArr4 = this.mReusableIntPair;
        int i19 = i15 - iArr4[0];
        int i20 = i16 - iArr4[1];
        boolean z10 = (iArr4[0] == 0 && iArr4[1] == 0) ? false : true;
        int i21 = this.mLastTouchX;
        int[] iArr5 = this.mScrollOffset;
        this.mLastTouchX = i21 - iArr5[0];
        this.mLastTouchY -= iArr5[1];
        int[] iArr6 = this.mNestedOffsets;
        iArr6[0] = iArr6[0] + iArr5[0];
        iArr6[1] = iArr6[1] + iArr5[1];
        if (getOverScrollMode() != 2) {
            if (motionEvent != null && !q0.n.b(motionEvent, 8194)) {
                pullGlows(motionEvent.getX(), i19, motionEvent.getY(), i20);
            }
            considerReleasingGlowsOnScroll(i10, i11);
        }
        if (i14 != 0 || i13 != 0) {
            dispatchOnScrolled(i14, i13);
        }
        if (!awakenScrollBars()) {
            invalidate();
        }
        return (!z10 && i14 == 0 && i13 == 0) ? false : true;
    }

    public void scrollStep(int i10, int i11, int[] iArr) {
        startInterceptRequestLayout();
        onEnterLayoutOrScroll();
        m0.k.a(TRACE_SCROLL_TAG);
        fillRemainingScrollValues(this.mState);
        int scrollHorizontallyBy = i10 != 0 ? this.mLayout.scrollHorizontallyBy(i10, this.mRecycler, this.mState) : 0;
        int scrollVerticallyBy = i11 != 0 ? this.mLayout.scrollVerticallyBy(i11, this.mRecycler, this.mState) : 0;
        m0.k.b();
        repositionShadowingViews();
        onExitLayoutOrScroll();
        stopInterceptRequestLayout(false);
        if (iArr != null) {
            iArr[0] = scrollHorizontallyBy;
            iArr[1] = scrollVerticallyBy;
        }
    }

    @Override // android.view.View
    public void scrollTo(int i10, int i11) {
    }

    public void scrollToPosition(int i10) {
        if (this.mLayoutSuppressed) {
            return;
        }
        stopScroll();
        p pVar = this.mLayout;
        if (pVar == null) {
            return;
        }
        pVar.scrollToPosition(i10);
        awakenScrollBars();
    }

    @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
    public void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityEvent) {
        if (shouldDeferAccessibilityEvent(accessibilityEvent)) {
            return;
        }
        super.sendAccessibilityEventUnchecked(accessibilityEvent);
    }

    public void setAccessibilityDelegateCompat(androidx.recyclerview.widget.u uVar) {
        this.mAccessibilityDelegate = uVar;
        q0.b0.t0(this, uVar);
    }

    public void setAdapter(h hVar) {
        setLayoutFrozen(false);
        setAdapterInternal(hVar, false, true);
        processDataSetCompletelyChanged(false);
        requestLayout();
    }

    public void setChildDrawingOrderCallback(k kVar) {
        if (kVar == this.mChildDrawingOrderCallback) {
            return;
        }
        this.mChildDrawingOrderCallback = kVar;
        setChildrenDrawingOrderEnabled(kVar != null);
    }

    public boolean setChildImportantForAccessibilityInternal(e0 e0Var, int i10) {
        if (isComputingLayout()) {
            e0Var.mPendingAccessibilityState = i10;
            this.mPendingAccessibilityImportanceChange.add(e0Var);
            return false;
        }
        q0.b0.E0(e0Var.itemView, i10);
        return true;
    }

    @Override // android.view.ViewGroup
    public void setClipToPadding(boolean z10) {
        if (z10 != this.mClipToPadding) {
            invalidateGlows();
        }
        this.mClipToPadding = z10;
        super.setClipToPadding(z10);
        if (this.mFirstLayoutComplete) {
            requestLayout();
        }
    }

    public void setEdgeEffectFactory(l lVar) {
        p0.i.g(lVar);
        this.mEdgeEffectFactory = lVar;
        invalidateGlows();
    }

    public void setHasFixedSize(boolean z10) {
        this.mHasFixedSize = z10;
    }

    public void setItemAnimator(m mVar) {
        m mVar2 = this.mItemAnimator;
        if (mVar2 != null) {
            mVar2.k();
            this.mItemAnimator.v(null);
        }
        this.mItemAnimator = mVar;
        if (mVar != null) {
            mVar.v(this.mItemAnimatorListener);
        }
    }

    public void setItemViewCacheSize(int i10) {
        this.mRecycler.G(i10);
    }

    @Deprecated
    public void setLayoutFrozen(boolean z10) {
        suppressLayout(z10);
    }

    public void setLayoutManager(p pVar) {
        if (pVar == this.mLayout) {
            return;
        }
        stopScroll();
        if (this.mLayout != null) {
            m mVar = this.mItemAnimator;
            if (mVar != null) {
                mVar.k();
            }
            this.mLayout.removeAndRecycleAllViews(this.mRecycler);
            this.mLayout.removeAndRecycleScrapInt(this.mRecycler);
            this.mRecycler.c();
            if (this.mIsAttached) {
                this.mLayout.dispatchDetachedFromWindow(this, this.mRecycler);
            }
            this.mLayout.setRecyclerView(null);
            this.mLayout = null;
        } else {
            this.mRecycler.c();
        }
        this.mChildHelper.o();
        this.mLayout = pVar;
        if (pVar != null) {
            if (pVar.mRecyclerView == null) {
                pVar.setRecyclerView(this);
                if (this.mIsAttached) {
                    this.mLayout.dispatchAttachedToWindow(this);
                }
            } else {
                throw new IllegalArgumentException("LayoutManager " + pVar + " is already attached to a RecyclerView:" + pVar.mRecyclerView.exceptionLabel());
            }
        }
        this.mRecycler.K();
        requestLayout();
    }

    @Override // android.view.ViewGroup
    @Deprecated
    public void setLayoutTransition(LayoutTransition layoutTransition) {
        if (Build.VERSION.SDK_INT < 18) {
            if (layoutTransition == null) {
                suppressLayout(false);
                return;
            } else if (layoutTransition.getAnimator(0) == null && layoutTransition.getAnimator(1) == null && layoutTransition.getAnimator(2) == null && layoutTransition.getAnimator(3) == null && layoutTransition.getAnimator(4) == null) {
                suppressLayout(true);
                return;
            }
        }
        if (layoutTransition == null) {
            super.setLayoutTransition(null);
            return;
        }
        throw new IllegalArgumentException("Providing a LayoutTransition into RecyclerView is not supported. Please use setItemAnimator() instead for animating changes to the items in this RecyclerView");
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z10) {
        getScrollingChildHelper().n(z10);
    }

    public void setOnFlingListener(s sVar) {
        this.mOnFlingListener = sVar;
    }

    @Deprecated
    public void setOnScrollListener(u uVar) {
        this.mScrollListener = uVar;
    }

    public void setPreserveFocusAfterLayout(boolean z10) {
        this.mPreserveFocusAfterLayout = z10;
    }

    public void setRecycledViewPool(v vVar) {
        this.mRecycler.E(vVar);
    }

    @Deprecated
    public void setRecyclerListener(x xVar) {
        this.mRecyclerListener = xVar;
    }

    void setScrollState(int i10) {
        if (i10 == this.mScrollState) {
            return;
        }
        this.mScrollState = i10;
        if (i10 != 2) {
            stopScrollersInternal();
        }
        dispatchOnScrollStateChanged(i10);
    }

    public void setScrollingTouchSlop(int i10) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        if (i10 != 0) {
            if (i10 != 1) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("setScrollingTouchSlop(): bad argument constant ");
                sb2.append(i10);
                sb2.append("; using default value");
            } else {
                this.mTouchSlop = viewConfiguration.getScaledPagingTouchSlop();
                return;
            }
        }
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
    }

    public void setViewCacheExtension(c0 c0Var) {
        this.mRecycler.F(c0Var);
    }

    public boolean shouldDeferAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        if (!isComputingLayout()) {
            return false;
        }
        int a10 = accessibilityEvent != null ? r0.b.a(accessibilityEvent) : 0;
        this.mEatenAccessibilityChangeFlags |= a10 != 0 ? a10 : 0;
        return true;
    }

    public void smoothScrollBy(int i10, int i11) {
        smoothScrollBy(i10, i11, null);
    }

    public void smoothScrollToPosition(int i10) {
        p pVar;
        if (this.mLayoutSuppressed || (pVar = this.mLayout) == null) {
            return;
        }
        pVar.smoothScrollToPosition(this, this.mState, i10);
    }

    public void startInterceptRequestLayout() {
        int i10 = this.mInterceptRequestLayoutDepth + 1;
        this.mInterceptRequestLayoutDepth = i10;
        if (i10 != 1 || this.mLayoutSuppressed) {
            return;
        }
        this.mLayoutWasDefered = false;
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i10) {
        return getScrollingChildHelper().p(i10);
    }

    public void stopInterceptRequestLayout(boolean z10) {
        if (this.mInterceptRequestLayoutDepth < 1) {
            this.mInterceptRequestLayoutDepth = 1;
        }
        if (!z10 && !this.mLayoutSuppressed) {
            this.mLayoutWasDefered = false;
        }
        if (this.mInterceptRequestLayoutDepth == 1) {
            if (z10 && this.mLayoutWasDefered && !this.mLayoutSuppressed && this.mLayout != null && this.mAdapter != null) {
                dispatchLayout();
            }
            if (!this.mLayoutSuppressed) {
                this.mLayoutWasDefered = false;
            }
        }
        this.mInterceptRequestLayoutDepth--;
    }

    @Override // android.view.View, q0.o
    public void stopNestedScroll() {
        getScrollingChildHelper().r();
    }

    public void stopScroll() {
        setScrollState(0);
        stopScrollersInternal();
    }

    @Override // android.view.ViewGroup
    public final void suppressLayout(boolean z10) {
        if (z10 != this.mLayoutSuppressed) {
            assertNotInLayoutOrScroll("Do not suppressLayout in layout or scroll");
            if (!z10) {
                this.mLayoutSuppressed = false;
                if (this.mLayoutWasDefered && this.mLayout != null && this.mAdapter != null) {
                    requestLayout();
                }
                this.mLayoutWasDefered = false;
                return;
            }
            long uptimeMillis = SystemClock.uptimeMillis();
            onTouchEvent(MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, 0));
            this.mLayoutSuppressed = true;
            this.mIgnoreMotionEventTillDown = true;
            stopScroll();
        }
    }

    public void swapAdapter(h hVar, boolean z10) {
        setLayoutFrozen(false);
        setAdapterInternal(hVar, true, z10);
        processDataSetCompletelyChanged(true);
        requestLayout();
    }

    public void viewRangeUpdate(int i10, int i11, Object obj) {
        int i12;
        int j10 = this.mChildHelper.j();
        int i13 = i10 + i11;
        for (int i14 = 0; i14 < j10; i14++) {
            View i15 = this.mChildHelper.i(i14);
            e0 childViewHolderInt = getChildViewHolderInt(i15);
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore() && (i12 = childViewHolderInt.mPosition) >= i10 && i12 < i13) {
                childViewHolderInt.addFlags(2);
                childViewHolderInt.addChangePayload(obj);
                ((q) i15.getLayoutParams()).f2779h = true;
            }
        }
        this.mRecycler.M(i10, i11);
    }

    public RecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, n1.a.f11163a);
    }

    public boolean dispatchNestedPreScroll(int i10, int i11, int[] iArr, int[] iArr2, int i12) {
        return getScrollingChildHelper().d(i10, i11, iArr, iArr2, i12);
    }

    public boolean dispatchNestedScroll(int i10, int i11, int i12, int i13, int[] iArr, int i14) {
        return getScrollingChildHelper().g(i10, i11, i12, i13, iArr, i14);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0036 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public e0 findViewHolderForPosition(int i10, boolean z10) {
        int j10 = this.mChildHelper.j();
        e0 e0Var = null;
        for (int i11 = 0; i11 < j10; i11++) {
            e0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.i(i11));
            if (childViewHolderInt != null && !childViewHolderInt.isRemoved()) {
                if (z10) {
                    if (childViewHolderInt.mPosition != i10) {
                        continue;
                    }
                    if (this.mChildHelper.n(childViewHolderInt.itemView)) {
                        return childViewHolderInt;
                    }
                    e0Var = childViewHolderInt;
                } else {
                    if (childViewHolderInt.getLayoutPosition() != i10) {
                        continue;
                    }
                    if (this.mChildHelper.n(childViewHolderInt.itemView)) {
                    }
                }
            }
        }
        return e0Var;
    }

    public boolean hasNestedScrollingParent(int i10) {
        return getScrollingChildHelper().l(i10);
    }

    public void onExitLayoutOrScroll(boolean z10) {
        int i10 = this.mLayoutOrScrollCounter - 1;
        this.mLayoutOrScrollCounter = i10;
        if (i10 < 1) {
            this.mLayoutOrScrollCounter = 0;
            if (z10) {
                dispatchContentChangedIfNecessary();
                dispatchPendingImportantForAccessibilityChanges();
            }
        }
    }

    public void smoothScrollBy(int i10, int i11, Interpolator interpolator) {
        smoothScrollBy(i10, i11, interpolator, Integer.MIN_VALUE);
    }

    public boolean startNestedScroll(int i10, int i11) {
        return getScrollingChildHelper().q(i10, i11);
    }

    public void stopNestedScroll(int i10) {
        getScrollingChildHelper().s(i10);
    }

    /* loaded from: classes.dex */
    public static class z extends w0.a {
        public static final Parcelable.Creator<z> CREATOR = new a();

        /* renamed from: f, reason: collision with root package name */
        public Parcelable f2796f;

        /* loaded from: classes.dex */
        public class a implements Parcelable.ClassLoaderCreator<z> {
            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public z createFromParcel(Parcel parcel) {
                return new z(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public z createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new z(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: c, reason: merged with bridge method [inline-methods] */
            public z[] newArray(int i10) {
                return new z[i10];
            }
        }

        public z(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f2796f = parcel.readParcelable(classLoader == null ? p.class.getClassLoader() : classLoader);
        }

        public void a(z zVar) {
            this.f2796f = zVar.f2796f;
        }

        @Override // w0.a, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeParcelable(this.f2796f, 0);
        }

        public z(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public RecyclerView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.mObserver = new y();
        this.mRecycler = new w();
        this.mViewInfoStore = new androidx.recyclerview.widget.a0();
        this.mUpdateChildViewsRunnable = new a();
        this.mTempRect = new Rect();
        this.mTempRect2 = new Rect();
        this.mTempRectF = new RectF();
        this.mRecyclerListeners = new ArrayList();
        this.mItemDecorations = new ArrayList<>();
        this.mOnItemTouchListeners = new ArrayList<>();
        this.mInterceptRequestLayoutDepth = 0;
        this.mDataSetHasChangedAfterLayout = false;
        this.mDispatchItemsChangedEvent = false;
        this.mLayoutOrScrollCounter = 0;
        this.mDispatchScrollCounter = 0;
        this.mEdgeEffectFactory = new l();
        this.mItemAnimator = new androidx.recyclerview.widget.i();
        this.mScrollState = 0;
        this.mScrollPointerId = -1;
        this.mScaledHorizontalScrollFactor = Float.MIN_VALUE;
        this.mScaledVerticalScrollFactor = Float.MIN_VALUE;
        boolean z10 = true;
        this.mPreserveFocusAfterLayout = true;
        this.mViewFlinger = new d0();
        this.mPrefetchRegistry = ALLOW_THREAD_GAP_WORK ? new l.b() : null;
        this.mState = new b0();
        this.mItemsAddedOrRemoved = false;
        this.mItemsChanged = false;
        this.mItemAnimatorListener = new n();
        this.mPostedAnimatorRunner = false;
        this.mMinMaxLayoutPositions = new int[2];
        this.mScrollOffset = new int[2];
        this.mNestedOffsets = new int[2];
        this.mReusableIntPair = new int[2];
        this.mPendingAccessibilityImportanceChange = new ArrayList();
        this.mItemAnimatorRunner = new b();
        this.mLastAutoMeasureNonExactMeasuredWidth = 0;
        this.mLastAutoMeasureNonExactMeasuredHeight = 0;
        this.mViewInfoProcessCallback = new d();
        setScrollContainer(true);
        setFocusableInTouchMode(true);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
        this.mScaledHorizontalScrollFactor = q0.d0.b(viewConfiguration, context);
        this.mScaledVerticalScrollFactor = q0.d0.d(viewConfiguration, context);
        this.mMinFlingVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
        this.mMaxFlingVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
        setWillNotDraw(getOverScrollMode() == 2);
        this.mItemAnimator.v(this.mItemAnimatorListener);
        initAdapterManager();
        initChildrenHelper();
        initAutofill();
        if (q0.b0.C(this) == 0) {
            q0.b0.E0(this, 1);
        }
        this.mAccessibilityManager = (AccessibilityManager) getContext().getSystemService("accessibility");
        setAccessibilityDelegateCompat(new androidx.recyclerview.widget.u(this));
        int[] iArr = n1.c.f11172f;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i10, 0);
        q0.b0.r0(this, context, iArr, attributeSet, obtainStyledAttributes, i10, 0);
        String string = obtainStyledAttributes.getString(n1.c.f11181o);
        if (obtainStyledAttributes.getInt(n1.c.f11175i, -1) == -1) {
            setDescendantFocusability(262144);
        }
        this.mClipToPadding = obtainStyledAttributes.getBoolean(n1.c.f11174h, true);
        boolean z11 = obtainStyledAttributes.getBoolean(n1.c.f11176j, false);
        this.mEnableFastScroller = z11;
        if (z11) {
            initFastScroller((StateListDrawable) obtainStyledAttributes.getDrawable(n1.c.f11179m), obtainStyledAttributes.getDrawable(n1.c.f11180n), (StateListDrawable) obtainStyledAttributes.getDrawable(n1.c.f11177k), obtainStyledAttributes.getDrawable(n1.c.f11178l));
        }
        obtainStyledAttributes.recycle();
        createLayoutManager(context, string, attributeSet, i10, 0);
        if (Build.VERSION.SDK_INT >= 21) {
            int[] iArr2 = NESTED_SCROLLING_ATTRS;
            TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, iArr2, i10, 0);
            q0.b0.r0(this, context, iArr2, attributeSet, obtainStyledAttributes2, i10, 0);
            z10 = obtainStyledAttributes2.getBoolean(0, true);
            obtainStyledAttributes2.recycle();
        }
        setNestedScrollingEnabled(z10);
    }

    public final void dispatchNestedScroll(int i10, int i11, int i12, int i13, int[] iArr, int i14, int[] iArr2) {
        getScrollingChildHelper().e(i10, i11, i12, i13, iArr, i14, iArr2);
    }

    public void smoothScrollBy(int i10, int i11, Interpolator interpolator, int i12) {
        smoothScrollBy(i10, i11, interpolator, i12, false);
    }

    /* loaded from: classes.dex */
    public static class q extends ViewGroup.MarginLayoutParams {

        /* renamed from: f, reason: collision with root package name */
        public e0 f2777f;

        /* renamed from: g, reason: collision with root package name */
        public final Rect f2778g;

        /* renamed from: h, reason: collision with root package name */
        public boolean f2779h;

        /* renamed from: i, reason: collision with root package name */
        public boolean f2780i;

        public q(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f2778g = new Rect();
            this.f2779h = true;
            this.f2780i = false;
        }

        public int a() {
            return this.f2777f.getLayoutPosition();
        }

        public boolean c() {
            return this.f2777f.isUpdated();
        }

        public boolean e() {
            return this.f2777f.isRemoved();
        }

        public boolean f() {
            return this.f2777f.isInvalid();
        }

        public q(int i10, int i11) {
            super(i10, i11);
            this.f2778g = new Rect();
            this.f2779h = true;
            this.f2780i = false;
        }

        public q(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f2778g = new Rect();
            this.f2779h = true;
            this.f2780i = false;
        }

        public q(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f2778g = new Rect();
            this.f2779h = true;
            this.f2780i = false;
        }

        public q(q qVar) {
            super((ViewGroup.LayoutParams) qVar);
            this.f2778g = new Rect();
            this.f2779h = true;
            this.f2780i = false;
        }
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        p pVar = this.mLayout;
        if (pVar != null) {
            return pVar.generateLayoutParams(layoutParams);
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + exceptionLabel());
    }

    public void smoothScrollBy(int i10, int i11, Interpolator interpolator, int i12, boolean z10) {
        p pVar = this.mLayout;
        if (pVar == null || this.mLayoutSuppressed) {
            return;
        }
        if (!pVar.canScrollHorizontally()) {
            i10 = 0;
        }
        if (!this.mLayout.canScrollVertically()) {
            i11 = 0;
        }
        if (i10 == 0 && i11 == 0) {
            return;
        }
        if (i12 == Integer.MIN_VALUE || i12 > 0) {
            if (z10) {
                int i13 = i10 != 0 ? 1 : 0;
                if (i11 != 0) {
                    i13 |= 2;
                }
                startNestedScroll(i13, 1);
            }
            this.mViewFlinger.e(i10, i11, i12, interpolator);
            return;
        }
        scrollBy(i10, i11);
    }

    public void addItemDecoration(o oVar) {
        addItemDecoration(oVar, -1);
    }
}
