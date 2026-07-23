.class public final Lcom/facebook/ads/redexgen/X/4u;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A04:[Ljava/lang/String;


# instance fields
.field public A00:[B

.field public A01:I

.field public A02:I

.field public A03:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 347
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "2nOz0KIFgcZZRyVuqo5bgbDjVecAtY1v"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "p1"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "VjnGs3e14C04tf63tHLQ77fvb0vUFjjn"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "IkQ8iUjtLJey7cJCEXqpfqsJOKT4tfzv"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "YU3RrDfZvA3XfQSmqlFrDyJy2XBZ9ug4"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "OCexcvgEmqqQdA89aMsn"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "lWBBh2DwBKc0yUEroYjNXxq0TEDXKrUS"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "n4CP0YvmwhnKHbqe32bPZYKzOuFmYPOb"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/4u;->A04:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 12501
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/4u;-><init>([BI)V

    .line 12502
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .line 12503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12504
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4u;->A00:[B

    .line 12505
    iput p2, p0, Lcom/facebook/ads/redexgen/X/4u;->A02:I

    .line 12506
    return-void
.end method

.method private A00()V
    .locals 2

    .line 12507
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A03:I

    if-ltz v0, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4u;->A03:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A02:I

    if-lt v1, v0, :cond_0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4u;->A03:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A02:I

    if-ne v1, v0, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A01:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 12508
    return-void

    .line 12509
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A01()I
    .locals 2

    .line 12510
    iget v1, p0, Lcom/facebook/ads/redexgen/X/4u;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A03:I

    sub-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x8

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A01:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public final A02()I
    .locals 1

    .line 12511
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A01:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 12512
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A03:I

    return v0

    .line 12513
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A03()I
    .locals 2

    .line 12514
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A03:I

    mul-int/lit8 v1, v0, 0x8

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A01:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final A04(I)I
    .locals 5

    .line 12515
    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 12516
    return v2

    .line 12517
    :cond_0
    const/4 v4, 0x0

    .line 12518
    .local v1, "returnValue":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A01:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A01:I

    .line 12519
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A01:I

    const/16 v3, 0x8

    if-le v0, v3, :cond_1

    .line 12520
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A01:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A01:I

    .line 12521
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4u;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4u;->A03:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A03:I

    aget-byte v0, v3, v1

    and-int/lit16 v1, v0, 0xff

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A01:I

    shl-int/2addr v1, v0

    or-int/2addr v4, v1

    goto :goto_0

    .line 12522
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4u;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A03:I

    aget-byte v0, v1, v0

    and-int/lit16 v1, v0, 0xff

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A01:I

    rsub-int/lit8 v0, v0, 0x8

    shr-int/2addr v1, v0

    or-int/2addr v4, v1

    .line 12523
    rsub-int/lit8 v1, p1, 0x20

    const/4 v0, -0x1

    ushr-int/2addr v0, v1

    and-int/2addr v4, v0

    .line 12524
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A01:I

    if-ne v0, v3, :cond_2

    .line 12525
    iput v2, p0, Lcom/facebook/ads/redexgen/X/4u;->A01:I

    .line 12526
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A03:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A03:I

    .line 12527
    :cond_2
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4u;->A00()V

    .line 12528
    return v4
.end method

.method public final A05(I)J
    .locals 5

    .line 12529
    const/16 v2, 0x20

    if-gt p1, v2, :cond_1

    .line 12530
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0M(I)J

    move-result-wide v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/4u;->A04:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/4u;->A04:[Ljava/lang/String;

    const-string v1, "hPuSpAkHwt40nYe5baQSvI4ZKxCRAlL0"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "ANsKpIz8SdbAQh9e0XlF7KjBsp30BEL1"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-wide v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 12531
    :cond_1
    add-int/lit8 v0, p1, -0x20

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v1

    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0N(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public final A06()V
    .locals 1

    .line 12532
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A01:I

    if-nez v0, :cond_0

    .line 12533
    return-void

    .line 12534
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A01:I

    .line 12535
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A03:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A03:I

    .line 12536
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4u;->A00()V

    .line 12537
    return-void
.end method

.method public final A07()V
    .locals 4

    .line 12538
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A01:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/facebook/ads/redexgen/X/4u;->A01:I

    const/16 v0, 0x8

    if-ne v1, v0, :cond_0

    .line 12539
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A01:I

    .line 12540
    iget v3, p0, Lcom/facebook/ads/redexgen/X/4u;->A03:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/4u;->A04:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/4u;->A04:[Ljava/lang/String;

    const-string v1, "IsW8CSRSYhigEF2wlh1BrMeLUc4CvJhM"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "lfcfpjtp1JtJxQNQeccncamol0LRwTjJ"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    add-int/lit8 v0, v3, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A03:I

    .line 12541
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4u;->A00()V

    .line 12542
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A08(I)V
    .locals 1

    .line 12543
    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A03:I

    .line 12544
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A03:I

    mul-int/lit8 v0, v0, 0x8

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/facebook/ads/redexgen/X/4u;->A01:I

    .line 12545
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4u;->A00()V

    .line 12546
    return-void
.end method

.method public final A09(I)V
    .locals 3

    .line 12547
    div-int/lit8 v2, p1, 0x8

    .line 12548
    .local v0, "numBytes":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A03:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A03:I

    .line 12549
    iget v1, p0, Lcom/facebook/ads/redexgen/X/4u;->A01:I

    mul-int/lit8 v0, v2, 0x8

    sub-int/2addr p1, v0

    add-int/2addr v1, p1

    iput v1, p0, Lcom/facebook/ads/redexgen/X/4u;->A01:I

    .line 12550
    iget v1, p0, Lcom/facebook/ads/redexgen/X/4u;->A01:I

    const/4 v0, 0x7

    if-le v1, v0, :cond_0

    .line 12551
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A03:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A03:I

    .line 12552
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A01:I

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A01:I

    .line 12553
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4u;->A00()V

    .line 12554
    return-void
.end method

.method public final A0A(I)V
    .locals 1

    .line 12555
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A01:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 12556
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A03:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A03:I

    .line 12557
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4u;->A00()V

    .line 12558
    return-void

    .line 12559
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0B(II)V
    .locals 9

    .line 12560
    .local v0, "remainingBitsToRead":I
    const/16 v0, 0x20

    const/4 v8, 0x1

    if-ge p2, v0, :cond_0

    .line 12561
    shl-int v0, v8, p2

    sub-int/2addr v0, v8

    and-int/2addr p1, v0

    .line 12562
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A01:I

    const/16 v3, 0x8

    rsub-int/lit8 v0, v0, 0x8

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 12563
    .local v1, "firstByteReadSize":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A01:I

    rsub-int/lit8 v6, v0, 0x8

    sub-int/2addr v6, v7

    .line 12564
    .local v4, "firstByteRightPaddingSize":I
    const v5, 0xff00

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A01:I

    shr-int/2addr v5, v0

    shl-int v0, v8, v6

    sub-int/2addr v0, v8

    or-int/2addr v5, v0

    .line 12565
    .local v5, "firstByteBitmask":I
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4u;->A00:[B

    iget v2, p0, Lcom/facebook/ads/redexgen/X/4u;->A03:I

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4u;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A03:I

    aget-byte v0, v1, v0

    and-int/2addr v0, v5

    int-to-byte v0, v0

    aput-byte v0, v4, v2

    .line 12566
    sub-int v0, p2, v7

    ushr-int v5, p1, v0

    .line 12567
    .local v6, "firstByteInputBits":I
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4u;->A00:[B

    iget v2, p0, Lcom/facebook/ads/redexgen/X/4u;->A03:I

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4u;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A03:I

    aget-byte v0, v1, v0

    shl-int/2addr v5, v6

    or-int/2addr v0, v5

    int-to-byte v0, v0

    aput-byte v0, v4, v2

    .line 12568
    sub-int v5, p2, v7

    .line 12569
    iget v4, p0, Lcom/facebook/ads/redexgen/X/4u;->A03:I

    add-int/2addr v4, v8

    .line 12570
    .local v7, "currentByteIndex":I
    :goto_0
    if-le v5, v3, :cond_1

    .line 12571
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4u;->A00:[B

    add-int/lit8 v1, v4, 0x1

    .end local v7    # "currentByteIndex":I
    .local p0, "currentByteIndex":I
    add-int/lit8 v0, v5, -0x8

    ushr-int v0, p1, v0

    int-to-byte v0, v0

    aput-byte v0, v2, v4

    .line 12572
    add-int/lit8 v5, v5, -0x8

    move v4, v1

    goto :goto_0

    .line 12573
    .end local p0    # "currentByteIndex":I
    .restart local v7    # "currentByteIndex":I
    :cond_1
    rsub-int/lit8 v3, v5, 0x8

    .line 12574
    .local v3, "lastByteRightPaddingSize":I
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4u;->A00:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A00:[B

    aget-byte v1, v0, v4

    shl-int v0, v8, v3

    sub-int/2addr v0, v8

    and-int/2addr v1, v0

    int-to-byte v0, v1

    aput-byte v0, v2, v4

    .line 12575
    shl-int v0, v8, v5

    sub-int/2addr v0, v8

    and-int/2addr p1, v0

    .line 12576
    .local v2, "lastByteInput":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4u;->A00:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A00:[B

    aget-byte v0, v0, v4

    shl-int/2addr p1, v3

    or-int/2addr v0, p1

    int-to-byte v0, v0

    aput-byte v0, v1, v4

    .line 12577
    invoke-virtual {p0, p2}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 12578
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4u;->A00()V

    .line 12579
    return-void
.end method

.method public final A0C(Lcom/facebook/ads/redexgen/X/4v;)V
    .locals 2

    .line 12580
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0A()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A0E([BI)V

    .line 12581
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4u;->A08(I)V

    .line 12582
    return-void
.end method

.method public final A0D([B)V
    .locals 1

    .line 12583
    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A0E([BI)V

    .line 12584
    return-void
.end method

.method public final A0E([BI)V
    .locals 1

    .line 12585
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4u;->A00:[B

    .line 12586
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A03:I

    .line 12587
    iput v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A01:I

    .line 12588
    iput p2, p0, Lcom/facebook/ads/redexgen/X/4u;->A02:I

    .line 12589
    return-void
.end method

.method public final A0F([BII)V
    .locals 8

    .line 12590
    shr-int/lit8 v3, p3, 0x3

    add-int/2addr v3, p2

    .line 12591
    .local v0, "to":I
    .local v1, "i":I
    :goto_0
    const/16 v4, 0xff

    const/16 v2, 0x8

    if-ge p2, v3, :cond_0

    .line 12592
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/4u;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4u;->A03:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A03:I

    aget-byte v1, v5, v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A01:I

    shl-int/2addr v1, v0

    int-to-byte v0, v1

    aput-byte v0, p1, p2

    .line 12593
    aget-byte v5, p1, p2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4u;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A03:I

    aget-byte v0, v1, v0

    and-int/2addr v4, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A01:I

    sub-int/2addr v2, v0

    shr-int/2addr v4, v2

    or-int/2addr v4, v5

    int-to-byte v0, v4

    aput-byte v0, p1, p2

    .line 12594
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 12595
    .end local v1    # "i":I
    :cond_0
    and-int/lit8 v7, p3, 0x7

    .line 12596
    .local v1, "bitsLeft":I
    if-nez v7, :cond_1

    .line 12597
    return-void

    .line 12598
    :cond_1
    aget-byte v1, p1, v3

    shr-int v0, v4, v7

    and-int/2addr v1, v0

    int-to-byte v0, v1

    aput-byte v0, p1, v3

    .line 12599
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A01:I

    add-int/2addr v0, v7

    if-le v0, v2, :cond_2

    .line 12600
    aget-byte v6, p1, v3

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/4u;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4u;->A03:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A03:I

    aget-byte v1, v5, v1

    and-int/2addr v1, v4

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A01:I

    shl-int/2addr v1, v0

    or-int/2addr v6, v1

    int-to-byte v0, v6

    aput-byte v0, p1, v3

    .line 12601
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A01:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A01:I

    .line 12602
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A01:I

    add-int/2addr v0, v7

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A01:I

    .line 12603
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4u;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A03:I

    aget-byte v0, v1, v0

    and-int/2addr v4, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A01:I

    rsub-int/lit8 v0, v0, 0x8

    shr-int/2addr v4, v0

    .line 12604
    .local v2, "lastDataByteTrailingBits":I
    aget-byte v1, p1, v3

    rsub-int/lit8 v0, v7, 0x8

    shl-int/2addr v4, v0

    int-to-byte v0, v4

    or-int/2addr v1, v0

    int-to-byte v0, v1

    aput-byte v0, p1, v3

    .line 12605
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A01:I

    if-ne v0, v2, :cond_3

    .line 12606
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A01:I

    .line 12607
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A03:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A03:I

    .line 12608
    :cond_3
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4u;->A00()V

    .line 12609
    return-void
.end method

.method public final A0G([BII)V
    .locals 2

    .line 12610
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A01:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 12611
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4u;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A03:I

    invoke-static {v1, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12612
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A03:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A03:I

    .line 12613
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4u;->A00()V

    .line 12614
    return-void

    .line 12615
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0H()Z
    .locals 3

    .line 12616
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4u;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A03:I

    aget-byte v2, v1, v0

    const/16 v1, 0x80

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4u;->A01:I

    shr-int/2addr v1, v0

    and-int/2addr v2, v1

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 12617
    .local v0, "returnValue":Z
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4u;->A07()V

    .line 12618
    return v0

    .line 12619
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
