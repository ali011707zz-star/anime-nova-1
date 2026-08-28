package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.PointF;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.common.api.Api;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.util.List;

/* loaded from: classes.dex */
public class LinearLayoutManager extends RecyclerView.p implements RecyclerView.a0.b {
    public static final boolean DEBUG = false;
    public static final int HORIZONTAL = 0;
    public static final int INVALID_OFFSET = Integer.MIN_VALUE;
    private static final float MAX_SCROLL_FACTOR = 0.33333334f;
    private static final String TAG = "LinearLayoutManager";
    public static final int VERTICAL = 1;
    public final a mAnchorInfo;
    private int mInitialPrefetchItemCount;
    private boolean mLastStackFromEnd;
    private final b mLayoutChunkResult;
    private c mLayoutState;
    public int mOrientation;
    public s mOrientationHelper;
    public d mPendingSavedState;
    public int mPendingScrollPosition;
    public int mPendingScrollPositionOffset;
    private boolean mRecycleChildrenOnDetach;
    private int[] mReusableIntPair;
    private boolean mReverseLayout;
    public boolean mShouldReverseLayout;
    private boolean mSmoothScrollbarEnabled;
    private boolean mStackFromEnd;

    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public s f2694a;

        /* renamed from: b, reason: collision with root package name */
        public int f2695b;

        /* renamed from: c, reason: collision with root package name */
        public int f2696c;

        /* renamed from: d, reason: collision with root package name */
        public boolean f2697d;

        /* renamed from: e, reason: collision with root package name */
        public boolean f2698e;

        public a() {
            e();
        }

        public void a() {
            int m10;
            if (this.f2697d) {
                m10 = this.f2694a.i();
            } else {
                m10 = this.f2694a.m();
            }
            this.f2696c = m10;
        }

        public void b(View view, int i10) {
            if (this.f2697d) {
                this.f2696c = this.f2694a.d(view) + this.f2694a.o();
            } else {
                this.f2696c = this.f2694a.g(view);
            }
            this.f2695b = i10;
        }

        public void c(View view, int i10) {
            int o10 = this.f2694a.o();
            if (o10 >= 0) {
                b(view, i10);
                return;
            }
            this.f2695b = i10;
            if (this.f2697d) {
                int i11 = (this.f2694a.i() - o10) - this.f2694a.d(view);
                this.f2696c = this.f2694a.i() - i11;
                if (i11 > 0) {
                    int e10 = this.f2696c - this.f2694a.e(view);
                    int m10 = this.f2694a.m();
                    int min = e10 - (m10 + Math.min(this.f2694a.g(view) - m10, 0));
                    if (min < 0) {
                        this.f2696c += Math.min(i11, -min);
                        return;
                    }
                    return;
                }
                return;
            }
            int g10 = this.f2694a.g(view);
            int m11 = g10 - this.f2694a.m();
            this.f2696c = g10;
            if (m11 > 0) {
                int i12 = (this.f2694a.i() - Math.min(0, (this.f2694a.i() - o10) - this.f2694a.d(view))) - (g10 + this.f2694a.e(view));
                if (i12 < 0) {
                    this.f2696c -= Math.min(m11, -i12);
                }
            }
        }

        public boolean d(View view, RecyclerView.b0 b0Var) {
            RecyclerView.q qVar = (RecyclerView.q) view.getLayoutParams();
            return !qVar.e() && qVar.a() >= 0 && qVar.a() < b0Var.b();
        }

        public void e() {
            this.f2695b = -1;
            this.f2696c = Integer.MIN_VALUE;
            this.f2697d = false;
            this.f2698e = false;
        }

