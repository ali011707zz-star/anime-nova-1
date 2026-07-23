.class public final Lcom/facebook/ads/redexgen/X/Kq;
.super Lcom/facebook/ads/redexgen/X/Wc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/bb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/bb;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/bb;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 48667
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Kq;->A00:Lcom/facebook/ads/redexgen/X/bb;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wc;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 4

    .line 48668
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kq;->A00:Lcom/facebook/ads/redexgen/X/bb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bb;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48669
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Kq;->A00:Lcom/facebook/ads/redexgen/X/bb;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kq;->A00:Lcom/facebook/ads/redexgen/X/bb;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bb;->A06(Lcom/facebook/ads/redexgen/X/bb;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v2, p0, v0, v1}, Lcom/facebook/ads/redexgen/X/bb;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 48670
    return-void

    .line 48671
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Kq;->A00:Lcom/facebook/ads/redexgen/X/bb;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bb;->setPressed(Z)V

    .line 48672
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Kq;->A00:Lcom/facebook/ads/redexgen/X/bb;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kq;->A00:Lcom/facebook/ads/redexgen/X/bb;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bb;->A07(Lcom/facebook/ads/redexgen/X/bb;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v0, 0xfa

    invoke-virtual {v3, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/bb;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 48673
    return-void
.end method
