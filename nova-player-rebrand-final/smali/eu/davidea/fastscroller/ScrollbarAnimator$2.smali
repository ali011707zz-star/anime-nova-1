.class Leu/davidea/fastscroller/ScrollbarAnimator$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ScrollbarAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/davidea/fastscroller/ScrollbarAnimator;->hideScrollbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Leu/davidea/fastscroller/ScrollbarAnimator;


# direct methods
.method constructor <init>(Leu/davidea/fastscroller/ScrollbarAnimator;)V
    .locals 0

    .line 95
    iput-object p1, p0, Leu/davidea/fastscroller/ScrollbarAnimator$2;->this$0:Leu/davidea/fastscroller/ScrollbarAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 105
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 106
    iget-object p1, p0, Leu/davidea/fastscroller/ScrollbarAnimator$2;->this$0:Leu/davidea/fastscroller/ScrollbarAnimator;

    iget-object v0, p1, Leu/davidea/fastscroller/ScrollbarAnimator;->bar:Landroid/view/View;

    iget-object v1, p1, Leu/davidea/fastscroller/ScrollbarAnimator;->handle:Landroid/view/View;

    invoke-virtual {p1, v0, v1}, Leu/davidea/fastscroller/ScrollbarAnimator;->onHideAnimationStop(Landroid/view/View;Landroid/view/View;)V

    .line 107
    iget-object p1, p0, Leu/davidea/fastscroller/ScrollbarAnimator$2;->this$0:Leu/davidea/fastscroller/ScrollbarAnimator;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Leu/davidea/fastscroller/ScrollbarAnimator;->access$002(Leu/davidea/fastscroller/ScrollbarAnimator;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 98
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 99
    iget-object p1, p0, Leu/davidea/fastscroller/ScrollbarAnimator$2;->this$0:Leu/davidea/fastscroller/ScrollbarAnimator;

    iget-object v0, p1, Leu/davidea/fastscroller/ScrollbarAnimator;->bar:Landroid/view/View;

    iget-object v1, p1, Leu/davidea/fastscroller/ScrollbarAnimator;->handle:Landroid/view/View;

    invoke-virtual {p1, v0, v1}, Leu/davidea/fastscroller/ScrollbarAnimator;->onHideAnimationStop(Landroid/view/View;Landroid/view/View;)V

    .line 100
    iget-object p1, p0, Leu/davidea/fastscroller/ScrollbarAnimator$2;->this$0:Leu/davidea/fastscroller/ScrollbarAnimator;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Leu/davidea/fastscroller/ScrollbarAnimator;->access$002(Leu/davidea/fastscroller/ScrollbarAnimator;Z)Z

    return-void
.end method
