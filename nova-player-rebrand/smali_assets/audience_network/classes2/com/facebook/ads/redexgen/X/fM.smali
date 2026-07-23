.class public final Lcom/facebook/ads/redexgen/X/fM;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/DR;->A07(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/DR;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/DR;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 82299
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/fM;->A00:Lcom/facebook/ads/redexgen/X/DR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 82300
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/fM;->A00:Lcom/facebook/ads/redexgen/X/DR;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/DR;->A06(Lcom/facebook/ads/redexgen/X/DR;Z)V

    .line 82301
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fM;->A00:Lcom/facebook/ads/redexgen/X/DR;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/DR;->A01(Lcom/facebook/ads/redexgen/X/DR;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82302
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fM;->A00:Lcom/facebook/ads/redexgen/X/DR;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/DR;->A01(Lcom/facebook/ads/redexgen/X/DR;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 82303
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/fM;->A00:Lcom/facebook/ads/redexgen/X/DR;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/DR;->A02(Lcom/facebook/ads/redexgen/X/DR;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 82304
    :cond_0
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 82305
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/fM;->A00:Lcom/facebook/ads/redexgen/X/DR;

    sget-object v0, Lcom/facebook/ads/redexgen/X/fJ;->A04:Lcom/facebook/ads/redexgen/X/fJ;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/DR;->A04(Lcom/facebook/ads/redexgen/X/DR;Lcom/facebook/ads/redexgen/X/fJ;)Lcom/facebook/ads/redexgen/X/fJ;

    .line 82306
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fM;->A00:Lcom/facebook/ads/redexgen/X/DR;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/DR;->A03(Lcom/facebook/ads/redexgen/X/DR;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0H(Landroid/view/View;)V

    .line 82307
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fM;->A00:Lcom/facebook/ads/redexgen/X/DR;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/DR;->A01(Lcom/facebook/ads/redexgen/X/DR;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82308
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fM;->A00:Lcom/facebook/ads/redexgen/X/DR;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/DR;->A01(Lcom/facebook/ads/redexgen/X/DR;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 82309
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/fM;->A00:Lcom/facebook/ads/redexgen/X/DR;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/DR;->A02(Lcom/facebook/ads/redexgen/X/DR;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 82310
    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 82311
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 82312
    return-void
.end method
