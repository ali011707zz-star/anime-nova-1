.class public abstract Lcom/facebook/ads/redexgen/X/qP;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/3b;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/pj;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 105585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105586
    new-instance v0, Lcom/facebook/ads/redexgen/X/pj;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/pj;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/qP;->A00:Lcom/facebook/ads/redexgen/X/pj;

    .line 105587
    return-void
.end method


# virtual methods
.method public final A00()I
    .locals 9

    .line 105588
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/3b;->A77()J

    move-result-wide v7

    .line 105589
    .local v0, "position":J
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/3b;->A7s()J

    move-result-wide v5

    .line 105590
    .local v2, "duration":J
    const/4 v4, 0x0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v7, v1

    if-eqz v0, :cond_0

    cmp-long v0, v5, v1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v4

    .line 105591
    :cond_1
    const-wide/16 v1, 0x0

    const/16 v3, 0x64

    cmp-long v0, v5, v1

    if-nez v0, :cond_2

    const/16 v4, 0x64

    goto :goto_0

    :cond_2
    const-wide/16 v1, 0x64

    mul-long/2addr v1, v7

    div-long/2addr v1, v5

    long-to-int v0, v1

    invoke-static {v0, v4, v3}, Lcom/facebook/ads/redexgen/X/5C;->A07(III)I

    move-result v4

    goto :goto_0
.end method

.method public A01()V
    .locals 1

    .line 105592
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/facebook/ads/redexgen/X/3b;->AKG(Z)V

    .line 105593
    return-void
.end method

.method public final A02()V
    .locals 1

    .line 105594
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/3b;->A7h()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/qP;->A03(I)V

    .line 105595
    return-void
.end method

.method public final A03(I)V
    .locals 2

    .line 105596
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/qP;->A0H(IJ)V

    .line 105597
    return-void
.end method

.method public final A04(J)V
    .locals 1

    .line 105598
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/3b;->A7h()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/qP;->A0H(IJ)V

    .line 105599
    return-void
.end method

.method public abstract A0H(IJ)V
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Should be final"
    .end annotation
.end method
