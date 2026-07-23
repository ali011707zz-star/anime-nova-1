.class public abstract synthetic Lcom/facebook/ads/redexgen/X/3T;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static A00(Lcom/facebook/ads/redexgen/X/3U;Lcom/facebook/ads/androidx/media3/common/Timeline;I)V
    .locals 1

    .line 10579
    .local v0, "manifest":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A07()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 10580
    new-instance p0, Lcom/facebook/ads/redexgen/X/pj;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/pj;-><init>()V

    .line 10581
    .local p0, "window":Lcom/facebook/ads/redexgen/X/pj;
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0K(ILcom/facebook/ads/redexgen/X/pj;)Lcom/facebook/ads/redexgen/X/pj;

    .line 10582
    .end local p0    # "window":Lcom/facebook/ads/redexgen/X/pj;
    :cond_0
    return-void
.end method
