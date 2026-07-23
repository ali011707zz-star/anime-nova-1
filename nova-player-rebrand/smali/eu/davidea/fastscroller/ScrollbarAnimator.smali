.class public Leu/davidea/fastscroller/ScrollbarAnimator;
.super Ljava/lang/Object;
.source "ScrollbarAnimator.java"


# instance fields
.field protected bar:Landroid/view/View;

.field protected delayInMillis:J

.field protected durationInMillis:J

.field protected handle:Landroid/view/View;

.field protected handleAlwaysVisible:Z

.field private isAnimating:Z

.field protected scrollbarAnimatorSet:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;ZJJ)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Leu/davidea/fastscroller/ScrollbarAnimator;->bar:Landroid/view/View;

    .line 37
    iput-object p2, p0, Leu/davidea/fastscroller/ScrollbarAnimator;->handle:Landroid/view/View;

    .line 38
    iput-boolean p3, p0, Leu/davidea/fastscroller/ScrollbarAnimator;->handleAlwaysVisible:Z

    .line 39
    iput-wide p4, p0, Leu/davidea/fastscroller/ScrollbarAnimator;->delayInMillis:J

    .line 40
    iput-wide p6, p0, Leu/davidea/fastscroller/ScrollbarAnimator;->durationInMillis:J

    return-void
.end method

.method static synthetic access$002(Leu/davidea/fastscroller/ScrollbarAnimator;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Leu/davidea/fastscroller/ScrollbarAnimator;->isAnimating:Z

    return p1
.end method


# virtual methods
.method protected createAnimator(Landroid/view/View;Landroid/view/View;Z)Landroid/animation/AnimatorSet;
    .locals 6

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    move v1, v0

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    :goto_0
    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput v1, v3, v4

    const-string v1, "translationX"

    invoke-static {p1, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 116
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 117
    iget-boolean v5, p0, Leu/davidea/fastscroller/ScrollbarAnimator;->handleAlwaysVisible:Z

    if-eqz v5, :cond_1

    .line 118
    invoke-virtual {v3, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_2

    :cond_1
    if-eqz p3, :cond_2

    goto :goto_1

    .line 120
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    :goto_1
    new-array v5, v2, [F

    aput v0, v5, v4

    invoke-static {p2, v1, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const/4 v0, 0x2

    .line 121
    new-array v0, v0, [Landroid/animation/Animator;

    aput-object p1, v0, v4

    aput-object p2, v0, v2

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 123
    :goto_2
    iget-wide p1, p0, Leu/davidea/fastscroller/ScrollbarAnimator;->durationInMillis:J

    invoke-virtual {v3, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    if-nez p3, :cond_3

    .line 125
    iget-wide p1, p0, Leu/davidea/fastscroller/ScrollbarAnimator;->delayInMillis:J

    invoke-virtual {v3, p1, p2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    :cond_3
    return-object v3
.end method

.method public hideScrollbar()V
    .locals 3

    .line 86
    iget-object v0, p0, Leu/davidea/fastscroller/ScrollbarAnimator;->bar:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Leu/davidea/fastscroller/ScrollbarAnimator;->handle:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    iget-boolean v0, p0, Leu/davidea/fastscroller/ScrollbarAnimator;->isAnimating:Z

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Leu/davidea/fastscroller/ScrollbarAnimator;->scrollbarAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 94
    :cond_1
    iget-object v0, p0, Leu/davidea/fastscroller/ScrollbarAnimator;->bar:Landroid/view/View;

    iget-object v1, p0, Leu/davidea/fastscroller/ScrollbarAnimator;->handle:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Leu/davidea/fastscroller/ScrollbarAnimator;->createAnimator(Landroid/view/View;Landroid/view/View;Z)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Leu/davidea/fastscroller/ScrollbarAnimator;->scrollbarAnimatorSet:Landroid/animation/AnimatorSet;

    .line 95
    new-instance v1, Leu/davidea/fastscroller/ScrollbarAnimator$2;

    invoke-direct {v1, p0}, Leu/davidea/fastscroller/ScrollbarAnimator$2;-><init>(Leu/davidea/fastscroller/ScrollbarAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 110
    iget-object v0, p0, Leu/davidea/fastscroller/ScrollbarAnimator;->scrollbarAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    const/4 v0, 0x1

    .line 111
    iput-boolean v0, p0, Leu/davidea/fastscroller/ScrollbarAnimator;->isAnimating:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public isAnimating()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Leu/davidea/fastscroller/ScrollbarAnimator;->isAnimating:Z

    return v0
.end method

.method protected onHideAnimationStop(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x4

    .line 135
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 136
    iget-boolean v1, p0, Leu/davidea/fastscroller/ScrollbarAnimator;->handleAlwaysVisible:Z

    if-nez v1, :cond_0

    .line 137
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x0

    .line 139
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 140
    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method protected onShowAnimationStop(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 0
    return-void
.end method

.method public setDelayInMillis(J)V
    .locals 0

    .line 44
    iput-wide p1, p0, Leu/davidea/fastscroller/ScrollbarAnimator;->delayInMillis:J

    return-void
.end method

.method public showScrollbar()V
    .locals 3

    .line 52
    iget-object v0, p0, Leu/davidea/fastscroller/ScrollbarAnimator;->bar:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Leu/davidea/fastscroller/ScrollbarAnimator;->handle:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    iget-boolean v0, p0, Leu/davidea/fastscroller/ScrollbarAnimator;->isAnimating:Z

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Leu/davidea/fastscroller/ScrollbarAnimator;->scrollbarAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 60
    :cond_1
    iget-object v0, p0, Leu/davidea/fastscroller/ScrollbarAnimator;->bar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Leu/davidea/fastscroller/ScrollbarAnimator;->handle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 61
    :cond_2
    iget-object v0, p0, Leu/davidea/fastscroller/ScrollbarAnimator;->bar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Leu/davidea/fastscroller/ScrollbarAnimator;->handle:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Leu/davidea/fastscroller/ScrollbarAnimator;->bar:Landroid/view/View;

    iget-object v1, p0, Leu/davidea/fastscroller/ScrollbarAnimator;->handle:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Leu/davidea/fastscroller/ScrollbarAnimator;->createAnimator(Landroid/view/View;Landroid/view/View;Z)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Leu/davidea/fastscroller/ScrollbarAnimator;->scrollbarAnimatorSet:Landroid/animation/AnimatorSet;

    .line 65
    new-instance v1, Leu/davidea/fastscroller/ScrollbarAnimator$1;

    invoke-direct {v1, p0}, Leu/davidea/fastscroller/ScrollbarAnimator$1;-><init>(Leu/davidea/fastscroller/ScrollbarAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 80
    iget-object v0, p0, Leu/davidea/fastscroller/ScrollbarAnimator;->scrollbarAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 81
    iput-boolean v2, p0, Leu/davidea/fastscroller/ScrollbarAnimator;->isAnimating:Z

    :cond_3
    :goto_0
    return-void
.end method
