.class public final Lcom/facebook/ads/redexgen/X/cf;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Ji;->A0q(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Ji;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ji;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 79338
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cf;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 79339
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cf;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ji;->A06(Lcom/facebook/ads/redexgen/X/Ji;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79340
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cf;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ji;->A06(Lcom/facebook/ads/redexgen/X/Ji;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 79341
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cf;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ji;->A06(Lcom/facebook/ads/redexgen/X/Ji;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 79342
    :cond_0
    return-void
.end method
