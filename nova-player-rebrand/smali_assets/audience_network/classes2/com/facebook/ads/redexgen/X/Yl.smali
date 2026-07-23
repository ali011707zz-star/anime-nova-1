.class public final Lcom/facebook/ads/redexgen/X/Yl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/6x;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/6x;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/6x;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 74378
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Yl;->A00:Lcom/facebook/ads/redexgen/X/6x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    .line 74379
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yl;->A00:Lcom/facebook/ads/redexgen/X/6x;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6x;->A0A(Lcom/facebook/ads/redexgen/X/6x;)V

    .line 74380
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yl;->A00:Lcom/facebook/ads/redexgen/X/6x;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6x;->A00(Lcom/facebook/ads/redexgen/X/6x;)I

    move-result v0

    if-lez v0, :cond_0

    .line 74381
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yl;->A00:Lcom/facebook/ads/redexgen/X/6x;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6x;->A03(Lcom/facebook/ads/redexgen/X/6x;)Landroid/os/Handler;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yl;->A00:Lcom/facebook/ads/redexgen/X/6x;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6x;->A04(Lcom/facebook/ads/redexgen/X/6x;)Ljava/lang/Runnable;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yl;->A00:Lcom/facebook/ads/redexgen/X/6x;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6x;->A00(Lcom/facebook/ads/redexgen/X/6x;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 74382
    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .line 74383
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 74384
    return-void
.end method
