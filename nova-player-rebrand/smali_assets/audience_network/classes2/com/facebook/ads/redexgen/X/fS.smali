.class public final Lcom/facebook/ads/redexgen/X/fS;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/DA;->A08(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/DA;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/DA;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 82376
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/fS;->A00:Lcom/facebook/ads/redexgen/X/DA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 82377
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/fS;->A00:Lcom/facebook/ads/redexgen/X/DA;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/DA;->A07(Lcom/facebook/ads/redexgen/X/DA;Z)V

    .line 82378
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fS;->A00:Lcom/facebook/ads/redexgen/X/DA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/DA;->A05(Lcom/facebook/ads/redexgen/X/DA;)V

    .line 82379
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 82380
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/fS;->A00:Lcom/facebook/ads/redexgen/X/DA;

    sget-object v0, Lcom/facebook/ads/redexgen/X/fJ;->A04:Lcom/facebook/ads/redexgen/X/fJ;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/DA;->A03(Lcom/facebook/ads/redexgen/X/DA;Lcom/facebook/ads/redexgen/X/fJ;)Lcom/facebook/ads/redexgen/X/fJ;

    .line 82381
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fS;->A00:Lcom/facebook/ads/redexgen/X/DA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/DA;->A02(Lcom/facebook/ads/redexgen/X/DA;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0H(Landroid/view/View;)V

    .line 82382
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fS;->A00:Lcom/facebook/ads/redexgen/X/DA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/DA;->A05(Lcom/facebook/ads/redexgen/X/DA;)V

    .line 82383
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 82384
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 82385
    return-void
.end method
