.class public abstract Lcom/facebook/ads/redexgen/X/RX;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static A00(Landroid/content/Context;)V
    .locals 2

    .line 62368
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Rp;->A03(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object p0

    new-instance v1, Lcom/facebook/ads/redexgen/X/RW;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/RW;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/RU;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/RU;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/RW;)V

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RU;->start()V

    .line 62369
    return-void
.end method