        public String toString() {
            return "AnchorInfo{mPosition=" + this.f2695b + ", mCoordinate=" + this.f2696c + ", mLayoutFromEnd=" + this.f2697d + ", mValid=" + this.f2698e + '}';
        }
    }

    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a, reason: collision with root package name */
        public int f2699a;

        /* renamed from: b, reason: collision with root package name */
        public boolean f2700b;

        /* renamed from: c, reason: collision with root package name */
        public boolean f2701c;

        /* renamed from: d, reason: collision with root package name */
        public boolean f2702d;

        public void a() {
            this.f2699a = 0;
            this.f2700b = false;
            this.f2701c = false;
            this.f2702d = false;
        }
    }

    /* loaded from: classes.dex */
    public static class c {

        /* renamed from: b, reason: collision with root package name */
        public int f2704b;

        /* renamed from: c, reason: collision with root package name */
        public int f2705c;

        /* renamed from: d, reason: collision with root package name */
        public int f2706d;

        /* renamed from: e, reason: collision with root package name */
        public int f2707e;

        /* renamed from: f, reason: collision with root package name */
        public int f2708f;

        /* renamed from: g, reason: collision with root package name */
        public int f2709g;

        /* renamed from: k, reason: collision with root package name */
        public int f2713k;

        /* renamed from: m, reason: collision with root package name */
        public boolean f2715m;

        /* renamed from: a, reason: collision with root package name */
        public boolean f2703a = true;

        /* renamed from: h, reason: collision with root package name */
        public int f2710h = 0;

        /* renamed from: i, reason: collision with root package name */
        public int f2711i = 0;

        /* renamed from: j, reason: collision with root package name */
        public boolean f2712j = false;

        /* renamed from: l, reason: collision with root package name */
        public List<RecyclerView.e0> f2714l = null;

        public void a() {
            b(null);
        }

        public void b(View view) {
            View f10 = f(view);
            if (f10 == null) {
                this.f2706d = -1;
            } else {
                this.f2706d = ((RecyclerView.q) f10.getLayoutParams()).a();
            }
        }

        public boolean c(RecyclerView.b0 b0Var) {
            int i10 = this.f2706d;
            return i10 >= 0 && i10 < b0Var.b();
        }

        public View d(RecyclerView.w wVar) {
            if (this.f2714l != null) {
                return e();
            }
            View o10 = wVar.o(this.f2706d);
            this.f2706d += this.f2707e;
            return o10;
        }

        public final View e() {
            int size = this.f2714l.size();
            for (int i10 = 0; i10 < size; i10++) {
                View view = this.f2714l.get(i10).itemView;
                RecyclerView.q qVar = (RecyclerView.q) view.getLayoutParams();
                if (!qVar.e() && this.f2706d == qVar.a()) {
                    b(view);
                    return view;
                }
            }
            return null;
        }

        public View f(View view) {
            int a10;
            int size = this.f2714l.size();
            View view2 = null;
            int i10 = Api.BaseClientBuilder.API_PRIORITY_OTHER;
            for (int i11 = 0; i11 < size; i11++) {
                View view3 = this.f2714l.get(i11).itemView;
                RecyclerView.q qVar = (RecyclerView.q) view3.getLayoutParams();
                if (view3 != view && !qVar.e() && (a10 = (qVar.a() - this.f2706d) * this.f2707e) >= 0 && a10 < i10) {
                    view2 = view3;
                    if (a10 == 0) {
                        break;
                    }
                    i10 = a10;
                }
            }
            return view2;
        }
    }

    @SuppressLint({"BanParcelableUsage"})
    /* loaded from: classes.dex */
    public static class d implements Parcelable {
        public static final Parcelable.Creator<d> CREATOR = new a();

        /* renamed from: f, reason: collision with root package name */
        public int f2716f;

        /* renamed from: g, reason: collision with root package name */
        public int f2717g;

        /* renamed from: h, reason: collision with root package name */
        public boolean f2718h;

        /* loaded from: classes.dex */
        public class a implements Parcelable.Creator<d> {
            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public d createFromParcel(Parcel parcel) {
                return new d(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public d[] newArray(int i10) {
                return new d[i10];
            }
        }

        public d() {
        }

        public boolean a() {
            return this.f2716f >= 0;
        }

        public void c() {
            this.f2716f = -1;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeInt(this.f2716f);
            parcel.writeInt(this.f2717g);
            parcel.writeInt(this.f2718h ? 1 : 0);
        }

        public d(Parcel parcel) {
            this.f2716f = parcel.readInt();
            this.f2717g = parcel.readInt();
            this.f2718h = parcel.readInt() == 1;
        }

        public d(d dVar) {
            this.f2716f = dVar.f2716f;
            this.f2717g = dVar.f2717g;
            this.f2718h = dVar.f2718h;
        }
    }

    public LinearLayoutManager(Context context) {
        this(context, 1, false);
    }

    private int computeScrollExtent(RecyclerView.b0 b0Var) {
        if (getChildCount() == 0) {
            return 0;
        }
        ensureLayoutState();
        return v.a(b0Var, this.mOrientationHelper, findFirstVisibleChildClosestToStart(!this.mSmoothScrollbarEnabled, true), findFirstVisibleChildClosestToEnd(!this.mSmoothScrollbarEnabled, true), this, this.mSmoothScrollbarEnabled);
    }

    private int computeScrollOffset(RecyclerView.b0 b0Var) {
        if (getChildCount() == 0) {
            return 0;
        }
        ensureLayoutState();
        return v.b(b0Var, this.mOrientationHelper, findFirstVisibleChildClosestToStart(!this.mSmoothScrollbarEnabled, true), findFirstVisibleChildClosestToEnd(!this.mSmoothScrollbarEnabled, true), this, this.mSmoothScrollbarEnabled, this.mShouldReverseLayout);
    }

    private int computeScrollRange(RecyclerView.b0 b0Var) {
        if (getChildCount() == 0) {
            return 0;
        }
        ensureLayoutState();
        return v.c(b0Var, this.mOrientationHelper, findFirstVisibleChildClosestToStart(!this.mSmoothScrollbarEnabled, true), findFirstVisibleChildClosestToEnd(!this.mSmoothScrollbarEnabled, true), this, this.mSmoothScrollbarEnabled);
    }

    private View findFirstPartiallyOrCompletelyInvisibleChild() {
        return findOnePartiallyOrCompletelyInvisibleChild(0, getChildCount());
    }

    private View findLastPartiallyOrCompletelyInvisibleChild() {
        return findOnePartiallyOrCompletelyInvisibleChild(getChildCount() - 1, -1);
    }

    private View findPartiallyOrCompletelyInvisibleChildClosestToEnd() {
        return this.mShouldReverseLayout ? findFirstPartiallyOrCompletelyInvisibleChild() : findLastPartiallyOrCompletelyInvisibleChild();
    }

    private View findPartiallyOrCompletelyInvisibleChildClosestToStart() {
        return this.mShouldReverseLayout ? findLastPartiallyOrCompletelyInvisibleChild() : findFirstPartiallyOrCompletelyInvisibleChild();
    }

    private int fixLayoutEndGap(int i10, RecyclerView.w wVar, RecyclerView.b0 b0Var, boolean z10) {
        int i11;
        int i12 = this.mOrientationHelper.i() - i10;
        if (i12 <= 0) {
            return 0;
        }
        int i13 = -scrollBy(-i12, wVar, b0Var);
        int i14 = i10 + i13;
        if (!z10 || (i11 = this.mOrientationHelper.i() - i14) <= 0) {
            return i13;
        }
        this.mOrientationHelper.r(i11);
        return i11 + i13;
    }

    private int fixLayoutStartGap(int i10, RecyclerView.w wVar, RecyclerView.b0 b0Var, boolean z10) {
        int m10;
        int m11 = i10 - this.mOrientationHelper.m();
        if (m11 <= 0) {
            return 0;
        }
        int i11 = -scrollBy(m11, wVar, b0Var);
        int i12 = i10 + i11;
        if (!z10 || (m10 = i12 - this.mOrientationHelper.m()) <= 0) {
            return i11;
        }
        this.mOrientationHelper.r(-m10);
        return i11 - m10;
    }

    private View getChildClosestToEnd() {
        return getChildAt(this.mShouldReverseLayout ? 0 : getChildCount() - 1);
    }

    private View getChildClosestToStart() {
        return getChildAt(this.mShouldReverseLayout ? getChildCount() - 1 : 0);
    }

    private void layoutForPredictiveAnimations(RecyclerView.w wVar, RecyclerView.b0 b0Var, int i10, int i11) {
        if (!b0Var.g() || getChildCount() == 0 || b0Var.e() || !supportsPredictiveItemAnimations()) {
            return;
        }
        List<RecyclerView.e0> k10 = wVar.k();
        int size = k10.size();
        int position = getPosition(getChildAt(0));
        int i12 = 0;
        int i13 = 0;
        for (int i14 = 0; i14 < size; i14++) {
            RecyclerView.e0 e0Var = k10.get(i14);
            if (!e0Var.isRemoved()) {
                if (((e0Var.getLayoutPosition() < position) != this.mShouldReverseLayout ? (char) 65535 : (char) 1) == 65535) {
                    i12 += this.mOrientationHelper.e(e0Var.itemView);
                } else {
                    i13 += this.mOrientationHelper.e(e0Var.itemView);
                }
            }
        }
        this.mLayoutState.f2714l = k10;
        if (i12 > 0) {
            updateLayoutStateToFillStart(getPosition(getChildClosestToStart()), i10);
            c cVar = this.mLayoutState;
            cVar.f2710h = i12;
            cVar.f2705c = 0;
            cVar.a();
            fill(wVar, this.mLayoutState, b0Var, false);
        }
        if (i13 > 0) {
            updateLayoutStateToFillEnd(getPosition(getChildClosestToEnd()), i11);
            c cVar2 = this.mLayoutState;
            cVar2.f2710h = i13;
            cVar2.f2705c = 0;
            cVar2.a();
            fill(wVar, this.mLayoutState, b0Var, false);
        }
        this.mLayoutState.f2714l = null;
    }

    private void logChildren() {
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            View childAt = getChildAt(i10);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("item ");
            sb2.append(getPosition(childAt));
            sb2.append(", coord:");
            sb2.append(this.mOrientationHelper.g(childAt));
        }
    }

    private void recycleByLayoutState(RecyclerView.w wVar, c cVar) {
        if (!cVar.f2703a || cVar.f2715m) {
            return;
        }
        int i10 = cVar.f2709g;
        int i11 = cVar.f2711i;
        if (cVar.f2708f == -1) {
            recycleViewsFromEnd(wVar, i10, i11);
        } else {
            recycleViewsFromStart(wVar, i10, i11);
        }
    }

    private void recycleChildren(RecyclerView.w wVar, int i10, int i11) {
        if (i10 == i11) {
            return;
        }
        if (i11 <= i10) {
            while (i10 > i11) {
                removeAndRecycleViewAt(i10, wVar);
                i10--;
            }
        } else {
            for (int i12 = i11 - 1; i12 >= i10; i12--) {
                removeAndRecycleViewAt(i12, wVar);
            }
        }
    }

    private void recycleViewsFromEnd(RecyclerView.w wVar, int i10, int i11) {
        int childCount = getChildCount();
        if (i10 < 0) {
            return;
        }
        int h10 = (this.mOrientationHelper.h() - i10) + i11;
        if (this.mShouldReverseLayout) {
            for (int i12 = 0; i12 < childCount; i12++) {
                View childAt = getChildAt(i12);
                if (this.mOrientationHelper.g(childAt) < h10 || this.mOrientationHelper.q(childAt) < h10) {
                    recycleChildren(wVar, 0, i12);
                    return;
                }
            }
            return;
        }
        int i13 = childCount - 1;
        for (int i14 = i13; i14 >= 0; i14--) {
            View childAt2 = getChildAt(i14);
            if (this.mOrientationHelper.g(childAt2) < h10 || this.mOrientationHelper.q(childAt2) < h10) {
                recycleChildren(wVar, i13, i14);
                return;
            }
        }
    }

    private void recycleViewsFromStart(RecyclerView.w wVar, int i10, int i11) {
        if (i10 < 0) {
            return;
        }
        int i12 = i10 - i11;
        int childCount = getChildCount();
        if (!this.mShouldReverseLayout) {
            for (int i13 = 0; i13 < childCount; i13++) {
                View childAt = getChildAt(i13);
                if (this.mOrientationHelper.d(childAt) > i12 || this.mOrientationHelper.p(childAt) > i12) {
                    recycleChildren(wVar, 0, i13);
                    return;
                }
            }
            return;
        }
        int i14 = childCount - 1;
        for (int i15 = i14; i15 >= 0; i15--) {
            View childAt2 = getChildAt(i15);
            if (this.mOrientationHelper.d(childAt2) > i12 || this.mOrientationHelper.p(childAt2) > i12) {
                recycleChildren(wVar, i14, i15);
                return;
            }
        }
    }

    private void resolveShouldLayoutReverse() {
        if (this.mOrientation != 1 && isLayoutRTL()) {
            this.mShouldReverseLayout = !this.mReverseLayout;
        } else {
            this.mShouldReverseLayout = this.mReverseLayout;
        }
    }

    private boolean updateAnchorFromChildren(RecyclerView.w wVar, RecyclerView.b0 b0Var, a aVar) {
        View findReferenceChild;
        boolean z10 = false;
        if (getChildCount() == 0) {
            return false;
        }
        View focusedChild = getFocusedChild();
        if (focusedChild != null && aVar.d(focusedChild, b0Var)) {
            aVar.c(focusedChild, getPosition(focusedChild));
            return true;
        }
        boolean z11 = this.mLastStackFromEnd;
        boolean z12 = this.mStackFromEnd;
        if (z11 != z12 || (findReferenceChild = findReferenceChild(wVar, b0Var, aVar.f2697d, z12)) == null) {
            return false;
        }
        aVar.b(findReferenceChild, getPosition(findReferenceChild));
        if (!b0Var.e() && supportsPredictiveItemAnimations()) {
            int g10 = this.mOrientationHelper.g(findReferenceChild);
            int d10 = this.mOrientationHelper.d(findReferenceChild);
            int m10 = this.mOrientationHelper.m();
            int i10 = this.mOrientationHelper.i();
            boolean z13 = d10 <= m10 && g10 < m10;
            if (g10 >= i10 && d10 > i10) {
                z10 = true;
            }
            if (z13 || z10) {
                if (aVar.f2697d) {
                    m10 = i10;
                }
                aVar.f2696c = m10;
            }
        }
        return true;
    }

    private boolean updateAnchorFromPendingData(RecyclerView.b0 b0Var, a aVar) {
        int i10;
        int g10;
        if (!b0Var.e() && (i10 = this.mPendingScrollPosition) != -1) {
            if (i10 >= 0 && i10 < b0Var.b()) {
                aVar.f2695b = this.mPendingScrollPosition;
                d dVar = this.mPendingSavedState;
                if (dVar != null && dVar.a()) {
                    boolean z10 = this.mPendingSavedState.f2718h;
                    aVar.f2697d = z10;
                    if (z10) {
                        aVar.f2696c = this.mOrientationHelper.i() - this.mPendingSavedState.f2717g;
                    } else {
                        aVar.f2696c = this.mOrientationHelper.m() + this.mPendingSavedState.f2717g;
                    }
                    return true;
                }
                if (this.mPendingScrollPositionOffset == Integer.MIN_VALUE) {
                    View findViewByPosition = findViewByPosition(this.mPendingScrollPosition);
                    if (findViewByPosition != null) {
                        if (this.mOrientationHelper.e(findViewByPosition) > this.mOrientationHelper.n()) {
                            aVar.a();
                            return true;
                        }
                        if (this.mOrientationHelper.g(findViewByPosition) - this.mOrientationHelper.m() < 0) {
                            aVar.f2696c = this.mOrientationHelper.m();
                            aVar.f2697d = false;
                            return true;
                        }
                        if (this.mOrientationHelper.i() - this.mOrientationHelper.d(findViewByPosition) < 0) {
                            aVar.f2696c = this.mOrientationHelper.i();
                            aVar.f2697d = true;
                            return true;
                        }
                        if (aVar.f2697d) {
                            g10 = this.mOrientationHelper.d(findViewByPosition) + this.mOrientationHelper.o();
                        } else {
                            g10 = this.mOrientationHelper.g(findViewByPosition);
                        }
                        aVar.f2696c = g10;
                    } else {
                        if (getChildCount() > 0) {
                            aVar.f2697d = (this.mPendingScrollPosition < getPosition(getChildAt(0))) == this.mShouldReverseLayout;
                        }
                        aVar.a();
                    }
                    return true;
                }
                boolean z11 = this.mShouldReverseLayout;
                aVar.f2697d = z11;
                if (z11) {
                    aVar.f2696c = this.mOrientationHelper.i() - this.mPendingScrollPositionOffset;
                } else {
                    aVar.f2696c = this.mOrientationHelper.m() + this.mPendingScrollPositionOffset;
                }
                return true;
            }
            this.mPendingScrollPosition = -1;
            this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        }
        return false;
    }

    private void updateAnchorInfoForLayout(RecyclerView.w wVar, RecyclerView.b0 b0Var, a aVar) {
        if (updateAnchorFromPendingData(b0Var, aVar) || updateAnchorFromChildren(wVar, b0Var, aVar)) {
            return;
        }
        aVar.a();
        aVar.f2695b = this.mStackFromEnd ? b0Var.b() - 1 : 0;
    }

    private void updateLayoutState(int i10, int i11, boolean z10, RecyclerView.b0 b0Var) {
        int m10;
        this.mLayoutState.f2715m = resolveIsInfinite();
        this.mLayoutState.f2708f = i10;
        int[] iArr = this.mReusableIntPair;
        iArr[0] = 0;
        iArr[1] = 0;
        calculateExtraLayoutSpace(b0Var, iArr);
        int max = Math.max(0, this.mReusableIntPair[0]);
        int max2 = Math.max(0, this.mReusableIntPair[1]);
        boolean z11 = i10 == 1;
        c cVar = this.mLayoutState;
        int i12 = z11 ? max2 : max;
        cVar.f2710h = i12;
        if (!z11) {
            max = max2;
        }
        cVar.f2711i = max;
        if (z11) {
            cVar.f2710h = i12 + this.mOrientationHelper.j();
            View childClosestToEnd = getChildClosestToEnd();
            c cVar2 = this.mLayoutState;
            cVar2.f2707e = this.mShouldReverseLayout ? -1 : 1;
            int position = getPosition(childClosestToEnd);
            c cVar3 = this.mLayoutState;
            cVar2.f2706d = position + cVar3.f2707e;
            cVar3.f2704b = this.mOrientationHelper.d(childClosestToEnd);
            m10 = this.mOrientationHelper.d(childClosestToEnd) - this.mOrientationHelper.i();
        } else {
            View childClosestToStart = getChildClosestToStart();
            this.mLayoutState.f2710h += this.mOrientationHelper.m();
            c cVar4 = this.mLayoutState;
            cVar4.f2707e = this.mShouldReverseLayout ? 1 : -1;
            int position2 = getPosition(childClosestToStart);
            c cVar5 = this.mLayoutState;
            cVar4.f2706d = position2 + cVar5.f2707e;
            cVar5.f2704b = this.mOrientationHelper.g(childClosestToStart);
            m10 = (-this.mOrientationHelper.g(childClosestToStart)) + this.mOrientationHelper.m();
        }
        c cVar6 = this.mLayoutState;
        cVar6.f2705c = i11;
        if (z10) {
            cVar6.f2705c = i11 - m10;
        }
        cVar6.f2709g = m10;
    }

    private void updateLayoutStateToFillEnd(a aVar) {
        updateLayoutStateToFillEnd(aVar.f2695b, aVar.f2696c);
    }

    private void updateLayoutStateToFillStart(a aVar) {
        updateLayoutStateToFillStart(aVar.f2695b, aVar.f2696c);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void assertNotInLayoutOrScroll(String str) {
        if (this.mPendingSavedState == null) {
            super.assertNotInLayoutOrScroll(str);
        }
    }

    public void calculateExtraLayoutSpace(RecyclerView.b0 b0Var, int[] iArr) {
        int i10;
        int extraLayoutSpace = getExtraLayoutSpace(b0Var);
        if (this.mLayoutState.f2708f == -1) {
            i10 = 0;
        } else {
            i10 = extraLayoutSpace;
            extraLayoutSpace = 0;
        }
        iArr[0] = extraLayoutSpace;
        iArr[1] = i10;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public boolean canScrollHorizontally() {
        return this.mOrientation == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public boolean canScrollVertically() {
        return this.mOrientation == 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void collectAdjacentPrefetchPositions(int i10, int i11, RecyclerView.b0 b0Var, RecyclerView.p.c cVar) {
        if (this.mOrientation != 0) {
            i10 = i11;
        }
        if (getChildCount() == 0 || i10 == 0) {
            return;
        }
        ensureLayoutState();
        updateLayoutState(i10 > 0 ? 1 : -1, Math.abs(i10), true, b0Var);
        collectPrefetchPositionsForLayoutState(b0Var, this.mLayoutState, cVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void collectInitialPrefetchPositions(int i10, RecyclerView.p.c cVar) {
        boolean z10;
        int i11;
        d dVar = this.mPendingSavedState;
        if (dVar != null && dVar.a()) {
            d dVar2 = this.mPendingSavedState;
            z10 = dVar2.f2718h;
            i11 = dVar2.f2716f;
        } else {
            resolveShouldLayoutReverse();
            z10 = this.mShouldReverseLayout;
            i11 = this.mPendingScrollPosition;
            if (i11 == -1) {
                i11 = z10 ? i10 - 1 : 0;
            }
        }
        int i12 = z10 ? -1 : 1;
        for (int i13 = 0; i13 < this.mInitialPrefetchItemCount && i11 >= 0 && i11 < i10; i13++) {
            cVar.a(i11, 0);
            i11 += i12;
        }
    }

    public void collectPrefetchPositionsForLayoutState(RecyclerView.b0 b0Var, c cVar, RecyclerView.p.c cVar2) {
        int i10 = cVar.f2706d;
        if (i10 < 0 || i10 >= b0Var.b()) {
            return;
        }
        cVar2.a(i10, Math.max(0, cVar.f2709g));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int computeHorizontalScrollExtent(RecyclerView.b0 b0Var) {
        return computeScrollExtent(b0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int computeHorizontalScrollOffset(RecyclerView.b0 b0Var) {
        return computeScrollOffset(b0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int computeHorizontalScrollRange(RecyclerView.b0 b0Var) {
        return computeScrollRange(b0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a0.b
    public PointF computeScrollVectorForPosition(int i10) {
        if (getChildCount() == 0) {
            return null;
        }
        int i11 = (i10 < getPosition(getChildAt(0))) != this.mShouldReverseLayout ? -1 : 1;
        if (this.mOrientation == 0) {
            return new PointF(i11, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        }
        return new PointF(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, i11);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int computeVerticalScrollExtent(RecyclerView.b0 b0Var) {
        return computeScrollExtent(b0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int computeVerticalScrollOffset(RecyclerView.b0 b0Var) {
        return computeScrollOffset(b0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int computeVerticalScrollRange(RecyclerView.b0 b0Var) {
        return computeScrollRange(b0Var);
    }

    public int convertFocusDirectionToLayoutDirection(int i10) {
        return i10 != 1 ? i10 != 2 ? i10 != 17 ? i10 != 33 ? i10 != 66 ? (i10 == 130 && this.mOrientation == 1) ? 1 : Integer.MIN_VALUE : this.mOrientation == 0 ? 1 : Integer.MIN_VALUE : this.mOrientation == 1 ? -1 : Integer.MIN_VALUE : this.mOrientation == 0 ? -1 : Integer.MIN_VALUE : (this.mOrientation != 1 && isLayoutRTL()) ? -1 : 1 : (this.mOrientation != 1 && isLayoutRTL()) ? 1 : -1;
    }

    public c createLayoutState() {
        return new c();
    }

    public void ensureLayoutState() {
        if (this.mLayoutState == null) {
            this.mLayoutState = createLayoutState();
        }
    }

    public int fill(RecyclerView.w wVar, c cVar, RecyclerView.b0 b0Var, boolean z10) {
        int i10 = cVar.f2705c;
        int i11 = cVar.f2709g;
        if (i11 != Integer.MIN_VALUE) {
            if (i10 < 0) {
                cVar.f2709g = i11 + i10;
            }
            recycleByLayoutState(wVar, cVar);
        }
        int i12 = cVar.f2705c + cVar.f2710h;
        b bVar = this.mLayoutChunkResult;
        while (true) {
            if ((!cVar.f2715m && i12 <= 0) || !cVar.c(b0Var)) {
                break;
            }
            bVar.a();
            layoutChunk(wVar, b0Var, cVar, bVar);
            if (!bVar.f2700b) {
                cVar.f2704b += bVar.f2699a * cVar.f2708f;
                if (!bVar.f2701c || cVar.f2714l != null || !b0Var.e()) {
                    int i13 = cVar.f2705c;
                    int i14 = bVar.f2699a;
                    cVar.f2705c = i13 - i14;
                    i12 -= i14;
                }
                int i15 = cVar.f2709g;
                if (i15 != Integer.MIN_VALUE) {
                    int i16 = i15 + bVar.f2699a;
                    cVar.f2709g = i16;
                    int i17 = cVar.f2705c;
                    if (i17 < 0) {
                        cVar.f2709g = i16 + i17;
                    }
                    recycleByLayoutState(wVar, cVar);
                }
                if (z10 && bVar.f2702d) {
                    break;
                }
            } else {
                break;
            }
        }
        return i10 - cVar.f2705c;
    }

    public int findFirstCompletelyVisibleItemPosition() {
        View findOneVisibleChild = findOneVisibleChild(0, getChildCount(), true, false);
        if (findOneVisibleChild == null) {
            return -1;
        }
        return getPosition(findOneVisibleChild);
    }

    public View findFirstVisibleChildClosestToEnd(boolean z10, boolean z11) {
        if (this.mShouldReverseLayout) {
            return findOneVisibleChild(0, getChildCount(), z10, z11);
        }
        return findOneVisibleChild(getChildCount() - 1, -1, z10, z11);
    }

    public View findFirstVisibleChildClosestToStart(boolean z10, boolean z11) {
        if (this.mShouldReverseLayout) {
            return findOneVisibleChild(getChildCount() - 1, -1, z10, z11);
        }
        return findOneVisibleChild(0, getChildCount(), z10, z11);
    }

    public int findFirstVisibleItemPosition() {
        View findOneVisibleChild = findOneVisibleChild(0, getChildCount(), false, true);
        if (findOneVisibleChild == null) {
            return -1;
        }
        return getPosition(findOneVisibleChild);
    }

    public int findLastCompletelyVisibleItemPosition() {
        View findOneVisibleChild = findOneVisibleChild(getChildCount() - 1, -1, true, false);
        if (findOneVisibleChild == null) {
            return -1;
        }
        return getPosition(findOneVisibleChild);
    }

    public int findLastVisibleItemPosition() {
        View findOneVisibleChild = findOneVisibleChild(getChildCount() - 1, -1, false, true);
        if (findOneVisibleChild == null) {
            return -1;
        }
        return getPosition(findOneVisibleChild);
    }

    public View findOnePartiallyOrCompletelyInvisibleChild(int i10, int i11) {
        int i12;
        int i13;
        ensureLayoutState();
        if ((i11 > i10 ? (char) 1 : i11 < i10 ? (char) 65535 : (char) 0) == 0) {
            return getChildAt(i10);
        }
        if (this.mOrientationHelper.g(getChildAt(i10)) < this.mOrientationHelper.m()) {
            i12 = 16644;
            i13 = 16388;
        } else {
            i12 = 4161;
            i13 = 4097;
        }
        if (this.mOrientation == 0) {
            return this.mHorizontalBoundCheck.a(i10, i11, i12, i13);
        }
        return this.mVerticalBoundCheck.a(i10, i11, i12, i13);
    }

    public View findOneVisibleChild(int i10, int i11, boolean z10, boolean z11) {
        ensureLayoutState();
        int i12 = z10 ? 24579 : 320;
        int i13 = z11 ? 320 : 0;
        if (this.mOrientation == 0) {
            return this.mHorizontalBoundCheck.a(i10, i11, i12, i13);
        }
        return this.mVerticalBoundCheck.a(i10, i11, i12, i13);
    }

    public View findReferenceChild(RecyclerView.w wVar, RecyclerView.b0 b0Var, boolean z10, boolean z11) {
        int i10;
        int i11;
        ensureLayoutState();
        int childCount = getChildCount();
        int i12 = -1;
        if (z11) {
            i10 = getChildCount() - 1;
            i11 = -1;
        } else {
            i12 = childCount;
            i10 = 0;
            i11 = 1;
        }
        int b10 = b0Var.b();
        int m10 = this.mOrientationHelper.m();
        int i13 = this.mOrientationHelper.i();
        View view = null;
        View view2 = null;
        View view3 = null;
        while (i10 != i12) {
            View childAt = getChildAt(i10);
            int position = getPosition(childAt);
            int g10 = this.mOrientationHelper.g(childAt);
            int d10 = this.mOrientationHelper.d(childAt);
            if (position >= 0 && position < b10) {
                if (!((RecyclerView.q) childAt.getLayoutParams()).e()) {
                    boolean z12 = d10 <= m10 && g10 < m10;
                    boolean z13 = g10 >= i13 && d10 > i13;
                    if (!z12 && !z13) {
                        return childAt;
                    }
                    if (z10) {
                        if (!z13) {
                            if (view != null) {
                            }
                            view = childAt;
                        }
                        view2 = childAt;
                    } else {
                        if (!z12) {
                            if (view != null) {
                            }
                            view = childAt;
                        }
                        view2 = childAt;
                    }
                } else if (view3 == null) {
                    view3 = childAt;
                }
            }
            i10 += i11;
        }
        return view != null ? view : view2 != null ? view2 : view3;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public View findViewByPosition(int i10) {
        int childCount = getChildCount();
        if (childCount == 0) {
            return null;
        }
        int position = i10 - getPosition(getChildAt(0));
        if (position >= 0 && position < childCount) {
            View childAt = getChildAt(position);
            if (getPosition(childAt) == i10) {
                return childAt;
            }
        }
        return super.findViewByPosition(i10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public RecyclerView.q generateDefaultLayoutParams() {
        return new RecyclerView.q(-2, -2);
    }

    @Deprecated
    public int getExtraLayoutSpace(RecyclerView.b0 b0Var) {
        if (b0Var.d()) {
            return this.mOrientationHelper.n();
        }
        return 0;
    }

    public int getInitialPrefetchItemCount() {
        return this.mInitialPrefetchItemCount;
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    public boolean getRecycleChildrenOnDetach() {
        return this.mRecycleChildrenOnDetach;
    }

    public boolean getReverseLayout() {
        return this.mReverseLayout;
    }

    public boolean getStackFromEnd() {
        return this.mStackFromEnd;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public boolean isAutoMeasureEnabled() {
        return true;
    }

    public boolean isLayoutRTL() {
        return getLayoutDirection() == 1;
    }

    public boolean isSmoothScrollbarEnabled() {
        return this.mSmoothScrollbarEnabled;
    }

    public void layoutChunk(RecyclerView.w wVar, RecyclerView.b0 b0Var, c cVar, b bVar) {
        int i10;
        int i11;
        int i12;
        int i13;
        int f10;
        View d10 = cVar.d(wVar);
        if (d10 == null) {
            bVar.f2700b = true;
            return;
        }
        RecyclerView.q qVar = (RecyclerView.q) d10.getLayoutParams();
        if (cVar.f2714l == null) {
            if (this.mShouldReverseLayout == (cVar.f2708f == -1)) {
                addView(d10);
            } else {
                addView(d10, 0);
            }
        } else {
            if (this.mShouldReverseLayout == (cVar.f2708f == -1)) {
                addDisappearingView(d10);
            } else {
                addDisappearingView(d10, 0);
            }
        }
        measureChildWithMargins(d10, 0, 0);
        bVar.f2699a = this.mOrientationHelper.e(d10);
        if (this.mOrientation == 1) {
            if (isLayoutRTL()) {
                f10 = getWidth() - getPaddingRight();
                i13 = f10 - this.mOrientationHelper.f(d10);
            } else {
                i13 = getPaddingLeft();
                f10 = this.mOrientationHelper.f(d10) + i13;
            }
            if (cVar.f2708f == -1) {
                int i14 = cVar.f2704b;
                i12 = i14;
                i11 = f10;
                i10 = i14 - bVar.f2699a;
            } else {
                int i15 = cVar.f2704b;
                i10 = i15;
                i11 = f10;
                i12 = bVar.f2699a + i15;
            }
        } else {
            int paddingTop = getPaddingTop();
            int f11 = this.mOrientationHelper.f(d10) + paddingTop;
            if (cVar.f2708f == -1) {
                int i16 = cVar.f2704b;
                i11 = i16;
                i10 = paddingTop;
                i12 = f11;
                i13 = i16 - bVar.f2699a;
            } else {
                int i17 = cVar.f2704b;
                i10 = paddingTop;
                i11 = bVar.f2699a + i17;
                i12 = f11;
                i13 = i17;
            }
        }
        layoutDecoratedWithMargins(d10, i13, i10, i11, i12);
        if (qVar.e() || qVar.c()) {
            bVar.f2701c = true;
        }
        bVar.f2702d = d10.hasFocusable();
    }

    public void onAnchorReady(RecyclerView.w wVar, RecyclerView.b0 b0Var, a aVar, int i10) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void onDetachedFromWindow(RecyclerView recyclerView, RecyclerView.w wVar) {
        super.onDetachedFromWindow(recyclerView, wVar);
        if (this.mRecycleChildrenOnDetach) {
            removeAndRecycleAllViews(wVar);
            wVar.c();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public View onFocusSearchFailed(View view, int i10, RecyclerView.w wVar, RecyclerView.b0 b0Var) {
        int convertFocusDirectionToLayoutDirection;
        View findPartiallyOrCompletelyInvisibleChildClosestToEnd;
        View childClosestToEnd;
        resolveShouldLayoutReverse();
        if (getChildCount() == 0 || (convertFocusDirectionToLayoutDirection = convertFocusDirectionToLayoutDirection(i10)) == Integer.MIN_VALUE) {
            return null;
        }
        ensureLayoutState();
        updateLayoutState(convertFocusDirectionToLayoutDirection, (int) (this.mOrientationHelper.n() * MAX_SCROLL_FACTOR), false, b0Var);
        c cVar = this.mLayoutState;
        cVar.f2709g = Integer.MIN_VALUE;
        cVar.f2703a = false;
        fill(wVar, cVar, b0Var, true);
        if (convertFocusDirectionToLayoutDirection == -1) {
            findPartiallyOrCompletelyInvisibleChildClosestToEnd = findPartiallyOrCompletelyInvisibleChildClosestToStart();
        } else {
            findPartiallyOrCompletelyInvisibleChildClosestToEnd = findPartiallyOrCompletelyInvisibleChildClosestToEnd();
        }
        if (convertFocusDirectionToLayoutDirection == -1) {
            childClosestToEnd = getChildClosestToStart();
        } else {
            childClosestToEnd = getChildClosestToEnd();
        }
        if (!childClosestToEnd.hasFocusable()) {
            return findPartiallyOrCompletelyInvisibleChildClosestToEnd;
        }
        if (findPartiallyOrCompletelyInvisibleChildClosestToEnd == null) {
            return null;
        }
        return childClosestToEnd;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (getChildCount() > 0) {
            accessibilityEvent.setFromIndex(findFirstVisibleItemPosition());
            accessibilityEvent.setToIndex(findLastVisibleItemPosition());
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void onLayoutChildren(RecyclerView.w wVar, RecyclerView.b0 b0Var) {
        int i10;
        int i11;
        int i12;
        int i13;
        int fixLayoutEndGap;
        int i14;
        View findViewByPosition;
        int g10;
        int i15;
        int i16 = -1;
        if ((this.mPendingSavedState != null || this.mPendingScrollPosition != -1) && b0Var.b() == 0) {
            removeAndRecycleAllViews(wVar);
            return;
        }
        d dVar = this.mPendingSavedState;
        if (dVar != null && dVar.a()) {
            this.mPendingScrollPosition = this.mPendingSavedState.f2716f;
        }
        ensureLayoutState();
        this.mLayoutState.f2703a = false;
        resolveShouldLayoutReverse();
        View focusedChild = getFocusedChild();
        a aVar = this.mAnchorInfo;
        if (aVar.f2698e && this.mPendingScrollPosition == -1 && this.mPendingSavedState == null) {
            if (focusedChild != null && (this.mOrientationHelper.g(focusedChild) >= this.mOrientationHelper.i() || this.mOrientationHelper.d(focusedChild) <= this.mOrientationHelper.m())) {
                this.mAnchorInfo.c(focusedChild, getPosition(focusedChild));
            }
        } else {
            aVar.e();
            a aVar2 = this.mAnchorInfo;
            aVar2.f2697d = this.mShouldReverseLayout ^ this.mStackFromEnd;
            updateAnchorInfoForLayout(wVar, b0Var, aVar2);
            this.mAnchorInfo.f2698e = true;
        }
        c cVar = this.mLayoutState;
        cVar.f2708f = cVar.f2713k >= 0 ? 1 : -1;
        int[] iArr = this.mReusableIntPair;
        iArr[0] = 0;
        iArr[1] = 0;
        calculateExtraLayoutSpace(b0Var, iArr);
        int max = Math.max(0, this.mReusableIntPair[0]) + this.mOrientationHelper.m();
        int max2 = Math.max(0, this.mReusableIntPair[1]) + this.mOrientationHelper.j();
        if (b0Var.e() && (i14 = this.mPendingScrollPosition) != -1 && this.mPendingScrollPositionOffset != Integer.MIN_VALUE && (findViewByPosition = findViewByPosition(i14)) != null) {
            if (this.mShouldReverseLayout) {
                i15 = this.mOrientationHelper.i() - this.mOrientationHelper.d(findViewByPosition);
                g10 = this.mPendingScrollPositionOffset;
            } else {
                g10 = this.mOrientationHelper.g(findViewByPosition) - this.mOrientationHelper.m();
                i15 = this.mPendingScrollPositionOffset;
            }
            int i17 = i15 - g10;
            if (i17 > 0) {
                max += i17;
            } else {
                max2 -= i17;
            }
        }
        a aVar3 = this.mAnchorInfo;
        if (!aVar3.f2697d ? !this.mShouldReverseLayout : this.mShouldReverseLayout) {
            i16 = 1;
        }
        onAnchorReady(wVar, b0Var, aVar3, i16);
        detachAndScrapAttachedViews(wVar);
        this.mLayoutState.f2715m = resolveIsInfinite();
        this.mLayoutState.f2712j = b0Var.e();
        this.mLayoutState.f2711i = 0;
        a aVar4 = this.mAnchorInfo;
        if (aVar4.f2697d) {
            updateLayoutStateToFillStart(aVar4);
            c cVar2 = this.mLayoutState;
            cVar2.f2710h = max;
            fill(wVar, cVar2, b0Var, false);
            c cVar3 = this.mLayoutState;
            i11 = cVar3.f2704b;
            int i18 = cVar3.f2706d;
            int i19 = cVar3.f2705c;
            if (i19 > 0) {
                max2 += i19;
            }
            updateLayoutStateToFillEnd(this.mAnchorInfo);
            c cVar4 = this.mLayoutState;
            cVar4.f2710h = max2;
            cVar4.f2706d += cVar4.f2707e;
            fill(wVar, cVar4, b0Var, false);
            c cVar5 = this.mLayoutState;
            i10 = cVar5.f2704b;
            int i20 = cVar5.f2705c;
            if (i20 > 0) {
                updateLayoutStateToFillStart(i18, i11);
                c cVar6 = this.mLayoutState;
                cVar6.f2710h = i20;
                fill(wVar, cVar6, b0Var, false);
                i11 = this.mLayoutState.f2704b;
            }
        } else {
            updateLayoutStateToFillEnd(aVar4);
            c cVar7 = this.mLayoutState;
            cVar7.f2710h = max2;
            fill(wVar, cVar7, b0Var, false);
            c cVar8 = this.mLayoutState;
            i10 = cVar8.f2704b;
            int i21 = cVar8.f2706d;
            int i22 = cVar8.f2705c;
            if (i22 > 0) {
                max += i22;
            }
            updateLayoutStateToFillStart(this.mAnchorInfo);
            c cVar9 = this.mLayoutState;
            cVar9.f2710h = max;
            cVar9.f2706d += cVar9.f2707e;
            fill(wVar, cVar9, b0Var, false);
            c cVar10 = this.mLayoutState;
            i11 = cVar10.f2704b;
            int i23 = cVar10.f2705c;
            if (i23 > 0) {
                updateLayoutStateToFillEnd(i21, i10);
                c cVar11 = this.mLayoutState;
                cVar11.f2710h = i23;
                fill(wVar, cVar11, b0Var, false);
                i10 = this.mLayoutState.f2704b;
            }
        }
        if (getChildCount() > 0) {
            if (this.mShouldReverseLayout ^ this.mStackFromEnd) {
                int fixLayoutEndGap2 = fixLayoutEndGap(i10, wVar, b0Var, true);
                i12 = i11 + fixLayoutEndGap2;
                i13 = i10 + fixLayoutEndGap2;
                fixLayoutEndGap = fixLayoutStartGap(i12, wVar, b0Var, false);
            } else {
                int fixLayoutStartGap = fixLayoutStartGap(i11, wVar, b0Var, true);
                i12 = i11 + fixLayoutStartGap;
                i13 = i10 + fixLayoutStartGap;
                fixLayoutEndGap = fixLayoutEndGap(i13, wVar, b0Var, false);
            }
            i11 = i12 + fixLayoutEndGap;
            i10 = i13 + fixLayoutEndGap;
        }
        layoutForPredictiveAnimations(wVar, b0Var, i11, i10);
        if (!b0Var.e()) {
            this.mOrientationHelper.s();
        } else {
            this.mAnchorInfo.e();
        }
        this.mLastStackFromEnd = this.mStackFromEnd;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void onLayoutCompleted(RecyclerView.b0 b0Var) {
        super.onLayoutCompleted(b0Var);
        this.mPendingSavedState = null;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mAnchorInfo.e();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof d) {
            d dVar = (d) parcelable;
            this.mPendingSavedState = dVar;
            if (this.mPendingScrollPosition != -1) {
                dVar.c();
            }
            requestLayout();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public Parcelable onSaveInstanceState() {
        if (this.mPendingSavedState != null) {
            return new d(this.mPendingSavedState);
        }
        d dVar = new d();
        if (getChildCount() > 0) {
            ensureLayoutState();
            boolean z10 = this.mLastStackFromEnd ^ this.mShouldReverseLayout;
            dVar.f2718h = z10;
            if (z10) {
                View childClosestToEnd = getChildClosestToEnd();
                dVar.f2717g = this.mOrientationHelper.i() - this.mOrientationHelper.d(childClosestToEnd);
                dVar.f2716f = getPosition(childClosestToEnd);
            } else {
                View childClosestToStart = getChildClosestToStart();
                dVar.f2716f = getPosition(childClosestToStart);
                dVar.f2717g = this.mOrientationHelper.g(childClosestToStart) - this.mOrientationHelper.m();
            }
        } else {
            dVar.c();
        }
        return dVar;
    }

    public void prepareForDrop(View view, View view2, int i10, int i11) {
        assertNotInLayoutOrScroll("Cannot drop a view during a scroll or layout calculation");
        ensureLayoutState();
        resolveShouldLayoutReverse();
        int position = getPosition(view);
        int position2 = getPosition(view2);
        char c10 = position < position2 ? (char) 1 : (char) 65535;
        if (this.mShouldReverseLayout) {
            if (c10 == 1) {
                scrollToPositionWithOffset(position2, this.mOrientationHelper.i() - (this.mOrientationHelper.g(view2) + this.mOrientationHelper.e(view)));
                return;
            } else {
                scrollToPositionWithOffset(position2, this.mOrientationHelper.i() - this.mOrientationHelper.d(view2));
                return;
            }
        }
        if (c10 == 65535) {
            scrollToPositionWithOffset(position2, this.mOrientationHelper.g(view2));
        } else {
            scrollToPositionWithOffset(position2, this.mOrientationHelper.d(view2) - this.mOrientationHelper.e(view));
        }
    }

    public boolean resolveIsInfinite() {
        return this.mOrientationHelper.k() == 0 && this.mOrientationHelper.h() == 0;
    }

    public int scrollBy(int i10, RecyclerView.w wVar, RecyclerView.b0 b0Var) {
        if (getChildCount() == 0 || i10 == 0) {
            return 0;
        }
        ensureLayoutState();
        this.mLayoutState.f2703a = true;
        int i11 = i10 > 0 ? 1 : -1;
        int abs = Math.abs(i10);
        updateLayoutState(i11, abs, true, b0Var);
        c cVar = this.mLayoutState;
        int fill = cVar.f2709g + fill(wVar, cVar, b0Var, false);
        if (fill < 0) {
            return 0;
        }
        if (abs > fill) {
            i10 = i11 * fill;
        }
        this.mOrientationHelper.r(-i10);
        this.mLayoutState.f2713k = i10;
        return i10;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int scrollHorizontallyBy(int i10, RecyclerView.w wVar, RecyclerView.b0 b0Var) {
        if (this.mOrientation == 1) {
            return 0;
        }
        return scrollBy(i10, wVar, b0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void scrollToPosition(int i10) {
        this.mPendingScrollPosition = i10;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        d dVar = this.mPendingSavedState;
        if (dVar != null) {
            dVar.c();
        }
        requestLayout();
    }

    public void scrollToPositionWithOffset(int i10, int i11) {
        this.mPendingScrollPosition = i10;
        this.mPendingScrollPositionOffset = i11;
        d dVar = this.mPendingSavedState;
        if (dVar != null) {
            dVar.c();
        }
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int scrollVerticallyBy(int i10, RecyclerView.w wVar, RecyclerView.b0 b0Var) {
        if (this.mOrientation == 0) {
            return 0;
        }
        return scrollBy(i10, wVar, b0Var);
    }

    public void setInitialPrefetchItemCount(int i10) {
        this.mInitialPrefetchItemCount = i10;
    }

    public void setOrientation(int i10) {
        if (i10 != 0 && i10 != 1) {
            throw new IllegalArgumentException("invalid orientation:" + i10);
        }
        assertNotInLayoutOrScroll(null);
        if (i10 != this.mOrientation || this.mOrientationHelper == null) {
            s b10 = s.b(this, i10);
            this.mOrientationHelper = b10;
            this.mAnchorInfo.f2694a = b10;
            this.mOrientation = i10;
            requestLayout();
        }
    }

    public void setRecycleChildrenOnDetach(boolean z10) {
        this.mRecycleChildrenOnDetach = z10;
    }

    public void setReverseLayout(boolean z10) {
        assertNotInLayoutOrScroll(null);
        if (z10 == this.mReverseLayout) {
            return;
        }
        this.mReverseLayout = z10;
        requestLayout();
    }

    public void setSmoothScrollbarEnabled(boolean z10) {
        this.mSmoothScrollbarEnabled = z10;
    }

    public void setStackFromEnd(boolean z10) {
        assertNotInLayoutOrScroll(null);
        if (this.mStackFromEnd == z10) {
            return;
        }
        this.mStackFromEnd = z10;
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public boolean shouldMeasureTwice() {
        return (getHeightMode() == 1073741824 || getWidthMode() == 1073741824 || !hasFlexibleChildInBothOrientations()) ? false : true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.b0 b0Var, int i10) {
        n nVar = new n(recyclerView.getContext());
        nVar.setTargetPosition(i10);
        startSmoothScroll(nVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public boolean supportsPredictiveItemAnimations() {
        return this.mPendingSavedState == null && this.mLastStackFromEnd == this.mStackFromEnd;
    }

    public void validateChildOrder() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("validating child count ");
        sb2.append(getChildCount());
        if (getChildCount() < 1) {
            return;
        }
        int position = getPosition(getChildAt(0));
        int g10 = this.mOrientationHelper.g(getChildAt(0));
        if (this.mShouldReverseLayout) {
            for (int i10 = 1; i10 < getChildCount(); i10++) {
                View childAt = getChildAt(i10);
                int position2 = getPosition(childAt);
                int g11 = this.mOrientationHelper.g(childAt);
                if (position2 < position) {
                    logChildren();
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("detected invalid position. loc invalid? ");
                    sb3.append(g11 < g10);
                    throw new RuntimeException(sb3.toString());
                }
                if (g11 > g10) {
                    logChildren();
                    throw new RuntimeException("detected invalid location");
                }
            }
            return;
        }
        for (int i11 = 1; i11 < getChildCount(); i11++) {
            View childAt2 = getChildAt(i11);
            int position3 = getPosition(childAt2);
            int g12 = this.mOrientationHelper.g(childAt2);
            if (position3 < position) {
                logChildren();
                StringBuilder sb4 = new StringBuilder();
                sb4.append("detected invalid position. loc invalid? ");
                sb4.append(g12 < g10);
                throw new RuntimeException(sb4.toString());
            }
            if (g12 < g10) {
                logChildren();
                throw new RuntimeException("detected invalid location");
            }
        }
    }

    public LinearLayoutManager(Context context, int i10, boolean z10) {
        this.mOrientation = 1;
        this.mReverseLayout = false;
        this.mShouldReverseLayout = false;
        this.mStackFromEnd = false;
        this.mSmoothScrollbarEnabled = true;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mPendingSavedState = null;
        this.mAnchorInfo = new a();
        this.mLayoutChunkResult = new b();
        this.mInitialPrefetchItemCount = 2;
        this.mReusableIntPair = new int[2];
        setOrientation(i10);
        setReverseLayout(z10);
    }

    private void updateLayoutStateToFillEnd(int i10, int i11) {
        this.mLayoutState.f2705c = this.mOrientationHelper.i() - i11;
        c cVar = this.mLayoutState;
        cVar.f2707e = this.mShouldReverseLayout ? -1 : 1;
        cVar.f2706d = i10;
        cVar.f2708f = 1;
        cVar.f2704b = i11;
        cVar.f2709g = Integer.MIN_VALUE;
    }

    private void updateLayoutStateToFillStart(int i10, int i11) {
        this.mLayoutState.f2705c = i11 - this.mOrientationHelper.m();
        c cVar = this.mLayoutState;
        cVar.f2706d = i10;
        cVar.f2707e = this.mShouldReverseLayout ? 1 : -1;
        cVar.f2708f = -1;
        cVar.f2704b = i11;
        cVar.f2709g = Integer.MIN_VALUE;
    }

    public LinearLayoutManager(Context context, AttributeSet attributeSet, int i10, int i11) {
        this.mOrientation = 1;
        this.mReverseLayout = false;
        this.mShouldReverseLayout = false;
        this.mStackFromEnd = false;
        this.mSmoothScrollbarEnabled = true;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mPendingSavedState = null;
        this.mAnchorInfo = new a();
        this.mLayoutChunkResult = new b();
        this.mInitialPrefetchItemCount = 2;
        this.mReusableIntPair = new int[2];
        RecyclerView.p.d properties = RecyclerView.p.getProperties(context, attributeSet, i10, i11);
        setOrientation(properties.f2773a);
        setReverseLayout(properties.f2775c);
        setStackFromEnd(properties.f2776d);
    }
}
