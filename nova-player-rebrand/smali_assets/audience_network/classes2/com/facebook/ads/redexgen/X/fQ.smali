.class public final Lcom/facebook/ads/redexgen/X/fQ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/DB;->A06(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:I

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/DB;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/DB;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 82349
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/fQ;->A02:Lcom/facebook/ads/redexgen/X/DB;

    iput p2, p0, Lcom/facebook/ads/redexgen/X/fQ;->A01:I

    iput p3, p0, Lcom/facebook/ads/redexgen/X/fQ;->A00:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 4

    .line 82350
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/fQ;->A02:Lcom/facebook/ads/redexgen/X/DB;

    iget v2, p0, Lcom/facebook/ads/redexgen/X/fQ;->A00:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/fQ;->A01:I

    const/4 v0, 0x0

    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DB;->A08(Lcom/facebook/ads/redexgen/X/DB;IIZ)V

    .line 82351
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fQ;->A02:Lcom/facebook/ads/redexgen/X/DB;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/DB;->A01(Lcom/facebook/ads/redexgen/X/DB;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82352
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fQ;->A02:Lcom/facebook/ads/redexgen/X/DB;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/DB;->A01(Lcom/facebook/ads/redexgen/X/DB;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 82353
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/fQ;->A02:Lcom/facebook/ads/redexgen/X/DB;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/DB;->A02(Lcom/facebook/ads/redexgen/X/DB;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 82354
    :cond_0
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 82355
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/fQ;->A02:Lcom/facebook/ads/redexgen/X/DB;

    .line 82356
    iget v1, p0, Lcom/facebook/ads/redexgen/X/fQ;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fQ;->A02:Lcom/facebook/ads/redexgen/X/DB;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/DB;->A00(Lcom/facebook/ads/redexgen/X/DB;)I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 82357
    sget-object v0, Lcom/facebook/ads/redexgen/X/fJ;->A02:Lcom/facebook/ads/redexgen/X/fJ;

    .line 82358
    :goto_0
    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/DB;->A03(Lcom/facebook/ads/redexgen/X/DB;Lcom/facebook/ads/redexgen/X/fJ;)Lcom/facebook/ads/redexgen/X/fJ;

    .line 82359
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fQ;->A02:Lcom/facebook/ads/redexgen/X/DB;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/DB;->A01(Lcom/facebook/ads/redexgen/X/DB;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82360
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fQ;->A02:Lcom/facebook/ads/redexgen/X/DB;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/DB;->A01(Lcom/facebook/ads/redexgen/X/DB;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 82361
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/fQ;->A02:Lcom/facebook/ads/redexgen/X/DB;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/DB;->A02(Lcom/facebook/ads/redexgen/X/DB;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 82362
    :cond_0
    return-void

    .line 82363
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/fJ;->A04:Lcom/facebook/ads/redexgen/X/fJ;

    goto :goto_0
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 82364
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 82365
    return-void
.end method
