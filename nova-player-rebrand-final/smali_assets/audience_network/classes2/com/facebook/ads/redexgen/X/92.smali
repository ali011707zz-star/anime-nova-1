.class public final Lcom/facebook/ads/redexgen/X/92;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/90;,
        Lcom/facebook/ads/androidx/media3/exoplayer/audio/AudioTimestampPoller$State;
    }
.end annotation


# static fields
.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:J

.field public A02:J

.field public A03:J

.field public A04:J

.field public final A05:Lcom/facebook/ads/redexgen/X/90;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 535
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "nhk"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "6wGu"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "R2WrInr05AqD6"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "BdEvLx16NkmWuQrDJldKvob3T9iK8w4Y"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "M6vHIG3eEec4aewABnTFZg6yiBplWKQQ"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "QcLcQkrsijLVHbF72gur0"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "onHOAzLdE60eB9RAzeJwCwAMM5cMFU2V"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/92;->A06:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/media/AudioTrack;)V
    .locals 2

    .line 23492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23493
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x13

    if-lt v1, v0, :cond_0

    .line 23494
    new-instance v0, Lcom/facebook/ads/redexgen/X/90;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/90;-><init>(Landroid/media/AudioTrack;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/92;->A05:Lcom/facebook/ads/redexgen/X/90;

    .line 23495
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/92;->A05()V

    .line 23496
    :goto_0
    return-void

    .line 23497
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/92;->A05:Lcom/facebook/ads/redexgen/X/90;

    .line 23498
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/92;->A00(I)V

    goto :goto_0
.end method

.method private A00(I)V
    .locals 6

    .line 23499
    iput p1, p0, Lcom/facebook/ads/redexgen/X/92;->A00:I

    .line 23500
    const-wide/16 v4, 0x1388

    packed-switch p1, :pswitch_data_0

    .line 23501
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 23502
    :pswitch_0
    const-wide/32 v0, 0x7a120

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/92;->A04:J

    .line 23503
    goto :goto_0

    .line 23504
    :pswitch_1
    const-wide/32 v0, 0x989680

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/92;->A04:J

    .line 23505
    goto :goto_0

    .line 23506
    :pswitch_2
    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/92;->A04:J

    .line 23507
    goto :goto_0

    .line 23508
    :pswitch_3
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/92;->A03:J

    .line 23509
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/92;->A01:J

    .line 23510
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/16 v0, 0x3e8

    div-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/92;->A02:J

    .line 23511
    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/92;->A04:J

    .line 23512
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final A01()J
    .locals 4

    .line 23513
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/92;->A05:Lcom/facebook/ads/redexgen/X/90;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/92;->A05:Lcom/facebook/ads/redexgen/X/90;

    sget-object v2, Lcom/facebook/ads/redexgen/X/92;->A06:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/92;->A06:[Ljava/lang/String;

    const-string v1, "Fw4LpErMEjjeSvAcoNX9TuPtkznMdbTC"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "f0n5p1oCE9LYQx7aTjfY3rJEatpCWuo0"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/90;->A00()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A02()J
    .locals 2

    .line 23514
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/92;->A05:Lcom/facebook/ads/redexgen/X/90;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/92;->A05:Lcom/facebook/ads/redexgen/X/90;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/90;->A01()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0
.end method

.method public final A03()V
    .locals 2

    .line 23515
    iget v1, p0, Lcom/facebook/ads/redexgen/X/92;->A00:I

    const/4 v0, 0x4

    if-ne v1, v0, :cond_0

    .line 23516
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/92;->A05()V

    .line 23517
    :cond_0
    return-void
.end method

.method public final A04()V
    .locals 1

    .line 23518
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/92;->A00(I)V

    .line 23519
    return-void
.end method

.method public final A05()V
    .locals 1

    .line 23520
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/92;->A05:Lcom/facebook/ads/redexgen/X/90;

    if-eqz v0, :cond_0

    .line 23521
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/92;->A00(I)V

    .line 23522
    :cond_0
    return-void
.end method

.method public final A06()Z
    .locals 2

    .line 23523
    iget v1, p0, Lcom/facebook/ads/redexgen/X/92;->A00:I

    const/4 v0, 0x2

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A07(J)Z
    .locals 7

    .line 23524
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/92;->A05:Lcom/facebook/ads/redexgen/X/90;

    if-eqz v0, :cond_2

    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/92;->A03:J

    sget-object v2, Lcom/facebook/ads/redexgen/X/92;->A06:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/92;->A06:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x0

    aput-object v1, v2, v0

    sub-long v3, p1, v5

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/92;->A04:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_3

    .line 23525
    .end local v0
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 23526
    :cond_3
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/92;->A03:J

    .line 23527
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/92;->A05:Lcom/facebook/ads/redexgen/X/90;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/90;->A02()Z

    move-result v5

    .line 23528
    .local v0, "updatedTimestamp":Z
    iget v3, p0, Lcom/facebook/ads/redexgen/X/92;->A00:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/92;->A06:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_8

    sget-object v2, Lcom/facebook/ads/redexgen/X/92;->A06:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x0

    aput-object v1, v2, v0

    packed-switch v3, :pswitch_data_0

    .line 23529
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 23530
    :pswitch_0
    if-eqz v5, :cond_5

    .line 23531
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/92;->A05()V

    goto :goto_0

    .line 23532
    :pswitch_1
    if-nez v5, :cond_5

    .line 23533
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/92;->A05()V

    goto :goto_0

    .line 23534
    :pswitch_2
    if-eqz v5, :cond_4

    .line 23535
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/92;->A05:Lcom/facebook/ads/redexgen/X/90;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/90;->A00()J

    move-result-wide v3

    .line 23536
    .local v1, "timestampPositionFrames":J
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/92;->A01:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_5

    .line 23537
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/92;->A00(I)V

    goto :goto_0

    .line 23538
    :cond_4
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/92;->A05()V

    .line 23539
    goto :goto_0

    .line 23540
    :pswitch_3
    if-eqz v5, :cond_7

    .line 23541
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/92;->A05:Lcom/facebook/ads/redexgen/X/90;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/90;->A01()J

    move-result-wide v3

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/92;->A02:J

    cmp-long v0, v3, v1

    if-ltz v0, :cond_6

    .line 23542
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/92;->A05:Lcom/facebook/ads/redexgen/X/90;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/90;->A00()J

    move-result-wide v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/92;->A06:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/92;->A06:[Ljava/lang/String;

    const-string v1, "9pDihLuu39ZUNEKcmAfhT2ejMoup6027"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    iput-wide v3, p0, Lcom/facebook/ads/redexgen/X/92;->A01:J

    .line 23543
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/92;->A00(I)V

    .line 23544
    :cond_5
    :goto_0
    :pswitch_4
    return v5

    .line 23545
    :cond_6
    const/4 v5, 0x0

    goto :goto_0

    .line 23546
    :cond_7
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/92;->A02:J

    sub-long/2addr p1, v0

    const-wide/32 v1, 0x7a120

    cmp-long v0, p1, v1

    if-lez v0, :cond_5

    .line 23547
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/92;->A00(I)V

    goto :goto_0

    .line 23548
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
