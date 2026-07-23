.class public final Lcom/facebook/ads/redexgen/X/5z;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/5y;
    }
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:[B

.field public A05:[B

.field public A06:[I

.field public A07:[I

.field public final A08:Landroid/media/MediaCodec$CryptoInfo;

.field public final A09:Lcom/facebook/ads/redexgen/X/5y;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 15412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15413
    new-instance v0, Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$CryptoInfo;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5z;->A08:Landroid/media/MediaCodec$CryptoInfo;

    .line 15414
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x18

    const/4 v2, 0x0

    if-lt v1, v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5z;->A08:Landroid/media/MediaCodec$CryptoInfo;

    new-instance v0, Lcom/facebook/ads/redexgen/X/5y;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/5y;-><init>(Landroid/media/MediaCodec$CryptoInfo;Lcom/facebook/ads/redexgen/X/5x;)V

    move-object v2, v0

    :cond_0
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/5z;->A09:Lcom/facebook/ads/redexgen/X/5y;

    .line 15415
    return-void
.end method


# virtual methods
.method public final A00()Landroid/media/MediaCodec$CryptoInfo;
    .locals 1

    .line 15416
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5z;->A08:Landroid/media/MediaCodec$CryptoInfo;

    return-object v0
.end method

.method public final A01(I)V
    .locals 3

    .line 15417
    if-nez p1, :cond_0

    .line 15418
    return-void

    .line 15419
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5z;->A06:[I

    if-nez v0, :cond_1

    .line 15420
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5z;->A06:[I

    .line 15421
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5z;->A08:Landroid/media/MediaCodec$CryptoInfo;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5z;->A06:[I

    iput-object v0, v1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 15422
    :cond_1
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/5z;->A06:[I

    const/4 v1, 0x0

    aget v0, v2, v1

    add-int/2addr v0, p1

    aput v0, v2, v1

    .line 15423
    return-void
.end method

.method public final A02(I[I[I[B[BIII)V
    .locals 2

    .line 15424
    iput p1, p0, Lcom/facebook/ads/redexgen/X/5z;->A03:I

    .line 15425
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/5z;->A06:[I

    .line 15426
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/5z;->A07:[I

    .line 15427
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/5z;->A05:[B

    .line 15428
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/5z;->A04:[B

    .line 15429
    iput p6, p0, Lcom/facebook/ads/redexgen/X/5z;->A02:I

    .line 15430
    iput p7, p0, Lcom/facebook/ads/redexgen/X/5z;->A01:I

    .line 15431
    iput p8, p0, Lcom/facebook/ads/redexgen/X/5z;->A00:I

    .line 15432
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5z;->A08:Landroid/media/MediaCodec$CryptoInfo;

    iput p1, v0, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    .line 15433
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5z;->A08:Landroid/media/MediaCodec$CryptoInfo;

    iput-object p2, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 15434
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5z;->A08:Landroid/media/MediaCodec$CryptoInfo;

    iput-object p3, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    .line 15435
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5z;->A08:Landroid/media/MediaCodec$CryptoInfo;

    iput-object p4, v0, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    .line 15436
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5z;->A08:Landroid/media/MediaCodec$CryptoInfo;

    iput-object p5, v0, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    .line 15437
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5z;->A08:Landroid/media/MediaCodec$CryptoInfo;

    iput p6, v0, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    .line 15438
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x18

    if-lt v1, v0, :cond_0

    .line 15439
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5z;->A09:Lcom/facebook/ads/redexgen/X/5y;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/5y;

    invoke-static {v0, p7, p8}, Lcom/facebook/ads/redexgen/X/5y;->A01(Lcom/facebook/ads/redexgen/X/5y;II)V

    .line 15440
    :cond_0
    return-void
.end method
