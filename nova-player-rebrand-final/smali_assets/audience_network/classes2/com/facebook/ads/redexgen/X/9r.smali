.class public final Lcom/facebook/ads/redexgen/X/9r;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/pF;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Cp;
    }
.end annotation


# instance fields
.field public A00:I

.field public final A01:I

.field public final A02:Lcom/facebook/ads/redexgen/X/pF;

.field public final A03:Lcom/facebook/ads/redexgen/X/Cp;

.field public final A04:[B


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/pF;ILcom/facebook/ads/redexgen/X/Cp;)V
    .locals 2

    .line 26292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26293
    const/4 v1, 0x1

    if-lez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A07(Z)V

    .line 26294
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9r;->A02:Lcom/facebook/ads/redexgen/X/pF;

    .line 26295
    iput p2, p0, Lcom/facebook/ads/redexgen/X/9r;->A01:I

    .line 26296
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/9r;->A03:Lcom/facebook/ads/redexgen/X/Cp;

    .line 26297
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9r;->A04:[B

    .line 26298
    iput p2, p0, Lcom/facebook/ads/redexgen/X/9r;->A00:I

    .line 26299
    return-void

    .line 26300
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A00()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26301
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9r;->A02:Lcom/facebook/ads/redexgen/X/pF;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9r;->A04:[B

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-interface {v1, v0, v7, v6}, Lcom/facebook/ads/redexgen/X/2c;->read([BII)I

    move-result v0

    .line 26302
    .local v0, "bytesRead":I
    const/4 v5, -0x1

    if-ne v0, v5, :cond_0

    .line 26303
    return v7

    .line 26304
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9r;->A04:[B

    aget-byte v0, v0, v7

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v4, v0, 0x4

    .line 26305
    .local v4, "metadataLength":I
    if-nez v4, :cond_1

    .line 26306
    return v6

    .line 26307
    :cond_1
    const/4 v3, 0x0

    .line 26308
    .local v5, "offset":I
    move v1, v4

    .line 26309
    .local v6, "lengthRemaining":I
    new-array v2, v4, [B

    .line 26310
    .local v7, "metadata":[B
    :goto_0
    if-lez v1, :cond_3

    .line 26311
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9r;->A02:Lcom/facebook/ads/redexgen/X/pF;

    invoke-interface {v0, v2, v3, v1}, Lcom/facebook/ads/redexgen/X/2c;->read([BII)I

    move-result v0

    .line 26312
    if-ne v0, v5, :cond_2

    .line 26313
    return v7

    .line 26314
    :cond_2
    add-int/2addr v3, v0

    .line 26315
    sub-int/2addr v1, v0

    goto :goto_0

    .line 26316
    :cond_3
    :goto_1
    if-lez v4, :cond_4

    add-int/lit8 v0, v4, -0x1

    aget-byte v0, v2, v0

    if-nez v0, :cond_4

    .line 26317
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 26318
    :cond_4
    if-lez v4, :cond_5

    .line 26319
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9r;->A03:Lcom/facebook/ads/redexgen/X/Cp;

    new-instance v0, Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {v0, v2, v4}, Lcom/facebook/ads/redexgen/X/4v;-><init>([BI)V

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Cp;->AE5(Lcom/facebook/ads/redexgen/X/4v;)V

    .line 26320
    :cond_5
    return v6
.end method


# virtual methods
.method public final A43(Lcom/facebook/ads/redexgen/X/5t;)V
    .locals 1

    .line 26321
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26322
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9r;->A02:Lcom/facebook/ads/redexgen/X/pF;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/pF;->A43(Lcom/facebook/ads/redexgen/X/5t;)V

    .line 26323
    return-void
.end method

.method public final A8t()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 26324
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9r;->A02:Lcom/facebook/ads/redexgen/X/pF;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/pF;->A8t()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final A9P()Landroid/net/Uri;
    .locals 1

    .line 26325
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9r;->A02:Lcom/facebook/ads/redexgen/X/pF;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/pF;->A9P()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final AGi(Lcom/facebook/ads/redexgen/X/5i;)J
    .locals 1

    .line 26326
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final close()V
    .locals 1

    .line 26327
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26328
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9r;->A00:I

    const/4 v2, -0x1

    if-nez v0, :cond_0

    .line 26329
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9r;->A00()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 26330
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9r;->A01:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/9r;->A00:I

    .line 26331
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9r;->A02:Lcom/facebook/ads/redexgen/X/pF;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9r;->A00:I

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-interface {v1, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/2c;->read([BII)I

    move-result v1

    .line 26332
    .local v0, "bytesRead":I
    if-eq v1, v2, :cond_1

    .line 26333
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9r;->A00:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/9r;->A00:I

    .line 26334
    :cond_1
    return v1

    .line 26335
    :cond_2
    return v2
.end method
