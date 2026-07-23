.class public abstract Leu/davidea/flexibleadapter/SelectableAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SelectableAdapter.java"

# interfaces
.implements Leu/davidea/fastscroller/FastScroller$BubbleTextCreator;
.implements Leu/davidea/fastscroller/FastScroller$OnScrollStateChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "SelectableAdapter"


# instance fields
.field protected isFastScroll:Z

.field log:Leu/davidea/flexibleadapter/utils/Logger;

.field private final mBoundViewHolders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Leu/davidea/viewholders/FlexibleViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field protected mFastScrollerDelegate:Leu/davidea/fastscroller/FastScroller$Delegate;

.field private mFlexibleLayoutManager:Leu/davidea/flexibleadapter/common/IFlexibleLayoutManager;

.field protected mLastItemInActionMode:Z

.field private mMode:I

.field protected mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field protected mSelectAll:Z

.field private final mSelectedPositions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 117
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->isFastScroll:Z

    .line 102
    iput-boolean v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->mSelectAll:Z

    .line 108
    iput-boolean v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->mLastItemInActionMode:Z

    .line 118
    sget-object v1, Leu/davidea/flexibleadapter/utils/Log;->customTag:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 119
    const-string v1, "FlexibleAdapter"

    invoke-static {v1}, Leu/davidea/flexibleadapter/utils/Log;->useTag(Ljava/lang/String;)V

    .line 121
    :cond_0
    new-instance v1, Leu/davidea/flexibleadapter/utils/Logger;

    sget-object v2, Leu/davidea/flexibleadapter/utils/Log;->customTag:Ljava/lang/String;

    invoke-direct {v1, v2}, Leu/davidea/flexibleadapter/utils/Logger;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const/4 v2, 0x1

    .line 122
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "5.1.0"

    aput-object v3, v2, v0

    const-string v3, "Running version %s"

    invoke-virtual {v1, v3, v2}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    invoke-static {v1}, Lj$/util/DesugarCollections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->mSelectedPositions:Ljava/util/Set;

    .line 124
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->mBoundViewHolders:Ljava/util/Set;

    .line 125
    iput v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->mMode:I

    .line 127
    new-instance v0, Leu/davidea/fastscroller/FastScroller$Delegate;

    invoke-direct {v0}, Leu/davidea/fastscroller/FastScroller$Delegate;-><init>()V

    iput-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->mFastScrollerDelegate:Leu/davidea/fastscroller/FastScroller$Delegate;

    return-void
.end method

.method public static enableLogs(I)V
    .locals 0

    .line 142
    invoke-static {p0}, Leu/davidea/flexibleadapter/utils/Log;->setLevel(I)V

    return-void
.end method

