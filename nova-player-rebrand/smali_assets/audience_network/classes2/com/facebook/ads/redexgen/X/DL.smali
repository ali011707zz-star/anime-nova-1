.class public final Lcom/facebook/ads/redexgen/X/DL;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/ni;
    }
.end annotation


# static fields
.field public static A07:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/redexgen/X/ni;

.field public A02:Lcom/facebook/ads/redexgen/X/ni;

.field public A03:Lcom/facebook/ads/redexgen/X/ni;

.field public final A04:I

.field public final A05:Lcom/facebook/ads/redexgen/X/4v;

.field public final A06:Lcom/facebook/ads/redexgen/X/F0;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 692
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "1TUPUvqjuckMieKxy618dXqeho2I2nXO"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "1tw"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Rv8BHxt03y9lIrpcW4kHhbfWsqmFKBVK"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "r8Px"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "D2vXeeTjlCXB4Odv"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "hN"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "uuD40"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "TpLNmCJV5wG1YwTXf3toM93vl9iWeWk7"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/DL;->A07:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/F0;)V
    .locals 4

    .line 33637
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33638
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/DL;->A06:Lcom/facebook/ads/redexgen/X/F0;

    .line 33639
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/F0;->A8I()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A04:I

    .line 33640
    const/16 v1, 0x20

    new-instance v0, Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4v;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A05:Lcom/facebook/ads/redexgen/X/4v;

    .line 33641
    const-wide/16 v2, 0x0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/DL;->A04:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/ni;

    invoke-direct {v0, v2, v3, v1}, Lcom/facebook/ads/redexgen/X/ni;-><init>(JI)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A01:Lcom/facebook/ads/redexgen/X/ni;

    .line 33642
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A01:Lcom/facebook/ads/redexgen/X/ni;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A02:Lcom/facebook/ads/redexgen/X/ni;

    .line 33643
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A01:Lcom/facebook/ads/redexgen/X/ni;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A03:Lcom/facebook/ads/redexgen/X/ni;

    .line 33644
    return-void
.end method

