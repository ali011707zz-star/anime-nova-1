package androidx.recyclerview.widget;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.Scroller;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.common.api.Api;

/* compiled from: SnapHelper.java */
/* loaded from: classes.dex */
public abstract class x extends RecyclerView.s {
    public static final float MILLISECONDS_PER_INCH = 100.0f;
    private Scroller mGravityScroller;
    public RecyclerView mRecyclerView;
    private final RecyclerView.u mScrollListener = new a();

    /* compiled from: SnapHelper.java */
    /* loaded from: classes.dex */
    public class a extends RecyclerView.u {

        /* renamed from: a, reason: collision with root package name */
        public boolean f3086a = false;

        public a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.u
        public void onScrollStateChanged(RecyclerView recyclerView, int i10) {
            super.onScrollStateChanged(recyclerView, i10);
            if (i10 == 0 && this.f3086a) {
                this.f3086a = false;
                x.this.snapToTargetExistingView();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.u
        public void onScrolled(RecyclerView recyclerView, int i10, int i11) {
            if (i10 == 0 && i11 == 0) {
                return;
            }
            this.f3086a = true;
        }
    }

    /* compiled from: SnapHelper.java */
    /* loaded from: classes.dex */
    public class b extends n {
        public b(Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.n
        public float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
            return 100.0f / displayMetrics.densityDpi;
        }

        @Override // androidx.recyclerview.widget.n, androidx.recyclerview.widget.RecyclerView.a0
        public void onTargetFound(View view, RecyclerView.b0 b0Var, RecyclerView.a0.a aVar) {
            x xVar = x.this;
            RecyclerView recyclerView = xVar.mRecyclerView;
            if (recyclerView == null) {
                return;
            }
            int[] calculateDistanceToFinalSnap = xVar.calculateDistanceToFinalSnap(recyclerView.getLayoutManager(), view);
            int i10 = calculateDistanceToFinalSnap[0];
            int i11 = calculateDistanceToFinalSnap[1];
            int calculateTimeForDeceleration = calculateTimeForDeceleration(Math.max(Math.abs(i10), Math.abs(i11)));
            if (calculateTimeForDeceleration > 0) {
                aVar.d(i10, i11, calculateTimeForDeceleration, this.mDecelerateInterpolator);
            }
        }
    }

    private void destroyCallbacks() {
        this.mRecyclerView.removeOnScrollListener(this.mScrollListener);
        this.mRecyclerView.setOnFlingListener(null);
    }

    private void setupCallbacks() throws IllegalStateException {
        if (this.mRecyclerView.getOnFlingListener() == null) {
            this.mRecyclerView.addOnScrollListener(this.mScrollListener);
            this.mRecyclerView.setOnFlingListener(this);
            return;
        }
        throw new IllegalStateException("An instance of OnFlingListener already set.");
    }

    private boolean snapFromFling(RecyclerView.p pVar, int i10, int i11) {
        RecyclerView.a0 createScroller;
        int findTargetSnapPosition;
        if (!(pVar instanceof RecyclerView.a0.b) || (createScroller = createScroller(pVar)) == null || (findTargetSnapPosition = findTargetSnapPosition(pVar, i10, i11)) == -1) {
            return false;
        }
        createScroller.setTargetPosition(findTargetSnapPosition);
        pVar.startSmoothScroll(createScroller);
        return true;
    }

    public void attachToRecyclerView(RecyclerView recyclerView) throws IllegalStateException {
        RecyclerView recyclerView2 = this.mRecyclerView;
        if (recyclerView2 == recyclerView) {
            return;
        }
        if (recyclerView2 != null) {
            destroyCallbacks();
        }
        this.mRecyclerView = recyclerView;
        if (recyclerView != null) {
            setupCallbacks();
            this.mGravityScroller = new Scroller(this.mRecyclerView.getContext(), new DecelerateInterpolator());
            snapToTargetExistingView();
        }
    }

    public abstract int[] calculateDistanceToFinalSnap(RecyclerView.p pVar, View view);

    public int[] calculateScrollDistance(int i10, int i11) {
        this.mGravityScroller.fling(0, 0, i10, i11, Integer.MIN_VALUE, Api.BaseClientBuilder.API_PRIORITY_OTHER, Integer.MIN_VALUE, Api.BaseClientBuilder.API_PRIORITY_OTHER);
        return new int[]{this.mGravityScroller.getFinalX(), this.mGravityScroller.getFinalY()};
    }

    public RecyclerView.a0 createScroller(RecyclerView.p pVar) {
        return createSnapScroller(pVar);
    }

    @Deprecated
    public n createSnapScroller(RecyclerView.p pVar) {
        if (pVar instanceof RecyclerView.a0.b) {
            return new b(this.mRecyclerView.getContext());
        }
        return null;
    }

    public abstract View findSnapView(RecyclerView.p pVar);

    public abstract int findTargetSnapPosition(RecyclerView.p pVar, int i10, int i11);

    @Override // androidx.recyclerview.widget.RecyclerView.s
    public boolean onFling(int i10, int i11) {
        RecyclerView.p layoutManager = this.mRecyclerView.getLayoutManager();
        if (layoutManager == null || this.mRecyclerView.getAdapter() == null) {
            return false;
        }
        int minFlingVelocity = this.mRecyclerView.getMinFlingVelocity();
        return (Math.abs(i11) > minFlingVelocity || Math.abs(i10) > minFlingVelocity) && snapFromFling(layoutManager, i10, i11);
    }

    public void snapToTargetExistingView() {
        RecyclerView.p layoutManager;
        View findSnapView;
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView == null || (layoutManager = recyclerView.getLayoutManager()) == null || (findSnapView = findSnapView(layoutManager)) == null) {
            return;
        }
        int[] calculateDistanceToFinalSnap = calculateDistanceToFinalSnap(layoutManager, findSnapView);
        if (calculateDistanceToFinalSnap[0] == 0 && calculateDistanceToFinalSnap[1] == 0) {
            return;
        }
        this.mRecyclerView.smoothScrollBy(calculateDistanceToFinalSnap[0], calculateDistanceToFinalSnap[1]);
    }
}
