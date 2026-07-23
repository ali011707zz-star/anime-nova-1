.class public final Lcom/facebook/ads/redexgen/X/95;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/93;,
        Lcom/facebook/ads/androidx/media3/exoplayer/audio/AudioTrackPositionTracker$PlayState;
    }
.end annotation


# static fields
.field public static A0X:[B

.field public static A0Y:[Ljava/lang/String;


# instance fields
.field public A00:F

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:J

.field public A07:J

.field public A08:J

.field public A09:J

.field public A0A:J

.field public A0B:J

.field public A0C:J

.field public A0D:J

.field public A0E:J

.field public A0F:J

.field public A0G:J

.field public A0H:J

.field public A0I:J

.field public A0J:J

.field public A0K:J

.field public A0L:J

.field public A0M:J

.field public A0N:Landroid/media/AudioTrack;

.field public A0O:Lcom/facebook/ads/redexgen/X/92;

.field public A0P:Ljava/lang/reflect/Method;

.field public A0Q:Z

.field public A0R:Z

.field public A0S:Z

.field public A0T:Z

.field public A0U:Z

.field public final A0V:Lcom/facebook/ads/redexgen/X/93;

.field public final A0W:[J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 537
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "mFphCeoU9HvMn9ZZEpclfwqoVhk40KwD"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "hKlz0nzOWHQPWv"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "iUYlz8XGQwag9oYQcAYdcNYdwsYMOsO1"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "15ELq8Y13cCLXlrgije1Lj"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "fmh7yYOlG9VsvjTz00hbP4"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Zli7uOe3zpCWYKVvl9v2rZgR93QJVexK"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "W36N5BhoqHIblVGPIwsJc"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "WdPWN8eOnICUfyPLt7yxKs7AdkGnQCZN"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/95;->A0Y:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/95;->A06()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/93;)V
    .locals 4

    .line 23582
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23583
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/93;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/95;->A0V:Lcom/facebook/ads/redexgen/X/93;

    .line 23584
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x12

    if-lt v1, v0, :cond_0

    .line 23585
    :try_start_0
    const-class v3, Landroid/media/AudioTrack;

    const/4 v2, 0x0

    const/16 v1, 0xa

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/95;->A03(III)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/95;->A0P:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23586
    :catch_0
    :cond_0
    const/16 v0, 0xa

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/95;->A0W:[J

    .line 23587
    return-void
.end method

.method private A00()J
    .locals 7

    .line 23588
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 23589
    .local v0, "currentTimeMs":J
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/95;->A0M:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    .line 23590
    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, v5

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/95;->A0M:J

    sub-long/2addr v2, v0

    .line 23591
    .local v2, "elapsedTimeSinceStopUs":J
    iget v0, p0, Lcom/facebook/ads/redexgen/X/95;->A00:F

    .line 23592
    invoke-static {v2, v3, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0Q(JF)J

    move-result-wide v1

    .line 23593
    .local v4, "mediaTimeSinceStopUs":J
    iget v0, p0, Lcom/facebook/ads/redexgen/X/95;->A04:I

    int-to-long v4, v0

    mul-long/2addr v4, v1

    const-wide/32 v0, 0xf4240

    div-long/2addr v4, v0

    .line 23594
    .local v6, "framesSinceStop":J
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/95;->A07:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/95;->A0L:J

    add-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    .line 23595
    .end local v2    # "elapsedTimeSinceStopUs":J
    .end local v4    # "mediaTimeSinceStopUs":J
    .end local v6    # "framesSinceStop":J
    :cond_0
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/95;->A0C:J

    sub-long v3, v5, v0

    const-wide/16 v1, 0x5

    cmp-long v0, v3, v1

    if-ltz v0, :cond_1

    .line 23596
    invoke-direct {p0, v5, v6}, Lcom/facebook/ads/redexgen/X/95;->A09(J)V

    .line 23597
    iput-wide v5, p0, Lcom/facebook/ads/redexgen/X/95;->A0C:J

    .line 23598
    :cond_1
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/95;->A0I:J

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/95;->A0J:J

    const/16 v0, 0x20

    shl-long/2addr v1, v0

    add-long/2addr v3, v1

    return-wide v3
.end method

.method private A01()J
    .locals 2

    .line 23599
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/95;->A00()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/95;->A02(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private A02(J)J
    .locals 4

    .line 23600
    const-wide/32 v2, 0xf4240

    mul-long/2addr v2, p1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/95;->A04:I

    int-to-long v0, v0

    div-long/2addr v2, v0

    return-wide v2
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/95;->A0X:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v3, p0, p1

    sub-int/2addr v3, p2

    sget-object v1, Lcom/facebook/ads/redexgen/X/95;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x79

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/95;->A0Y:[Ljava/lang/String;

    const-string v1, "zj97MoHR9Py27VEns6K5abiX60E98d7F"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    add-int/lit8 v0, v3, -0x2c

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A04()V
    .locals 10

    .line 23601
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/16 v0, 0x3e8

    div-long/2addr v2, v0

    .line 23602
    .local v0, "systemTimeUs":J
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/95;->A0A:J

    sub-long v6, v2, v0

    const-wide/16 v4, 0x7530

    cmp-long v0, v6, v4

    if-ltz v0, :cond_5

    .line 23603
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/95;->A01()J

    move-result-wide v6

    .line 23604
    .local v2, "playbackPositionUs":J
    const-wide/16 v4, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/95;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x39

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v8, Lcom/facebook/ads/redexgen/X/95;->A0Y:[Ljava/lang/String;

    const-string v1, "mG91kidYerianKW8k81eRhz1YFhUJ0TD"

    const/4 v0, 0x5

    aput-object v1, v8, v0

    const-string v1, "tz52TeTP2nXzICTGyUb9gO4UkVUhPqg7"

    const/4 v0, 0x2

    aput-object v1, v8, v0

    cmp-long v0, v6, v4

    if-nez v0, :cond_1

    .line 23605
    return-void

    .line 23606
    :cond_1
    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/95;->A0W:[J

    iget v8, p0, Lcom/facebook/ads/redexgen/X/95;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/95;->A00:F

    .line 23607
    invoke-static {v6, v7, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0R(JF)J

    move-result-wide v0

    sub-long/2addr v0, v2

    aput-wide v0, v9, v8

    .line 23608
    iget v0, p0, Lcom/facebook/ads/redexgen/X/95;->A02:I

    add-int/lit8 v8, v0, 0x1

    const/16 v7, 0xa

    sget-object v6, Lcom/facebook/ads/redexgen/X/95;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v6, v0

    const/4 v0, 0x2

    aget-object v6, v6, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v6, Lcom/facebook/ads/redexgen/X/95;->A0Y:[Ljava/lang/String;

    const-string v1, "AFkMvnjOvj65Z9PkG4nAGP"

    const/4 v0, 0x4

    aput-object v1, v6, v0

    const-string v1, "gdO3Z2pM7uD2KyszdkE03V"

    const/4 v0, 0x3

    aput-object v1, v6, v0

    rem-int/2addr v8, v7

    iput v8, p0, Lcom/facebook/ads/redexgen/X/95;->A02:I

    .line 23609
    iget v0, p0, Lcom/facebook/ads/redexgen/X/95;->A05:I

    if-ge v0, v7, :cond_2

    .line 23610
    iget v0, p0, Lcom/facebook/ads/redexgen/X/95;->A05:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/95;->A05:I

    .line 23611
    :cond_2
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/95;->A0A:J

    sget-object v1, Lcom/facebook/ads/redexgen/X/95;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x79

    if-eq v1, v0, :cond_3

    .line 23612
    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/95;->A0K:J

    .line 23613
    const/4 v0, 0x0

    .local v4, "i":I
    :goto_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/95;->A05:I

    if-ge v0, v1, :cond_5

    .line 23614
    iget-wide v6, p0, Lcom/facebook/ads/redexgen/X/95;->A0K:J

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/95;->A0W:[J

    aget-wide v8, v1, v0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/95;->A05:I

    int-to-long v4, v1

    div-long/2addr v8, v4

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/facebook/ads/redexgen/X/95;->A0K:J

    .line 23615
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 23616
    :cond_3
    sget-object v6, Lcom/facebook/ads/redexgen/X/95;->A0Y:[Ljava/lang/String;

    const-string v1, "OfE8owY5iQWinV"

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const-string v1, "VmS0vt0tfNVVuH5SEqER3"

    const/4 v0, 0x6

    aput-object v1, v6, v0

    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/95;->A0K:J

    .line 23617
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 23618
    .end local v2    # "playbackPositionUs":J
    .end local v4    # "i":I
    :cond_5
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/95;->A0T:Z

    if-eqz v0, :cond_6

    .line 23619
    return-void

    .line 23620
    :cond_6
    invoke-direct {p0, v2, v3}, Lcom/facebook/ads/redexgen/X/95;->A07(J)V

    .line 23621
    invoke-direct {p0, v2, v3}, Lcom/facebook/ads/redexgen/X/95;->A08(J)V

    .line 23622
    return-void
.end method

.method private A05()V
    .locals 3

    .line 23623
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/95;->A0K:J

    .line 23624
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/95;->A05:I

    .line 23625
    iput v0, p0, Lcom/facebook/ads/redexgen/X/95;->A02:I

    .line 23626
    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/95;->A0A:J

    .line 23627
    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/95;->A0D:J

    .line 23628
    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/95;->A0H:J

    .line 23629
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/95;->A0U:Z

    .line 23630
    return-void
.end method

.method public static A06()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/95;->A0X:[B

    return-void

    :array_0
    .array-data 1
        -0x12t
        -0x14t
        -0x5t
        -0x2dt
        -0x18t
        -0x5t
        -0x14t
        -0xbt
        -0x16t
        0x0t
    .end array-data
.end method

.method private A07(J)V
    .locals 15

    .line 23631
    move-object v4, p0

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/95;->A0O:Lcom/facebook/ads/redexgen/X/92;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/92;

    .line 23632
    .local v12, "audioTimestampPoller":Lcom/facebook/ads/redexgen/X/92;
    move-wide/from16 v11, p1

    invoke-virtual {v3, v11, v12}, Lcom/facebook/ads/redexgen/X/92;->A07(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 23633
    return-void

    .line 23634
    :cond_0
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/92;->A02()J

    move-result-wide v9

    .line 23635
    .local v13, "audioTimestampSystemTimeUs":J
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/92;->A01()J

    move-result-wide v7

    .line 23636
    .local v8, "audioTimestampPositionFrames":J
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/95;->A01()J

    move-result-wide v13

    .line 23637
    .local p0, "playbackPositionUs":J
    sub-long v0, v9, v11

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/32 v5, 0x4c4b40

    cmp-long v0, v1, v5

    if-lez v0, :cond_1

    .line 23638
    iget-object v6, v4, Lcom/facebook/ads/redexgen/X/95;->A0V:Lcom/facebook/ads/redexgen/X/93;

    .end local v8    # "audioTimestampPositionFrames":J
    .local v10, "audioTimestampPositionFrames":J
    invoke-interface/range {v6 .. v14}, Lcom/facebook/ads/redexgen/X/93;->AG9(JJJJ)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/95;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x79

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 23639
    .end local v10    # "audioTimestampPositionFrames":J
    .restart local v8    # "audioTimestampPositionFrames":J
    .end local v8    # "audioTimestampPositionFrames":J
    .restart local v10    # "audioTimestampPositionFrames":J
    :cond_1
    invoke-direct {v4, v7, v8}, Lcom/facebook/ads/redexgen/X/95;->A02(J)J

    move-result-wide v0

    sub-long/2addr v0, v13

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    cmp-long v0, v1, v5

    if-lez v0, :cond_2

    .line 23640
    iget-object v6, v4, Lcom/facebook/ads/redexgen/X/95;->A0V:Lcom/facebook/ads/redexgen/X/93;

    invoke-interface/range {v6 .. v14}, Lcom/facebook/ads/redexgen/X/93;->AFP(JJJJ)V

    .line 23641
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/92;->A04()V

    goto :goto_0

    .line 23642
    :cond_2
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/92;->A03()V

    goto :goto_0

    .line 23643
    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/95;->A0Y:[Ljava/lang/String;

    const-string v1, "mF6kCbqtc5PO8yUDnW98QRQbFVZ1vLXh"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/92;->A04()V

    .line 23644
    :goto_0
    return-void
.end method

.method private A08(J)V
    .locals 7

    .line 23645
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/95;->A0R:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/95;->A0P:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/95;->A09:J

    sub-long v3, p1, v0

    const-wide/32 v1, 0x7a120

    cmp-long v0, v3, v1

    if-ltz v0, :cond_1

    .line 23646
    :try_start_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/95;->A0P:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/95;->A0N:Landroid/media/AudioTrack;

    .line 23647
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v0, 0x3e8

    mul-long/2addr v2, v0

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/95;->A06:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/95;->A0E:J

    .line 23648
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/95;->A0E:J

    const-wide/16 v3, 0x0

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/95;->A0E:J

    .line 23649
    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/95;->A0E:J

    const-wide/32 v1, 0x4c4b40

    cmp-long v0, v5, v1

    if-lez v0, :cond_0

    .line 23650
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/95;->A0V:Lcom/facebook/ads/redexgen/X/93;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/95;->A0E:J

    invoke-interface {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/93;->AEM(J)V

    .line 23651
    iput-wide v3, p0, Lcom/facebook/ads/redexgen/X/95;->A0E:J

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23652
    .local v0, "e":Ljava/lang/Exception;
    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/95;->A0P:Ljava/lang/reflect/Method;

    .line 23653
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/95;->A09:J

    .line 23654
    :cond_1
    return-void
.end method

.method private A09(J)V
    .locals 12

    .line 23655
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/95;->A0N:Landroid/media/AudioTrack;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioTrack;

    .line 23656
    .local v0, "audioTrack":Landroid/media/AudioTrack;
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v7

    .line 23657
    .local v1, "state":I
    const/4 v0, 0x1

    if-ne v7, v0, :cond_0

    .line 23658
    return-void

    .line 23659
    :cond_0
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v0

    int-to-long v4, v0

    const-wide v0, 0xffffffffL

    and-long/2addr v4, v0

    .line 23660
    .local v2, "rawPlaybackHeadPosition":J
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/95;->A0T:Z

    const-wide/16 v10, 0x0

    if-eqz v0, :cond_3

    .line 23661
    const/4 v3, 0x2

    sget-object v1, Lcom/facebook/ads/redexgen/X/95;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x79

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/95;->A0Y:[Ljava/lang/String;

    const-string v1, "ov9kApTb7V0CjbZZCKupQjB7jnUQPlTV"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "rmmJb8OCjqsXlyJPr0xnnc6CD7US0gp3"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ne v7, v3, :cond_2

    cmp-long v0, v4, v10

    if-nez v0, :cond_2

    .line 23662
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/95;->A0I:J

    sget-object v6, Lcom/facebook/ads/redexgen/X/95;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v6, v0

    const/4 v0, 0x2

    aget-object v6, v6, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v6, Lcom/facebook/ads/redexgen/X/95;->A0Y:[Ljava/lang/String;

    const-string v1, "zeySHXDKnQ5XWlDOUaGDVi"

    const/4 v0, 0x4

    aput-object v1, v6, v0

    const-string v1, "LoWPIsfdmaPBaSpnKkuKXN"

    const/4 v0, 0x3

    aput-object v1, v6, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/95;->A0F:J

    .line 23663
    :cond_2
    :goto_0
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/95;->A0F:J

    add-long/2addr v4, v0

    .line 23664
    :cond_3
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x1d

    if-gt v1, v0, :cond_7

    .line 23665
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v10

    if-nez v0, :cond_6

    iget-wide v8, p0, Lcom/facebook/ads/redexgen/X/95;->A0I:J

    cmp-long v0, v8, v10

    if-lez v0, :cond_6

    const/4 v0, 0x3

    if-ne v7, v0, :cond_6

    .line 23666
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/95;->A08:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_4

    .line 23667
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/95;->A08:J

    .line 23668
    :cond_4
    return-void

    :cond_5
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/95;->A0F:J

    goto :goto_0

    .line 23669
    :cond_6
    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/95;->A08:J

    .line 23670
    :cond_7
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/95;->A0I:J

    cmp-long v0, v1, v4

    if-lez v0, :cond_8

    .line 23671
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/95;->A0J:J

    const-wide/16 v0, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/95;->A0J:J

    .line 23672
    :cond_8
    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/95;->A0I:J

    .line 23673
    return-void
.end method

.method private A0A()Z
    .locals 5

    .line 23674
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/95;->A0T:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/95;->A0N:Landroid/media/AudioTrack;

    .line 23675
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_0

    .line 23676
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/95;->A00()J

    move-result-wide v3

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 23677
    :goto_0
    return v0

    .line 23678
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0B(I)Z
    .locals 2

    .line 23679
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x17

    if-ge v1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A0C(J)I
    .locals 4

    .line 23680
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/95;->A00()J

    move-result-wide v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/95;->A03:I

    int-to-long v0, v0

    mul-long/2addr v2, v0

    sub-long/2addr p1, v2

    long-to-int v1, p1

    .line 23681
    .local v1, "bytesPending":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/95;->A01:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final A0D(Z)J
    .locals 16

    .line 23682
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/95;->A0N:Landroid/media/AudioTrack;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    const/4 v0, 0x3

    if-ne v1, v0, :cond_0

    .line 23683
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/95;->A04()V

    .line 23684
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/16 v14, 0x3e8

    div-long/2addr v2, v14

    .line 23685
    .local v1, "systemTimeUs":J
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/95;->A0O:Lcom/facebook/ads/redexgen/X/92;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/92;

    .line 23686
    .local v5, "audioTimestampPoller":Lcom/facebook/ads/redexgen/X/92;
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/92;->A06()Z

    move-result v6

    .line 23687
    .local v6, "useGetTimestampMode":Z
    if-eqz v6, :cond_5

    .line 23688
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/92;->A01()J

    move-result-wide v0

    .line 23689
    .local v7, "timestampPositionFrames":J
    invoke-direct {v7, v0, v1}, Lcom/facebook/ads/redexgen/X/95;->A02(J)J

    move-result-wide v0

    .line 23690
    .local v9, "timestampPositionUs":J
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/92;->A02()J

    move-result-wide v8

    sub-long v4, v2, v8

    .line 23691
    .local v11, "elapsedSinceTimestampUs":J
    iget v8, v7, Lcom/facebook/ads/redexgen/X/95;->A00:F

    .line 23692
    invoke-static {v4, v5, v8}, Lcom/facebook/ads/redexgen/X/5C;->A0Q(JF)J

    move-result-wide v4

    .line 23693
    add-long/2addr v0, v4

    .line 23694
    .end local v7    # "timestampPositionFrames":J
    .end local v11    # "elapsedSinceTimestampUs":J
    .local v9, "positionUs":J
    :cond_1
    :goto_0
    iget-boolean v4, v7, Lcom/facebook/ads/redexgen/X/95;->A0S:Z

    if-eq v4, v6, :cond_2

    .line 23695
    iget-wide v4, v7, Lcom/facebook/ads/redexgen/X/95;->A0D:J

    iput-wide v4, v7, Lcom/facebook/ads/redexgen/X/95;->A0H:J

    .line 23696
    iget-wide v4, v7, Lcom/facebook/ads/redexgen/X/95;->A0B:J

    iput-wide v4, v7, Lcom/facebook/ads/redexgen/X/95;->A0G:J

    .line 23697
    :cond_2
    iget-wide v8, v7, Lcom/facebook/ads/redexgen/X/95;->A0H:J

    sub-long v4, v2, v8

    .line 23698
    .local v7, "elapsedSincePreviousModeUs":J
    const-wide/32 v12, 0xf4240

    cmp-long v8, v4, v12

    if-gez v8, :cond_3

    .line 23699
    iget-wide v8, v7, Lcom/facebook/ads/redexgen/X/95;->A0G:J

    iget v10, v7, Lcom/facebook/ads/redexgen/X/95;->A00:F

    .line 23700
    invoke-static {v4, v5, v10}, Lcom/facebook/ads/redexgen/X/5C;->A0Q(JF)J

    move-result-wide v10

    add-long/2addr v8, v10

    .line 23701
    .local v13, "previousModeProjectedPositionUs":J
    mul-long/2addr v4, v14

    div-long/2addr v4, v12

    .line 23702
    .local v15, "rampPoint":J
    mul-long/2addr v0, v4

    .line 23703
    sub-long v10, v14, v4

    mul-long/2addr v10, v8

    add-long/2addr v0, v10

    .line 23704
    div-long/2addr v0, v14

    .line 23705
    .end local v13    # "previousModeProjectedPositionUs":J
    .end local v15    # "rampPoint":J
    :cond_3
    iget-boolean v4, v7, Lcom/facebook/ads/redexgen/X/95;->A0U:Z

    if-nez v4, :cond_4

    iget-wide v8, v7, Lcom/facebook/ads/redexgen/X/95;->A0B:J

    cmp-long v4, v0, v8

    if-lez v4, :cond_4

    .line 23706
    const/4 v4, 0x1

    iput-boolean v4, v7, Lcom/facebook/ads/redexgen/X/95;->A0U:Z

    .line 23707
    iget-wide v8, v7, Lcom/facebook/ads/redexgen/X/95;->A0B:J

    sub-long v4, v0, v8

    invoke-static {v4, v5}, Lcom/facebook/ads/redexgen/X/5C;->A0P(J)J

    move-result-wide v4

    .line 23708
    .local v3, "mediaDurationSinceLastPositionUs":J
    iget v8, v7, Lcom/facebook/ads/redexgen/X/95;->A00:F

    .line 23709
    invoke-static {v4, v5, v8}, Lcom/facebook/ads/redexgen/X/5C;->A0R(JF)J

    move-result-wide v8

    .line 23710
    .local v11, "playoutDurationSinceLastPositionUs":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v8, v9}, Lcom/facebook/ads/redexgen/X/5C;->A0P(J)J

    move-result-wide v8

    sub-long/2addr v4, v8

    .line 23711
    .local v13, "playoutStartSystemTimeMs":J
    iget-object v8, v7, Lcom/facebook/ads/redexgen/X/95;->A0V:Lcom/facebook/ads/redexgen/X/93;

    invoke-interface {v8, v4, v5}, Lcom/facebook/ads/redexgen/X/93;->AFN(J)V

    .line 23712
    .end local v3    # "mediaDurationSinceLastPositionUs":J
    .end local v11    # "playoutDurationSinceLastPositionUs":J
    .end local v13    # "playoutStartSystemTimeMs":J
    :cond_4
    iput-wide v2, v7, Lcom/facebook/ads/redexgen/X/95;->A0D:J

    .line 23713
    iput-wide v0, v7, Lcom/facebook/ads/redexgen/X/95;->A0B:J

    .line 23714
    iput-boolean v6, v7, Lcom/facebook/ads/redexgen/X/95;->A0S:Z

    .line 23715
    return-wide v0

    .line 23716
    .end local v9    # "positionUs":J
    :cond_5
    iget v5, v7, Lcom/facebook/ads/redexgen/X/95;->A05:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/95;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x39

    if-eq v1, v0, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_6
    sget-object v4, Lcom/facebook/ads/redexgen/X/95;->A0Y:[Ljava/lang/String;

    const-string v1, "hPK4fhT0jDF836"

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const-string v1, "hdImPZUqzFjLboc09pskO"

    const/4 v0, 0x6

    aput-object v1, v4, v0

    if-nez v5, :cond_7

    .line 23717
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/95;->A01()J

    move-result-wide v0

    .line 23718
    .local v7, "positionUs":J
    .restart local v9    # "positionUs":J
    :goto_1
    if-nez p1, :cond_1

    .line 23719
    iget-wide v4, v7, Lcom/facebook/ads/redexgen/X/95;->A0E:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto/16 :goto_0

    .line 23720
    .end local v7    # "positionUs":J
    :cond_7
    iget-wide v4, v7, Lcom/facebook/ads/redexgen/X/95;->A0K:J

    add-long/2addr v4, v2

    iget v0, v7, Lcom/facebook/ads/redexgen/X/95;->A00:F

    .line 23721
    invoke-static {v4, v5, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0Q(JF)J

    move-result-wide v0

    goto :goto_1
.end method

.method public final A0E()V
    .locals 1

    .line 23722
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/95;->A05()V

    .line 23723
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/95;->A0N:Landroid/media/AudioTrack;

    .line 23724
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/95;->A0O:Lcom/facebook/ads/redexgen/X/92;

    .line 23725
    return-void
.end method

.method public final A0F()V
    .locals 1

    .line 23726
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/95;->A0O:Lcom/facebook/ads/redexgen/X/92;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/92;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/92;->A05()V

    .line 23727
    return-void
.end method

.method public final A0G(F)V
    .locals 4

    .line 23728
    iput p1, p0, Lcom/facebook/ads/redexgen/X/95;->A00:F

    .line 23729
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/95;->A0O:Lcom/facebook/ads/redexgen/X/92;

    if-eqz v0, :cond_0

    .line 23730
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/95;->A0O:Lcom/facebook/ads/redexgen/X/92;

    sget-object v2, Lcom/facebook/ads/redexgen/X/95;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/95;->A0Y:[Ljava/lang/String;

    const-string v1, "VU48pb9CUkQeOU"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "XcBh4pT8Ou6Ibzda0RyIg"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/92;->A05()V

    .line 23731
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/95;->A05()V

    .line 23732
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0H(J)V
    .locals 4

    .line 23733
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/95;->A00()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/95;->A0L:J

    .line 23734
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v0, 0x3e8

    mul-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/95;->A0M:J

    .line 23735
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/95;->A07:J

    .line 23736
    return-void
.end method

.method public final A0I(Landroid/media/AudioTrack;ZIII)V
    .locals 5

    .line 23737
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/95;->A0N:Landroid/media/AudioTrack;

    .line 23738
    iput p4, p0, Lcom/facebook/ads/redexgen/X/95;->A03:I

    .line 23739
    iput p5, p0, Lcom/facebook/ads/redexgen/X/95;->A01:I

    .line 23740
    new-instance v0, Lcom/facebook/ads/redexgen/X/92;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/92;-><init>(Landroid/media/AudioTrack;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/95;->A0O:Lcom/facebook/ads/redexgen/X/92;

    .line 23741
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/95;->A04:I

    .line 23742
    const/4 v4, 0x0

    if-eqz p2, :cond_1

    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/95;->A0B(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/95;->A0T:Z

    .line 23743
    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/5C;->A15(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/95;->A0R:Z

    .line 23744
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/95;->A0R:Z

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_0

    div-int/2addr p5, p4

    int-to-long v0, p5

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/95;->A02(J)J

    move-result-wide v0

    :goto_1
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/95;->A06:J

    .line 23745
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/95;->A0I:J

    .line 23746
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/95;->A0J:J

    .line 23747
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/95;->A0F:J

    .line 23748
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/95;->A0Q:Z

    .line 23749
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/95;->A0M:J

    .line 23750
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/95;->A08:J

    .line 23751
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/95;->A09:J

    .line 23752
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/95;->A0E:J

    .line 23753
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/95;->A00:F

    .line 23754
    return-void

    .line 23755
    :cond_0
    move-wide v0, v2

    goto :goto_1

    .line 23756
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0J()Z
    .locals 2

    .line 23757
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/95;->A0N:Landroid/media/AudioTrack;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    const/4 v0, 0x3

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0K()Z
    .locals 5

    .line 23758
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/95;->A05()V

    .line 23759
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/95;->A0M:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    .line 23760
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/95;->A0O:Lcom/facebook/ads/redexgen/X/92;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/92;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/92;->A05()V

    .line 23761
    const/4 v0, 0x1

    return v0

    .line 23762
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final A0L(J)Z
    .locals 3

    .line 23763
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/95;->A00()J

    move-result-wide v1

    cmp-long v0, p1, v1

    if-gtz v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/95;->A0A()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0M(J)Z
    .locals 5

    .line 23764
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/95;->A08:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v0, p1, v1

    if-lez v0, :cond_0

    .line 23765
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/95;->A08:J

    sub-long/2addr v3, v0

    const-wide/16 v1, 0xc8

    cmp-long v0, v3, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    .line 23766
    :goto_0
    return v0

    .line 23767
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0N(J)Z
    .locals 8

    .line 23768
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/95;->A0N:Landroid/media/AudioTrack;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v7

    .line 23769
    .local v0, "playState":I
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/95;->A0T:Z

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    .line 23770
    const/4 v0, 0x2

    const/4 v3, 0x0

    if-ne v7, v0, :cond_1

    .line 23771
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/95;->A0Q:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/95;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 23772
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/95;->A0Y:[Ljava/lang/String;

    const-string v1, "DhRe3Wriyk6HQ1"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "kYJAoF9OHBJ3Wrbuortpe"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return v3

    .line 23773
    :cond_1
    if-ne v7, v4, :cond_2

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/95;->A00()J

    move-result-wide v5

    const-wide/16 v1, 0x0

    cmp-long v0, v5, v1

    if-nez v0, :cond_2

    .line 23774
    return v3

    .line 23775
    :cond_2
    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/95;->A0Q:Z

    .line 23776
    .local v1, "hadData":Z
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/95;->A0L(J)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/95;->A0Q:Z

    .line 23777
    if-eqz v1, :cond_3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/95;->A0Q:Z

    if-nez v0, :cond_3

    if-eq v7, v4, :cond_3

    .line 23778
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/95;->A0V:Lcom/facebook/ads/redexgen/X/93;

    iget v2, p0, Lcom/facebook/ads/redexgen/X/95;->A01:I

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/95;->A06:J

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/5C;->A0P(J)J

    move-result-wide v0

    invoke-interface {v3, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/93;->AGI(IJ)V

    .line 23779
    :cond_3
    return v4
.end method
