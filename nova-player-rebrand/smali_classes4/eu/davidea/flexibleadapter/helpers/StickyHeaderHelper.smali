.class public final Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "StickyHeaderHelper.java"


# instance fields
.field private displayWithAnimation:Z

.field private mAdapter:Leu/davidea/flexibleadapter/FlexibleAdapter;

.field private mElevation:F

.field private mHeaderPosition:I

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mStickyHeaderViewHolder:Leu/davidea/viewholders/FlexibleViewHolder;

.field private mStickyHolderLayout:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Leu/davidea/flexibleadapter/FlexibleAdapter;Leu/davidea/flexibleadapter/FlexibleAdapter$OnStickyHeaderChangeListener;Landroid/view/ViewGroup;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 p2, -0x1

    .line 49
    iput p2, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mHeaderPosition:I

    const/4 p2, 0x0

    .line 50
    iput-boolean p2, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->displayWithAnimation:Z

    .line 56
    iput-object p1, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mAdapter:Leu/davidea/flexibleadapter/FlexibleAdapter;

    .line 58
    iput-object p3, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mStickyHolderLayout:Landroid/view/ViewGroup;

    return-void
.end method

.method static synthetic access$002(Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;I)I
    .locals 0

    .line 42
    iput p1, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mHeaderPosition:I

    return p1
.end method

