.class public abstract Leu/davidea/flexibleadapter/AnimatorAdapter;
.super Leu/davidea/flexibleadapter/SelectableAdapter;
.source "AnimatorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leu/davidea/flexibleadapter/AnimatorAdapter$HelperAnimatorListener;,
        Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorAdapterDataObserver;,
        Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;
    }
.end annotation


# static fields
.field private static DEFAULT_DURATION:J = 0x12cL


# instance fields
.field private animateFromObserver:Z

.field private animatorsUsed:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;",
            ">;"
        }
    .end annotation
.end field

.field private isForwardEnabled:Z

.field private isReverseEnabled:Z

.field private mAnimatorNotifierObserver:Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorAdapterDataObserver;

.field private final mAnimators:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mDuration:J

.field private mEntryStep:Z

.field private mInitialDelay:J

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mLastAnimatedPosition:I

.field private mMaxChildViews:I

.field private mStepDelay:J

.field private onlyEntryAnimation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method constructor <init>(Z)V
    .locals 4

    .line 102
    invoke-direct {p0}, Leu/davidea/flexibleadapter/SelectableAdapter;-><init>()V

    .line 58
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Leu/davidea/flexibleadapter/AnimatorAdapter;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Leu/davidea/flexibleadapter/AnimatorAdapter;->mEntryStep:Z

    .line 69
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Leu/davidea/flexibleadapter/AnimatorAdapter;->mAnimators:Landroid/util/SparseArray;

    const/4 v0, -0x1

    .line 74
    iput v0, p0, Leu/davidea/flexibleadapter/AnimatorAdapter;->mLastAnimatedPosition:I

    .line 79
    iput v0, p0, Leu/davidea/flexibleadapter/AnimatorAdapter;->mMaxChildViews:I

    .line 84
    const-class v0, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Leu/davidea/flexibleadapter/AnimatorAdapter;->animatorsUsed:Ljava/util/EnumSet;

    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Leu/davidea/flexibleadapter/AnimatorAdapter;->isReverseEnabled:Z

    iput-boolean v0, p0, Leu/davidea/flexibleadapter/AnimatorAdapter;->isForwardEnabled:Z

    iput-boolean v0, p0, Leu/davidea/flexibleadapter/AnimatorAdapter;->onlyEntryAnimation:Z

    iput-boolean v0, p0, Leu/davidea/flexibleadapter/AnimatorAdapter;->animateFromObserver:Z

    const-wide/16 v1, 0x0

    .line 88
    iput-wide v1, p0, Leu/davidea/flexibleadapter/AnimatorAdapter;->mInitialDelay:J

    const-wide/16 v1, 0x64

    iput-wide v1, p0, Leu/davidea/flexibleadapter/AnimatorAdapter;->mStepDelay:J

    sget-wide v1, Leu/davidea/flexibleadapter/AnimatorAdapter;->DEFAULT_DURATION:J

    iput-wide v1, p0, Leu/davidea/flexibleadapter/AnimatorAdapter;->mDuration:J

    .line 103
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 104
    iget-object v1, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initialized with StableIds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v0}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    new-instance p1, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorAdapterDataObserver;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorAdapterDataObserver;-><init>(Leu/davidea/flexibleadapter/AnimatorAdapter;Leu/davidea/flexibleadapter/AnimatorAdapter$1;)V

    iput-object p1, p0, Leu/davidea/flexibleadapter/AnimatorAdapter;->mAnimatorNotifierObserver:Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorAdapterDataObserver;

    .line 108
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    return-void
.end method

.method static synthetic access$200(Leu/davidea/flexibleadapter/AnimatorAdapter;)Landroid/util/SparseArray;
    .locals 0

    .line 54
    iget-object p0, p0, Leu/davidea/flexibleadapter/AnimatorAdapter;->mAnimators:Landroid/util/SparseArray;

    return-object p0
.end method

