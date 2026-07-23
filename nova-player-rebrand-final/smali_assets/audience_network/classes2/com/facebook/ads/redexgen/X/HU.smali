.class public final Lcom/facebook/ads/redexgen/X/HU;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A04:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 794
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "xqK2Lo9z9A1fq6AmzHgSANRckQSbvLg7"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "r87Jk1TDX4QDRIaoZWvBkBULXd6iRGy1"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "O8Rd55zCWOMZlt38o2yZqibVFCpM9qBW"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "4N74z6RiBgc3GZHRgJ9RjrwcKA2Sbu4k"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "rTO2Tuhk28L6aGO7sMrwgJqOHaARqGQ4"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "wV6nIrgfSj92E7JYn8Dcxr40UnK38ksI"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "xhpcFCDiO5Y2wtHgWJ12k6gPj7fKn5Nf"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "gVHczwThIZ3ivnhVZg4GXcBO3FodCEeQ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/HU;->A04:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0

    .line 39456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39457
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/HU;->A08([BII)V

    .line 39458
    return-void
.end method

.method private A00()I
    .locals 3

    .line 39459
    const/4 v2, 0x0

    .line 39460
    .local v0, "leadingZeros":I
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/HU;->A0A()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39461
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 39462
    :cond_0
    const/4 v0, 0x1

    shl-int v1, v0, v2

    sub-int/2addr v1, v0

    if-lez v2, :cond_1

    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/HU;->A05(I)I

    move-result v0

    :goto_1
    add-int/2addr v1, v0

    return v1

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private A01()V
    .locals 3

    .line 39463
    iget v0, p0, Lcom/facebook/ads/redexgen/X/HU;->A02:I

    if-ltz v0, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/HU;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/HU;->A01:I

    if-lt v1, v0, :cond_0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/HU;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/HU;->A01:I

    if-ne v1, v0, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/HU;->A00:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/HU;->A04:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    .line 39464
    sget-object v2, Lcom/facebook/ads/redexgen/X/HU;->A04:[Ljava/lang/String;

    const-string v1, "rbUb6Xt6pPTA8n7h1lny7mpNeejrLbnq"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "r9GQrTTZLq4j6OnUyTd1FCUw4PnbqYK4"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-void

    .line 39465
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A02(I)Z
    .locals 4

    .line 39466
    const/4 v0, 0x2

    if-gt v0, p1, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/HU;->A01:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HU;->A03:[B

    aget-byte v1, v0, p1

    const/4 v0, 0x3

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HU;->A03:[B

    add-int/lit8 v0, p1, -0x2

    aget-byte v0, v1, v0

    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/HU;->A03:[B

    sget-object v2, Lcom/facebook/ads/redexgen/X/HU;->A04:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/HU;->A04:[Ljava/lang/String;

    const-string v1, "mTSOM4VXL5Qz6aHfzfUvwcrlrHOw2Zy6"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "LbZWpLfoz4TupHHNd8RSjDzMBM5OqJ05"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    add-int/lit8 v0, p1, -0x1

    aget-byte v0, v3, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0
.end method


# virtual methods
.method public final A03()I
    .locals 3

    .line 39467
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/HU;->A00()I

    move-result v2

    .line 39468
    .local v0, "codeNum":I
    rem-int/lit8 v0, v2, 0x2

    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    add-int/lit8 v0, v2, 0x1

    div-int/lit8 v0, v0, 0x2

    mul-int/2addr v1, v0

    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final A04()I
    .locals 1

    .line 39469
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/HU;->A00()I

    move-result v0

    return v0
.end method

.method public final A05(I)I
    .locals 8

    .line 39470
    const/4 v7, 0x0

    .line 39471
    .local v0, "returnValue":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/HU;->A00:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HU;->A00:I

    .line 39472
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/HU;->A00:I

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v3, 0x8

    if-le v0, v3, :cond_1

    .line 39473
    iget v0, p0, Lcom/facebook/ads/redexgen/X/HU;->A00:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HU;->A00:I

    .line 39474
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HU;->A03:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/HU;->A02:I

    aget-byte v0, v1, v0

    and-int/lit16 v1, v0, 0xff

    iget v0, p0, Lcom/facebook/ads/redexgen/X/HU;->A00:I

    shl-int/2addr v1, v0

    or-int/2addr v7, v1

    .line 39475
    iget v1, p0, Lcom/facebook/ads/redexgen/X/HU;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/HU;->A02:I

    add-int/2addr v0, v5

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HU;->A02(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_1
    add-int/2addr v1, v6

    iput v1, p0, Lcom/facebook/ads/redexgen/X/HU;->A02:I

    goto :goto_0

    :cond_0
    const/4 v6, 0x1

    goto :goto_1

    .line 39476
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HU;->A03:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/HU;->A02:I

    aget-byte v0, v1, v0

    and-int/lit16 v1, v0, 0xff

    iget v0, p0, Lcom/facebook/ads/redexgen/X/HU;->A00:I

    rsub-int/lit8 v0, v0, 0x8

    shr-int/2addr v1, v0

    or-int/2addr v7, v1

    .line 39477
    rsub-int/lit8 v4, p1, 0x20

    sget-object v2, Lcom/facebook/ads/redexgen/X/HU;->A04:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/HU;->A04:[Ljava/lang/String;

    const-string v1, "RXY6xLJuKIcEz3kUylWDYr6tsmitvphK"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "WXiq34WZkyW8ugzR2g0a8ipZBHhkiRcU"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const/4 v0, -0x1

    ushr-int/2addr v0, v4

    and-int/2addr v7, v0

    .line 39478
    iget v0, p0, Lcom/facebook/ads/redexgen/X/HU;->A00:I

    if-ne v0, v3, :cond_2

    .line 39479
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HU;->A00:I

    .line 39480
    iget v3, p0, Lcom/facebook/ads/redexgen/X/HU;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/HU;->A02:I

    add-int/2addr v0, v5

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HU;->A02(I)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_2
    add-int/2addr v3, v6

    sget-object v2, Lcom/facebook/ads/redexgen/X/HU;->A04:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/HU;->A04:[Ljava/lang/String;

    const-string v1, "rds4vupX8r7j5bNz4Ka4tPduGPmVtsGV"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "rRPYe8lZfiAZtF0hvmlKmZn0YXaVPkJ6"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iput v3, p0, Lcom/facebook/ads/redexgen/X/HU;->A02:I

    .line 39481
    :cond_2
    :goto_3
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/HU;->A01()V

    .line 39482
    return v7

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/HU;->A04:[Ljava/lang/String;

    const-string v1, "oP8krBIP0DDB0MHyD3CqohM2a51fTyLT"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "8dOgzrP5xxQxSwHCAu2NrFg9fwsPMfLi"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iput v3, p0, Lcom/facebook/ads/redexgen/X/HU;->A02:I

    goto :goto_3

    .line 39483
    :cond_4
    const/4 v6, 0x1

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A06()V
    .locals 3

    .line 39484
    iget v1, p0, Lcom/facebook/ads/redexgen/X/HU;->A00:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/facebook/ads/redexgen/X/HU;->A00:I

    const/16 v0, 0x8

    if-ne v1, v0, :cond_1

    .line 39485
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HU;->A00:I

    .line 39486
    iget v1, p0, Lcom/facebook/ads/redexgen/X/HU;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/HU;->A02:I

    add-int/2addr v0, v2

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HU;->A02(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    :cond_0
    add-int/2addr v1, v2

    iput v1, p0, Lcom/facebook/ads/redexgen/X/HU;->A02:I

    .line 39487
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/HU;->A01()V

    .line 39488
    return-void
.end method

.method public final A07(I)V
    .locals 5

    .line 39489
    iget v3, p0, Lcom/facebook/ads/redexgen/X/HU;->A02:I

    .line 39490
    .local v0, "oldByteOffset":I
    div-int/lit8 v2, p1, 0x8

    .line 39491
    .local v1, "numBytes":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/HU;->A02:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HU;->A02:I

    .line 39492
    iget v1, p0, Lcom/facebook/ads/redexgen/X/HU;->A00:I

    mul-int/lit8 v0, v2, 0x8

    sub-int/2addr p1, v0

    add-int/2addr v1, p1

    iput v1, p0, Lcom/facebook/ads/redexgen/X/HU;->A00:I

    .line 39493
    iget v1, p0, Lcom/facebook/ads/redexgen/X/HU;->A00:I

    const/4 v0, 0x7

    if-le v1, v0, :cond_1

    .line 39494
    iget v0, p0, Lcom/facebook/ads/redexgen/X/HU;->A02:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HU;->A02:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/HU;->A04:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 39495
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/HU;->A04:[Ljava/lang/String;

    const-string v1, "JMOXq6hG4yZwGcrVKWuSo4mZKx3jwnv0"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "8hcVzozxp8VhJG7sJROCpbfriQIXRjxB"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/HU;->A00:I

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HU;->A00:I

    .line 39496
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .local v2, "i":I
    :goto_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/HU;->A02:I

    if-gt v3, v0, :cond_4

    .line 39497
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/HU;->A02(I)Z

    move-result v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/HU;->A04:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/HU;->A04:[Ljava/lang/String;

    const-string v1, "ItBao4LZOiviF1HOEk7WTyNzP7shwqmG"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "at4dJT6xDps7byHlzjkGtuWM4RrUB1u7"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v4, :cond_3

    .line 39498
    iget v0, p0, Lcom/facebook/ads/redexgen/X/HU;->A02:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HU;->A02:I

    .line 39499
    add-int/lit8 v3, v3, 0x2

    .line 39500
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 39501
    .end local v2    # "i":I
    :cond_4
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/HU;->A01()V

    .line 39502
    return-void
.end method

.method public final A08([BII)V
    .locals 1

    .line 39503
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/HU;->A03:[B

    .line 39504
    iput p2, p0, Lcom/facebook/ads/redexgen/X/HU;->A02:I

    .line 39505
    iput p3, p0, Lcom/facebook/ads/redexgen/X/HU;->A01:I

    .line 39506
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HU;->A00:I

    .line 39507
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/HU;->A01()V

    .line 39508
    return-void
.end method

.method public final A09()Z
    .locals 7

    .line 39509
    iget v6, p0, Lcom/facebook/ads/redexgen/X/HU;->A02:I

    .line 39510
    .local v0, "initialByteOffset":I
    iget v5, p0, Lcom/facebook/ads/redexgen/X/HU;->A00:I

    .line 39511
    .local v1, "initialBitOffset":I
    const/4 v4, 0x0

    .line 39512
    .local v2, "leadingZeros":I
    :goto_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/HU;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/HU;->A01:I

    if-ge v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/HU;->A0A()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39513
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 39514
    :cond_0
    iget v3, p0, Lcom/facebook/ads/redexgen/X/HU;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/HU;->A01:I

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-ne v3, v0, :cond_2

    const/4 v0, 0x1

    .line 39515
    .local v3, "hitLimit":Z
    :goto_1
    iput v6, p0, Lcom/facebook/ads/redexgen/X/HU;->A02:I

    .line 39516
    iput v5, p0, Lcom/facebook/ads/redexgen/X/HU;->A00:I

    .line 39517
    if-nez v0, :cond_1

    mul-int/lit8 v0, v4, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/HU;->A0B(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    .line 39518
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final A0A()Z
    .locals 3

    .line 39519
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HU;->A03:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/HU;->A02:I

    aget-byte v2, v1, v0

    const/16 v1, 0x80

    iget v0, p0, Lcom/facebook/ads/redexgen/X/HU;->A00:I

    shr-int/2addr v1, v0

    and-int/2addr v2, v1

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 39520
    .local v0, "returnValue":Z
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/HU;->A06()V

    .line 39521
    return v0

    .line 39522
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0B(I)Z
    .locals 8

    .line 39523
    iget v5, p0, Lcom/facebook/ads/redexgen/X/HU;->A02:I

    .line 39524
    .local v0, "oldByteOffset":I
    div-int/lit8 v0, p1, 0x8

    .line 39525
    .local v1, "numBytes":I
    iget v4, p0, Lcom/facebook/ads/redexgen/X/HU;->A02:I

    add-int/2addr v4, v0

    .line 39526
    .local v2, "newByteOffset":I
    iget v3, p0, Lcom/facebook/ads/redexgen/X/HU;->A00:I

    add-int/2addr v3, p1

    mul-int/lit8 v0, v0, 0x8

    sub-int/2addr v3, v0

    .line 39527
    .local v3, "newBitOffset":I
    const/4 v0, 0x7

    if-le v3, v0, :cond_2

    .line 39528
    add-int/lit8 v4, v4, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/HU;->A04:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 39529
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/HU;->A04:[Ljava/lang/String;

    const-string v1, "4R3sKytGl1afrKMjnsBwna0p74CJayfl"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "DtV04uWRet80XDEpYPrFh03isGofLap7"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    add-int/lit8 v3, v3, -0x8

    .line 39530
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .local v4, "i":I
    :goto_0
    const/4 v7, 0x1

    if-gt v5, v4, :cond_4

    iget v6, p0, Lcom/facebook/ads/redexgen/X/HU;->A01:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/HU;->A04:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/HU;->A04:[Ljava/lang/String;

    const-string v1, "ru8g1XQo0WAy59nUdKAzfoQ85z62h8So"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "rlk5s9hHQFi3gmvg8c7PRJF1MfkgSAIS"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ge v4, v6, :cond_4

    .line 39531
    invoke-direct {p0, v5}, Lcom/facebook/ads/redexgen/X/HU;->A02(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 39532
    add-int/lit8 v4, v4, 0x1

    .line 39533
    add-int/lit8 v5, v5, 0x2

    .line 39534
    :cond_3
    add-int/2addr v5, v7

    goto :goto_0

    .line 39535
    .end local v4    # "i":I
    :cond_4
    iget v0, p0, Lcom/facebook/ads/redexgen/X/HU;->A01:I

    if-lt v4, v0, :cond_5

    iget v0, p0, Lcom/facebook/ads/redexgen/X/HU;->A01:I

    if-ne v4, v0, :cond_6

    if-nez v3, :cond_6

    :cond_5
    :goto_1
    return v7

    :cond_6
    const/4 v7, 0x0

    goto :goto_1
.end method
