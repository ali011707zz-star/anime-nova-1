.class public abstract Lcom/facebook/ads/redexgen/X/cy;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static A00(Lcom/facebook/ads/redexgen/X/c7;ILjava/lang/String;Lcom/facebook/ads/redexgen/X/Fy;)Lcom/facebook/ads/redexgen/X/67;
    .locals 1

    .line 79414
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 79415
    new-instance v0, Lcom/facebook/ads/redexgen/X/1G;

    invoke-direct {v0, p0, p2, p3}, Lcom/facebook/ads/redexgen/X/1G;-><init>(Lcom/facebook/ads/redexgen/X/c7;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Fy;)V

    .line 79416
    :goto_0
    return-object v0

    .line 79417
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/1H;

    invoke-direct {v0, p0, p2, p3}, Lcom/facebook/ads/redexgen/X/1H;-><init>(Lcom/facebook/ads/redexgen/X/c7;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Fy;)V

    goto :goto_0
.end method
