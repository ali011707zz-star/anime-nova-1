.class public final Lcom/facebook/ads/redexgen/X/mt;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Hd;


# instance fields
.field public final A00:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 99588
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99589
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mt;->A00:[B

    .line 99590
    return-void
.end method


# virtual methods
.method public final A6e(Lcom/facebook/ads/redexgen/X/qI;)V
    .locals 0

    .line 99591
    return-void
.end method

.method public final synthetic AIp(Lcom/facebook/ads/redexgen/X/2c;IZ)I
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Ha;->A00(Lcom/facebook/ads/redexgen/X/Hd;Lcom/facebook/ads/redexgen/X/2c;IZ)I

    move-result v0

    return v0
.end method

.method public final AIq(Lcom/facebook/ads/redexgen/X/2c;IZI)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99592
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mt;->A00:[B

    array-length v0, v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 99593
    .local v0, "bytesToSkipByReading":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/mt;->A00:[B

    const/4 v0, 0x0

    invoke-interface {p1, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/2c;->read([BII)I

    move-result v1

    .line 99594
    .local v1, "bytesSkipped":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    .line 99595
    if-eqz p3, :cond_0

    .line 99596
    return v0

    .line 99597
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 99598
    :cond_1
    return v1
.end method

.method public final synthetic AIr(Lcom/facebook/ads/redexgen/X/4v;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ha;->A01(Lcom/facebook/ads/redexgen/X/Hd;Lcom/facebook/ads/redexgen/X/4v;I)V

    return-void
.end method

.method public final AIs(Lcom/facebook/ads/redexgen/X/4v;II)V
    .locals 0

    .line 99599
    invoke-virtual {p1, p2}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 99600
    return-void
.end method

.method public final AIu(JIIILcom/facebook/ads/redexgen/X/Hb;)V
    .locals 0

    .line 99601
    return-void
.end method

.method public final AKf(Landroid/net/Uri;)V
    .locals 0
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "New API added for Meta"
    .end annotation

    .line 99602
    return-void
.end method
