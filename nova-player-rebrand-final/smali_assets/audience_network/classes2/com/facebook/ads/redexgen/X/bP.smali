.class public final Lcom/facebook/ads/redexgen/X/bP;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/bR;->A05()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/bR;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/bR;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 77691
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bP;->A00:Lcom/facebook/ads/redexgen/X/bR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 77692
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 77693
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bP;->A00:Lcom/facebook/ads/redexgen/X/bR;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bR;->A08(Lcom/facebook/ads/redexgen/X/bR;)V

    .line 77694
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bP;->A00:Lcom/facebook/ads/redexgen/X/bR;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/bR;->A0C(Lcom/facebook/ads/redexgen/X/bR;Z)Z

    .line 77695
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bP;->A00:Lcom/facebook/ads/redexgen/X/bR;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bR;->A02(Lcom/facebook/ads/redexgen/X/bR;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->ADF()V

    .line 77696
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 77697
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 77698
    return-void
.end method
