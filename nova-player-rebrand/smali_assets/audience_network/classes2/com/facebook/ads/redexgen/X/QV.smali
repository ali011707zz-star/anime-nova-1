.class public final Lcom/facebook/ads/redexgen/X/QV;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/7P;->A0d(Lcom/facebook/ads/redexgen/X/RK;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Landroid/view/View;

.field public final synthetic A01:Landroid/view/ViewPropertyAnimator;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/7P;

.field public final synthetic A03:Lcom/facebook/ads/redexgen/X/RK;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7P;Lcom/facebook/ads/redexgen/X/RK;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 60192
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/QV;->A02:Lcom/facebook/ads/redexgen/X/7P;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/QV;->A03:Lcom/facebook/ads/redexgen/X/RK;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/QV;->A00:Landroid/view/View;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/QV;->A01:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 60193
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/QV;->A00:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 60194
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 60195
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/QV;->A01:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 60196
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/QV;->A02:Lcom/facebook/ads/redexgen/X/7P;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QV;->A03:Lcom/facebook/ads/redexgen/X/RK;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ha;->A0T(Lcom/facebook/ads/redexgen/X/RK;)V

    .line 60197
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QV;->A02:Lcom/facebook/ads/redexgen/X/7P;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/7P;->A00:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QV;->A03:Lcom/facebook/ads/redexgen/X/RK;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 60198
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QV;->A02:Lcom/facebook/ads/redexgen/X/7P;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7P;->A0b()V

    .line 60199
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 60200
    return-void
.end method
