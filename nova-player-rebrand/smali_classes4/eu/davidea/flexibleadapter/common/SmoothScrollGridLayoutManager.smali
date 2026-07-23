.class public Leu/davidea/flexibleadapter/common/SmoothScrollGridLayoutManager;
.super Landroidx/recyclerview/widget/GridLayoutManager;
.source "SmoothScrollGridLayoutManager.java"

# interfaces
.implements Leu/davidea/flexibleadapter/common/IFlexibleLayoutManager;


# instance fields
.field private mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;


# virtual methods
.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 0

    .line 43
    iget-object p1, p0, Leu/davidea/flexibleadapter/common/SmoothScrollGridLayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 44
    iget-object p1, p0, Leu/davidea/flexibleadapter/common/SmoothScrollGridLayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method
