.class public abstract Lcom/facebook/ads/redexgen/X/HF;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/HE;
    }
.end annotation


# static fields
.field public static A00:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 776
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "o6dy0jxWVFoVpdfIHLQ5kJFOMlq1Sn1Q"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "79oj"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "9g10QGOLUMPWkkbPiEKlPZ6GdmncXBXa"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "6fmIgIVXmOYY3cUB7ZYAXnWSgE20TitB"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "v6a7Yb3DANDL70kkwlzLnkI1heNzynkm"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "eDdjZQkAYxVEYJ3d9Q78IvgSo191T7ve"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "sHmXnPOOobIrXpWrquJBTDw1maWJKk3u"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "k0vF7vRBeJQaOBXZ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/HF;->A00:[Ljava/lang/String;

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/4v;I)I
    .locals 2

    .line 38517
    packed-switch p1, :pswitch_data_0

    .line 38518
    const/4 v0, -0x1

    return v0

    .line 38519
    :pswitch_0
    add-int/lit8 v1, p1, -0x8

    const/16 v0, 0x100

    shl-int/2addr v0, v1

    return v0

    .line 38520
    :pswitch_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0M()I

    move-result p1

    sget-object p0, Lcom/facebook/ads/redexgen/X/HF;->A00:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, p0, v0

    const/4 v0, 0x4

    aget-object p0, p0, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object p0, Lcom/facebook/ads/redexgen/X/HF;->A00:[Ljava/lang/String;

    const-string v1, "hcXiJWofr5Txci555yuma5X"

    const/4 v0, 0x7

    aput-object v1, p0, v0

    add-int/lit8 v0, p1, 0x1

    return v0

    .line 38521
    :pswitch_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 38522
    :pswitch_3
    add-int/lit8 v1, p1, -0x2

    const/16 v0, 0x240

    shl-int/2addr v0, v1

    return v0

    .line 38523
    :pswitch_4
    const/16 v0, 0xc0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/ms;Lcom/facebook/ads/redexgen/X/HJ;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38524
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/ms;->AIl()V

    .line 38525
    const/4 v4, 0x1

    invoke-interface {p0, v4}, Lcom/facebook/ads/redexgen/X/ms;->A47(I)V

    .line 38526
    new-array v0, v4, [B

    .line 38527
    .local v1, "blockingStrategyByte":[B
    const/4 v3, 0x0

    invoke-interface {p0, v0, v3, v4}, Lcom/facebook/ads/redexgen/X/ms;->AGt([BII)V

    .line 38528
    aget-byte v0, v0, v3

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_1

    .line 38529
    .local v0, "isBlockSizeVariable":Z
    :goto_0
    const/4 v0, 0x2

    invoke-interface {p0, v0}, Lcom/facebook/ads/redexgen/X/ms;->A47(I)V

    .line 38530
    if-eqz v4, :cond_0

    const/4 v1, 0x7

    .line 38531
    .local v3, "maxUtf8SampleNumberSize":I
    :goto_1
    new-instance v2, Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {v2, v1}, Lcom/facebook/ads/redexgen/X/4v;-><init>(I)V

    .line 38532
    .local v4, "scratch":Lcom/facebook/ads/redexgen/X/4v;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v0

    invoke-static {p0, v0, v3, v1}, Lcom/facebook/ads/redexgen/X/HB;->A00(Lcom/facebook/ads/redexgen/X/ms;[BII)I

    move-result v0

    .line 38533
    .local v2, "totalBytesPeeked":I
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0e(I)V

    .line 38534
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/ms;->AIl()V

    .line 38535
    new-instance v1, Lcom/facebook/ads/redexgen/X/HE;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/HE;-><init>()V

    .line 38536
    .local p0, "sampleNumberHolder":Lcom/facebook/ads/redexgen/X/HE;
    invoke-static {v2, p1, v4, v1}, Lcom/facebook/ads/redexgen/X/HF;->A08(Lcom/facebook/ads/redexgen/X/4v;Lcom/facebook/ads/redexgen/X/HJ;ZLcom/facebook/ads/redexgen/X/HE;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 38537
    iget-wide v0, v1, Lcom/facebook/ads/redexgen/X/HE;->A00:J

    return-wide v0

    .line 38538
    :cond_0
    const/4 v1, 0x6

    goto :goto_1

    .line 38539
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 38540
    :cond_2
    const/4 v0, 0x0

    invoke-static {v0, v0}, Lcom/facebook/ads/redexgen/X/3K;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/3K;

    move-result-object v0

    throw v0
.end method

.method public static A02(ILcom/facebook/ads/redexgen/X/HJ;)Z
    .locals 5

    .line 38541
    const/4 v4, 0x1

    if-nez p0, :cond_0

    .line 38542
    return v4

    .line 38543
    :cond_0
    iget v3, p1, Lcom/facebook/ads/redexgen/X/HJ;->A01:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/HF;->A00:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/HF;->A00:[Ljava/lang/String;

    const-string v1, "dnyA5Em4Vekc9hKZNMMqKWCBR5ivXppC"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-ne p0, v3, :cond_1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A03(ILcom/facebook/ads/redexgen/X/HJ;)Z
    .locals 5

    .line 38544
    const/4 v0, 0x7

    const/4 v4, 0x0

    const/4 v1, 0x1

    if-gt p0, v0, :cond_1

    .line 38545
    iget v0, p1, Lcom/facebook/ads/redexgen/X/HJ;->A02:I

    sub-int/2addr v0, v1

    if-ne p0, v0, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4

    .line 38546
    :cond_1
    const/16 v3, 0xa

    sget-object v1, Lcom/facebook/ads/redexgen/X/HF;->A00:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x59

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/HF;->A00:[Ljava/lang/String;

    const-string v1, "e0AkGTV6jhYRPjlSs9AVJSXBXenCNngQ"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-gt p0, v3, :cond_4

    .line 38547
    iget v1, p1, Lcom/facebook/ads/redexgen/X/HJ;->A02:I

    const/4 v0, 0x2

    if-ne v1, v0, :cond_3

    const/4 v4, 0x1

    :cond_3
    return v4

    .line 38548
    :cond_4
    return v4
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/4v;I)Z
    .locals 4

    .line 38549
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v3

    .line 38550
    .local v0, "crc":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v0

    .line 38551
    .local v1, "frameEndPosition":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v2

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {v2, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/5C;->A0J([BIII)I

    move-result v0

    .line 38552
    .local v2, "expectedCrc":I
    if-ne v3, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/4v;Lcom/facebook/ads/redexgen/X/HJ;I)Z
    .locals 1

    .line 38553
    invoke-static {p0, p2}, Lcom/facebook/ads/redexgen/X/HF;->A00(Lcom/facebook/ads/redexgen/X/4v;I)I

    move-result p0

    .line 38554
    .local v0, "blockSizeSamples":I
    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    iget v0, p1, Lcom/facebook/ads/redexgen/X/HJ;->A03:I

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A06(Lcom/facebook/ads/redexgen/X/4v;Lcom/facebook/ads/redexgen/X/HJ;I)Z
    .locals 5

    .line 38555
    iget v4, p1, Lcom/facebook/ads/redexgen/X/HJ;->A07:I

    .line 38556
    .local v0, "expectedSampleRate":I
    const/4 v3, 0x1

    if-nez p2, :cond_0

    .line 38557
    return v3

    .line 38558
    :cond_0
    const/16 v0, 0xb

    const/4 v2, 0x0

    if-gt p2, v0, :cond_2

    .line 38559
    iget v0, p1, Lcom/facebook/ads/redexgen/X/HJ;->A08:I

    if-ne p2, v0, :cond_1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 38560
    :cond_2
    const/16 v0, 0xc

    if-ne p2, v0, :cond_4

    .line 38561
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    if-ne v0, v4, :cond_3

    :goto_1
    return v3

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 38562
    :cond_4
    const/16 v1, 0xe

    if-gt p2, v1, :cond_7

    .line 38563
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0M()I

    move-result v0

    .line 38564
    .local v4, "sampleRate":I
    if-ne p2, v1, :cond_5

    .line 38565
    mul-int/lit8 v0, v0, 0xa

    .line 38566
    :cond_5
    if-ne v0, v4, :cond_6

    :goto_2
    return v3

    :cond_6
    const/4 v3, 0x0

    goto :goto_2

    .line 38567
    .end local v4    # "sampleRate":I
    :cond_7
    return v2
.end method

.method public static A07(Lcom/facebook/ads/redexgen/X/4v;Lcom/facebook/ads/redexgen/X/HJ;ILcom/facebook/ads/redexgen/X/HE;)Z
    .locals 15

    .line 38568
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v5

    .line 38569
    .local v2, "frameStartPosition":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0Q()J

    move-result-wide v13

    .line 38570
    .local v3, "frameHeaderBytes":J
    const/16 v6, 0x10

    ushr-long v3, v13, v6

    move/from16 v0, p2

    int-to-long v1, v0

    const/4 v12, 0x0

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    .line 38571
    return v12

    .line 38572
    :cond_0
    ushr-long v1, v13, v6

    const-wide/16 v10, 0x1

    and-long/2addr v1, v10

    const/4 v4, 0x1

    cmp-long v0, v1, v10

    if-nez v0, :cond_3

    const/4 v8, 0x1

    .line 38573
    .local v5, "isBlockSizeVariable":Z
    :goto_0
    const/16 v0, 0xc

    shr-long v0, v13, v0

    const-wide/16 v2, 0xf

    and-long/2addr v0, v2

    long-to-int v7, v0

    .line 38574
    .local v6, "blockSizeKey":I
    const/16 v0, 0x8

    shr-long v0, v13, v0

    and-long/2addr v0, v2

    long-to-int v6, v0

    .line 38575
    .local v13, "sampleRateKey":I
    const/4 v0, 0x4

    shr-long v0, v13, v0

    and-long/2addr v0, v2

    long-to-int v9, v0

    .line 38576
    .local v12, "channelAssignmentKey":I
    shr-long v3, v13, v4

    const-wide/16 v0, 0x7

    and-long/2addr v3, v0

    long-to-int v2, v3

    .line 38577
    .local p0, "bitsPerSampleKey":I
    and-long/2addr v13, v10

    cmp-long v0, v13, v10

    if-nez v0, :cond_2

    const/4 v1, 0x1

    .line 38578
    .local v9, "reservedBit":Z
    :goto_1
    move-object/from16 v3, p1

    invoke-static {v9, v3}, Lcom/facebook/ads/redexgen/X/HF;->A03(ILcom/facebook/ads/redexgen/X/HJ;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38579
    invoke-static {v2, v3}, Lcom/facebook/ads/redexgen/X/HF;->A02(ILcom/facebook/ads/redexgen/X/HJ;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    .line 38580
    move-object/from16 v0, p3

    invoke-static {p0, v3, v8, v0}, Lcom/facebook/ads/redexgen/X/HF;->A08(Lcom/facebook/ads/redexgen/X/4v;Lcom/facebook/ads/redexgen/X/HJ;ZLcom/facebook/ads/redexgen/X/HE;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38581
    invoke-static {p0, v3, v7}, Lcom/facebook/ads/redexgen/X/HF;->A05(Lcom/facebook/ads/redexgen/X/4v;Lcom/facebook/ads/redexgen/X/HJ;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38582
    invoke-static {p0, v3, v6}, Lcom/facebook/ads/redexgen/X/HF;->A06(Lcom/facebook/ads/redexgen/X/4v;Lcom/facebook/ads/redexgen/X/HJ;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38583
    invoke-static {p0, v5}, Lcom/facebook/ads/redexgen/X/HF;->A04(Lcom/facebook/ads/redexgen/X/4v;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v12, 0x1

    .line 38584
    :cond_1
    return v12

    .line 38585
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 38586
    :cond_3
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public static A08(Lcom/facebook/ads/redexgen/X/4v;Lcom/facebook/ads/redexgen/X/HJ;ZLcom/facebook/ads/redexgen/X/HE;)Z
    .locals 3

    .line 38587
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0S()J

    move-result-wide v2

    .line 38588
    .local v0, "utf8Value":J
    if-eqz p2, :cond_0

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget v0, p1, Lcom/facebook/ads/redexgen/X/HJ;->A03:I

    int-to-long v0, v0

    mul-long/2addr v0, v2

    goto :goto_1

    :goto_0
    move-wide v0, v2

    :goto_1
    iput-wide v0, p3, Lcom/facebook/ads/redexgen/X/HE;->A00:J

    .line 38589
    const/4 v0, 0x1

    return v0

    .line 38590
    .end local v0    # "utf8Value":J
    .local v0, "e":Ljava/lang/NumberFormatException;
    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public static A09(Lcom/facebook/ads/redexgen/X/ms;Lcom/facebook/ads/redexgen/X/HJ;ILcom/facebook/ads/redexgen/X/HE;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38591
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/ms;->A8i()J

    move-result-wide v1

    .line 38592
    .local v0, "originalPeekPosition":J
    const/4 v4, 0x2

    new-array v7, v4, [B

    .line 38593
    .local v3, "frameStartBytes":[B
    const/4 v6, 0x0

    invoke-interface {p0, v7, v6, v4}, Lcom/facebook/ads/redexgen/X/ms;->AGt([BII)V

    .line 38594
    aget-byte v0, v7, v6

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v3, v0, 0x8

    const/4 v0, 0x1

    aget-byte v0, v7, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v3, v0

    .line 38595
    .local v5, "frameStart":I
    if-eq v3, p2, :cond_0

    .line 38596
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/ms;->AIl()V

    .line 38597
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/ms;->A8n()J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-int v0, v1

    invoke-interface {p0, v0}, Lcom/facebook/ads/redexgen/X/ms;->A47(I)V

    .line 38598
    return v6

    .line 38599
    :cond_0
    const/16 v0, 0x10

    new-instance v5, Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {v5, v0}, Lcom/facebook/ads/redexgen/X/4v;-><init>(I)V

    .line 38600
    .local v6, "scratch":Lcom/facebook/ads/redexgen/X/4v;
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v0

    .line 38601
    invoke-static {v7, v6, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38602
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v3

    .line 38603
    const/16 v0, 0xe

    invoke-static {p0, v3, v4, v0}, Lcom/facebook/ads/redexgen/X/HB;->A00(Lcom/facebook/ads/redexgen/X/ms;[BII)I

    move-result v0

    .line 38604
    .local v2, "totalBytesPeeked":I
    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0e(I)V

    .line 38605
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/ms;->AIl()V

    .line 38606
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/ms;->A8n()J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-int v0, v1

    invoke-interface {p0, v0}, Lcom/facebook/ads/redexgen/X/ms;->A47(I)V

    .line 38607
    invoke-static {v5, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/HF;->A07(Lcom/facebook/ads/redexgen/X/4v;Lcom/facebook/ads/redexgen/X/HJ;ILcom/facebook/ads/redexgen/X/HE;)Z

    move-result v0

    return v0
.end method