.method private calculateAnimationDelay(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)J
    .locals 6

    .line 382
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/SelectableAdapter;->getFlexibleLayoutManager()Leu/davidea/flexibleadapter/common/IFlexibleLayoutManager;

    move-result-object p1

    invoke-interface {p1}, Leu/davidea/flexibleadapter/common/IFlexibleLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result p1

    .line 383
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/SelectableAdapter;->getFlexibleLayoutManager()Leu/davidea/flexibleadapter/common/IFlexibleLayoutManager;

    move-result-object v0

    invoke-interface {v0}, Leu/davidea/flexibleadapter/common/IFlexibleLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    if-gez p1, :cond_0

    if-ltz p2, :cond_0

    add-int/lit8 p1, p2, -0x1

    :cond_0
    add-int/lit8 v1, p2, -0x1

    if-le v1, v0, :cond_1

    move v0, v1

    :cond_1
    sub-int/2addr v0, p1

    .line 399
    iget v2, p0, Leu/davidea/flexibleadapter/AnimatorAdapter;->mMaxChildViews:I

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    if-lt v0, v1, :cond_4

    if-le p1, v3, :cond_2

    if-le p1, v2, :cond_4

    :cond_2
    if-le p2, v2, :cond_3

    const/4 v1, -0x1

    if-ne p1, v1, :cond_3

    iget-object p1, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 403
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 421
    :cond_3
    iget-wide v0, p0, Leu/davidea/flexibleadapter/AnimatorAdapter;->mInitialDelay:J

    int-to-long p1, p2

    iget-wide v2, p0, Leu/davidea/flexibleadapter/AnimatorAdapter;->mStepDelay:J

    mul-long/2addr p1, v2

    add-long/2addr v0, p1

    return-wide v0

    .line 406
    :cond_4
    :goto_0
    iget-wide v1, p0, Leu/davidea/flexibleadapter/AnimatorAdapter;->mStepDelay:J

    if-gt v0, v3, :cond_5

    .line 410
    iget-wide v4, p0, Leu/davidea/flexibleadapter/AnimatorAdapter;->mInitialDelay:J

    add-long/2addr v1, v4

    goto :goto_1

    :cond_5
    const-wide/16 v4, 0x0

    .line 413
    iput-wide v4, p0, Leu/davidea/flexibleadapter/AnimatorAdapter;->mInitialDelay:J

    .line 415
    :goto_1
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/SelectableAdapter;->getFlexibleLayoutManager()Leu/davidea/flexibleadapter/common/IFlexibleLayoutManager;

    move-result-object p1

    invoke-interface {p1}, Leu/davidea/flexibleadapter/common/IFlexibleLayoutManager;->getSpanCount()I

    move-result p1

    if-le p1, v3, :cond_6

    .line 417
    iget-wide v0, p0, Leu/davidea/flexibleadapter/AnimatorAdapter;->mInitialDelay:J

    iget-wide v2, p0, Leu/davidea/flexibleadapter/AnimatorAdapter;->mStepDelay:J

    rem-int/2addr p2, p1

    int-to-long p1, p2

    mul-long/2addr v2, p1

    add-long/2addr v0, v2

    return-wide v0

    :cond_6
    return-wide v1
.end method

