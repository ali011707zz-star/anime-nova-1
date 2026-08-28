package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.common.api.Api;
import com.google.android.material.internal.StaticLayoutBuilderCompat;

/* compiled from: PagerSnapHelper.java */
/* loaded from: classes.dex */
public class t extends x {
    private static final int MAX_SCROLL_ON_FLING_DURATION = 100;
    private s mHorizontalHelper;
    private s mVerticalHelper;

    /* compiled from: PagerSnapHelper.java */
    /* loaded from: classes.dex */
    public class a extends n {
        public a(Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.n
        public float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
            return 100.0f / displayMetrics.densityDpi;
        }

        @Override // androidx.recyclerview.widget.n
        public int calculateTimeForScrolling(int i10) {
            return Math.min(100, super.calculateTimeForScrolling(i10));
        }

        @Override // androidx.recyclerview.widget.n, androidx.recyclerview.widget.RecyclerView.a0
        public void onTargetFound(View view, RecyclerView.b0 b0Var, RecyclerView.a0.a aVar) {
            t tVar = t.this;
            int[] calculateDistanceToFinalSnap = tVar.calculateDistanceToFinalSnap(tVar.mRecyclerView.getLayoutManager(), view);
            int i10 = calculateDistanceToFinalSnap[0];
            int i11 = calculateDistanceToFinalSnap[1];
            int calculateTimeForDeceleration = calculateTimeForDeceleration(Math.max(Math.abs(i10), Math.abs(i11)));
            if (calculateTimeForDeceleration > 0) {
                aVar.d(i10, i11, calculateTimeForDeceleration, this.mDecelerateInterpolator);
            }
        }
    }

    private int distanceToCenter(View view, s sVar) {
        return (sVar.g(view) + (sVar.e(view) / 2)) - (sVar.m() + (sVar.n() / 2));
    }

    private View findCenterView(RecyclerView.p pVar, s sVar) {
        int childCount = pVar.getChildCount();
        View view = null;
        if (childCount == 0) {
            return null;
        }
        int m10 = sVar.m() + (sVar.n() / 2);
        int i10 = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = pVar.getChildAt(i11);
            int abs = Math.abs((sVar.g(childAt) + (sVar.e(childAt) / 2)) - m10);
            if (abs < i10) {
                view = childAt;
                i10 = abs;
            }
        }
        return view;
    }

    private s getHorizontalHelper(RecyclerView.p pVar) {
        s sVar = this.mHorizontalHelper;
        if (sVar == null || sVar.f3079a != pVar) {
            this.mHorizontalHelper = s.a(pVar);
        }
        return this.mHorizontalHelper;
    }

    private s getOrientationHelper(RecyclerView.p pVar) {
        if (pVar.canScrollVertically()) {
            return getVerticalHelper(pVar);
        }
        if (pVar.canScrollHorizontally()) {
            return getHorizontalHelper(pVar);
        }
        return null;
    }

    private s getVerticalHelper(RecyclerView.p pVar) {
        s sVar = this.mVerticalHelper;
        if (sVar == null || sVar.f3079a != pVar) {
            this.mVerticalHelper = s.c(pVar);
        }
        return this.mVerticalHelper;
    }

    private boolean isForwardFling(RecyclerView.p pVar, int i10, int i11) {
        return pVar.canScrollHorizontally() ? i10 > 0 : i11 > 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private boolean isReverseLayout(RecyclerView.p pVar) {
        PointF computeScrollVectorForPosition;
        int itemCount = pVar.getItemCount();
        if (!(pVar instanceof RecyclerView.a0.b) || (computeScrollVectorForPosition = ((RecyclerView.a0.b) pVar).computeScrollVectorForPosition(itemCount - 1)) == null) {
            return false;
        }
        return computeScrollVectorForPosition.x < StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD || computeScrollVectorForPosition.y < StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
    }

    @Override // androidx.recyclerview.widget.x
    public int[] calculateDistanceToFinalSnap(RecyclerView.p pVar, View view) {
        int[] iArr = new int[2];
        if (pVar.canScrollHorizontally()) {
            iArr[0] = distanceToCenter(view, getHorizontalHelper(pVar));
        } else {
            iArr[0] = 0;
        }
        if (pVar.canScrollVertically()) {
            iArr[1] = distanceToCenter(view, getVerticalHelper(pVar));
        } else {
            iArr[1] = 0;
        }
        return iArr;
    }

    @Override // androidx.recyclerview.widget.x
    public RecyclerView.a0 createScroller(RecyclerView.p pVar) {
        if (pVar instanceof RecyclerView.a0.b) {
            return new a(this.mRecyclerView.getContext());
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.x
    public View findSnapView(RecyclerView.p pVar) {
        if (pVar.canScrollVertically()) {
            return findCenterView(pVar, getVerticalHelper(pVar));
        }
        if (pVar.canScrollHorizontally()) {
            return findCenterView(pVar, getHorizontalHelper(pVar));
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.x
    public int findTargetSnapPosition(RecyclerView.p pVar, int i10, int i11) {
        s orientationHelper;
        int itemCount = pVar.getItemCount();
        if (itemCount == 0 || (orientationHelper = getOrientationHelper(pVar)) == null) {
            return -1;
        }
        int i12 = Integer.MIN_VALUE;
        int i13 = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        int childCount = pVar.getChildCount();
        View view = null;
        View view2 = null;
        for (int i14 = 0; i14 < childCount; i14++) {
            View childAt = pVar.getChildAt(i14);
            if (childAt != null) {
                int distanceToCenter = distanceToCenter(childAt, orientationHelper);
                if (distanceToCenter <= 0 && distanceToCenter > i12) {
                    view2 = childAt;
                    i12 = distanceToCenter;
                }
                if (distanceToCenter >= 0 && distanceToCenter < i13) {
                    view = childAt;
                    i13 = distanceToCenter;
                }
            }
        }
        boolean isForwardFling = isForwardFling(pVar, i10, i11);
        if (isForwardFling && view != null) {
            return pVar.getPosition(view);
        }
        if (!isForwardFling && view2 != null) {
            return pVar.getPosition(view2);
        }
        if (isForwardFling) {
            view = view2;
        }
        if (view == null) {
            return -1;
        }
        int position = pVar.getPosition(view) + (isReverseLayout(pVar) == isForwardFling ? -1 : 1);
        if (position < 0 || position >= itemCount) {
            return -1;
        }
        return position;
    }
}
