.class public Leu/davidea/fastscroller/BubbleAnimator;
.super Ljava/lang/Object;
.source "BubbleAnimator.java"


# instance fields
.field protected animator:Landroid/animation/ObjectAnimator;

.field protected bubble:Landroid/view/View;

.field protected durationInMillis:J

.field private isAnimating:Z


# direct methods
.method public constructor <init>(Landroid/view/View;J)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Leu/davidea/fastscroller/BubbleAnimator;->bubble:Landroid/view/View;

    .line 32
    iput-wide p2, p0, Leu/davidea/fastscroller/BubbleAnimator;->durationInMillis:J

    return-void
.end method

.method static synthetic access$002(Leu/davidea/fastscroller/BubbleAnimator;Z)Z
    .locals 0

    .line 23
    iput-boolean p1, p0, Leu/davidea/fastscroller/BubbleAnimator;->isAnimating:Z

    return p1
.end method


# virtual methods
.method protected createHideAnimator(Landroid/view/View;)Landroid/animation/ObjectAnimator;
    .locals 2

    const/4 v0, 0x2

    .line 106
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iget-wide v0, p0, Leu/davidea/fastscroller/BubbleAnimator;->durationInMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    return-object p1

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method protected createShowAnimator(Landroid/view/View;)Landroid/animation/ObjectAnimator;
    .locals 2

    const/4 v0, 0x2

    .line 102
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iget-wide v0, p0, Leu/davidea/fastscroller/BubbleAnimator;->durationInMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    return-object p1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public hideBubble()V
    .locals 2

    .line 72
    iget-object v0, p0, Leu/davidea/fastscroller/BubbleAnimator;->bubble:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 76
    :cond_0
    iget-boolean v0, p0, Leu/davidea/fastscroller/BubbleAnimator;->isAnimating:Z

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Leu/davidea/fastscroller/BubbleAnimator;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 80
    :cond_1
    iget-object v0, p0, Leu/davidea/fastscroller/BubbleAnimator;->bubble:Landroid/view/View;

    invoke-virtual {p0, v0}, Leu/davidea/fastscroller/BubbleAnimator;->createHideAnimator(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Leu/davidea/fastscroller/BubbleAnimator;->animator:Landroid/animation/ObjectAnimator;

    .line 81
    new-instance v1, Leu/davidea/fastscroller/BubbleAnimator$2;

    invoke-direct {v1, p0}, Leu/davidea/fastscroller/BubbleAnimator$2;-><init>(Leu/davidea/fastscroller/BubbleAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 97
    iget-object v0, p0, Leu/davidea/fastscroller/BubbleAnimator;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    const/4 v0, 0x1

    .line 98
    iput-boolean v0, p0, Leu/davidea/fastscroller/BubbleAnimator;->isAnimating:Z

    return-void
.end method

.method protected onHideAnimationStop(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x4

    .line 114
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected onShowAnimationStop(Landroid/view/View;)V
    .locals 0

    .line 0
    return-void
.end method

.method public showBubble()V
    .locals 2

    .line 36
    iget-object v0, p0, Leu/davidea/fastscroller/BubbleAnimator;->bubble:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    iget-boolean v0, p0, Leu/davidea/fastscroller/BubbleAnimator;->isAnimating:Z

    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p0, Leu/davidea/fastscroller/BubbleAnimator;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 44
    :cond_1
    iget-object v0, p0, Leu/davidea/fastscroller/BubbleAnimator;->bubble:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 45
    iget-object v0, p0, Leu/davidea/fastscroller/BubbleAnimator;->bubble:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 46
    iget-boolean v0, p0, Leu/davidea/fastscroller/BubbleAnimator;->isAnimating:Z

    if-eqz v0, :cond_2

    .line 47
    iget-object v0, p0, Leu/davidea/fastscroller/BubbleAnimator;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 49
    :cond_2
    iget-object v0, p0, Leu/davidea/fastscroller/BubbleAnimator;->bubble:Landroid/view/View;

    invoke-virtual {p0, v0}, Leu/davidea/fastscroller/BubbleAnimator;->createShowAnimator(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Leu/davidea/fastscroller/BubbleAnimator;->animator:Landroid/animation/ObjectAnimator;

    .line 50
    new-instance v1, Leu/davidea/fastscroller/BubbleAnimator$1;

    invoke-direct {v1, p0}, Leu/davidea/fastscroller/BubbleAnimator$1;-><init>(Leu/davidea/fastscroller/BubbleAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 66
    iget-object v0, p0, Leu/davidea/fastscroller/BubbleAnimator;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Leu/davidea/fastscroller/BubbleAnimator;->isAnimating:Z

    :cond_3
    :goto_0
    return-void
.end method