.method private notifySelectionChanged(II)V
    .locals 2

    if-lez p2, :cond_1

    .line 468
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->mBoundViewHolders:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leu/davidea/viewholders/FlexibleViewHolder;

    .line 469
    invoke-virtual {v1}, Leu/davidea/viewholders/FlexibleViewHolder;->toggleActivation()V

    goto :goto_0

    .line 472
    :cond_0
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->mBoundViewHolders:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 473
    sget-object v0, Leu/davidea/flexibleadapter/Payload;->SELECTION:Leu/davidea/flexibleadapter/Payload;

    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private resetActionModeFlags()V
    .locals 4

    .line 285
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->mSelectAll:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->mLastItemInActionMode:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 286
    :cond_1
    :goto_0
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Leu/davidea/flexibleadapter/SelectableAdapter$1;

    invoke-direct {v1, p0}, Leu/davidea/flexibleadapter/SelectableAdapter$1;-><init>(Leu/davidea/flexibleadapter/SelectableAdapter;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static useTag(Ljava/lang/String;)V
    .locals 0

    .line 146
    invoke-static {p0}, Leu/davidea/flexibleadapter/utils/Log;->useTag(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method final addAdjustedSelection(I)Z
    .locals 1

    .line 371
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->mSelectedPositions:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final addSelection(I)Z
    .locals 1

    .line 360
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/SelectableAdapter;->isSelectable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->mSelectedPositions:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public clearSelection()V
    .locals 7

    .line 442
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->mSelectedPositions:Ljava/util/Set;

    monitor-enter v0

    .line 443
    :try_start_0
    iget-object v1, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v2, "clearSelection %s"

    iget-object v3, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->mSelectedPositions:Ljava/util/Set;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-virtual {v1, v2, v5}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 444
    iget-object v1, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->mSelectedPositions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v6

    .line 447
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 448
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 449
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    add-int v5, v6, v2

    if-ne v5, v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 455
    :cond_0
    invoke-direct {p0, v6, v2}, Leu/davidea/flexibleadapter/SelectableAdapter;->notifySelectionChanged(II)V

    move v6, v3

    move v2, v4

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 461
    :cond_1
    invoke-direct {p0, v6, v2}, Leu/davidea/flexibleadapter/SelectableAdapter;->notifySelectionChanged(II)V

    .line 462
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method discardBoundViewHolders()V
    .locals 1

    .line 513
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->mBoundViewHolders:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public getAllBoundViewHolders()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Leu/davidea/viewholders/FlexibleViewHolder;",
            ">;"
        }
    .end annotation

    .line 523
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->mBoundViewHolders:Ljava/util/Set;

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getFastScroller()Leu/davidea/fastscroller/FastScroller;
    .locals 1

    .line 620
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->mFastScrollerDelegate:Leu/davidea/fastscroller/FastScroller$Delegate;

    invoke-virtual {v0}, Leu/davidea/fastscroller/FastScroller$Delegate;->getFastScroller()Leu/davidea/fastscroller/FastScroller;

    move-result-object v0

    return-object v0
.end method

.method public getFlexibleLayoutManager()Leu/davidea/flexibleadapter/common/IFlexibleLayoutManager;
    .locals 2

    .line 201
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->mFlexibleLayoutManager:Leu/davidea/flexibleadapter/common/IFlexibleLayoutManager;

    if-nez v0, :cond_1

    .line 202
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 203
    instance-of v1, v0, Leu/davidea/flexibleadapter/common/IFlexibleLayoutManager;

    if-eqz v1, :cond_0

    .line 204
    check-cast v0, Leu/davidea/flexibleadapter/common/IFlexibleLayoutManager;

    iput-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->mFlexibleLayoutManager:Leu/davidea/flexibleadapter/common/IFlexibleLayoutManager;

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 206
    new-instance v0, Leu/davidea/flexibleadapter/common/FlexibleLayoutManager;

    iget-object v1, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {v0, v1}, Leu/davidea/flexibleadapter/common/FlexibleLayoutManager;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->mFlexibleLayoutManager:Leu/davidea/flexibleadapter/common/IFlexibleLayoutManager;

    .line 209
    :cond_1
    :goto_0
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->mFlexibleLayoutManager:Leu/davidea/flexibleadapter/common/IFlexibleLayoutManager;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .line 233
    iget v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->mMode:I

    return v0
.end method

.method public getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 189
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public getSelectedItemCount()I
    .locals 1

    .line 533
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->mSelectedPositions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public getSelectedPositions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 544
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->mSelectedPositions:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSelectedPositionsAsSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 554
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->mSelectedPositions:Ljava/util/Set;

    return-object v0
.end method

.method public isFastScrollerEnabled()Z
    .locals 1

    .line 611
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->mFastScrollerDelegate:Leu/davidea/fastscroller/FastScroller$Delegate;

    invoke-virtual {v0}, Leu/davidea/fastscroller/FastScroller$Delegate;->isFastScrollerEnabled()Z

    move-result v0

    return v0
.end method

.method public isLastItemInActionMode()Z
    .locals 1

    .line 275
    invoke-direct {p0}, Leu/davidea/flexibleadapter/SelectableAdapter;->resetActionModeFlags()V

    .line 276
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->mLastItemInActionMode:Z

    return v0
.end method

.method public isSelectAll()Z
    .locals 1

    .line 264
    invoke-direct {p0}, Leu/davidea/flexibleadapter/SelectableAdapter;->resetActionModeFlags()V

    .line 265
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->mSelectAll:Z

    return v0
.end method

.method public abstract isSelectable(I)Z
.end method

.method public isSelected(I)Z
    .locals 1

    .line 304
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->mSelectedPositions:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 161
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 162
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->mFastScrollerDelegate:Leu/davidea/fastscroller/FastScroller$Delegate;

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0, p1}, Leu/davidea/fastscroller/FastScroller$Delegate;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 165
    :cond_0
    iput-object p1, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 5

    .line 481
    instance-of p3, p1, Leu/davidea/viewholders/FlexibleViewHolder;

    if-eqz p3, :cond_3

    .line 482
    move-object p3, p1

    check-cast p3, Leu/davidea/viewholders/FlexibleViewHolder;

    .line 483
    invoke-virtual {p3}, Leu/davidea/viewholders/FlexibleViewHolder;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p2}, Leu/davidea/flexibleadapter/SelectableAdapter;->isSelected(I)Z

    move-result p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setActivated(Z)V

    .line 484
    invoke-virtual {p3}, Leu/davidea/viewholders/FlexibleViewHolder;->getContentView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->isActivated()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p3}, Leu/davidea/viewholders/FlexibleViewHolder;->getActivationElevation()F

    move-result p2

    cmpl-float p2, p2, v0

    if-lez p2, :cond_0

    .line 485
    invoke-virtual {p3}, Leu/davidea/viewholders/FlexibleViewHolder;->getContentView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p3}, Leu/davidea/viewholders/FlexibleViewHolder;->getActivationElevation()F

    move-result v0

    invoke-static {p2, v0}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    goto :goto_0

    .line 486
    :cond_0
    invoke-virtual {p3}, Leu/davidea/viewholders/FlexibleViewHolder;->getActivationElevation()F

    move-result p2

    cmpl-float p2, p2, v0

    if-lez p2, :cond_1

    .line 487
    invoke-virtual {p3}, Leu/davidea/viewholders/FlexibleViewHolder;->getContentView()Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 489
    :cond_1
    :goto_0
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRecyclable()Z

    move-result p2

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eqz p2, :cond_2

    .line 490
    iget-object p2, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->mBoundViewHolders:Ljava/util/Set;

    invoke-interface {p2, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 491
    iget-object p2, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    iget-object p3, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->mBoundViewHolders:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1}, Leu/davidea/flexibleadapter/utils/LayoutUtils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p3, v3, v2

    aput-object v4, v3, v1

    aput-object p1, v3, v0

    const-string p1, "onViewBound    viewSize=%s %s %s"

    invoke-virtual {p2, p1, v3}, Leu/davidea/flexibleadapter/utils/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 493
    :cond_2
    iget-object p2, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRecyclable()Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-static {p1}, Leu/davidea/flexibleadapter/utils/LayoutUtils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p3, v3, v2

    aput-object v4, v3, v1

    aput-object p1, v3, v0

    const-string p1, "onViewBound    recyclable=%s %s %s"

    invoke-virtual {p2, p1, v3}, Leu/davidea/flexibleadapter/utils/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 497
    :cond_3
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p2}, Leu/davidea/flexibleadapter/SelectableAdapter;->isSelected(I)Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setActivated(Z)V

    return-void
