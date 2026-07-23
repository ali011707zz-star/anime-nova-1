.class public final Lcom/facebook/ads/redexgen/X/8i;
.super Lcom/facebook/ads/redexgen/X/mx;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/mF;


# direct methods
.method public constructor <init>(JJLcom/facebook/ads/redexgen/X/HN;Z)V
    .locals 8

    .line 23219
    iget v5, p5, Lcom/facebook/ads/redexgen/X/HN;->A00:I

    iget v6, p5, Lcom/facebook/ads/redexgen/X/HN;->A02:I

    move-object v0, p0

    move-wide v3, p3

    move v7, p6

    move-wide v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/mx;-><init>(JJIIZ)V

    .line 23220
    return-void
.end method


# virtual methods
.method public final A7j()J
    .locals 2

    .line 23221
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final A9H(J)J
    .locals 2

    .line 23222
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/mx;->A02(J)J

    move-result-wide v0

    return-wide v0
.end method