.method private A00(I)I
    .locals 6

    .line 33645
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A03:Lcom/facebook/ads/redexgen/X/ni;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ni;->A03:Lcom/facebook/ads/redexgen/X/Ey;

    if-nez v0, :cond_0

    .line 33646
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/DL;->A03:Lcom/facebook/ads/redexgen/X/ni;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A06:Lcom/facebook/ads/redexgen/X/F0;

    .line 33647
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/F0;->A49()Lcom/facebook/ads/redexgen/X/Ey;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A03:Lcom/facebook/ads/redexgen/X/ni;

    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/ni;->A00:J

    iget v1, p0, Lcom/facebook/ads/redexgen/X/DL;->A04:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/ni;

    invoke-direct {v0, v2, v3, v1}, Lcom/facebook/ads/redexgen/X/ni;-><init>(JI)V

    .line 33648
    invoke-virtual {v5, v4, v0}, Lcom/facebook/ads/redexgen/X/ni;->A03(Lcom/facebook/ads/redexgen/X/Ey;Lcom/facebook/ads/redexgen/X/ni;)V

    .line 33649
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A03:Lcom/facebook/ads/redexgen/X/ni;

    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/ni;->A00:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A00:J

    sub-long/2addr v2, v0

    long-to-int v0, v2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/ni;J)Lcom/facebook/ads/redexgen/X/ni;
    .locals 3

    .line 33650
    :goto_0
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/ni;->A00:J

    cmp-long v0, p1, v1

    if-ltz v0, :cond_0

    .line 33651
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/ni;->A02:Lcom/facebook/ads/redexgen/X/ni;

    goto :goto_0

    .line 33652
    :cond_0
    return-object p0
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/ni;JLjava/nio/ByteBuffer;I)Lcom/facebook/ads/redexgen/X/ni;
    .locals 3

    .line 33653
    invoke-static {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/DL;->A01(Lcom/facebook/ads/redexgen/X/ni;J)Lcom/facebook/ads/redexgen/X/ni;

    move-result-object p0

    .line 33654
    .local v0, "remaining":I
    :cond_0
    :goto_0
    if-lez p4, :cond_1

    .line 33655
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/ni;->A00:J

    sub-long/2addr v1, p1

    long-to-int v0, v1

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 33656
    .local v1, "toCopy":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ni;->A03:Lcom/facebook/ads/redexgen/X/Ey;

    .line 33657
    .local v2, "allocation":Lcom/facebook/ads/redexgen/X/Ey;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Ey;->A01:[B

    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/ni;->A00(J)I

    move-result v0

    invoke-virtual {p3, v1, v0, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 33658
    sub-int/2addr p4, v2

    .line 33659
    int-to-long v0, v2

    add-long/2addr p1, v0

    .line 33660
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/ni;->A00:J

    cmp-long v0, p1, v1

    if-nez v0, :cond_0

    .line 33661
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/ni;->A02:Lcom/facebook/ads/redexgen/X/ni;

    goto :goto_0

    .line 33662
    :cond_1
    return-object p0
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/ni;J[BI)Lcom/facebook/ads/redexgen/X/ni;
    .locals 5

    .line 33663
    invoke-static {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/DL;->A01(Lcom/facebook/ads/redexgen/X/ni;J)Lcom/facebook/ads/redexgen/X/ni;

    move-result-object p0

    .line 33664
    move v4, p4

    .line 33665
    .local v0, "remaining":I
    :cond_0
    :goto_0
    if-lez v4, :cond_1

    .line 33666
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/ni;->A00:J

    sub-long/2addr v0, p1

    long-to-int v2, v0

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 33667
    .local v1, "toCopy":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ni;->A03:Lcom/facebook/ads/redexgen/X/Ey;

    .line 33668
    .local v2, "allocation":Lcom/facebook/ads/redexgen/X/Ey;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Ey;->A01:[B

    .line 33669
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/ni;->A00(J)I

    move-result v1

    sub-int v0, p4, v4

    .line 33670
    invoke-static {v2, v1, p3, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33671
    sub-int/2addr v4, v3

    .line 33672
    int-to-long v0, v3

    add-long/2addr p1, v0

    .line 33673
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/ni;->A00:J

    cmp-long v0, p1, v1

    if-nez v0, :cond_0

    .line 33674
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/ni;->A02:Lcom/facebook/ads/redexgen/X/ni;

    goto :goto_0

    .line 33675
    :cond_1
    return-object p0
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/ni;Lcom/facebook/ads/redexgen/X/p0;Lcom/facebook/ads/redexgen/X/DN;Lcom/facebook/ads/redexgen/X/4v;)Lcom/facebook/ads/redexgen/X/ni;
    .locals 15

    .line 33676
    move-object/from16 v6, p2

    iget-wide v0, v6, Lcom/facebook/ads/redexgen/X/DN;->A01:J

    .line 33677
    .local v2, "offset":J
    const/4 v5, 0x1

    move-object/from16 v4, p3

    invoke-virtual {v4, v5}, Lcom/facebook/ads/redexgen/X/4v;->A0d(I)V

    .line 33678
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v2

    invoke-static {p0, v0, v1, v2, v5}, Lcom/facebook/ads/redexgen/X/DL;->A03(Lcom/facebook/ads/redexgen/X/ni;J[BI)Lcom/facebook/ads/redexgen/X/ni;

    move-result-object v7

    .line 33679
    .end local p8
    .local v5, "allocationNode":Lcom/facebook/ads/redexgen/X/ni;
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 33680
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v2

    const/4 v8, 0x0

    aget-byte v3, v2, v8

    .line 33681
    .local v6, "signalByte":B
    and-int/lit16 v2, v3, 0x80

    if-eqz v2, :cond_6

    .line 33682
    .local v4, "subsampleEncryption":Z
    :goto_0
    and-int/lit8 v3, v3, 0x7f

    .line 33683
    .local v8, "ivSize":I
    move-object/from16 v2, p1

    iget-object v10, v2, Lcom/facebook/ads/redexgen/X/p0;->A05:Lcom/facebook/ads/redexgen/X/5z;

    .line 33684
    .local p0, "cryptoInfo":Lcom/facebook/ads/redexgen/X/5z;
    iget-object v2, v10, Lcom/facebook/ads/redexgen/X/5z;->A04:[B

    if-nez v2, :cond_5

    .line 33685
    const/16 v2, 0x10

    new-array v2, v2, [B

    iput-object v2, v10, Lcom/facebook/ads/redexgen/X/5z;->A04:[B

    .line 33686
    :goto_1
    iget-object v2, v10, Lcom/facebook/ads/redexgen/X/5z;->A04:[B

    invoke-static {v7, v0, v1, v2, v3}, Lcom/facebook/ads/redexgen/X/DL;->A03(Lcom/facebook/ads/redexgen/X/ni;J[BI)Lcom/facebook/ads/redexgen/X/ni;

    move-result-object v7

    .line 33687
    int-to-long v2, v3

    add-long/2addr v0, v2

    .line 33688
    if-eqz v5, :cond_4

    .line 33689
    const/4 v3, 0x2

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/4v;->A0d(I)V

    .line 33690
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v2

    invoke-static {v7, v0, v1, v2, v3}, Lcom/facebook/ads/redexgen/X/DL;->A03(Lcom/facebook/ads/redexgen/X/ni;J[BI)Lcom/facebook/ads/redexgen/X/ni;

    move-result-object v7

    .line 33691
    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    .line 33692
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/4v;->A0M()I

    move-result v11

    .line 33693
    .local v10, "subsampleCount":I
    .local v14, "subsampleCount":I
    :goto_2
    iget-object v12, v10, Lcom/facebook/ads/redexgen/X/5z;->A06:[I

    .line 33694
    .local v10, "clearDataSizes":[I
    if-eqz v12, :cond_0

    array-length v2, v12

    if-ge v2, v11, :cond_1

    .line 33695
    :cond_0
    new-array v12, v11, [I

    .line 33696
    .end local v10    # "clearDataSizes":[I
    .local p4, "clearDataSizes":[I
    :cond_1
    iget-object v13, v10, Lcom/facebook/ads/redexgen/X/5z;->A07:[I

    .line 33697
    .local v10, "encryptedDataSizes":[I
    if-eqz v13, :cond_2

    array-length v2, v13

    if-ge v2, v11, :cond_3

    .line 33698
    :cond_2
    new-array v13, v11, [I

    .line 33699
    .end local v10    # "encryptedDataSizes":[I
    .local p5, "encryptedDataSizes":[I
    :cond_3
    if-eqz v5, :cond_7

    .line 33700
    mul-int/lit8 v3, v11, 0x6

    .line 33701
    .local v10, "subsampleDataLength":I
    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/4v;->A0d(I)V

    .line 33702
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v2

    invoke-static {v7, v0, v1, v2, v3}, Lcom/facebook/ads/redexgen/X/DL;->A03(Lcom/facebook/ads/redexgen/X/ni;J[BI)Lcom/facebook/ads/redexgen/X/ni;

    move-result-object v7

    .line 33703
    int-to-long v2, v3

    add-long/2addr v0, v2

    .line 33704
    invoke-virtual {v4, v8}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 33705
    const/4 v3, 0x0

    .local v7, "i":I
    :goto_3
    if-ge v3, v11, :cond_8

    .line 33706
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/4v;->A0M()I

    move-result v2

    aput v2, v12, v3

    .line 33707
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/4v;->A0L()I

    move-result v2

    aput v2, v13, v3

    .line 33708
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 33709
    .end local v10    # "subsampleDataLength":I
    :cond_4
    const/4 v11, 0x1

    sget-object v3, Lcom/facebook/ads/redexgen/X/DL;->A07:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v3, v3, v2

    const/4 v2, 0x5

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v2, 0x69

    if-eq v3, v2, :cond_a

    sget-object v9, Lcom/facebook/ads/redexgen/X/DL;->A07:[Ljava/lang/String;

    const-string v3, "Hpyz1f8ALnZx1iP9R6alck8MxH3P54oK"

    const/4 v2, 0x7

    aput-object v3, v9, v2

    goto :goto_2

    .line 33710
    :cond_5
    iget-object v2, v10, Lcom/facebook/ads/redexgen/X/5z;->A04:[B

    invoke-static {v2, v8}, Ljava/util/Arrays;->fill([BB)V

    goto :goto_1

    .line 33711
    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 33712
    :cond_7
    aput v8, v12, v8

    .line 33713
    iget v9, v6, Lcom/facebook/ads/redexgen/X/DN;->A00:I

    iget-wide v4, v6, Lcom/facebook/ads/redexgen/X/DN;->A01:J

    sub-long v2, v0, v4

    long-to-int v4, v2

    sub-int/2addr v9, v4

    aput v9, v13, v8

    .line 33714
    :cond_8
    iget-object v2, v6, Lcom/facebook/ads/redexgen/X/DN;->A02:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Hb;

    .line 33715
    .local v7, "cryptoData":Lcom/facebook/ads/redexgen/X/Hb;
    iget-object v14, v2, Lcom/facebook/ads/redexgen/X/Hb;->A03:[B

    iget-object p0, v10, Lcom/facebook/ads/redexgen/X/5z;->A04:[B

    iget v4, v2, Lcom/facebook/ads/redexgen/X/Hb;->A01:I

    iget v3, v2, Lcom/facebook/ads/redexgen/X/Hb;->A02:I

    iget v2, v2, Lcom/facebook/ads/redexgen/X/Hb;->A00:I

    .end local v14    # "subsampleCount":I
    .local p7, "subsampleCount":I
    .end local p0    # "cryptoInfo":Lcom/facebook/ads/redexgen/X/5z;
    .local p6, "cryptoInfo":Lcom/facebook/ads/redexgen/X/5z;
    move/from16 p2, v3

    move/from16 p3, v2

    move/from16 p1, v4

    invoke-virtual/range {v10 .. v18}, Lcom/facebook/ads/redexgen/X/5z;->A02(I[I[I[B[BIII)V

    .line 33716
    iget-wide v2, v6, Lcom/facebook/ads/redexgen/X/DN;->A01:J

    sub-long/2addr v0, v2

    long-to-int v3, v0

    .line 33717
    .local v1, "bytesRead":I
    iget-wide v4, v6, Lcom/facebook/ads/redexgen/X/DN;->A01:J

    int-to-long v0, v3

    add-long/2addr v4, v0

    iput-wide v4, v6, Lcom/facebook/ads/redexgen/X/DN;->A01:J

    sget-object v1, Lcom/facebook/ads/redexgen/X/DL;->A07:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x54

    if-eq v1, v0, :cond_9

    .line 33718
    sget-object v2, Lcom/facebook/ads/redexgen/X/DL;->A07:[Ljava/lang/String;

    const-string v1, "b8i1"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "bRWrT"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iget v0, v6, Lcom/facebook/ads/redexgen/X/DN;->A00:I

    sub-int/2addr v0, v3

    iput v0, v6, Lcom/facebook/ads/redexgen/X/DN;->A00:I

    .line 33719
    return-object v7

    .line 33720
    :cond_9
    sget-object v2, Lcom/facebook/ads/redexgen/X/DL;->A07:[Ljava/lang/String;

    const-string v1, "nTpP9ibfF3cbwjVbkTA4UIhNPpZui5fl"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget v0, v6, Lcom/facebook/ads/redexgen/X/DN;->A00:I

    sub-int/2addr v0, v3

    iput v0, v6, Lcom/facebook/ads/redexgen/X/DN;->A00:I

    .line 33721
    return-object v7

    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/ni;Lcom/facebook/ads/redexgen/X/p0;Lcom/facebook/ads/redexgen/X/DN;Lcom/facebook/ads/redexgen/X/4v;)Lcom/facebook/ads/redexgen/X/ni;
    .locals 7

    .line 33722
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/p0;->A0E()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33723
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/DL;->A04(Lcom/facebook/ads/redexgen/X/ni;Lcom/facebook/ads/redexgen/X/p0;Lcom/facebook/ads/redexgen/X/DN;Lcom/facebook/ads/redexgen/X/4v;)Lcom/facebook/ads/redexgen/X/ni;

    move-result-object p0

    .line 33724
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/5u;->A03()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33725
    const/4 v6, 0x4

    invoke-virtual {p3, v6}, Lcom/facebook/ads/redexgen/X/4v;->A0d(I)V

    .line 33726
    iget-wide v0, p2, Lcom/facebook/ads/redexgen/X/DN;->A01:J

    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v2

    invoke-static {p0, v0, v1, v2, v6}, Lcom/facebook/ads/redexgen/X/DL;->A03(Lcom/facebook/ads/redexgen/X/ni;J[BI)Lcom/facebook/ads/redexgen/X/ni;

    move-result-object v4

    .line 33727
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/4v;->A0L()I

    move-result v5

    .line 33728
    .local v1, "sampleSize":I
    iget-wide v2, p2, Lcom/facebook/ads/redexgen/X/DN;->A01:J

    const-wide/16 v0, 0x4

    add-long/2addr v2, v0

    iput-wide v2, p2, Lcom/facebook/ads/redexgen/X/DN;->A01:J

    .line 33729
    iget v0, p2, Lcom/facebook/ads/redexgen/X/DN;->A00:I

    sub-int/2addr v0, v6

    iput v0, p2, Lcom/facebook/ads/redexgen/X/DN;->A00:I

    .line 33730
    invoke-virtual {p1, v5}, Lcom/facebook/ads/redexgen/X/p0;->A0C(I)V

    .line 33731
    iget-wide v1, p2, Lcom/facebook/ads/redexgen/X/DN;->A01:J

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/p0;->A02:Ljava/nio/ByteBuffer;

    invoke-static {v4, v1, v2, v0, v5}, Lcom/facebook/ads/redexgen/X/DL;->A02(Lcom/facebook/ads/redexgen/X/ni;JLjava/nio/ByteBuffer;I)Lcom/facebook/ads/redexgen/X/ni;

    move-result-object v4

    .line 33732
    iget-wide v2, p2, Lcom/facebook/ads/redexgen/X/DN;->A01:J

    int-to-long v0, v5

    add-long/2addr v2, v0

    iput-wide v2, p2, Lcom/facebook/ads/redexgen/X/DN;->A01:J

    .line 33733
    iget v0, p2, Lcom/facebook/ads/redexgen/X/DN;->A00:I

    sub-int/2addr v0, v5

    iput v0, p2, Lcom/facebook/ads/redexgen/X/DN;->A00:I

    .line 33734
    iget v0, p2, Lcom/facebook/ads/redexgen/X/DN;->A00:I

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/p0;->A0D(I)V

    .line 33735
    iget-wide v2, p2, Lcom/facebook/ads/redexgen/X/DN;->A01:J

    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/p0;->A03:Ljava/nio/ByteBuffer;

    iget v0, p2, Lcom/facebook/ads/redexgen/X/DN;->A00:I

    .line 33736
    invoke-static {v4, v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/DL;->A02(Lcom/facebook/ads/redexgen/X/ni;JLjava/nio/ByteBuffer;I)Lcom/facebook/ads/redexgen/X/ni;

    move-result-object v0

    .line 33737
    .end local v1    # "sampleSize":I
    :goto_0
    return-object v0

    .line 33738
    :cond_1
    iget v0, p2, Lcom/facebook/ads/redexgen/X/DN;->A00:I

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/p0;->A0C(I)V

    .line 33739
    iget-wide v1, p2, Lcom/facebook/ads/redexgen/X/DN;->A01:J

    iget-object v3, p1, Lcom/facebook/ads/redexgen/X/p0;->A02:Ljava/nio/ByteBuffer;

    iget v0, p2, Lcom/facebook/ads/redexgen/X/DN;->A00:I

    .line 33740
    invoke-static {p0, v1, v2, v3, v0}, Lcom/facebook/ads/redexgen/X/DL;->A02(Lcom/facebook/ads/redexgen/X/ni;JLjava/nio/ByteBuffer;I)Lcom/facebook/ads/redexgen/X/ni;

    move-result-object v0

    goto :goto_0
.end method

.method private A06(I)V
    .locals 5

    .line 33741
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/DL;->A00:J

    int-to-long v0, p1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/DL;->A00:J

    .line 33742
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/DL;->A00:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A03:Lcom/facebook/ads/redexgen/X/ni;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/ni;->A00:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    .line 33743
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A03:Lcom/facebook/ads/redexgen/X/ni;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ni;->A02:Lcom/facebook/ads/redexgen/X/ni;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A03:Lcom/facebook/ads/redexgen/X/ni;

    .line 33744
    :cond_0
    return-void
.end method

.method private A07(Lcom/facebook/ads/redexgen/X/ni;)V
    .locals 1

    .line 33745
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/ni;->A03:Lcom/facebook/ads/redexgen/X/Ey;

    if-nez v0, :cond_0

    .line 33746
    return-void

    .line 33747
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A06:Lcom/facebook/ads/redexgen/X/F0;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/F0;->AHe(Lcom/facebook/ads/redexgen/X/Ez;)V

    .line 33748
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ni;->A01()Lcom/facebook/ads/redexgen/X/ni;

    .line 33749
    return-void
.end method


# virtual methods
.method public final A08(Lcom/facebook/ads/redexgen/X/2c;IZ)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33750
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/DL;->A00(I)I

    move-result v4

    .line 33751
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A03:Lcom/facebook/ads/redexgen/X/ni;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ni;->A03:Lcom/facebook/ads/redexgen/X/Ey;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Ey;->A01:[B

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/DL;->A03:Lcom/facebook/ads/redexgen/X/ni;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A00:J

    .line 33752
    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/ni;->A00(J)I

    move-result v0

    .line 33753
    invoke-interface {p1, v3, v0, v4}, Lcom/facebook/ads/redexgen/X/2c;->read([BII)I

    move-result v1

    .line 33754
    .local v0, "bytesAppended":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    .line 33755
    if-eqz p3, :cond_0

    .line 33756
    return v0

    .line 33757
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 33758
    :cond_1
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/DL;->A06(I)V

    .line 33759
    return v1
.end method

.method public final A09()J
    .locals 2

    .line 33760
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A00:J

    return-wide v0
.end method

.method public final A0A()V
    .locals 4

    .line 33761
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A01:Lcom/facebook/ads/redexgen/X/ni;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/DL;->A07(Lcom/facebook/ads/redexgen/X/ni;)V

    .line 33762
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/DL;->A01:Lcom/facebook/ads/redexgen/X/ni;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A04:I

    const-wide/16 v1, 0x0

    invoke-virtual {v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/ni;->A02(JI)V

    .line 33763
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A01:Lcom/facebook/ads/redexgen/X/ni;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A02:Lcom/facebook/ads/redexgen/X/ni;

    .line 33764
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A01:Lcom/facebook/ads/redexgen/X/ni;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A03:Lcom/facebook/ads/redexgen/X/ni;

    .line 33765
    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/DL;->A00:J

    .line 33766
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A06:Lcom/facebook/ads/redexgen/X/F0;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/F0;->AKT()V

    .line 33767
    return-void
.end method

.method public final A0B()V
    .locals 1

    .line 33768
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A01:Lcom/facebook/ads/redexgen/X/ni;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A02:Lcom/facebook/ads/redexgen/X/ni;

    .line 33769
    return-void
.end method

.method public final A0C(J)V
    .locals 6

    .line 33770
    const-wide/16 v1, -0x1

    cmp-long v0, p1, v1

    if-nez v0, :cond_0

    .line 33771
    return-void

    .line 33772
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A01:Lcom/facebook/ads/redexgen/X/ni;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/ni;->A00:J

    cmp-long v0, p1, v1

    if-ltz v0, :cond_1

    .line 33773
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DL;->A06:Lcom/facebook/ads/redexgen/X/F0;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A01:Lcom/facebook/ads/redexgen/X/ni;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ni;->A03:Lcom/facebook/ads/redexgen/X/Ey;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/F0;->AHd(Lcom/facebook/ads/redexgen/X/Ey;)V

    .line 33774
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A01:Lcom/facebook/ads/redexgen/X/ni;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ni;->A01()Lcom/facebook/ads/redexgen/X/ni;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A01:Lcom/facebook/ads/redexgen/X/ni;

    goto :goto_0

    .line 33775
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A02:Lcom/facebook/ads/redexgen/X/ni;

    iget-wide v4, v0, Lcom/facebook/ads/redexgen/X/ni;->A01:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A01:Lcom/facebook/ads/redexgen/X/ni;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/ni;->A01:J

    cmp-long v3, v4, v0

    sget-object v2, Lcom/facebook/ads/redexgen/X/DL;->A07:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/DL;->A07:[Ljava/lang/String;

    const-string v1, "kTcq"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "Dj6YZ"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-gez v3, :cond_2

    .line 33776
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A01:Lcom/facebook/ads/redexgen/X/ni;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A02:Lcom/facebook/ads/redexgen/X/ni;

    .line 33777
    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0D(Lcom/facebook/ads/redexgen/X/4v;I)V
    .locals 5

    .line 33778
    :goto_0
    if-lez p2, :cond_0

    .line 33779
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/DL;->A00(I)I

    move-result v4

    .line 33780
    .local v0, "bytesAppended":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A03:Lcom/facebook/ads/redexgen/X/ni;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ni;->A03:Lcom/facebook/ads/redexgen/X/Ey;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Ey;->A01:[B

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/DL;->A03:Lcom/facebook/ads/redexgen/X/ni;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A00:J

    .line 33781
    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/ni;->A00(J)I

    move-result v0

    .line 33782
    invoke-virtual {p1, v3, v0, v4}, Lcom/facebook/ads/redexgen/X/4v;->A0k([BII)V

    .line 33783
    sub-int/2addr p2, v4

    .line 33784
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/DL;->A06(I)V

    .line 33785
    .end local v0    # "bytesAppended":I
    goto :goto_0

    .line 33786
    :cond_0
    return-void
.end method

.method public final A0E(Lcom/facebook/ads/redexgen/X/p0;Lcom/facebook/ads/redexgen/X/DN;)V
    .locals 2

    .line 33787
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DL;->A02:Lcom/facebook/ads/redexgen/X/ni;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A05:Lcom/facebook/ads/redexgen/X/4v;

    invoke-static {v1, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/DL;->A05(Lcom/facebook/ads/redexgen/X/ni;Lcom/facebook/ads/redexgen/X/p0;Lcom/facebook/ads/redexgen/X/DN;Lcom/facebook/ads/redexgen/X/4v;)Lcom/facebook/ads/redexgen/X/ni;

    .line 33788
    return-void
.end method

.method public final A0F(Lcom/facebook/ads/redexgen/X/p0;Lcom/facebook/ads/redexgen/X/DN;)V
    .locals 2

    .line 33789
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DL;->A02:Lcom/facebook/ads/redexgen/X/ni;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A05:Lcom/facebook/ads/redexgen/X/4v;

    invoke-static {v1, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/DL;->A05(Lcom/facebook/ads/redexgen/X/ni;Lcom/facebook/ads/redexgen/X/p0;Lcom/facebook/ads/redexgen/X/DN;Lcom/facebook/ads/redexgen/X/4v;)Lcom/facebook/ads/redexgen/X/ni;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A02:Lcom/facebook/ads/redexgen/X/ni;

    .line 33790
    return-void
.end method
