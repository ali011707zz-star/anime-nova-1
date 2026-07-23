.class Leu/davidea/fastscroller/BubbleAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BubbleAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/davidea/fastscroller/BubbleAnimator;->showBubble()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Leu/davidea/fastscroller/BubbleAnimator;


# direct methods
.method constructor <init>(Leu/davidea/fastscroller/BubbleAnimator;)V
    .locals 0

    .line 50
    iput-object p1, p0, Leu/davidea/fastscroller/BubbleAnimator$1;->this$0:Leu/davidea/fastscroller/BubbleAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 53
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 54
    iget-object p1, p0, Leu/davidea/fastscroller/BubbleAnimator$1;->this$0:Leu/davidea/fastscroller/BubbleAnimator;

    iget-object v0, p1, Leu/davidea/fastscroller/BubbleAnimator;->bubble:Landroid/view/View;

    invoke-virtual {p1, v0}, Leu/davidea/fastscroller/BubbleAnimator;->onShowAnimationStop(Landroid/view/View;)V

    .line 55
    iget-object p1, p0, Leu/davidea/fastscroller/BubbleAnimator$1;->this$0:Leu/davidea/fastscroller/BubbleAnimator;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Leu/davidea/fastscroller/BubbleAnimator;->access$002(Leu/davidea/fastscroller/BubbleAnimator;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 60
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 61
    iget-object p1, p0, Leu/davidea/fastscroller/BubbleAnimator$1;->this$0:Leu/davidea/fastscroller/BubbleAnimator;

    iget-object v0, p1, Leu/davidea/fastscroller/BubbleAnimator;->bubble:Landroid/view/View;

    invoke-virtual {p1, v0}, Leu/davidea/fastscroller/BubbleAnimator;->onShowAnimationStop(Landroid/view/View;)V

    .line 62
    iget-object p1, p0, Leu/davidea/fastscroller/BubbleAnimator$1;->this$0:Leu/davidea/fastscroller/BubbleAnimator;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Leu/davidea/fastscroller/BubbleAnimator;->access$002(Leu/davidea/fastscroller/BubbleAnimator;Z)Z

    return-void
.end method
