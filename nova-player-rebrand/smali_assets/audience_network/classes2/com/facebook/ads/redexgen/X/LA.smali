.class public final Lcom/facebook/ads/redexgen/X/LA;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A09:[B

.field public static A0A:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:J

.field public A02:J

.field public A03:Z

.field public A04:Z

.field public A05:Z

.field public final A06:I

.field public final A07:Lcom/facebook/ads/redexgen/X/4v;

.field public final A08:Lcom/facebook/ads/redexgen/X/53;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 968
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "YKrx4tQL3HFlbX0m6cI7YSMmMtJDnVWt"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "EhNKRydGslBNjHwz4Qke8RkUgCBaonuc"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "lVt1vjccWtobRJMyEDSjQomkweVugX5V"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "X5vaF2wJa8umjlLI"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "q53FR06vPOBUDZ08SG0Q3HmIsvEwqM01"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "eDYPuZuNQVkkkUOb40HZTr2GxKWyUyQ4"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "7DZ3geXrHcZNODb56yin0lXQD6ovjT1O"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "oKDHpDD8v386AT9biWd"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/LA;->A0A:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/LA;->A06()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 49404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49405
    iput p1, p0, Lcom/facebook/ads/redexgen/X/LA;->A06:I

    .line 49406
    const-wide/16 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/53;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/53;-><init>(J)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LA;->A08:Lcom/facebook/ads/redexgen/X/53;

    .line 49407
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/LA;->A01:J

    .line 49408
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/LA;->A02:J

    .line 49409
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/LA;->A00:J

    .line 49410
    new-instance v0, Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4v;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LA;->A07:Lcom/facebook/ads/redexgen/X/4v;

    .line 49411
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/ms;)I
    .locals 2

    .line 49412
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LA;->A07:Lcom/facebook/ads/redexgen/X/4v;

    sget-object v0, Lcom/facebook/ads/redexgen/X/5C;->A07:[B

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0i([B)V

    .line 49413
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/LA;->A03:Z

    .line 49414
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->AIl()V

    .line 49415
    const/4 v0, 0x0

    return v0
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/ms;Lcom/facebook/ads/redexgen/X/HV;I)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49416
    iget v0, p0, Lcom/facebook/ads/redexgen/X/LA;->A06:I

    int-to-long v2, v0

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8O()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v7, v0

    .line 49417
    .local v1, "bytesToSearch":I
    const/4 v6, 0x0

    .line 49418
    .local v0, "searchStartPosition":I
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8n()J

    move-result-wide v4

    int-to-long v0, v6

    const/4 v3, 0x1

    cmp-long v2, v4, v0

    if-eqz v2, :cond_0

    .line 49419
    int-to-long v0, v6

    iput-wide v0, p2, Lcom/facebook/ads/redexgen/X/HV;->A00:J

    .line 49420
    return v3

    .line 49421
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LA;->A07:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/4v;->A0d(I)V

    .line 49422
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->AIl()V

    .line 49423
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LA;->A07:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v7}, Lcom/facebook/ads/redexgen/X/ms;->AGt([BII)V

    .line 49424
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LA;->A07:Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {p0, v0, p3}, Lcom/facebook/ads/redexgen/X/LA;->A03(Lcom/facebook/ads/redexgen/X/4v;I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/LA;->A01:J

    .line 49425
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/LA;->A04:Z

    .line 49426
    return v2
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/ms;Lcom/facebook/ads/redexgen/X/HV;I)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49427
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8O()J

    move-result-wide v0

    .line 49428
    .local v0, "inputLength":J
    iget v2, p0, Lcom/facebook/ads/redexgen/X/LA;->A06:I

    int-to-long v2, v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v4, v2

    .line 49429
    .local v3, "bytesToSearch":I
    int-to-long v2, v4

    sub-long/2addr v0, v2

    .line 49430
    .local v4, "searchStartPosition":J
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8n()J

    move-result-wide v5

    const/4 v3, 0x1

    cmp-long v2, v5, v0

    if-eqz v2, :cond_0

    .line 49431
    iput-wide v0, p2, Lcom/facebook/ads/redexgen/X/HV;->A00:J

    .line 49432
    return v3

    .line 49433
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LA;->A07:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/4v;->A0d(I)V

    .line 49434
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->AIl()V

    .line 49435
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LA;->A07:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v4}, Lcom/facebook/ads/redexgen/X/ms;->AGt([BII)V

    .line 49436
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LA;->A07:Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {p0, v0, p3}, Lcom/facebook/ads/redexgen/X/LA;->A04(Lcom/facebook/ads/redexgen/X/4v;I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/LA;->A02:J

    .line 49437
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/LA;->A05:Z

    .line 49438
    return v2
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/4v;I)J
    .locals 7

    .line 49439
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v6

    .line 49440
    .local v0, "searchStartPosition":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0A()I

    move-result v5

    .line 49441
    .local v1, "searchEndPosition":I
    .local v2, "searchPosition":I
    :goto_0
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v6, v5, :cond_2

    .line 49442
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v0

    aget-byte v1, v0, v6

    const/16 v0, 0x47

    if-eq v1, v0, :cond_1

    .line 49443
    .end local v5
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 49444
    :cond_1
    invoke-static {p1, v6, p2}, Lcom/facebook/ads/redexgen/X/LI;->A01(Lcom/facebook/ads/redexgen/X/4v;II)J

    move-result-wide v1

    .line 49445
    .local v5, "pcrValue":J
    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    .line 49446
    return-wide v1

    .line 49447
    .end local v2    # "searchPosition":I
    :cond_2
    return-wide v3
.end method

.method private A04(Lcom/facebook/ads/redexgen/X/4v;I)J
    .locals 8

    .line 49448
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v7

    .line 49449
    .local v0, "searchStartPosition":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0A()I

    move-result v6

    .line 49450
    .local v1, "searchEndPosition":I
    add-int/lit16 v5, v6, -0xbc

    .line 49451
    .local v2, "searchPosition":I
    :goto_0
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-lt v5, v7, :cond_2

    .line 49452
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v0

    .line 49453
    invoke-static {v0, v7, v6, v5}, Lcom/facebook/ads/redexgen/X/LI;->A03([BIII)Z

    move-result v0

    if-nez v0, :cond_1

    .line 49454
    .end local v5
    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 49455
    :cond_1
    invoke-static {p1, v5, p2}, Lcom/facebook/ads/redexgen/X/LI;->A01(Lcom/facebook/ads/redexgen/X/4v;II)J

    move-result-wide v1

    .line 49456
    .local v5, "pcrValue":J
    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    .line 49457
    return-wide v1

    .line 49458
    .end local v2    # "searchPosition":I
    :cond_2
    return-wide v3
.end method

.method public static A05(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/LA;->A09:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x11

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A06()V
    .locals 1

    const/16 v0, 0x3d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/LA;->A09:[B

    return-void

    :array_0
    .array-data 1
        -0x59t
        -0x67t
        -0x32t
        -0x14t
        -0x1et
        -0x19t
        -0x20t
        -0x67t
        -0x33t
        -0x3et
        -0x3at
        -0x42t
        -0x28t
        -0x32t
        -0x39t
        -0x34t
        -0x42t
        -0x33t
        -0x67t
        -0x1et
        -0x19t
        -0x14t
        -0x13t
        -0x22t
        -0x26t
        -0x23t
        -0x59t
        -0x77t
        -0x52t
        -0x4at
        -0x5ft
        -0x54t
        -0x57t
        -0x5ct
        0x60t
        -0x5ct
        -0x4bt
        -0x4et
        -0x5ft
        -0x4ct
        -0x57t
        -0x51t
        -0x52t
        0x7at
        0x60t
        -0x5ft
        -0x40t
        -0x6ft
        -0x3et
        -0x41t
        -0x52t
        -0x3ft
        -0x4at
        -0x44t
        -0x45t
        -0x61t
        -0x4et
        -0x52t
        -0x4ft
        -0x4et
        -0x41t
    .end array-data
.end method


# virtual methods
.method public final A07(Lcom/facebook/ads/redexgen/X/ms;Lcom/facebook/ads/redexgen/X/HV;I)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49459
    if-gtz p3, :cond_0

    .line 49460
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/LA;->A00(Lcom/facebook/ads/redexgen/X/ms;)I

    move-result v0

    return v0

    .line 49461
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/LA;->A05:Z

    if-nez v0, :cond_1

    .line 49462
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/LA;->A02(Lcom/facebook/ads/redexgen/X/ms;Lcom/facebook/ads/redexgen/X/HV;I)I

    move-result v0

    return v0

    .line 49463
    :cond_1
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/LA;->A02:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    .line 49464
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/LA;->A00(Lcom/facebook/ads/redexgen/X/ms;)I

    move-result v0

    return v0

    .line 49465
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/LA;->A04:Z

    if-nez v0, :cond_4

    .line 49466
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/LA;->A01(Lcom/facebook/ads/redexgen/X/ms;Lcom/facebook/ads/redexgen/X/HV;I)I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/LA;->A0A:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4f

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/LA;->A0A:[Ljava/lang/String;

    const-string v1, "U4EwafF7WjzJM20D4nSEnM6oLnkPTMDI"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return v3

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 49467
    :cond_4
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/LA;->A01:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_5

    .line 49468
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/LA;->A00(Lcom/facebook/ads/redexgen/X/ms;)I

    move-result v0

    return v0

    .line 49469
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LA;->A08:Lcom/facebook/ads/redexgen/X/53;

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/LA;->A01:J

    invoke-virtual {v0, v3, v4}, Lcom/facebook/ads/redexgen/X/53;->A06(J)J

    move-result-wide v5

    .line 49470
    .local v0, "minPcrPositionUs":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LA;->A08:Lcom/facebook/ads/redexgen/X/53;

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/LA;->A02:J

    invoke-virtual {v0, v3, v4}, Lcom/facebook/ads/redexgen/X/53;->A06(J)J

    move-result-wide v3

    .line 49471
    .local v4, "maxPcrPositionUs":J
    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/facebook/ads/redexgen/X/LA;->A00:J

    .line 49472
    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/LA;->A00:J

    const-wide/16 v3, 0x0

    cmp-long v0, v5, v3

    if-gez v0, :cond_6

    .line 49473
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x1b

    const/16 v3, 0x12

    const/16 v0, 0x2f

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/LA;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/LA;->A00:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v4, 0x0

    const/16 v3, 0x1b

    const/16 v0, 0x68

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/LA;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v4, 0x2d

    const/16 v3, 0x10

    const/16 v0, 0x3c

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/LA;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 49474
    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/LA;->A00:J

    .line 49475
    :cond_6
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/LA;->A00(Lcom/facebook/ads/redexgen/X/ms;)I

    move-result v0

    return v0
.end method

.method public final A08()J
    .locals 2

    .line 49476
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/LA;->A00:J

    return-wide v0
.end method

.method public final A09()Lcom/facebook/ads/redexgen/X/53;
    .locals 1

    .line 49477
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LA;->A08:Lcom/facebook/ads/redexgen/X/53;

    return-object v0
.end method

.method public final A0A()Z
    .locals 1

    .line 49478
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/LA;->A03:Z

    return v0
.end method