.method static synthetic access$102(Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->displayWithAnimation:Z

    return p1
.end method

.method static synthetic access$200(Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;)Landroid/view/ViewGroup;
    .locals 0

    .line 42
    iget-object p0, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mStickyHolderLayout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$300(Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->clearHeader()V

    return-void
.end method

.method private static addViewToParent(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    .line 376
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 p0, 0x0

    .line 378
    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "The specified child already has a parent! (but parent was removed!)"

    invoke-static {p1, p0}, Leu/davidea/flexibleadapter/utils/Log;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private applyLayoutParamsAndMargins(Landroid/view/View;)V
    .locals 2

    .line 278
    iget-object v0, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mStickyHolderLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 279
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 280
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 282
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-nez p1, :cond_0

    .line 283
    iget-object p1, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    iget-object v1, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mStickyHeaderViewHolder:Leu/davidea/viewholders/FlexibleViewHolder;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 285
    :cond_0
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-nez p1, :cond_1

    .line 286
    iget-object p1, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    iget-object v1, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mStickyHeaderViewHolder:Leu/davidea/viewholders/FlexibleViewHolder;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 288
    :cond_1
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-nez p1, :cond_2

    .line 289
    iget-object p1, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    iget-object v1, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mStickyHeaderViewHolder:Leu/davidea/viewholders/FlexibleViewHolder;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 291
    :cond_2
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-nez p1, :cond_3

    .line 292
    iget-object p1, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    iget-object v1, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mStickyHeaderViewHolder:Leu/davidea/viewholders/FlexibleViewHolder;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_3
    return-void
.end method

.method private clearHeader()V
    .locals 2

    .line 333
    iget-object v0, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mStickyHeaderViewHolder:Leu/davidea/viewholders/FlexibleViewHolder;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 334
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "clearHeader"

    invoke-static {v1, v0}, Leu/davidea/flexibleadapter/utils/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 335
    iget-object v0, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mStickyHeaderViewHolder:Leu/davidea/viewholders/FlexibleViewHolder;

    invoke-direct {p0, v0}, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->resetHeader(Leu/davidea/viewholders/FlexibleViewHolder;)V

    .line 336
    iget-object v0, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mStickyHolderLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 337
    iget-object v0, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mStickyHolderLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 338
    iget-object v0, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mStickyHolderLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 339
    iput-object v1, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mStickyHeaderViewHolder:Leu/davidea/viewholders/FlexibleViewHolder;

    .line 340
    invoke-direct {p0}, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->restoreHeaderItemVisibility()V

    .line 341
    iget v0, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mHeaderPosition:I

    const/4 v1, -0x1

    .line 342
    iput v1, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mHeaderPosition:I

    .line 343
    invoke-direct {p0, v1, v0}, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->onStickyHeaderChange(II)V

    :cond_0
    return-void
.end method

.method private configureLayoutElevation()V
    .locals 3

    .line 180
    iget-object v0, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mStickyHeaderViewHolder:Leu/davidea/viewholders/FlexibleViewHolder;

    invoke-virtual {v0}, Leu/davidea/viewholders/FlexibleViewHolder;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v0

    iput v0, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mElevation:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iget-object v2, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mAdapter:Leu/davidea/flexibleadapter/FlexibleAdapter;

    .line 184
    invoke-virtual {v2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getStickyHeaderElevation()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    iput v0, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mElevation:F

    .line 186
    :cond_0
    iget v0, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mElevation:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 188
    iget-object v0, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mStickyHolderLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mStickyHeaderViewHolder:Leu/davidea/viewholders/FlexibleViewHolder;

    invoke-virtual {v1}, Leu/davidea/viewholders/FlexibleViewHolder;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method private createContainer(II)Landroid/widget/FrameLayout;
    .locals 2

    .line 88
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 89
    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v1, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private getHeaderViewHolder(I)Leu/davidea/viewholders/FlexibleViewHolder;
    .locals 7

    .line 415
    iget-object v0, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Leu/davidea/viewholders/FlexibleViewHolder;

    if-nez v0, :cond_1

    .line 418
    iget-object v0, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mAdapter:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget-object v1, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemViewType(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->createViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Leu/davidea/viewholders/FlexibleViewHolder;

    const/4 v1, 0x0

    .line 420
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 421
    iget-object v2, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mAdapter:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {v2, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->bindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    const/4 v2, 0x1

    .line 422
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 427
    iget-object v3, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mAdapter:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {v3}, Leu/davidea/flexibleadapter/SelectableAdapter;->getFlexibleLayoutManager()Leu/davidea/flexibleadapter/common/IFlexibleLayoutManager;

    move-result-object v3

    invoke-interface {v3}, Leu/davidea/flexibleadapter/common/IFlexibleLayoutManager;->getOrientation()I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v3, v2, :cond_0

    .line 428
    iget-object v2, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 429
    iget-object v3, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    goto :goto_0

    .line 431
    :cond_0
    iget-object v2, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 432
    iget-object v3, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 436
    :goto_0
    invoke-virtual {v0}, Leu/davidea/viewholders/FlexibleViewHolder;->getContentView()Landroid/view/View;

    move-result-object v4

    .line 437
    iget-object v5, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 438
    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    iget-object v6, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    .line 439
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 437
    invoke-static {v2, v5, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    .line 440
    iget-object v5, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 441
    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    iget-object v6, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    .line 442
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 440
    invoke-static {v3, v5, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v3

    .line 444
    invoke-virtual {v4, v2, v3}, Landroid/view/View;->measure(II)V

    .line 445
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v4, v1, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 448
    :cond_1
    invoke-virtual {v0, p1}, Leu/davidea/viewholders/FlexibleViewHolder;->setBackupPosition(I)V

    return-object v0
.end method

.method private getParent(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 0

    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    return-object p1
.end method

.method private getStickyPosition(I)I
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 392
    iget-object p1, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mAdapter:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {p1}, Leu/davidea/flexibleadapter/SelectableAdapter;->getFlexibleLayoutManager()Leu/davidea/flexibleadapter/common/IFlexibleLayoutManager;

    move-result-object p1

    invoke-interface {p1}, Leu/davidea/flexibleadapter/common/IFlexibleLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    if-nez p1, :cond_0

    .line 393
    invoke-direct {p0}, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->hasStickyHeaderTranslated()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 397
    :cond_0
    iget-object v1, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mAdapter:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {v1, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getSectionHeader(I)Leu/davidea/flexibleadapter/items/IHeader;

    return v0
.end method

.method private hasStickyHeaderTranslated()Z
    .locals 4

    .line 121
    iget-object v0, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 122
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method private initStickyHeadersHolder()V
    .locals 3

    .line 98
    iget-object v0, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mStickyHolderLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, v0}, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->getParent(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, -0x2

    .line 102
    invoke-direct {p0, v2, v2}, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->createContainer(II)Landroid/widget/FrameLayout;

    move-result-object v2

    iput-object v2, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mStickyHolderLayout:Landroid/view/ViewGroup;

    .line 105
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 106
    const-string v0, "Default StickyHolderLayout initialized"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Leu/davidea/flexibleadapter/utils/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 109
    :cond_0
    const-string v0, "User defined StickyHolderLayout initialized"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Leu/davidea/flexibleadapter/utils/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 111
    iput-boolean v0, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->displayWithAnimation:Z

    .line 113
    invoke-virtual {p0, v1}, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->updateOrClearHeader(Z)V

    return-void
.end method

.method private onStickyHeaderChange(II)V
    .locals 0

    .line 0
    return-void
.end method

.method private static removeViewFromParent(Landroid/view/View;)V
    .locals 2

    .line 383
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 384
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 385
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private resetHeader(Leu/davidea/viewholders/FlexibleViewHolder;)V
    .locals 3

    .line 316
    invoke-direct {p0}, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->restoreHeaderItemVisibility()V

    .line 318
    invoke-virtual {p1}, Leu/davidea/viewholders/FlexibleViewHolder;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 319
    invoke-static {v0}, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->removeViewFromParent(Landroid/view/View;)V

    const/4 v1, 0x0

    .line 321
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 322
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 323
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 324
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v1, v0}, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->addViewToParent(Landroid/view/ViewGroup;Landroid/view/View;)V

    :cond_0
    const/4 v1, 0x1

    .line 326
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 328
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 329
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method private restoreHeaderItemVisibility()V
    .locals 5

    .line 302
    iget-object v0, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 306
    :goto_0
    iget-object v2, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 307
    iget-object v2, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 308
    iget-object v3, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v3

    .line 309
    iget-object v4, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mAdapter:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {v4, v3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v3

    invoke-virtual {v4, v3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isHeader(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 310
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private swapHeader(Leu/davidea/viewholders/FlexibleViewHolder;I)V
    .locals 3

    .line 248
    iget v0, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mHeaderPosition:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "swapHeader newHeaderPosition=%s"

    invoke-static {v0, v1}, Leu/davidea/flexibleadapter/utils/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    iget-object v0, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mStickyHeaderViewHolder:Leu/davidea/viewholders/FlexibleViewHolder;

    if-eqz v0, :cond_0

    .line 250
    invoke-direct {p0, v0}, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->resetHeader(Leu/davidea/viewholders/FlexibleViewHolder;)V

    .line 252
    iget v0, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mHeaderPosition:I

    if-le v0, p2, :cond_0

    .line 253
    iget-object v0, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mAdapter:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget-object v1, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mStickyHeaderViewHolder:Leu/davidea/viewholders/FlexibleViewHolder;

    invoke-virtual {v0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 256
    :cond_0
    iput-object p1, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mStickyHeaderViewHolder:Leu/davidea/viewholders/FlexibleViewHolder;

    .line 257
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 258
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->ensureHeaderParent()V

    .line 259
    iget p1, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mHeaderPosition:I

    invoke-direct {p0, p1, p2}, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->onStickyHeaderChange(II)V

    return-void
.end method

.method private translateHeader()V
    .locals 9

    .line 196
    iget v0, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mElevation:F

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    .line 199
    :goto_0
    iget-object v5, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 200
    iget-object v5, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 202
    iget-object v6, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v6

    .line 203
    invoke-direct {p0, v6}, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->getStickyPosition(I)I

    move-result v6

    .line 204
    iget v7, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mHeaderPosition:I

    if-eq v7, v6, :cond_3

    .line 205
    iget-object v6, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mAdapter:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {v6}, Leu/davidea/flexibleadapter/SelectableAdapter;->getFlexibleLayoutManager()Leu/davidea/flexibleadapter/common/IFlexibleLayoutManager;

    move-result-object v6

    invoke-interface {v6}, Leu/davidea/flexibleadapter/common/IFlexibleLayoutManager;->getOrientation()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x5

    if-nez v6, :cond_1

    .line 206
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    if-lez v6, :cond_3

    .line 207
    iget-object v3, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mStickyHolderLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 208
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int/2addr v6, v3

    iget-object v3, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 209
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v6, v3

    iget-object v3, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 210
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v6, v3

    .line 211
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v6, v8, :cond_0

    move v0, v7

    :cond_0
    if-gez v3, :cond_3

    goto :goto_1

    .line 221
    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    if-lez v6, :cond_3

    .line 222
    iget-object v4, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mStickyHolderLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 223
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v6, v4

    iget-object v4, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 224
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v6, v4

    iget-object v4, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 225
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v6, v4

    .line 226
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v6, v8, :cond_2

    move v0, v7

    :cond_2
    if-gez v4, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 240
    :cond_4
    :goto_1
    iget-object v1, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mStickyHolderLayout:Landroid/view/ViewGroup;

    invoke-static {v1, v0}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 242
    iget-object v0, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mStickyHolderLayout:Landroid/view/ViewGroup;

    int-to-float v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 243
    iget-object v0, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mStickyHolderLayout:Landroid/view/ViewGroup;

    int-to-float v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private updateHeader(IZ)V
    .locals 4

    .line 146
    iget v0, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mHeaderPosition:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mStickyHolderLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 148
    iget-object p2, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mAdapter:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {p2}, Leu/davidea/flexibleadapter/SelectableAdapter;->getFlexibleLayoutManager()Leu/davidea/flexibleadapter/common/IFlexibleLayoutManager;

    move-result-object p2

    invoke-interface {p2}, Leu/davidea/flexibleadapter/common/IFlexibleLayoutManager;->findFirstVisibleItemPosition()I

    move-result p2

    .line 150
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->displayWithAnimation:Z

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    iget v0, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mHeaderPosition:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    if-eq p1, p2, :cond_0

    .line 152
    iput-boolean v1, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->displayWithAnimation:Z

    .line 153
    iget-object p2, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mStickyHolderLayout:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 154
    iget-object p2, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mStickyHolderLayout:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 156
    :cond_0
    iget-object p2, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mStickyHolderLayout:Landroid/view/ViewGroup;

    invoke-virtual {p2, v2}, Landroid/view/View;->setAlpha(F)V

    .line 158
    :goto_0
    iget p2, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mHeaderPosition:I

    .line 159
    iput p1, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mHeaderPosition:I

    .line 160
    invoke-direct {p0, p1}, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->getHeaderViewHolder(I)Leu/davidea/viewholders/FlexibleViewHolder;

    move-result-object p1

    .line 162
    invoke-direct {p0, p1, p2}, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->swapHeader(Leu/davidea/viewholders/FlexibleViewHolder;I)V

    goto :goto_2

    :cond_1
    if-eqz p2, :cond_3

    .line 166
    iget-object p2, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mStickyHeaderViewHolder:Leu/davidea/viewholders/FlexibleViewHolder;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p2

    iget-object v0, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mAdapter:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {v0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemViewType(I)I

    move-result v0

    if-ne p2, v0, :cond_2

    .line 167
    iget-object p2, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mAdapter:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget-object v0, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mStickyHeaderViewHolder:Leu/davidea/viewholders/FlexibleViewHolder;

    invoke-virtual {p2, v0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    goto :goto_1

    .line 169
    :cond_2
    iget-object p2, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mStickyHeaderViewHolder:Leu/davidea/viewholders/FlexibleViewHolder;

    .line 170
    invoke-static {p2}, Leu/davidea/flexibleadapter/utils/LayoutUtils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 171
    invoke-direct {p0, p1}, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->getHeaderViewHolder(I)Leu/davidea/viewholders/FlexibleViewHolder;

    move-result-object p1

    invoke-static {p1}, Leu/davidea/flexibleadapter/utils/LayoutUtils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    .line 169
    const-string p1, "updateHeader Wrong itemViewType for StickyViewHolder=%s, PositionViewHolder=%s"

    invoke-static {p1, v0}, Leu/davidea/flexibleadapter/utils/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    :goto_1
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->ensureHeaderParent()V

    .line 175
    :cond_3
    :goto_2
    invoke-direct {p0}, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->translateHeader()V

    return-void
.end method


# virtual methods
.method public attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 68
    iget-object v0, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 70
    invoke-direct {p0}, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->clearHeader()V

    :cond_0
    if-eqz p1, :cond_1

    .line 75
    iput-object p1, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 76
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 77
    invoke-direct {p0}, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->initStickyHeadersHolder()V

    return-void

    .line 73
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Adapter is not attached to RecyclerView. Enable sticky headers after setting adapter to RecyclerView."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clearHeaderWithAnimation()V
    .locals 2

    .line 348
    iget-object v0, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mStickyHeaderViewHolder:Leu/davidea/viewholders/FlexibleViewHolder;

    if-eqz v0, :cond_0

    iget v0, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mHeaderPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 349
    iget-object v0, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mStickyHolderLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper$1;

    invoke-direct {v1, p0}, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper$1;-><init>(Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 370
    iget-object v0, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mStickyHolderLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method public detachFromRecyclerView()V
    .locals 2

    .line 81
    iget-object v0, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 83
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->clearHeaderWithAnimation()V

    const/4 v0, 0x0

    .line 84
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "StickyHolderLayout detached"

    invoke-static {v1, v0}, Leu/davidea/flexibleadapter/utils/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public ensureHeaderParent()V
    .locals 3

    .line 263
    iget-object v0, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mStickyHeaderViewHolder:Leu/davidea/viewholders/FlexibleViewHolder;

    invoke-virtual {v0}, Leu/davidea/viewholders/FlexibleViewHolder;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 266
    iget-object v1, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mStickyHeaderViewHolder:Leu/davidea/viewholders/FlexibleViewHolder;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 267
    iget-object v1, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mStickyHeaderViewHolder:Leu/davidea/viewholders/FlexibleViewHolder;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 269
    iget-object v1, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mStickyHeaderViewHolder:Leu/davidea/viewholders/FlexibleViewHolder;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 270
    invoke-direct {p0, v0}, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->applyLayoutParamsAndMargins(Landroid/view/View;)V

    .line 271
    invoke-static {v0}, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->removeViewFromParent(Landroid/view/View;)V

    .line 272
    iget-object v1, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mStickyHolderLayout:Landroid/view/ViewGroup;

    invoke-static {v1, v0}, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->addViewToParent(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 273
    invoke-direct {p0}, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->configureLayoutElevation()V

    return-void
.end method

.method public getStickyPosition()I
    .locals 1

    .line 117
    iget v0, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mHeaderPosition:I

    return v0
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 63
    iget-object p1, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    iput-boolean p1, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->displayWithAnimation:Z

    .line 64
    invoke-virtual {p0, p2}, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->updateOrClearHeader(Z)V

    return-void
.end method

.method public updateOrClearHeader(Z)V
    .locals 1

    .line 132
    iget-object v0, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mAdapter:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->areHeadersShown()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->mAdapter:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 136
    invoke-direct {p0, v0}, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->getStickyPosition(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 138
    invoke-direct {p0, v0, p1}, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->updateHeader(IZ)V

    return-void

    .line 140
    :cond_1
    invoke-direct {p0}, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->clearHeader()V

    return-void

    .line 133
    :cond_2
    :goto_0
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->clearHeaderWithAnimation()V

    return-void
.end method
