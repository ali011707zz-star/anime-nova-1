.class public final Lcom/facebook/ads/redexgen/X/fL;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/DR;->A08(Z)V
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

    .line 82291
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/fL;->A00:Lcom/facebook/ads/redexgen/X/DR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 82292
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/fL;->A00:Lcom/facebook/ads/redexgen/X/DR;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/DR;->A05(Lcom/facebook/ads/redexgen/X/DR;Z)V

    .line 82293
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 82294
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/fL;->A00:Lcom/facebook/ads/redexgen/X/DR;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/DR;->A02(Lcom/facebook/ads/redexgen/X/DR;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 82295
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/fL;->A00:Lcom/facebook/ads/redexgen/X/DR;

    sget-object v0, Lcom/facebook/ads/redexgen/X/fJ;->A02:Lcom/facebook/ads/redexgen/X/fJ;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/DR;->A04(Lcom/facebook/ads/redexgen/X/DR;Lcom/facebook/ads/redexgen/X/fJ;)Lcom/facebook/ads/redexgen/X/fJ;

    .line 82296
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 82297
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 82298
    return-void
.end method
