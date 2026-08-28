package io.wax911.support.custom.recycler;

import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import io.wax911.support.base.event.RecyclerLoadListener;
import jc.l;

/* compiled from: SupportScrollListener.kt */
/* loaded from: classes.dex */
public abstract class SupportScrollListener extends RecyclerView.u {
    private int currentOffset;
    private boolean isPagingLimit;
    private GridLayoutManager mGridLayoutManager;
    private RecyclerLoadListener mLoadListener;
    private int mPreviousTotal;
    private StaggeredGridLayoutManager mStaggeredGridLayoutManager;
    private boolean isPager = true;
    private boolean mLoading = true;
    private final int mVisibleThreshold = 3;
    private int currentPage = 1;

    public final int getCurrentOffset() {
        return this.currentOffset;
    }

    public final int getCurrentPage() {
        return this.currentPage;
    }

    public final void initListener(GridLayoutManager gridLayoutManager, RecyclerLoadListener recyclerLoadListener) {
        l.f(gridLayoutManager, "gridLayoutManager");
        l.f(recyclerLoadListener, "mLoadListener");
        this.mGridLayoutManager = gridLayoutManager;
        this.mLoadListener = recyclerLoadListener;
    }

    public final boolean isFirstPage() {
        return this.currentPage == 1 && this.isPager;
    }

    public final boolean isPager() {
        return this.isPager;
    }

    public final boolean isPagingLimit() {
        return this.isPagingLimit;
    }

    public final void onRefreshPage() {
        this.mLoading = true;
        this.mPreviousTotal = 0;
        this.currentPage = 1;
        this.currentOffset = 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.u
    public void onScrolled(RecyclerView recyclerView, int i10, int i11) {
        int itemCount;
        int findFirstVisibleItemPosition;
        l.f(recyclerView, "recyclerView");
        super.onScrolled(recyclerView, i10, i11);
        int childCount = recyclerView.getChildCount();
        GridLayoutManager gridLayoutManager = this.mGridLayoutManager;
        if (gridLayoutManager == null) {
            findFirstVisibleItemPosition = 0;
            itemCount = 0;
        } else {
            itemCount = gridLayoutManager.getItemCount();
            findFirstVisibleItemPosition = gridLayoutManager.findFirstVisibleItemPosition();
        }
        StaggeredGridLayoutManager staggeredGridLayoutManager = this.mStaggeredGridLayoutManager;
        if (staggeredGridLayoutManager != null) {
            itemCount = staggeredGridLayoutManager.getItemCount();
            int[] G = staggeredGridLayoutManager.G(null);
            if (G != null) {
                if (!(G.length == 0)) {
                    findFirstVisibleItemPosition = G[0];
                }
            }
        }
        boolean z10 = this.mLoading;
        if (z10) {
            if (itemCount > this.mPreviousTotal) {
                this.mLoading = false;
                this.mPreviousTotal = itemCount;
                return;
            }
            return;
        }
        if (z10) {
            return;
        }
        if (itemCount - childCount <= findFirstVisibleItemPosition + this.mVisibleThreshold) {
            this.currentPage++;
            this.currentOffset += paginationSize();
            RecyclerLoadListener recyclerLoadListener = this.mLoadListener;
            l.c(recyclerLoadListener);
            recyclerLoadListener.onLoadMore();
            this.mLoading = true;
        }
    }

    public abstract int paginationSize();

    public final void setCurrentOffset(int i10) {
        this.currentOffset = i10;
    }

    public final void setCurrentPage(int i10) {
        this.currentPage = i10;
    }

    public final void setPager(boolean z10) {
        this.isPager = z10;
    }

    public final void setPagingLimit(boolean z10) {
        this.isPagingLimit = z10;
    }

    public final void initListener(StaggeredGridLayoutManager staggeredGridLayoutManager, RecyclerLoadListener recyclerLoadListener) {
        l.f(staggeredGridLayoutManager, "staggeredGridLayoutManager");
        l.f(recyclerLoadListener, "mLoadListener");
        this.mStaggeredGridLayoutManager = staggeredGridLayoutManager;
        this.mLoadListener = recyclerLoadListener;
    }
}
