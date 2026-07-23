.class public abstract Lcom/facebook/ads/redexgen/X/5u;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public A00:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00(I)V
    .locals 1

    .line 15383
    iget v0, p0, Lcom/facebook/ads/redexgen/X/5u;->A00:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/5u;->A00:I

    .line 15384
    return-void
.end method

.method public final A01(I)V
    .locals 2

    .line 15385
    iget v1, p0, Lcom/facebook/ads/redexgen/X/5u;->A00:I

    not-int v0, p1

    and-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/5u;->A00:I

    .line 15386
    return-void
.end method

.method public final A02(I)V
    .locals 0

    .line 15387
    iput p1, p0, Lcom/facebook/ads/redexgen/X/5u;->A00:I

    .line 15388
    return-void
.end method

.method public final A03()Z
    .locals 1

    .line 15389
    const/high16 v0, 0x10000000

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/5u;->A09(I)Z

    move-result v0

    return v0
.end method

.method public final A04()Z
    .locals 1

    .line 15390
    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/5u;->A09(I)Z

    move-result v0

    return v0
.end method

.method public final A05()Z
    .locals 1

    .line 15391
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/5u;->A09(I)Z

    move-result v0

    return v0
.end method

.method public final A06()Z
    .locals 1

    .line 15392
    const/high16 v0, 0x8000000

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/5u;->A09(I)Z

    move-result v0

    return v0
.end method

.method public final A07()Z
    .locals 1

    .line 15393
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/5u;->A09(I)Z

    move-result v0

    return v0
.end method

.method public final A08()Z
    .locals 1
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Add method to determine if we are at the last sample"
    .end annotation

    .line 15394
    const/high16 v0, 0x20000000

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/5u;->A09(I)Z

    move-result v0

    return v0
.end method

.method public final A09(I)Z
    .locals 1

    .line 15395
    iget v0, p0, Lcom/facebook/ads/redexgen/X/5u;->A00:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public A0A()V
    .locals 1

    .line 15396
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/5u;->A00:I

    .line 15397
    return-void
.end method