.end method

.method public onCreateBubbleText(I)Ljava/lang/String;
    .locals 0

    add-int/lit8 p1, p1, 0x1

    .line 643
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 176
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 177
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->mFastScrollerDelegate:Leu/davidea/fastscroller/FastScroller$Delegate;

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0, p1}, Leu/davidea/fastscroller/FastScroller$Delegate;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_0
    const/4 p1, 0x0

    .line 180
    iput-object p1, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 181
    iput-object p1, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->mFlexibleLayoutManager:Leu/davidea/flexibleadapter/common/IFlexibleLayoutManager;

    return-void
.end method

.method public onFastScrollerStateChange(Z)V
    .locals 0

    .line 654
    iput-boolean p1, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->isFastScroll:Z

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 582
    sget-object v0, Leu/davidea/flexibleadapter/SelectableAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 584
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->mSelectedPositions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 585
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/SelectableAdapter;->getSelectedItemCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 586
    iget-object p1, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->mSelectedPositions:Ljava/util/Set;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Restore selection %s"

    invoke-virtual {p1, v0, v1}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 568
    sget-object v0, Leu/davidea/flexibleadapter/SelectableAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->mSelectedPositions:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 569
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/SelectableAdapter;->getSelectedItemCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 570
    iget-object p1, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->mSelectedPositions:Ljava/util/Set;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Saving selection %s"

    invoke-virtual {p1, v0, v1}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 6

    .line 503
    instance-of v0, p1, Leu/davidea/viewholders/FlexibleViewHolder;

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->mBoundViewHolders:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 505
    iget-object v1, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    iget-object v2, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->mBoundViewHolders:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Leu/davidea/flexibleadapter/utils/LayoutUtils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v3, v4, v2

    const/4 v2, 0x2

    aput-object p1, v4, v2

    const/4 p1, 0x3

    aput-object v0, v4, p1

    const-string p1, "onViewRecycled viewSize=%s %s %s recycled=%s"

    invoke-virtual {v1, p1, v4}, Leu/davidea/flexibleadapter/utils/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final removeSelection(I)Z
    .locals 1

    .line 382
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->mSelectedPositions:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public varargs selectAll([Ljava/lang/Integer;)V
    .locals 7

    const/4 v0, 0x1

    .line 409
    iput-boolean v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->mSelectAll:Z

    .line 410
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 411
    iget-object v1, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v4, "selectAll ViewTypes to include %s"

    invoke-virtual {v1, v4, v2}, Leu/davidea/flexibleadapter/utils/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v3

    move v2, v1

    move v4, v2

    .line 413
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 414
    invoke-virtual {p0, v1}, Leu/davidea/flexibleadapter/SelectableAdapter;->isSelectable(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 415
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 416
    :cond_0
    iget-object v5, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->mSelectedPositions:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int v5, v2, v4

    if-ne v5, v1, :cond_2

    .line 421
    invoke-direct {p0, v2, v4}, Leu/davidea/flexibleadapter/SelectableAdapter;->notifySelectionChanged(II)V

    move v2, v1

    move v4, v3

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 427
    :cond_3
    iget-object p1, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v3

    aput-object v4, v5, v0

    const-string v0, "selectAll notifyItemRangeChanged from positionStart=%s itemCount=%s"

    invoke-virtual {p1, v0, v5}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 428
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p1

    invoke-direct {p0, v2, p1}, Leu/davidea/flexibleadapter/SelectableAdapter;->notifySelectionChanged(II)V

    return-void
.end method

.method public setFastScroller(Leu/davidea/fastscroller/FastScroller;)V
    .locals 1

    .line 633
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->mFastScrollerDelegate:Leu/davidea/fastscroller/FastScroller$Delegate;

    invoke-virtual {v0, p1}, Leu/davidea/fastscroller/FastScroller$Delegate;->setFastScroller(Leu/davidea/fastscroller/FastScroller;)V

    return-void
.end method

.method public setFlexibleLayoutManager(Leu/davidea/flexibleadapter/common/IFlexibleLayoutManager;)V
    .locals 0

    .line 219
    iput-object p1, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->mFlexibleLayoutManager:Leu/davidea/flexibleadapter/common/IFlexibleLayoutManager;

    return-void
.end method

.method public setMode(I)V
    .locals 5

    .line 250
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    invoke-static {p1}, Leu/davidea/flexibleadapter/utils/LayoutUtils;->getModeName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v1, "Mode %s enabled"

    invoke-virtual {v0, v1, v3}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    iget v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->mMode:I

    if-ne v0, v2, :cond_0

    if-nez p1, :cond_0

    .line 252
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/SelectableAdapter;->clearSelection()V

    .line 254
    :cond_0
    iput p1, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->mMode:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v4

    .line 255
    :goto_0
    iput-boolean v2, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->mLastItemInActionMode:Z

    return-void
.end method

.method protected swapSelection(II)V
    .locals 1

    .line 393
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/SelectableAdapter;->isSelected(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Leu/davidea/flexibleadapter/SelectableAdapter;->isSelected(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 394
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/SelectableAdapter;->removeSelection(I)Z

    .line 395
    invoke-virtual {p0, p2}, Leu/davidea/flexibleadapter/SelectableAdapter;->addSelection(I)Z

    return-void

    .line 396
    :cond_0
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/SelectableAdapter;->isSelected(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p2}, Leu/davidea/flexibleadapter/SelectableAdapter;->isSelected(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 397
    invoke-virtual {p0, p2}, Leu/davidea/flexibleadapter/SelectableAdapter;->removeSelection(I)Z

    .line 398
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/SelectableAdapter;->addSelection(I)Z

    :cond_1
    return-void
.end method

.method public toggleFastScroller()V
    .locals 1

    .line 603
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->mFastScrollerDelegate:Leu/davidea/fastscroller/FastScroller$Delegate;

    invoke-virtual {v0}, Leu/davidea/fastscroller/FastScroller$Delegate;->toggleFastScroller()V

    return-void
.end method

.method public toggleSelection(I)V
    .locals 6

    if-gez p1, :cond_0

    return-void

    .line 338
    :cond_0
    iget v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 339
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/SelectableAdapter;->clearSelection()V

    .line 341
    :cond_1
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->mSelectedPositions:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 343
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/SelectableAdapter;->removeSelection(I)Z

    goto :goto_0

    .line 345
    :cond_2
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/SelectableAdapter;->addSelection(I)Z

    .line 347
    :goto_0
    iget-object v2, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    if-eqz v0, :cond_3

    const-string v0, "removed"

    goto :goto_1

    :cond_3
    const-string v0, "added"

    .line 348
    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v3, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->mSelectedPositions:Ljava/util/Set;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    aput-object p1, v4, v1

    const/4 p1, 0x2

    aput-object v3, v4, p1

    .line 347
    const-string p1, "toggleSelection %s on position %s, current %s"

    invoke-virtual {v2, p1, v4}, Leu/davidea/flexibleadapter/utils/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
