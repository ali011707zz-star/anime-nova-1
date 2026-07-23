.class public final Lcom/facebook/ads/redexgen/X/6I;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A0G:[B

.field public static A0H:[Ljava/lang/String;


# instance fields
.field public A00:I
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "The average time that it takes to decode frames expressed in milliseconds"
    .end annotation
.end field

.field public A01:I
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "The average time that it takes to render frames expressed in milliseconds"
    .end annotation
.end field

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:I

.field public A07:I

.field public A08:I

.field public A09:I

.field public A0A:I

.field public A0B:I

.field public A0C:I
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Total number of samples used to calculate average decode and render times"
    .end annotation
.end field

.field public A0D:I

.field public A0E:I
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "The number of frames that were in a gap and skipped as a result of it"
    .end annotation
.end field

.field public A0F:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 429
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "PO8jPPjsWkSohvoClx2DXSl8S5WX59Vo"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "WTC2lbEoOF"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "JF48xkVfbyUi8xBtmw"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "8DzCN5fkinelgfDbo7bZLAsZpLiI5tji"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "0XqHByXaOSOjXRziBAqROkukCru0GxwN"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "eULZ8KrR2sSax75EYp3yLx1S0uA0IndI"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "SEYTT"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "AcNYjN6U0IjRu5cSurFZ1FZkr4vsIKRe"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/6I;->A0H:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/6I;->A01()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/6I;->A0G:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x32

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x14d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/6I;->A0G:[B

    return-void

    :array_0
    .array-data 1
        0x13t
        0x32t
        0x34t
        0x38t
        0x33t
        0x32t
        0x25t
        0x14t
        0x38t
        0x22t
        0x39t
        0x23t
        0x32t
        0x25t
        0x24t
        0x77t
        0x2ct
        0x5dt
        0x77t
        0x33t
        0x32t
        0x34t
        0x38t
        0x33t
        0x32t
        0x25t
        0x1et
        0x39t
        0x3et
        0x23t
        0x24t
        0x6at
        0x72t
        0x24t
        0x7bt
        0x5dt
        0x77t
        0x33t
        0x32t
        0x34t
        0x38t
        0x33t
        0x32t
        0x25t
        0x5t
        0x32t
        0x3bt
        0x32t
        0x36t
        0x24t
        0x32t
        0x24t
        0x6at
        0x72t
        0x24t
        0x5dt
        0x77t
        0x26t
        0x22t
        0x32t
        0x22t
        0x32t
        0x33t
        0x1et
        0x39t
        0x27t
        0x22t
        0x23t
        0x15t
        0x22t
        0x31t
        0x31t
        0x32t
        0x25t
        0x24t
        0x6at
        0x72t
        0x24t
        0x5dt
        0x77t
        0x24t
        0x3ct
        0x3et
        0x27t
        0x27t
        0x32t
        0x33t
        0x1et
        0x39t
        0x27t
        0x22t
        0x23t
        0x15t
        0x22t
        0x31t
        0x31t
        0x32t
        0x25t
        0x24t
        0x6at
        0x72t
        0x24t
        0x5dt
        0x77t
        0x25t
        0x32t
        0x39t
        0x33t
        0x32t
        0x25t
        0x32t
        0x33t
        0x18t
        0x22t
        0x23t
        0x27t
        0x22t
        0x23t
        0x15t
        0x22t
        0x31t
        0x31t
        0x32t
        0x25t
        0x24t
        0x6at
        0x72t
        0x24t
        0x5dt
        0x77t
        0x24t
        0x3ct
        0x3et
        0x27t
        0x27t
        0x32t
        0x33t
        0x18t
        0x22t
        0x23t
        0x27t
        0x22t
        0x23t
        0x15t
        0x22t
        0x31t
        0x31t
        0x32t
        0x25t
        0x24t
        0x6at
        0x72t
        0x24t
        0x5dt
        0x77t
        0x33t
        0x25t
        0x38t
        0x27t
        0x27t
        0x32t
        0x33t
        0x15t
        0x22t
        0x31t
        0x31t
        0x32t
        0x25t
        0x24t
        0x6at
        0x72t
        0x24t
        0x5dt
        0x77t
        0x33t
        0x25t
        0x38t
        0x27t
        0x27t
        0x32t
        0x33t
        0x1et
        0x39t
        0x27t
        0x22t
        0x23t
        0x15t
        0x22t
        0x31t
        0x31t
        0x32t
        0x25t
        0x24t
        0x6at
        0x72t
        0x24t
        0x5dt
        0x77t
        0x3at
        0x36t
        0x2ft
        0x14t
        0x38t
        0x39t
        0x24t
        0x32t
        0x34t
        0x22t
        0x23t
        0x3et
        0x21t
        0x32t
        0x13t
        0x25t
        0x38t
        0x27t
        0x27t
        0x32t
        0x33t
        0x15t
        0x22t
        0x31t
        0x31t
        0x32t
        0x25t
        0x24t
        0x6at
        0x72t
        0x24t
        0x5dt
        0x77t
        0x33t
        0x25t
        0x38t
        0x27t
        0x27t
        0x32t
        0x33t
        0x3t
        0x38t
        0x1ct
        0x32t
        0x2et
        0x31t
        0x25t
        0x36t
        0x3at
        0x32t
        0x12t
        0x21t
        0x32t
        0x39t
        0x23t
        0x24t
        0x6at
        0x72t
        0x24t
        0x5dt
        0x77t
        0x23t
        0x38t
        0x23t
        0x36t
        0x3bt
        0x1t
        0x3et
        0x33t
        0x32t
        0x38t
        0x11t
        0x25t
        0x36t
        0x3at
        0x32t
        0x7t
        0x25t
        0x38t
        0x34t
        0x32t
        0x24t
        0x24t
        0x3et
        0x39t
        0x30t
        0x18t
        0x31t
        0x31t
        0x24t
        0x32t
        0x23t
        0x2t
        0x24t
        0x6at
        0x72t
        0x24t
        0x5dt
        0x77t
        0x21t
        0x3et
        0x33t
        0x32t
        0x38t
        0x11t
        0x25t
        0x36t
        0x3at
        0x32t
        0x7t
        0x25t
        0x38t
        0x34t
        0x32t
        0x24t
        0x24t
        0x3et
        0x39t
        0x30t
        0x18t
        0x31t
        0x31t
        0x24t
        0x32t
        0x23t
        0x14t
        0x38t
        0x22t
        0x39t
        0x23t
        0x6at
        0x72t
        0x24t
        0x5dt
        0x2at
    .end array-data
.end method


# virtual methods
.method public final declared-synchronized A02()V
    .locals 0

    monitor-enter p0

    .line 16412
    monitor-exit p0

    return-void
.end method

.method public final A03(J)V
    .locals 3
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    .end annotation

    .line 16413
    iget v0, p0, Lcom/facebook/ads/redexgen/X/6I;->A09:I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lcom/facebook/ads/redexgen/X/6I;->A01:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/6I;->A0H:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/6I;->A09:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    long-to-int v0, p1

    goto :goto_0

    .line 16414
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/6I;->A0H:[Ljava/lang/String;

    const-string v1, "yfB4vc6THQ"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-void
.end method

.method public final A04(Landroid/util/Pair;)V
    .locals 6
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 16415
    .local p1, "newSamplePerFrameDecodeTimeAndCount":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    iget v0, p0, Lcom/facebook/ads/redexgen/X/6I;->A0C:I

    int-to-long v4, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/6I;->A00:I

    int-to-long v0, v0

    mul-long/2addr v4, v0

    .line 16416
    .local v0, "currentTotalDecodeTime":J
    iget v1, p0, Lcom/facebook/ads/redexgen/X/6I;->A0C:I

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/6I;->A0C:I

    .line 16417
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 16418
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v2, v4

    .line 16419
    .local v2, "updatedTotalDecodeTime":J
    iget v0, p0, Lcom/facebook/ads/redexgen/X/6I;->A0C:I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lcom/facebook/ads/redexgen/X/6I;->A00:I

    .line 16420
    return-void

    .line 16421
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/6I;->A0C:I

    int-to-long v0, v0

    div-long/2addr v2, v0

    long-to-int v0, v2

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 14

    .line 16422
    iget v0, p0, Lcom/facebook/ads/redexgen/X/6I;->A02:I

    .line 16423
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget v0, p0, Lcom/facebook/ads/redexgen/X/6I;->A03:I

    .line 16424
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget v0, p0, Lcom/facebook/ads/redexgen/X/6I;->A08:I

    .line 16425
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget v0, p0, Lcom/facebook/ads/redexgen/X/6I;->A0A:I

    .line 16426
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget v0, p0, Lcom/facebook/ads/redexgen/X/6I;->A09:I

    .line 16427
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v0, p0, Lcom/facebook/ads/redexgen/X/6I;->A0B:I

    .line 16428
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v0, p0, Lcom/facebook/ads/redexgen/X/6I;->A04:I

    .line 16429
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v0, p0, Lcom/facebook/ads/redexgen/X/6I;->A05:I

    .line 16430
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v0, p0, Lcom/facebook/ads/redexgen/X/6I;->A07:I

    .line 16431
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Lcom/facebook/ads/redexgen/X/6I;->A06:I

    .line 16432
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/6I;->A0F:J

    .line 16433
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/6I;->A0D:I

    .line 16434
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v0, 0xc

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v13, v3, v0

    const/4 v0, 0x1

    aput-object v12, v3, v0

    const/4 v0, 0x2

    aput-object v11, v3, v0

    const/4 v0, 0x3

    aput-object v10, v3, v0

    const/4 v0, 0x4

    aput-object v9, v3, v0

    const/4 v0, 0x5

    aput-object v8, v3, v0

    const/4 v0, 0x6

    aput-object v7, v3, v0

    const/4 v0, 0x7

    aput-object v6, v3, v0

    const/16 v0, 0x8

    aput-object v5, v3, v0

    const/16 v0, 0x9

    aput-object v4, v3, v0

    const/16 v0, 0xa

    aput-object v2, v3, v0

    const/16 v0, 0xb

    aput-object v1, v3, v0

    .line 16435
    const/4 v2, 0x0

    const/16 v1, 0x14d

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6I;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/5C;->A0n(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