.method private cancelExistingAnimation(I)V
    .locals 1

    .line 286
    iget-object v0, p0, Leu/davidea/flexibleadapter/AnimatorAdapter;->mAnimators:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/animation/Animator;

    if-eqz p1, :cond_0

    .line 288
    invoke-virtual {p1}, Landroid/animation/Animator;->end()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected final animateView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 12

    .line 316
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    .line 321
    :cond_0
    iget v1, p0, Leu/davidea/flexibleadapter/AnimatorAdapter;->mMaxChildViews:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 322
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iput v0, p0, Leu/davidea/flexibleadapter/AnimatorAdapter;->mMaxChildViews:I

    .line 325
    :cond_1
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/AnimatorAdapter;->onlyEntryAnimation:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Leu/davidea/flexibleadapter/AnimatorAdapter;->mLastAnimatedPosition:I

    iget v2, p0, Leu/davidea/flexibleadapter/AnimatorAdapter;->mMaxChildViews:I

    if-lt v0, v2, :cond_2

    .line 326
    iput-boolean v1, p0, Leu/davidea/flexibleadapter/AnimatorAdapter;->isForwardEnabled:Z

    .line 328
    :cond_2
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/SelectableAdapter;->getFlexibleLayoutManager()Leu/davidea/flexibleadapter/common/IFlexibleLayoutManager;

    move-result-object v0

    invoke-interface {v0}, Leu/davidea/flexibleadapter/common/IFlexibleLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    .line 333
    iget-boolean v2, p0, Leu/davidea/flexibleadapter/AnimatorAdapter;->isForwardEnabled:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Leu/davidea/flexibleadapter/AnimatorAdapter;->isReverseEnabled:Z

    if-eqz v2, :cond_c

    :cond_3
    iget-boolean v2, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->isFastScroll:Z

    if-nez v2, :cond_c

    instance-of v2, p1, Leu/davidea/viewholders/FlexibleViewHolder;

    if-eqz v2, :cond_c

    iget-object v2, p0, Leu/davidea/flexibleadapter/AnimatorAdapter;->mAnimatorNotifierObserver:Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorAdapterDataObserver;

    .line 335
    invoke-virtual {v2}, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorAdapterDataObserver;->isPositionNotified()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, p2}, Leu/davidea/flexibleadapter/AnimatorAdapter;->isScrollableHeaderOrFooter(I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 336
    :cond_4
    invoke-virtual {p0, p2}, Leu/davidea/flexibleadapter/AnimatorAdapter;->isScrollableHeaderOrFooter(I)Z

    move-result v2

    if-nez v2, :cond_7

    iget-boolean v2, p0, Leu/davidea/flexibleadapter/AnimatorAdapter;->isForwardEnabled:Z

    if-eqz v2, :cond_5

    if-gt p2, v0, :cond_7

    :cond_5
    iget-boolean v2, p0, Leu/davidea/flexibleadapter/AnimatorAdapter;->isReverseEnabled:Z

    if-eqz v2, :cond_6

    if-lt p2, v0, :cond_7

    :cond_6
    if-nez p2, :cond_c

    iget v2, p0, Leu/davidea/flexibleadapter/AnimatorAdapter;->mMaxChildViews:I

    if-nez v2, :cond_c

    .line 342
    :cond_7
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 343
    invoke-direct {p0, v2}, Leu/davidea/flexibleadapter/AnimatorAdapter;->cancelExistingAnimation(I)V

    .line 346
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 347
    move-object v4, p1

    check-cast v4, Leu/davidea/viewholders/FlexibleViewHolder;

    if-lt p2, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_0

    :cond_8
    move v0, v1

    .line 348
    :goto_0
    invoke-virtual {v4, v3, p2, v0}, Leu/davidea/viewholders/FlexibleViewHolder;->scrollAnimators(Ljava/util/List;IZ)V

    .line 351
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 352
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 353
    iget-object v4, p0, Leu/davidea/flexibleadapter/AnimatorAdapter;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 355
    iget-wide v4, p0, Leu/davidea/flexibleadapter/AnimatorAdapter;->mDuration:J

    .line 356
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    :cond_9
    :goto_1
    if-ge v1, v6, :cond_a

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v1, v1, 0x1

    check-cast v7, Landroid/animation/Animator;

    .line 357
    invoke-virtual {v7}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v8

    sget-wide v10, Leu/davidea/flexibleadapter/AnimatorAdapter;->DEFAULT_DURATION:J

    cmp-long v8, v8, v10

    if-eqz v8, :cond_9

    .line 358
    invoke-virtual {v7}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v4

    goto :goto_1

    .line 361
    :cond_a
    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 362
    new-instance v1, Leu/davidea/flexibleadapter/AnimatorAdapter$HelperAnimatorListener;

    invoke-direct {v1, p0, v2}, Leu/davidea/flexibleadapter/AnimatorAdapter$HelperAnimatorListener;-><init>(Leu/davidea/flexibleadapter/AnimatorAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 363
    iget-boolean v1, p0, Leu/davidea/flexibleadapter/AnimatorAdapter;->mEntryStep:Z

    if-eqz v1, :cond_b

    .line 365
    invoke-direct {p0, p1, p2}, Leu/davidea/flexibleadapter/AnimatorAdapter;->calculateAnimationDelay(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 367
    :cond_b
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 368
    iget-object p1, p0, Leu/davidea/flexibleadapter/AnimatorAdapter;->mAnimators:Landroid/util/SparseArray;

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 371
    :cond_c
    iget-object p1, p0, Leu/davidea/flexibleadapter/AnimatorAdapter;->mAnimatorNotifierObserver:Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorAdapterDataObserver;

    invoke-virtual {p1}, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorAdapterDataObserver;->clearNotified()V

    .line 373
    iput p2, p0, Leu/davidea/flexibleadapter/AnimatorAdapter;->mLastAnimatedPosition:I

    return-void
.end method

.method public isAnimationOnForwardScrollingEnabled()Z
    .locals 1

    .line 224
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/AnimatorAdapter;->isForwardEnabled:Z

    return v0
.end method

.method public isAnimationOnReverseScrollingEnabled()Z
    .locals 1

    .line 249
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/AnimatorAdapter;->isReverseEnabled:Z

    return v0
.end method

.method public isOnlyEntryAnimation()Z
    .locals 1

    .line 258
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/AnimatorAdapter;->onlyEntryAnimation:Z

    return v0
.end method

.method public abstract isScrollableHeaderOrFooter(I)Z
.end method

.method public setAnimationDelay(J)Leu/davidea/flexibleadapter/AnimatorAdapter;
    .locals 4

    .line 148
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "Set animationDelay=%s"

    invoke-virtual {v0, v1, v2}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    iput-wide p1, p0, Leu/davidea/flexibleadapter/AnimatorAdapter;->mStepDelay:J

    return-object p0
.end method

.method public setAnimationDuration(J)Leu/davidea/flexibleadapter/AnimatorAdapter;
    .locals 4

    .line 178
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "Set animationDuration=%s"

    invoke-virtual {v0, v1, v2}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    iput-wide p1, p0, Leu/davidea/flexibleadapter/AnimatorAdapter;->mDuration:J

    return-object p0
.end method

.method public setAnimationEntryStep(Z)Leu/davidea/flexibleadapter/AnimatorAdapter;
    .locals 4

    .line 164
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "Set animationEntryStep=%s"

    invoke-virtual {v0, v1, v2}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    iput-boolean p1, p0, Leu/davidea/flexibleadapter/AnimatorAdapter;->mEntryStep:Z

    return-object p0
.end method

.method public setAnimationInitialDelay(J)Leu/davidea/flexibleadapter/AnimatorAdapter;
    .locals 4

    .line 133
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "Set animationInitialDelay=%s"

    invoke-virtual {v0, v1, v2}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    iput-wide p1, p0, Leu/davidea/flexibleadapter/AnimatorAdapter;->mInitialDelay:J

    return-object p0
.end method

.method public setAnimationInterpolator(Landroid/view/animation/Interpolator;)Leu/davidea/flexibleadapter/AnimatorAdapter;
    .locals 4

    .line 191
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    invoke-static {p1}, Leu/davidea/flexibleadapter/utils/LayoutUtils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "Set animationInterpolator=%s"

    invoke-virtual {v0, v1, v2}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    iput-object p1, p0, Leu/davidea/flexibleadapter/AnimatorAdapter;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public setAnimationOnForwardScrolling(Z)Leu/davidea/flexibleadapter/AnimatorAdapter;
    .locals 4

    .line 211
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "Set animationOnForwardScrolling=%s"

    invoke-virtual {v0, v1, v2}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 213
    iput-boolean v3, p0, Leu/davidea/flexibleadapter/AnimatorAdapter;->onlyEntryAnimation:Z

    .line 215
    :cond_0
    iput-boolean p1, p0, Leu/davidea/flexibleadapter/AnimatorAdapter;->isForwardEnabled:Z

    return-object p0
.end method

.method public setAnimationOnReverseScrolling(Z)Leu/davidea/flexibleadapter/AnimatorAdapter;
    .locals 4

    .line 239
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "Set animationOnReverseScrolling=%s"

    invoke-virtual {v0, v1, v2}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    iput-boolean p1, p0, Leu/davidea/flexibleadapter/AnimatorAdapter;->isReverseEnabled:Z

    return-object p0
.end method

.method public setOnlyEntryAnimation(Z)Leu/davidea/flexibleadapter/AnimatorAdapter;
    .locals 5

    .line 274
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v1, "Set onlyEntryAnimation=%s"

    invoke-virtual {v0, v1, v3}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 276
    iput-boolean v2, p0, Leu/davidea/flexibleadapter/AnimatorAdapter;->isForwardEnabled:Z

    .line 278
    :cond_0
    iput-boolean p1, p0, Leu/davidea/flexibleadapter/AnimatorAdapter;->onlyEntryAnimation:Z

    return-object p0
.end method

.method setScrollAnimate(Z)V
    .locals 0

    .line 121
    iput-boolean p1, p0, Leu/davidea/flexibleadapter/AnimatorAdapter;->animateFromObserver:Z

    return-void
.end method
