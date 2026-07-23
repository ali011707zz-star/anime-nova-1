.class public Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "ItemTouchHelperCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$ViewHolderCallback;,
        Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$AdapterCallback;
    }
.end annotation


# instance fields
.field protected handleDragEnabled:Z

.field protected longPressDragEnabled:Z

.field protected mAdapterCallback:Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$AdapterCallback;

.field protected mDragAnimationDuration:J

.field protected mMoveThreshold:F

.field protected mSwipeAnimationDuration:J

.field protected mSwipeFlags:I

.field protected mSwipeThreshold:F

.field protected swipeEnabled:Z


# direct methods
.method public constructor <init>(Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$AdapterCallback;)V
    .locals 2

    .line 56
    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->longPressDragEnabled:Z

    iput-boolean v0, p0, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->handleDragEnabled:Z

    iput-boolean v0, p0, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->swipeEnabled:Z

    const-wide/16 v0, 0x12c

    .line 48
    iput-wide v0, p0, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->mSwipeAnimationDuration:J

    const-wide/16 v0, 0x190

    iput-wide v0, p0, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->mDragAnimationDuration:J

    const/high16 v0, 0x3f000000    # 0.5f

    .line 49
    iput v0, p0, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->mSwipeThreshold:F

    iput v0, p0, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->mMoveThreshold:F

    const/4 v0, -0x1

    .line 50
    iput v0, p0, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->mSwipeFlags:I

    .line 57
    iput-object p1, p0, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->mAdapterCallback:Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$AdapterCallback;

    return-void
.end method

