.class public final Lcom/facebook/ads/redexgen/X/76;
.super Lcom/facebook/ads/redexgen/X/gi;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/TA;Lcom/facebook/ads/redexgen/X/Lx;)V
    .locals 1

    .line 18465
    if-nez p3, :cond_0

    new-instance v0, Lcom/facebook/ads/redexgen/X/8C;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/8C;-><init>()V

    .line 18466
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/gi;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/TA;Lcom/facebook/ads/redexgen/X/Lt;)V

    .line 18467
    return-void

    .line 18468
    :cond_0
    invoke-interface {p3}, Lcom/facebook/ads/redexgen/X/Lx;->ACL()Lcom/facebook/ads/redexgen/X/8J;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic A0F()Lcom/facebook/ads/redexgen/X/Lt;
    .locals 1

    .line 18469
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/76;->A0R()Lcom/facebook/ads/redexgen/X/kf;

    move-result-object v0

    return-object v0
.end method

.method public final A0R()Lcom/facebook/ads/redexgen/X/kf;
    .locals 1

    .line 18470
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/kf;

    return-object v0
.end method
