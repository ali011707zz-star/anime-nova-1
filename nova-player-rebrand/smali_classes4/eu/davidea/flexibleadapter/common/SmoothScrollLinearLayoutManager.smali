.class public Leu/davidea/flexibleadapter/common/SmoothScrollLinearLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SmoothScrollLinearLayoutManager.java"

# interfaces
.implements Leu/davidea/flexibleadapter/common/IFlexibleLayoutManager;


# instance fields
.field private mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;


# virtual methods
.method public getSpanCount()I
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 0

    .line 43
    iget-object p1, p0, Leu/davidea/flexibleadapter/common/SmoothScrollLinearLayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 44
    iget-object p1, p0, Leu/davidea/flexibleadapter/common/SmoothScrollLinearLayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method