.method private static setLayoutVisibility(Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$ViewHolderCallback;I)V
    .locals 4

    .line 362
    invoke-interface {p0}, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$ViewHolderCallback;->getRearRightView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    .line 363
    invoke-interface {p0}, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$ViewHolderCallback;->getRearRightView()Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x4

    if-ne p1, v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 366
    :cond_1
    invoke-interface {p0}, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$ViewHolderCallback;->getRearLeftView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 367
    invoke-interface {p0}, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$ViewHolderCallback;->getRearLeftView()Landroid/view/View;

    move-result-object p0

    if-ne p1, v2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public canDropOver(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 0
    const/4 p1, 0x1

    return p1
.end method

.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 314
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 315
    instance-of p1, p2, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$ViewHolderCallback;

    if-eqz p1, :cond_0

    .line 317
    move-object p1, p2

    check-cast p1, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$ViewHolderCallback;

    .line 318
    invoke-static {}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getDefaultUIUtil()Landroidx/recyclerview/widget/ItemTouchUIUtil;

    move-result-object v0

    invoke-interface {p1}, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$ViewHolderCallback;->getFrontView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/recyclerview/widget/ItemTouchUIUtil;->clearView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 320
    invoke-static {p1, v0}, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->setLayoutVisibility(Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$ViewHolderCallback;I)V

    .line 321
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    invoke-interface {p1, p2}, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$ViewHolderCallback;->onItemReleased(I)V

    :cond_0
    return-void
.end method

.method public getAnimationDuration(Landroidx/recyclerview/widget/RecyclerView;IFF)J
    .locals 0

    const/16 p1, 0x8

    if-ne p2, p1, :cond_0

    .line 220
    iget-wide p1, p0, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->mDragAnimationDuration:J

    return-wide p1

    :cond_0
    iget-wide p1, p0, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->mSwipeAnimationDuration:J

    return-wide p1
.end method

.method public getMoveThreshold(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)F
    .locals 0

    .line 127
    iget p1, p0, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->mMoveThreshold:F

    return p1
.end method

.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 4

    .line 259
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 263
    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v2, 0x0

    if-nez v1, :cond_3

    instance-of v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 266
    :cond_0
    invoke-static {p1}, Leu/davidea/flexibleadapter/utils/LayoutUtils;->getOrientation(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result p1

    const/4 v0, 0x3

    const/16 v1, 0xc

    if-nez p1, :cond_2

    .line 268
    iget p1, p0, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->mSwipeFlags:I

    if-lez p1, :cond_1

    move v0, p1

    :cond_1
    move v3, v1

    move v1, v0

    move v0, v3

    goto :goto_1

    .line 271
    :cond_2
    iget p1, p0, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->mSwipeFlags:I

    if-lez p1, :cond_4

    move v1, p1

    goto :goto_1

    :cond_3
    :goto_0
    const/16 v0, 0xf

    move v1, v2

    .line 274
    :cond_4
    :goto_1
    instance-of p1, p2, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$ViewHolderCallback;

    if-eqz p1, :cond_6

    .line 275
    check-cast p2, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$ViewHolderCallback;

    .line 276
    invoke-interface {p2}, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$ViewHolderCallback;->isDraggable()Z

    move-result p1

    if-nez p1, :cond_5

    move v0, v2

    .line 279
    :cond_5
    invoke-interface {p2}, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$ViewHolderCallback;->isSwipeable()Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    move v2, v1

    .line 283
    :goto_2
    invoke-static {v0, v2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    return p1
.end method

.method public getSwipeThreshold(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)F
    .locals 0

    .line 187
    iget p1, p0, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->mSwipeThreshold:F

    return p1
.end method

.method public isHandleDragEnabled()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->handleDragEnabled:Z

    return v0
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 1

    .line 149
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->swipeEnabled:Z

    return v0
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->longPressDragEnabled:Z

    return v0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 8

    const/4 v0, 0x1

    if-ne p6, v0, :cond_3

    .line 331
    instance-of v0, p3, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$ViewHolderCallback;

    if-eqz v0, :cond_3

    .line 335
    check-cast p3, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$ViewHolderCallback;

    .line 336
    invoke-interface {p3}, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$ViewHolderCallback;->getFrontView()Landroid/view/View;

    move-result-object v3

    const/4 v0, 0x0

    cmpl-float v1, p5, v0

    if-eqz v1, :cond_0

    move v1, p5

    goto :goto_0

    :cond_0
    move v1, p4

    :goto_0
    cmpl-float v2, v1, v0

    if-lez v2, :cond_1

    const/16 v0, 0x8

    goto :goto_1

    :cond_1
    cmpg-float v0, v1, v0

    if-gez v0, :cond_2

    const/4 v0, 0x4

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 352
    :goto_1
    invoke-static {p3, v0}, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->setLayoutVisibility(Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$ViewHolderCallback;I)V

    .line 354
    invoke-static {}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getDefaultUIUtil()Landroidx/recyclerview/widget/ItemTouchUIUtil;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Landroidx/recyclerview/widget/ItemTouchUIUtil;->onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;FFIZ)V

    return-void

    .line 357
    :cond_3
    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    return-void
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    .line 232
    iget-object p1, p0, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->mAdapterCallback:Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$AdapterCallback;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {p1, v0, v1}, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$AdapterCallback;->shouldMove(II)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 236
    :cond_0
    iget-object p1, p0, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->mAdapterCallback:Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$AdapterCallback;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p3

    invoke-interface {p1, p2, p3}, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$AdapterCallback;->onItemMove(II)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 292
    iget-object v0, p0, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->mAdapterCallback:Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$AdapterCallback;

    invoke-interface {v0, p1, p2}, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$AdapterCallback;->onActionStateChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    if-eqz p2, :cond_1

    .line 295
    instance-of v0, p1, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$ViewHolderCallback;

    if-eqz v0, :cond_0

    .line 297
    move-object v0, p1

    check-cast v0, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$ViewHolderCallback;

    .line 298
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-interface {v0, p1, p2}, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$ViewHolderCallback;->onActionStateChanged(II)V

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 300
    invoke-static {}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getDefaultUIUtil()Landroidx/recyclerview/widget/ItemTouchUIUtil;

    move-result-object p1

    invoke-interface {v0}, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$ViewHolderCallback;->getFrontView()Landroid/view/View;

    move-result-object p2

    invoke-interface {p1, p2}, Landroidx/recyclerview/widget/ItemTouchUIUtil;->onSelected(Landroid/view/View;)V

    :cond_0
    return-void

    .line 304
    :cond_1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 246
    instance-of v0, p1, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$ViewHolderCallback;

    if-eqz v0, :cond_0

    .line 247
    move-object v0, p1

    check-cast v0, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$ViewHolderCallback;

    .line 248
    invoke-interface {v0}, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$ViewHolderCallback;->getFrontView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->mAdapterCallback:Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$AdapterCallback;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-interface {v0, p1, p2}, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$AdapterCallback;->onItemSwiped(II)V

    :cond_0
    return-void
.end method

.method public setHandleDragEnabled(Z)V
    .locals 0

    .line 99
    iput-boolean p1, p0, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->handleDragEnabled:Z

    return-void
.end method

.method public setLongPressDragEnabled(Z)V
    .locals 0

    .line 81
    iput-boolean p1, p0, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->longPressDragEnabled:Z

    return-void
.end method

.method public setSwipeEnabled(Z)V
    .locals 0

    .line 141
    iput-boolean p1, p0, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->swipeEnabled:Z

    return-void
.end method
