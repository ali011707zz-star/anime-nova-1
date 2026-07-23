.class public Leu/davidea/flexibleadapter/common/SmoothScrollStaggeredLayoutManager;
.super Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
.source "SmoothScrollStaggeredLayoutManager.java"

# interfaces
.implements Leu/davidea/flexibleadapter/common/IFlexibleLayoutManager;


# instance fields
.field private mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;


# virtual methods
.method public findFirstCompletelyVisibleItemPosition()I
    .locals 4

    const/4 v0, 0x0

    .line 49
    invoke-super {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstCompletelyVisibleItemPositions([I)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    const/4 v2, 0x1

    .line 50
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 51
    invoke-super {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstCompletelyVisibleItemPositions([I)[I

    move-result-object v3

    aget v3, v3, v2

    if-ge v3, v1, :cond_0

    move v1, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public findFirstVisibleItemPosition()I
    .locals 4

    const/4 v0, 0x0

    .line 59
    invoke-super {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositions([I)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    const/4 v2, 0x1

    .line 60
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 61
    invoke-super {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositions([I)[I

    move-result-object v3

    aget v3, v3, v2

    if-ge v3, v1, :cond_0

    move v1, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public findLastCompletelyVisibleItemPosition()I
    .locals 4

    const/4 v0, 0x0

    .line 69
    invoke-super {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastCompletelyVisibleItemPositions([I)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    const/4 v2, 0x1

    .line 70
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 71
    invoke-super {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastCompletelyVisibleItemPositions([I)[I

    move-result-object v3

    aget v3, v3, v2

    if-le v3, v1, :cond_0

    move v1, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public findLastVisibleItemPosition()I
    .locals 4

    const/4 v0, 0x0

    .line 79
    invoke-super {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    const/4 v2, 0x1

    .line 80
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 81
    invoke-super {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    move-result-object v3

    aget v3, v3, v2

    if-le v3, v1, :cond_0

    move v1, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 0

    .line 43
    iget-object p1, p0, Leu/davidea/flexibleadapter/common/SmoothScrollStaggeredLayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 44
    iget-object p1, p0, Leu/davidea/flexibleadapter/common/SmoothScrollStaggeredLayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method
