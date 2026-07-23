.class public abstract Lcom/facebook/ads/redexgen/X/Ut;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static A00(Lcom/facebook/ads/redexgen/X/ge;Lcom/facebook/ads/redexgen/X/CY;)V
    .locals 2

    .line 68882
    sget-object v0, Lcom/facebook/ads/redexgen/X/gL;->A07:Lcom/facebook/ads/redexgen/X/gL;

    .line 68883
    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/CY;->A5U(Lcom/facebook/ads/redexgen/X/gL;)Lcom/facebook/ads/redexgen/X/gK;

    move-result-object v1

    .line 68884
    .local v0, "syncBundle":Lcom/facebook/ads/redexgen/X/gK;
    new-instance v0, Lcom/facebook/ads/redexgen/X/Xu;

    invoke-direct {v0, v1, p0}, Lcom/facebook/ads/redexgen/X/Xu;-><init>(Lcom/facebook/ads/redexgen/X/gK;Lcom/facebook/ads/redexgen/X/ge;)V

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/gK;->A41(Lcom/facebook/ads/redexgen/X/gM;)V

    .line 68885
    return-void
.end method
