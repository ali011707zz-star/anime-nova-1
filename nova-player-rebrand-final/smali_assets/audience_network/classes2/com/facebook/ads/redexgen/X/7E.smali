.class public final Lcom/facebook/ads/redexgen/X/7E;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A0B:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:J

.field public A04:Lcom/facebook/ads/redexgen/X/7A;

.field public A05:Lcom/facebook/ads/redexgen/X/7A;

.field public A06:Lcom/facebook/ads/redexgen/X/7A;

.field public A07:Ljava/lang/Object;

.field public A08:Z

.field public final A09:Lcom/facebook/ads/redexgen/X/pl;

.field public final A0A:Lcom/facebook/ads/redexgen/X/pj;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 457
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ytES6GjYCCZeLRsctY"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "JAF1Tg0UjyffIggj5BNMmxVlRkgdhjMr"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "rlk3ZCySajOx3"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "MCGN0v"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "6TmcGiXQ57FFOBCo2j"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Z1k2a4cknNke6aCh8ssxRFJ66FmodiBm"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/7E;->A0B:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 18690
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18691
    new-instance v0, Lcom/facebook/ads/redexgen/X/pl;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/pl;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A09:Lcom/facebook/ads/redexgen/X/pl;

    .line 18692
    new-instance v0, Lcom/facebook/ads/redexgen/X/pj;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/pj;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A0A:Lcom/facebook/ads/redexgen/X/pj;

    .line 18693
    return-void
.end method

.method private A00(Lcom/facebook/ads/androidx/media3/common/Timeline;Ljava/lang/Object;)J
    .locals 5

    .line 18694
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A09:Lcom/facebook/ads/redexgen/X/pl;

    invoke-virtual {p1, p2, v0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0J(Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/pl;)Lcom/facebook/ads/redexgen/X/pl;

    move-result-object v0

    iget v4, v0, Lcom/facebook/ads/redexgen/X/pl;->A00:I

    .line 18695
    .local v0, "windowIndex":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A07:Ljava/lang/Object;

    const/4 v3, -0x1

    if-eqz v0, :cond_0

    .line 18696
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A07:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0A(Ljava/lang/Object;)I

    move-result v1

    .line 18697
    .local v1, "oldFrontPeriodIndex":I
    if-eq v1, v3, :cond_0

    .line 18698
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A09:Lcom/facebook/ads/redexgen/X/pl;

    invoke-virtual {p1, v1, v0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0H(ILcom/facebook/ads/redexgen/X/pl;)Lcom/facebook/ads/redexgen/X/pl;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/pl;->A00:I

    .line 18699
    .local v3, "oldFrontWindowIndex":I
    if-ne v0, v4, :cond_0

    .line 18700
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A03:J

    return-wide v0

    .line 18701
    .end local v1    # "oldFrontPeriodIndex":I
    .end local v3    # "oldFrontWindowIndex":I
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7E;->A0D()Lcom/facebook/ads/redexgen/X/7A;

    move-result-object v1

    .line 18702
    .local v1, "mediaPeriodHolder":Lcom/facebook/ads/redexgen/X/7A;
    :goto_0
    if-eqz v1, :cond_2

    .line 18703
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/7A;->A08:Ljava/lang/Object;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18704
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/7A;->A00:Lcom/facebook/ads/redexgen/X/7B;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7B;->A04:Lcom/facebook/ads/redexgen/X/no;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/3C;->A03:J

    return-wide v0

    .line 18705
    :cond_1
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/7A;->A0I()Lcom/facebook/ads/redexgen/X/7A;

    move-result-object v1

    goto :goto_0

    .line 18706
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7E;->A0D()Lcom/facebook/ads/redexgen/X/7A;

    move-result-object v2

    .line 18707
    :goto_1
    if-eqz v2, :cond_4

    .line 18708
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/7A;->A08:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0A(Ljava/lang/Object;)I

    move-result v1

    .line 18709
    .local v3, "indexOfHolderInTimeline":I
    if-eq v1, v3, :cond_3

    .line 18710
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A09:Lcom/facebook/ads/redexgen/X/pl;

    invoke-virtual {p1, v1, v0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0H(ILcom/facebook/ads/redexgen/X/pl;)Lcom/facebook/ads/redexgen/X/pl;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/pl;->A00:I

    .line 18711
    .local v4, "holderWindowIndex":I
    if-ne v0, v4, :cond_3

    .line 18712
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/7A;->A00:Lcom/facebook/ads/redexgen/X/7B;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7B;->A04:Lcom/facebook/ads/redexgen/X/no;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/3C;->A03:J

    return-wide v0

    .line 18713
    .end local v4    # "holderWindowIndex":I
    :cond_3
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/7A;->A0I()Lcom/facebook/ads/redexgen/X/7A;

    move-result-object v2

    .line 18714
    .end local v3    # "indexOfHolderInTimeline":I
    goto :goto_1

    .line 18715
    :cond_4
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/7E;->A02:J

    const-wide/16 v0, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A02:J

    return-wide v2
.end method

.method private A01(Lcom/facebook/ads/androidx/media3/common/Timeline;Lcom/facebook/ads/redexgen/X/7A;J)Lcom/facebook/ads/redexgen/X/7B;
    .locals 17

    .line 18716
    move-object/from16 v0, p0

    move-object/from16 v5, p2

    iget-object v3, v5, Lcom/facebook/ads/redexgen/X/7A;->A00:Lcom/facebook/ads/redexgen/X/7B;

    .line 18717
    .local v12, "mediaPeriodInfo":Lcom/facebook/ads/redexgen/X/7B;
    iget-boolean v1, v3, Lcom/facebook/ads/redexgen/X/7B;->A07:Z

    const/4 v2, -0x1

    const/4 v6, 0x0

    move-object/from16 v9, p1

    if-eqz v1, :cond_5

    .line 18718
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/7B;->A04:Lcom/facebook/ads/redexgen/X/no;

    iget-object v1, v1, Lcom/facebook/ads/redexgen/X/3C;->A04:Ljava/lang/Object;

    invoke-virtual {v9, v1}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0A(Ljava/lang/Object;)I

    move-result v10

    .line 18719
    .local v13, "currentPeriodIndex":I
    iget-object v11, v0, Lcom/facebook/ads/redexgen/X/7E;->A09:Lcom/facebook/ads/redexgen/X/pl;

    iget-object v12, v0, Lcom/facebook/ads/redexgen/X/7E;->A0A:Lcom/facebook/ads/redexgen/X/pj;

    iget v13, v0, Lcom/facebook/ads/redexgen/X/7E;->A01:I

    iget-boolean v14, v0, Lcom/facebook/ads/redexgen/X/7E;->A08:Z

    .line 18720
    move-object v9, v9

    invoke-virtual/range {v9 .. v14}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A09(ILcom/facebook/ads/redexgen/X/pl;Lcom/facebook/ads/redexgen/X/pj;IZ)I

    move-result v4

    .line 18721
    .local v14, "nextPeriodIndex":I
    if-ne v4, v2, :cond_0

    .line 18722
    return-object v6

    .line 18723
    :cond_0
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/7E;->A09:Lcom/facebook/ads/redexgen/X/pl;

    .line 18724
    const/4 v1, 0x1

    invoke-virtual {v9, v4, v2, v1}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0I(ILcom/facebook/ads/redexgen/X/pl;Z)Lcom/facebook/ads/redexgen/X/pl;

    move-result-object v1

    iget v12, v1, Lcom/facebook/ads/redexgen/X/pl;->A00:I

    .line 18725
    .local v15, "nextWindowIndex":I
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/7E;->A09:Lcom/facebook/ads/redexgen/X/pl;

    iget-object v10, v1, Lcom/facebook/ads/redexgen/X/pl;->A04:Ljava/lang/Object;

    .line 18726
    .local v6, "nextPeriodUid":Ljava/lang/Object;
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/7B;->A04:Lcom/facebook/ads/redexgen/X/no;

    iget-wide v13, v1, Lcom/facebook/ads/redexgen/X/3C;->A03:J

    .line 18727
    .local v4, "windowSequenceNumber":J
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/7E;->A0A:Lcom/facebook/ads/redexgen/X/pj;

    invoke-virtual {v9, v12, v1}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0K(ILcom/facebook/ads/redexgen/X/pj;)Lcom/facebook/ads/redexgen/X/pj;

    move-result-object v1

    iget v1, v1, Lcom/facebook/ads/redexgen/X/pj;->A00:I

    if-ne v1, v4, :cond_4

    .line 18728
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/7A;->A0B()J

    move-result-wide v1

    iget-wide v3, v3, Lcom/facebook/ads/redexgen/X/7B;->A00:J

    add-long/2addr v1, v3

    sub-long v1, v1, p3

    .line 18729
    .local v2, "defaultPositionProjectionUs":J
    iget-object v10, v0, Lcom/facebook/ads/redexgen/X/7E;->A0A:Lcom/facebook/ads/redexgen/X/pj;

    iget-object v11, v0, Lcom/facebook/ads/redexgen/X/7E;->A09:Lcom/facebook/ads/redexgen/X/pl;

    .line 18730
    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v15

    .line 18731
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .end local v2    # "defaultPositionProjectionUs":J
    .local p2, "defaultPositionProjectionUs":J
    .end local v4    # "windowSequenceNumber":J
    .local p4, "windowSequenceNumber":J
    .end local v6    # "nextPeriodUid":Ljava/lang/Object;
    .local p0, "nextPeriodUid":Ljava/lang/Object;
    invoke-virtual/range {v9 .. v16}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0F(Lcom/facebook/ads/redexgen/X/pj;Lcom/facebook/ads/redexgen/X/pl;IJJ)Landroid/util/Pair;

    move-result-object v0

    .line 18732
    .local v0, "defaultPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    if-nez v0, :cond_1

    .line 18733
    const/4 v0, 0x0

    return-object v0

    .line 18734
    :cond_1
    iget-object v10, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 18735
    .end local p0    # "nextPeriodUid":Ljava/lang/Object;
    .restart local v6    # "nextPeriodUid":Ljava/lang/Object;
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 18736
    .local v1, "startPositionUs":J
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/7A;->A0I()Lcom/facebook/ads/redexgen/X/7A;

    move-result-object v1

    .line 18737
    .local v3, "nextMediaPeriodHolder":Lcom/facebook/ads/redexgen/X/7A;
    if-eqz v1, :cond_2

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/7A;->A08:Ljava/lang/Object;

    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18738
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/7A;->A00:Lcom/facebook/ads/redexgen/X/7B;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7B;->A04:Lcom/facebook/ads/redexgen/X/no;

    iget-wide v13, v0, Lcom/facebook/ads/redexgen/X/3C;->A03:J

    move-object/from16 v0, p0

    .end local p4    # "windowSequenceNumber":J
    .restart local v4    # "windowSequenceNumber":J
    goto :goto_0

    .line 18739
    .end local v4    # "windowSequenceNumber":J
    .restart local p4    # "windowSequenceNumber":J
    :cond_2
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/facebook/ads/redexgen/X/7E;->A02:J

    const-wide/16 v1, 0x1

    add-long/2addr v1, v13

    sget-object v5, Lcom/facebook/ads/redexgen/X/7E;->A0B:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v4, v5, v3

    const/4 v3, 0x4

    aget-object v3, v5, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v4, v3, :cond_3

    sget-object v5, Lcom/facebook/ads/redexgen/X/7E;->A0B:[Ljava/lang/String;

    const-string v4, "5yy5YdDharfiXP"

    const/4 v3, 0x0

    aput-object v4, v5, v3

    iput-wide v1, v0, Lcom/facebook/ads/redexgen/X/7E;->A02:J

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 18740
    .end local v1    # "startPositionUs":J
    .end local v4
    .end local v6    # "nextPeriodUid":Ljava/lang/Object;
    .restart local p0    # "nextPeriodUid":Ljava/lang/Object;
    .restart local p4    # "windowSequenceNumber":J
    :cond_4
    const-wide/16 v11, 0x0

    .line 18741
    .local v7, "startPositionUs":J
    :goto_0
    iget-object v15, v0, Lcom/facebook/ads/redexgen/X/7E;->A09:Lcom/facebook/ads/redexgen/X/pl;

    .line 18742
    invoke-static/range {v9 .. v15}, Lcom/facebook/ads/redexgen/X/7E;->A06(Lcom/facebook/ads/androidx/media3/common/Timeline;Ljava/lang/Object;JJLcom/facebook/ads/redexgen/X/pl;)Lcom/facebook/ads/redexgen/X/no;

    move-result-object v10

    .line 18743
    .local v16, "periodId":Lcom/facebook/ads/redexgen/X/no;
    move-object/from16 v8, p0

    move-wide v13, v11

    invoke-direct/range {v8 .. v14}, Lcom/facebook/ads/redexgen/X/7E;->A02(Lcom/facebook/ads/androidx/media3/common/Timeline;Lcom/facebook/ads/redexgen/X/no;JJ)Lcom/facebook/ads/redexgen/X/7B;

    move-result-object v0

    return-object v0

    .line 18744
    .end local v7    # "startPositionUs":J
    .end local v13    # "currentPeriodIndex":I
    .end local v14    # "nextPeriodIndex":I
    .end local v15    # "nextWindowIndex":I
    .end local v16    # "periodId":Lcom/facebook/ads/redexgen/X/no;
    .end local p0    # "nextPeriodUid":Ljava/lang/Object;
    .end local p4    # "windowSequenceNumber":J
    :cond_5
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/7B;->A04:Lcom/facebook/ads/redexgen/X/no;

    .line 18745
    .local v13, "currentPeriodId":Lcom/facebook/ads/redexgen/X/no;
    iget-object v5, v1, Lcom/facebook/ads/redexgen/X/3C;->A04:Ljava/lang/Object;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/7E;->A09:Lcom/facebook/ads/redexgen/X/pl;

    invoke-virtual {v9, v5, v4}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0J(Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/pl;)Lcom/facebook/ads/redexgen/X/pl;

    .line 18746
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/3C;->A00()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 18747
    iget v11, v1, Lcom/facebook/ads/redexgen/X/3C;->A00:I

    .line 18748
    .local v14, "adGroupIndex":I
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/7E;->A09:Lcom/facebook/ads/redexgen/X/pl;

    invoke-virtual {v4, v11}, Lcom/facebook/ads/redexgen/X/pl;->A04(I)I

    move-result v5

    .line 18749
    .local v15, "adCountInCurrentAdGroup":I
    if-ne v5, v2, :cond_7

    .line 18750
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/7E;->A0B:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/7E;->A0B:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, ""

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v3

    .line 18751
    :cond_7
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/7E;->A09:Lcom/facebook/ads/redexgen/X/pl;

    iget v2, v1, Lcom/facebook/ads/redexgen/X/3C;->A01:I

    .line 18752
    invoke-virtual {v4, v11, v2}, Lcom/facebook/ads/redexgen/X/pl;->A06(II)I

    move-result v12

    .line 18753
    .local v7, "nextAdIndexInAdGroup":I
    if-ge v12, v5, :cond_9

    .line 18754
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7E;->A09:Lcom/facebook/ads/redexgen/X/pl;

    invoke-virtual {v0, v11, v12}, Lcom/facebook/ads/redexgen/X/pl;->A0I(II)Z

    move-result v0

    if-nez v0, :cond_8

    .line 18755
    const/4 v0, 0x0

    .line 18756
    :goto_1
    return-object v0

    .line 18757
    :cond_8
    iget-object v10, v1, Lcom/facebook/ads/redexgen/X/3C;->A04:Ljava/lang/Object;

    iget-wide v13, v3, Lcom/facebook/ads/redexgen/X/7B;->A02:J

    iget-wide v15, v1, Lcom/facebook/ads/redexgen/X/3C;->A03:J

    move-object/from16 v8, p0

    .end local v7    # "nextAdIndexInAdGroup":I
    .local p1, "nextAdIndexInAdGroup":I
    invoke-direct/range {v8 .. v16}, Lcom/facebook/ads/redexgen/X/7E;->A03(Lcom/facebook/ads/androidx/media3/common/Timeline;Ljava/lang/Object;IIJJ)Lcom/facebook/ads/redexgen/X/7B;

    move-result-object v0

    goto :goto_1

    .line 18758
    .end local p1    # "nextAdIndexInAdGroup":I
    .restart local v7    # "nextAdIndexInAdGroup":I
    :cond_9
    iget-object v10, v1, Lcom/facebook/ads/redexgen/X/3C;->A04:Ljava/lang/Object;

    iget-wide v11, v3, Lcom/facebook/ads/redexgen/X/7B;->A02:J

    iget-wide v13, v1, Lcom/facebook/ads/redexgen/X/3C;->A03:J

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v14}, Lcom/facebook/ads/redexgen/X/7E;->A04(Lcom/facebook/ads/androidx/media3/common/Timeline;Ljava/lang/Object;JJ)Lcom/facebook/ads/redexgen/X/7B;

    move-result-object v0

    return-object v0

    .line 18759
    .end local v7    # "nextAdIndexInAdGroup":I
    .end local v14    # "adGroupIndex":I
    .end local v15    # "adCountInCurrentAdGroup":I
    :cond_a
    iget-wide v4, v3, Lcom/facebook/ads/redexgen/X/7B;->A01:J

    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v6, v4, v7

    if-eqz v6, :cond_d

    .line 18760
    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/7E;->A09:Lcom/facebook/ads/redexgen/X/pl;

    iget-wide v4, v3, Lcom/facebook/ads/redexgen/X/7B;->A01:J

    invoke-virtual {v6, v4, v5}, Lcom/facebook/ads/redexgen/X/pl;->A08(J)I

    move-result v11

    .line 18761
    .local v14, "nextAdGroupIndex":I
    if-ne v11, v2, :cond_b

    .line 18762
    iget-object v10, v1, Lcom/facebook/ads/redexgen/X/3C;->A04:Ljava/lang/Object;

    iget-wide v11, v3, Lcom/facebook/ads/redexgen/X/7B;->A01:J

    iget-wide v13, v1, Lcom/facebook/ads/redexgen/X/3C;->A03:J

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v14}, Lcom/facebook/ads/redexgen/X/7E;->A04(Lcom/facebook/ads/androidx/media3/common/Timeline;Ljava/lang/Object;JJ)Lcom/facebook/ads/redexgen/X/7B;

    move-result-object v0

    return-object v0

    .line 18763
    :cond_b
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/7E;->A09:Lcom/facebook/ads/redexgen/X/pl;

    invoke-virtual {v2, v11}, Lcom/facebook/ads/redexgen/X/pl;->A05(I)I

    move-result v12

    .line 18764
    .local v15, "adIndexInAdGroup":I
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7E;->A09:Lcom/facebook/ads/redexgen/X/pl;

    invoke-virtual {v0, v11, v12}, Lcom/facebook/ads/redexgen/X/pl;->A0I(II)Z

    move-result v0

    if-nez v0, :cond_c

    .line 18765
    const/4 v0, 0x0

    .line 18766
    :goto_2
    return-object v0

    .line 18767
    :cond_c
    iget-object v10, v1, Lcom/facebook/ads/redexgen/X/3C;->A04:Ljava/lang/Object;

    iget-wide v13, v3, Lcom/facebook/ads/redexgen/X/7B;->A01:J

    iget-wide v15, v1, Lcom/facebook/ads/redexgen/X/3C;->A03:J

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v16}, Lcom/facebook/ads/redexgen/X/7E;->A03(Lcom/facebook/ads/androidx/media3/common/Timeline;Ljava/lang/Object;IIJJ)Lcom/facebook/ads/redexgen/X/7B;

    move-result-object v0

    goto :goto_2

    .line 18768
    .end local v14    # "nextAdGroupIndex":I
    .end local v15    # "adIndexInAdGroup":I
    :cond_d
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/7E;->A09:Lcom/facebook/ads/redexgen/X/pl;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/pl;->A03()I

    move-result v2

    .line 18769
    .local v14, "adGroupCount":I
    if-nez v2, :cond_e

    .line 18770
    const/4 v0, 0x0

    return-object v0

    .line 18771
    :cond_e
    add-int/lit8 v11, v2, -0x1

    sget-object v3, Lcom/facebook/ads/redexgen/X/7E;->A0B:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v3, v3, v2

    const/4 v2, 0x7

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v2, 0x6b

    if-eq v3, v2, :cond_10

    .line 18772
    .local v15, "adGroupIndex":I
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/7E;->A09:Lcom/facebook/ads/redexgen/X/pl;

    invoke-virtual {v2, v11}, Lcom/facebook/ads/redexgen/X/pl;->A0D(I)J

    move-result-wide v3

    cmp-long v2, v3, v7

    if-nez v2, :cond_f

    :goto_3
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/7E;->A09:Lcom/facebook/ads/redexgen/X/pl;

    .line 18773
    invoke-virtual {v2, v11}, Lcom/facebook/ads/redexgen/X/pl;->A0H(I)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 18774
    .end local v16
    .end local p3    # null:J
    :cond_f
    const/4 v0, 0x0

    return-object v0

    .line 18775
    .local v15, "adGroupIndex":I
    :cond_10
    sget-object v4, Lcom/facebook/ads/redexgen/X/7E;->A0B:[Ljava/lang/String;

    const-string v3, "u0JZC9rSowd61rcMlDOlOE"

    const/4 v2, 0x0

    aput-object v3, v4, v2

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/7E;->A09:Lcom/facebook/ads/redexgen/X/pl;

    invoke-virtual {v2, v11}, Lcom/facebook/ads/redexgen/X/pl;->A0D(I)J

    move-result-wide v3

    cmp-long v2, v3, v7

    if-nez v2, :cond_f

    goto :goto_3

    .line 18776
    :cond_11
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/7E;->A09:Lcom/facebook/ads/redexgen/X/pl;

    invoke-virtual {v2, v11}, Lcom/facebook/ads/redexgen/X/pl;->A05(I)I

    move-result v12

    .line 18777
    .local v7, "adIndexInAdGroup":I
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/7E;->A09:Lcom/facebook/ads/redexgen/X/pl;

    invoke-virtual {v2, v11, v12}, Lcom/facebook/ads/redexgen/X/pl;->A0I(II)Z

    move-result v2

    if-nez v2, :cond_12

    .line 18778
    const/4 v0, 0x0

    return-object v0

    .line 18779
    :cond_12
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7E;->A09:Lcom/facebook/ads/redexgen/X/pl;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/pl;->A0A()J

    move-result-wide v13

    .line 18780
    .local v16, "contentDurationUs":J
    iget-object v10, v1, Lcom/facebook/ads/redexgen/X/3C;->A04:Ljava/lang/Object;

    iget-wide v15, v1, Lcom/facebook/ads/redexgen/X/3C;->A03:J

    move-object/from16 v8, p0

    .end local v7    # "adIndexInAdGroup":I
    .local p3, "adIndexInAdGroup":I
    invoke-direct/range {v8 .. v16}, Lcom/facebook/ads/redexgen/X/7E;->A03(Lcom/facebook/ads/androidx/media3/common/Timeline;Ljava/lang/Object;IIJJ)Lcom/facebook/ads/redexgen/X/7B;

    move-result-object v0

    return-object v0
.end method

.method private A02(Lcom/facebook/ads/androidx/media3/common/Timeline;Lcom/facebook/ads/redexgen/X/no;JJ)Lcom/facebook/ads/redexgen/X/7B;
    .locals 11

    .line 18781
    move-object v2, p0

    iget-object v1, p2, Lcom/facebook/ads/redexgen/X/3C;->A04:Ljava/lang/Object;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/7E;->A09:Lcom/facebook/ads/redexgen/X/pl;

    move-object v3, p1

    invoke-virtual {v3, v1, v0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0J(Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/pl;)Lcom/facebook/ads/redexgen/X/pl;

    .line 18782
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/3C;->A00()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18783
    iget-object v2, v2, Lcom/facebook/ads/redexgen/X/7E;->A09:Lcom/facebook/ads/redexgen/X/pl;

    iget v1, p2, Lcom/facebook/ads/redexgen/X/3C;->A00:I

    iget v0, p2, Lcom/facebook/ads/redexgen/X/3C;->A01:I

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/pl;->A0I(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 18784
    const/4 v0, 0x0

    return-object v0

    .line 18785
    :cond_0
    iget-object v4, p2, Lcom/facebook/ads/redexgen/X/3C;->A04:Ljava/lang/Object;

    iget v5, p2, Lcom/facebook/ads/redexgen/X/3C;->A00:I

    iget v6, p2, Lcom/facebook/ads/redexgen/X/3C;->A01:I

    iget-wide v9, p2, Lcom/facebook/ads/redexgen/X/3C;->A03:J

    move-object v2, p0

    move-wide v7, p3

    invoke-direct/range {v2 .. v10}, Lcom/facebook/ads/redexgen/X/7E;->A03(Lcom/facebook/ads/androidx/media3/common/Timeline;Ljava/lang/Object;IIJJ)Lcom/facebook/ads/redexgen/X/7B;

    move-result-object v0

    return-object v0

    .line 18786
    :cond_1
    iget-object v4, p2, Lcom/facebook/ads/redexgen/X/3C;->A04:Ljava/lang/Object;

    iget-wide v7, p2, Lcom/facebook/ads/redexgen/X/3C;->A03:J

    move-object v2, p0

    move-wide/from16 v5, p5

    invoke-direct/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/7E;->A04(Lcom/facebook/ads/androidx/media3/common/Timeline;Ljava/lang/Object;JJ)Lcom/facebook/ads/redexgen/X/7B;

    move-result-object v0

    return-object v0
.end method

.method private A03(Lcom/facebook/ads/androidx/media3/common/Timeline;Ljava/lang/Object;IIJJ)Lcom/facebook/ads/redexgen/X/7B;
    .locals 17

    .line 18787
    move-object/from16 v3, p0

    new-instance v6, Lcom/facebook/ads/redexgen/X/no;

    move-wide/from16 v10, p7

    move/from16 v4, p4

    move/from16 v5, p3

    move-object/from16 v7, p2

    move-object v6, v6

    move v8, v5

    move v9, v4

    invoke-direct/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/no;-><init>(Ljava/lang/Object;IIJ)V

    .line 18788
    .local v2, "id":Lcom/facebook/ads/redexgen/X/no;
    const-wide/high16 v0, -0x8000000000000000L

    move-object/from16 v2, p1

    invoke-direct {v3, v2, v6, v0, v1}, Lcom/facebook/ads/redexgen/X/7E;->A08(Lcom/facebook/ads/androidx/media3/common/Timeline;Lcom/facebook/ads/redexgen/X/no;J)Z

    move-result v15

    .line 18789
    .local v3, "isLastInPeriod":Z
    invoke-direct {v3, v2, v6, v15}, Lcom/facebook/ads/redexgen/X/7E;->A09(Lcom/facebook/ads/androidx/media3/common/Timeline;Lcom/facebook/ads/redexgen/X/no;Z)Z

    move-result v16

    .line 18790
    .local v4, "isLastInTimeline":Z
    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/3C;->A04:Ljava/lang/Object;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/7E;->A09:Lcom/facebook/ads/redexgen/X/pl;

    .line 18791
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0J(Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/pl;)Lcom/facebook/ads/redexgen/X/pl;

    move-result-object v2

    iget v1, v6, Lcom/facebook/ads/redexgen/X/3C;->A00:I

    iget v0, v6, Lcom/facebook/ads/redexgen/X/3C;->A01:I

    .line 18792
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/pl;->A0E(II)J

    move-result-wide v13

    .line 18793
    .local v5, "durationUs":J
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/7E;->A09:Lcom/facebook/ads/redexgen/X/pl;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/pl;->A05(I)I

    move-result v0

    if-ne v4, v0, :cond_0

    .line 18794
    iget-object v3, v3, Lcom/facebook/ads/redexgen/X/7E;->A09:Lcom/facebook/ads/redexgen/X/pl;

    sget-object v1, Lcom/facebook/ads/redexgen/X/7E;->A0B:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/7E;->A0B:[Ljava/lang/String;

    const-string v1, "btiW32P1CxlKUaykVb"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "aD0NnH"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/pl;->A09()J

    move-result-wide v7

    .line 18795
    .local v11, "startPositionUs":J
    :goto_0
    new-instance v5, Lcom/facebook/ads/redexgen/X/7B;

    const-wide/high16 v9, -0x8000000000000000L

    move-wide/from16 v11, p5

    invoke-direct/range {v5 .. v16}, Lcom/facebook/ads/redexgen/X/7B;-><init>(Lcom/facebook/ads/redexgen/X/no;JJJJZZ)V

    return-object v5

    .line 18796
    :cond_0
    const-wide/16 v7, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A04(Lcom/facebook/ads/androidx/media3/common/Timeline;Ljava/lang/Object;JJ)Lcom/facebook/ads/redexgen/X/7B;
    .locals 20

    .line 18797
    move-object/from16 v3, p0

    new-instance v9, Lcom/facebook/ads/redexgen/X/no;

    move-wide/from16 v0, p5

    move-object/from16 v2, p2

    invoke-direct {v9, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/no;-><init>(Ljava/lang/Object;J)V

    .line 18798
    .local v2, "id":Lcom/facebook/ads/redexgen/X/no;
    iget-object v1, v9, Lcom/facebook/ads/redexgen/X/3C;->A04:Ljava/lang/Object;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/7E;->A09:Lcom/facebook/ads/redexgen/X/pl;

    move-object/from16 v4, p1

    invoke-virtual {v4, v1, v0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0J(Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/pl;)Lcom/facebook/ads/redexgen/X/pl;

    .line 18799
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/7E;->A09:Lcom/facebook/ads/redexgen/X/pl;

    move-wide/from16 v10, p3

    invoke-virtual {v0, v10, v11}, Lcom/facebook/ads/redexgen/X/pl;->A07(J)I

    move-result v6

    .line 18800
    .local v10, "nextAdGroupIndex":I
    const/4 v0, -0x1

    const-wide/high16 v7, -0x8000000000000000L

    if-ne v6, v0, :cond_1

    .line 18801
    move-wide v12, v7

    .line 18802
    .local v14, "endUs":J
    :goto_0
    invoke-direct {v3, v4, v9, v12, v13}, Lcom/facebook/ads/redexgen/X/7E;->A08(Lcom/facebook/ads/androidx/media3/common/Timeline;Lcom/facebook/ads/redexgen/X/no;J)Z

    move-result v1

    .line 18803
    .local v11, "isLastInPeriod":Z
    invoke-direct {v3, v4, v9, v1}, Lcom/facebook/ads/redexgen/X/7E;->A09(Lcom/facebook/ads/androidx/media3/common/Timeline;Lcom/facebook/ads/redexgen/X/no;Z)Z

    move-result v19

    .line 18804
    .local v18, "isLastInTimeline":Z
    cmp-long v0, v12, v7

    if-nez v0, :cond_0

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/7E;->A09:Lcom/facebook/ads/redexgen/X/pl;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/pl;->A0A()J

    move-result-wide v16

    .line 18805
    .end local v14    # "endUs":J
    .local v19, "endUs":J
    .local v14, "durationUs":J
    :goto_1
    new-instance v8, Lcom/facebook/ads/redexgen/X/7B;

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    .end local v10    # "nextAdGroupIndex":I
    .end local v11    # "isLastInPeriod":Z
    .local p2, "nextAdGroupIndex":I
    .local p3, "isLastInPeriod":Z
    move/from16 v18, v1

    invoke-direct/range {v8 .. v19}, Lcom/facebook/ads/redexgen/X/7B;-><init>(Lcom/facebook/ads/redexgen/X/no;JJJJZZ)V

    return-object v8

    .line 18806
    :cond_0
    move-wide/from16 v16, v12

    goto :goto_1

    .line 18807
    :cond_1
    iget-object v5, v3, Lcom/facebook/ads/redexgen/X/7E;->A09:Lcom/facebook/ads/redexgen/X/pl;

    sget-object v2, Lcom/facebook/ads/redexgen/X/7E;->A0B:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/7E;->A0B:[Ljava/lang/String;

    const-string v1, "hcjC8Oe5bspAHclLrN"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "7U4c4Z"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v5, v6}, Lcom/facebook/ads/redexgen/X/pl;->A0D(I)J

    move-result-wide v12

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/7Z;)Lcom/facebook/ads/redexgen/X/7B;
    .locals 7

    .line 18808
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/7Z;->A03:Lcom/facebook/ads/androidx/media3/common/Timeline;

    iget-object v2, p1, Lcom/facebook/ads/redexgen/X/7Z;->A05:Lcom/facebook/ads/redexgen/X/no;

    iget-wide v3, p1, Lcom/facebook/ads/redexgen/X/7Z;->A01:J

    iget-wide v5, p1, Lcom/facebook/ads/redexgen/X/7Z;->A02:J

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/7E;->A02(Lcom/facebook/ads/androidx/media3/common/Timeline;Lcom/facebook/ads/redexgen/X/no;JJ)Lcom/facebook/ads/redexgen/X/7B;

    move-result-object v0

    return-object v0
.end method

.method public static A06(Lcom/facebook/ads/androidx/media3/common/Timeline;Ljava/lang/Object;JJLcom/facebook/ads/redexgen/X/pl;)Lcom/facebook/ads/redexgen/X/no;
    .locals 0

    .line 18809
    invoke-virtual {p0, p1, p6}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0J(Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/pl;)Lcom/facebook/ads/redexgen/X/pl;

    .line 18810
    invoke-virtual {p6, p2, p3}, Lcom/facebook/ads/redexgen/X/pl;->A08(J)I

    move-result p2

    .line 18811
    .local p6, "adGroupIndex":I
    const/4 p0, -0x1

    if-ne p2, p0, :cond_0

    .line 18812
    new-instance p0, Lcom/facebook/ads/redexgen/X/no;

    invoke-direct {p0, p1, p4, p5}, Lcom/facebook/ads/redexgen/X/no;-><init>(Ljava/lang/Object;J)V

    return-object p0

    .line 18813
    :cond_0
    invoke-virtual {p6, p2}, Lcom/facebook/ads/redexgen/X/pl;->A05(I)I

    move-result p3

    .line 18814
    .local p7, "adIndexInAdGroup":I
    new-instance p0, Lcom/facebook/ads/redexgen/X/no;

    invoke-direct/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/no;-><init>(Ljava/lang/Object;IIJ)V

    return-object p0
.end method

.method private A07(Lcom/facebook/ads/androidx/media3/common/Timeline;)Z
    .locals 12

    .line 18815
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7E;->A0D()Lcom/facebook/ads/redexgen/X/7A;

    move-result-object v3

    .line 18816
    .local v0, "lastValidPeriodHolder":Lcom/facebook/ads/redexgen/X/7A;
    const/4 v5, 0x1

    if-nez v3, :cond_0

    .line 18817
    return v5

    .line 18818
    :cond_0
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/7A;->A08:Ljava/lang/Object;

    move-object v6, p1

    invoke-virtual {v6, v0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0A(Ljava/lang/Object;)I

    move-result v7

    sget-object v1, Lcom/facebook/ads/redexgen/X/7E;->A0B:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_8

    sget-object v2, Lcom/facebook/ads/redexgen/X/7E;->A0B:[Ljava/lang/String;

    const-string v1, "XXauRi"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    .line 18819
    .local v8, "currentPeriodIndex":I
    :goto_0
    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/7E;->A09:Lcom/facebook/ads/redexgen/X/pl;

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/7E;->A0A:Lcom/facebook/ads/redexgen/X/pj;

    iget v10, p0, Lcom/facebook/ads/redexgen/X/7E;->A01:I

    iget-boolean v11, p0, Lcom/facebook/ads/redexgen/X/7E;->A08:Z

    .line 18820
    invoke-virtual/range {v6 .. v11}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A09(ILcom/facebook/ads/redexgen/X/pl;Lcom/facebook/ads/redexgen/X/pj;IZ)I

    move-result v7

    .line 18821
    .local v2, "nextPeriodIndex":I
    :goto_1
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/7A;->A0I()Lcom/facebook/ads/redexgen/X/7A;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/7A;->A00:Lcom/facebook/ads/redexgen/X/7B;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/7B;->A07:Z

    if-nez v0, :cond_1

    .line 18822
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/7A;->A0I()Lcom/facebook/ads/redexgen/X/7A;

    move-result-object v3

    goto :goto_1

    .line 18823
    :cond_1
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/7A;->A0I()Lcom/facebook/ads/redexgen/X/7A;

    move-result-object v1

    .line 18824
    .local v3, "nextMediaPeriodHolder":Lcom/facebook/ads/redexgen/X/7A;
    const/4 v0, -0x1

    if-eq v7, v0, :cond_2

    if-nez v1, :cond_6

    .line 18825
    :cond_2
    :goto_2
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/7E;->A0S(Lcom/facebook/ads/redexgen/X/7A;)Z

    move-result v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/7E;->A0B:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_5

    .line 18826
    .local v2, "readingPeriodRemoved":Z
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/7A;->A00:Lcom/facebook/ads/redexgen/X/7B;

    invoke-virtual {p0, v6, v0}, Lcom/facebook/ads/redexgen/X/7E;->A0I(Lcom/facebook/ads/androidx/media3/common/Timeline;Lcom/facebook/ads/redexgen/X/7B;)Lcom/facebook/ads/redexgen/X/7B;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/7A;->A00:Lcom/facebook/ads/redexgen/X/7B;

    .line 18827
    if-eqz v4, :cond_3

    :goto_3
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7E;->A0N()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    :goto_4
    return v5

    :cond_4
    const/4 v5, 0x0

    goto :goto_4

    .line 18828
    .local v2, "readingPeriodRemoved":Z
    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/7E;->A0B:[Ljava/lang/String;

    const-string v1, "90zfs8gzmg4UDoZfId"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "a4jnrj"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/7A;->A00:Lcom/facebook/ads/redexgen/X/7B;

    invoke-virtual {p0, v6, v0}, Lcom/facebook/ads/redexgen/X/7E;->A0I(Lcom/facebook/ads/androidx/media3/common/Timeline;Lcom/facebook/ads/redexgen/X/7B;)Lcom/facebook/ads/redexgen/X/7B;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/7A;->A00:Lcom/facebook/ads/redexgen/X/7B;

    .line 18829
    if-eqz v4, :cond_3

    goto :goto_3

    .line 18830
    :cond_6
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/7A;->A08:Ljava/lang/Object;

    invoke-virtual {v6, v0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0A(Ljava/lang/Object;)I

    move-result v0

    .line 18831
    .local v4, "nextPeriodHolderPeriodIndex":I
    if-eq v0, v7, :cond_7

    goto :goto_2

    .line 18832
    :cond_7
    move-object v3, v1

    sget-object v1, Lcom/facebook/ads/redexgen/X/7E;->A0B:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6b

    if-eq v1, v0, :cond_9

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 18833
    :cond_9
    sget-object v2, Lcom/facebook/ads/redexgen/X/7E;->A0B:[Ljava/lang/String;

    const-string v1, "Cr1P4n0WQ70sIc2hdXVlmIoPdJb3W1mn"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    .line 18834
    .end local v2    # "readingPeriodRemoved":Z
    .end local v3    # "nextMediaPeriodHolder":Lcom/facebook/ads/redexgen/X/7A;
    .end local v4    # "nextPeriodHolderPeriodIndex":I
    goto/16 :goto_0
.end method

.method private A08(Lcom/facebook/ads/androidx/media3/common/Timeline;Lcom/facebook/ads/redexgen/X/no;J)Z
    .locals 10

    .line 18835
    iget-object v1, p2, Lcom/facebook/ads/redexgen/X/3C;->A04:Ljava/lang/Object;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A09:Lcom/facebook/ads/redexgen/X/pl;

    invoke-virtual {p1, v1, v0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0J(Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/pl;)Lcom/facebook/ads/redexgen/X/pl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/pl;->A03()I

    move-result v0

    .line 18836
    .local v0, "adGroupCount":I
    const/4 v9, 0x1

    if-nez v0, :cond_0

    .line 18837
    return v9

    .line 18838
    :cond_0
    add-int/lit8 v3, v0, -0x1

    .line 18839
    .local v2, "lastAdGroupIndex":I
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/3C;->A00()Z

    move-result v8

    .line 18840
    .local v3, "isAd":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A09:Lcom/facebook/ads/redexgen/X/pl;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/pl;->A0D(I)J

    move-result-wide v6

    const-wide/high16 v4, -0x8000000000000000L

    const/4 v1, 0x0

    cmp-long v0, v6, v4

    if-eqz v0, :cond_2

    .line 18841
    if-nez v8, :cond_1

    cmp-long v0, p3, v4

    if-nez v0, :cond_1

    :goto_0
    return v9

    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 18842
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A09:Lcom/facebook/ads/redexgen/X/pl;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/pl;->A04(I)I

    move-result v2

    .line 18843
    .local v4, "postrollAdCount":I
    const/4 v0, -0x1

    if-ne v2, v0, :cond_3

    .line 18844
    return v1

    .line 18845
    :cond_3
    if-eqz v8, :cond_6

    iget v0, p2, Lcom/facebook/ads/redexgen/X/3C;->A00:I

    if-ne v0, v3, :cond_6

    iget v1, p2, Lcom/facebook/ads/redexgen/X/3C;->A01:I

    add-int/lit8 v0, v2, -0x1

    if-ne v1, v0, :cond_6

    const/4 v0, 0x1

    .line 18846
    .local v5, "isLastAd":Z
    :goto_1
    if-nez v0, :cond_4

    if-nez v8, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A09:Lcom/facebook/ads/redexgen/X/pl;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/pl;->A05(I)I

    move-result v0

    if-ne v0, v2, :cond_5

    :cond_4
    :goto_2
    return v9

    :cond_5
    const/4 v9, 0x0

    goto :goto_2

    .line 18847
    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private A09(Lcom/facebook/ads/androidx/media3/common/Timeline;Lcom/facebook/ads/redexgen/X/no;Z)Z
    .locals 8

    .line 18848
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/3C;->A04:Ljava/lang/Object;

    move-object v2, p1

    invoke-virtual {v2, v0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0A(Ljava/lang/Object;)I

    move-result v3

    .line 18849
    .local v0, "periodIndex":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A09:Lcom/facebook/ads/redexgen/X/pl;

    invoke-virtual {v2, v3, v0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0H(ILcom/facebook/ads/redexgen/X/pl;)Lcom/facebook/ads/redexgen/X/pl;

    move-result-object v0

    iget v1, v0, Lcom/facebook/ads/redexgen/X/pl;->A00:I

    .line 18850
    .local v7, "windowIndex":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A0A:Lcom/facebook/ads/redexgen/X/pj;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0K(ILcom/facebook/ads/redexgen/X/pj;)Lcom/facebook/ads/redexgen/X/pj;

    move-result-object v0

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/pj;->A0D:Z

    if-nez v0, :cond_0

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/7E;->A09:Lcom/facebook/ads/redexgen/X/pl;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/7E;->A0A:Lcom/facebook/ads/redexgen/X/pj;

    iget v6, p0, Lcom/facebook/ads/redexgen/X/7E;->A01:I

    iget-boolean v7, p0, Lcom/facebook/ads/redexgen/X/7E;->A08:Z

    .line 18851
    invoke-virtual/range {v2 .. v7}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0O(ILcom/facebook/ads/redexgen/X/pl;Lcom/facebook/ads/redexgen/X/pj;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    .line 18852
    :goto_0
    return v0

    .line 18853
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/7A;Lcom/facebook/ads/redexgen/X/7B;)Z
    .locals 6

    .line 18854
    iget-object v5, p1, Lcom/facebook/ads/redexgen/X/7A;->A00:Lcom/facebook/ads/redexgen/X/7B;

    .line 18855
    .local v0, "periodHolderInfo":Lcom/facebook/ads/redexgen/X/7B;
    iget-wide v3, v5, Lcom/facebook/ads/redexgen/X/7B;->A03:J

    iget-wide v1, p2, Lcom/facebook/ads/redexgen/X/7B;->A03:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    iget-wide v3, v5, Lcom/facebook/ads/redexgen/X/7B;->A01:J

    iget-wide v1, p2, Lcom/facebook/ads/redexgen/X/7B;->A01:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/7B;->A04:Lcom/facebook/ads/redexgen/X/no;

    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/7B;->A04:Lcom/facebook/ads/redexgen/X/no;

    .line 18856
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/3C;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 18857
    :goto_0
    return v0

    .line 18858
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A0B()Lcom/facebook/ads/redexgen/X/7A;
    .locals 4

    .line 18859
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A05:Lcom/facebook/ads/redexgen/X/7A;

    if-eqz v0, :cond_2

    .line 18860
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7E;->A05:Lcom/facebook/ads/redexgen/X/7A;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A06:Lcom/facebook/ads/redexgen/X/7A;

    if-ne v1, v0, :cond_0

    .line 18861
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/7E;->A05:Lcom/facebook/ads/redexgen/X/7A;

    sget-object v1, Lcom/facebook/ads/redexgen/X/7E;->A0B:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/7E;->A0B:[Ljava/lang/String;

    const-string v1, "cSlSOVjTMxyZvCYIIsIM7Z4RVriFSMIi"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/7A;->A0I()Lcom/facebook/ads/redexgen/X/7A;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A06:Lcom/facebook/ads/redexgen/X/7A;

    .line 18862
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A05:Lcom/facebook/ads/redexgen/X/7A;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7A;->A0M()V

    .line 18863
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A05:Lcom/facebook/ads/redexgen/X/7A;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7A;->A0I()Lcom/facebook/ads/redexgen/X/7A;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A05:Lcom/facebook/ads/redexgen/X/7A;

    .line 18864
    iget v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A00:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A00:I

    .line 18865
    iget v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A00:I

    if-nez v0, :cond_1

    .line 18866
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A04:Lcom/facebook/ads/redexgen/X/7A;

    .line 18867
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/7E;->A05:Lcom/facebook/ads/redexgen/X/7A;

    sget-object v1, Lcom/facebook/ads/redexgen/X/7E;->A0B:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/7E;->A0B:[Ljava/lang/String;

    const-string v1, "hdbErrckm1X5j4dXkt1ObCB8O8NcABpS"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return-object v3

    .line 18868
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A04:Lcom/facebook/ads/redexgen/X/7A;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A05:Lcom/facebook/ads/redexgen/X/7A;

    .line 18869
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A04:Lcom/facebook/ads/redexgen/X/7A;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A06:Lcom/facebook/ads/redexgen/X/7A;

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/7E;->A0B:[Ljava/lang/String;

    const-string v1, "prScRK6qkOjWt"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-object v3

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0C()Lcom/facebook/ads/redexgen/X/7A;
    .locals 1

    .line 18870
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A06:Lcom/facebook/ads/redexgen/X/7A;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A06:Lcom/facebook/ads/redexgen/X/7A;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7A;->A0I()Lcom/facebook/ads/redexgen/X/7A;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 18871
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A06:Lcom/facebook/ads/redexgen/X/7A;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7A;->A0I()Lcom/facebook/ads/redexgen/X/7A;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A06:Lcom/facebook/ads/redexgen/X/7A;

    .line 18872
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A06:Lcom/facebook/ads/redexgen/X/7A;

    return-object v0

    .line 18873
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0D()Lcom/facebook/ads/redexgen/X/7A;
    .locals 1

    .line 18874
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7E;->A0N()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A05:Lcom/facebook/ads/redexgen/X/7A;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A04:Lcom/facebook/ads/redexgen/X/7A;

    goto :goto_0
.end method

.method public final A0E()Lcom/facebook/ads/redexgen/X/7A;
    .locals 1

    .line 18875
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A04:Lcom/facebook/ads/redexgen/X/7A;

    return-object v0
.end method

.method public final A0F()Lcom/facebook/ads/redexgen/X/7A;
    .locals 1

    .line 18876
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A05:Lcom/facebook/ads/redexgen/X/7A;

    return-object v0
.end method

.method public final A0G()Lcom/facebook/ads/redexgen/X/7A;
    .locals 1

    .line 18877
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A06:Lcom/facebook/ads/redexgen/X/7A;

    return-object v0
.end method

.method public final A0H(JLcom/facebook/ads/redexgen/X/7Z;)Lcom/facebook/ads/redexgen/X/7B;
    .locals 2

    .line 18878
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A04:Lcom/facebook/ads/redexgen/X/7A;

    if-nez v0, :cond_0

    .line 18879
    invoke-direct {p0, p3}, Lcom/facebook/ads/redexgen/X/7E;->A05(Lcom/facebook/ads/redexgen/X/7Z;)Lcom/facebook/ads/redexgen/X/7B;

    move-result-object v0

    .line 18880
    :goto_0
    return-object v0

    .line 18881
    :cond_0
    iget-object v1, p3, Lcom/facebook/ads/redexgen/X/7Z;->A03:Lcom/facebook/ads/androidx/media3/common/Timeline;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A04:Lcom/facebook/ads/redexgen/X/7A;

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/7E;->A01(Lcom/facebook/ads/androidx/media3/common/Timeline;Lcom/facebook/ads/redexgen/X/7A;J)Lcom/facebook/ads/redexgen/X/7B;

    move-result-object v0

    goto :goto_0
.end method

.method public final A0I(Lcom/facebook/ads/androidx/media3/common/Timeline;Lcom/facebook/ads/redexgen/X/7B;)Lcom/facebook/ads/redexgen/X/7B;
    .locals 12

    .line 18882
    move-object v3, p0

    iget-wide v4, p2, Lcom/facebook/ads/redexgen/X/7B;->A01:J

    .line 18883
    .local p2, "endPositionUs":J
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/7B;->A04:Lcom/facebook/ads/redexgen/X/no;

    invoke-direct {v3, p1, v0, v4, v5}, Lcom/facebook/ads/redexgen/X/7E;->A08(Lcom/facebook/ads/androidx/media3/common/Timeline;Lcom/facebook/ads/redexgen/X/no;J)Z

    move-result v10

    .line 18884
    .local p1, "isLastInPeriod":Z
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/7B;->A04:Lcom/facebook/ads/redexgen/X/no;

    invoke-direct {v3, p1, v0, v10}, Lcom/facebook/ads/redexgen/X/7E;->A09(Lcom/facebook/ads/androidx/media3/common/Timeline;Lcom/facebook/ads/redexgen/X/no;Z)Z

    move-result v11

    .line 18885
    .local p4, "isLastInTimeline":Z
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/7B;->A04:Lcom/facebook/ads/redexgen/X/no;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/3C;->A04:Ljava/lang/Object;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/7E;->A09:Lcom/facebook/ads/redexgen/X/pl;

    invoke-virtual {p1, v1, v0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0J(Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/pl;)Lcom/facebook/ads/redexgen/X/pl;

    .line 18886
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/7B;->A04:Lcom/facebook/ads/redexgen/X/no;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3C;->A00()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18887
    iget-object v2, v3, Lcom/facebook/ads/redexgen/X/7E;->A09:Lcom/facebook/ads/redexgen/X/pl;

    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/7B;->A04:Lcom/facebook/ads/redexgen/X/no;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/3C;->A00:I

    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/7B;->A04:Lcom/facebook/ads/redexgen/X/no;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/3C;->A01:I

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/pl;->A0E(II)J

    move-result-wide v8

    .line 18888
    .local v11, "durationUs":J
    :goto_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/7B;

    iget-object v1, p2, Lcom/facebook/ads/redexgen/X/7B;->A04:Lcom/facebook/ads/redexgen/X/no;

    iget-wide v2, p2, Lcom/facebook/ads/redexgen/X/7B;->A03:J

    iget-wide v6, p2, Lcom/facebook/ads/redexgen/X/7B;->A02:J

    .end local p1    # "isLastInPeriod":Z
    .local p6, "isLastInPeriod":Z
    .end local p2    # "endPositionUs":J
    .local p7, "endPositionUs":J
    invoke-direct/range {v0 .. v11}, Lcom/facebook/ads/redexgen/X/7B;-><init>(Lcom/facebook/ads/redexgen/X/no;JJJJZZ)V

    return-object v0

    .line 18889
    :cond_0
    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v0, v4, v1

    if-nez v0, :cond_1

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/7E;->A09:Lcom/facebook/ads/redexgen/X/pl;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/pl;->A0A()J

    move-result-wide v8

    goto :goto_0

    :cond_1
    move-wide v8, v4

    goto :goto_0
.end method

.method public final A0J([Lcom/facebook/ads/redexgen/X/7p;JLcom/facebook/ads/redexgen/X/Ew;Lcom/facebook/ads/redexgen/X/F0;Lcom/facebook/ads/redexgen/X/Cx;Lcom/facebook/ads/redexgen/X/7B;Lcom/facebook/ads/redexgen/X/Ex;)Lcom/facebook/ads/redexgen/X/np;
    .locals 12

    .line 18890
    move-object v2, p0

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/7E;->A04:Lcom/facebook/ads/redexgen/X/7A;

    move-object/from16 v10, p7

    if-nez v0, :cond_1

    .line 18891
    iget-wide v5, v10, Lcom/facebook/ads/redexgen/X/7B;->A03:J

    add-long/2addr v5, p2

    .line 18892
    .local v4, "rendererPositionOffsetUs":J
    :goto_0
    new-instance v3, Lcom/facebook/ads/redexgen/X/7A;

    move-object/from16 v11, p8

    move-object/from16 v8, p5

    move-object/from16 v7, p4

    move-object/from16 v9, p6

    move-object v4, p1

    invoke-direct/range {v3 .. v11}, Lcom/facebook/ads/redexgen/X/7A;-><init>([Lcom/facebook/ads/redexgen/X/7p;JLcom/facebook/ads/redexgen/X/Ew;Lcom/facebook/ads/redexgen/X/F0;Lcom/facebook/ads/redexgen/X/Cx;Lcom/facebook/ads/redexgen/X/7B;Lcom/facebook/ads/redexgen/X/Ex;)V

    .line 18893
    .local v2, "newPeriodHolder":Lcom/facebook/ads/redexgen/X/7A;
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/7E;->A04:Lcom/facebook/ads/redexgen/X/7A;

    if-eqz v0, :cond_0

    .line 18894
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7E;->A0N()Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 18895
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/7E;->A04:Lcom/facebook/ads/redexgen/X/7A;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/7A;->A0Q(Lcom/facebook/ads/redexgen/X/7A;)V

    .line 18896
    :cond_0
    const/4 v0, 0x0

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/7E;->A07:Ljava/lang/Object;

    .line 18897
    iput-object v3, v2, Lcom/facebook/ads/redexgen/X/7E;->A04:Lcom/facebook/ads/redexgen/X/7A;

    .line 18898
    iget v0, v2, Lcom/facebook/ads/redexgen/X/7E;->A00:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lcom/facebook/ads/redexgen/X/7E;->A00:I

    .line 18899
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/7A;->A07:Lcom/facebook/ads/redexgen/X/np;

    return-object v0

    .line 18900
    :cond_1
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/7E;->A04:Lcom/facebook/ads/redexgen/X/7A;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7A;->A0B()J

    move-result-wide v5

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/7E;->A04:Lcom/facebook/ads/redexgen/X/7A;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7A;->A00:Lcom/facebook/ads/redexgen/X/7B;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/7B;->A00:J

    add-long/2addr v5, v0

    goto :goto_0
.end method

.method public final A0K(Lcom/facebook/ads/androidx/media3/common/Timeline;Ljava/lang/Object;J)Lcom/facebook/ads/redexgen/X/no;
    .locals 7

    .line 18901
    move-object v1, p2

    move-object v0, p1

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/7E;->A00(Lcom/facebook/ads/androidx/media3/common/Timeline;Ljava/lang/Object;)J

    move-result-wide v4

    .line 18902
    .local p0, "windowSequenceNumber":J
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/7E;->A09:Lcom/facebook/ads/redexgen/X/pl;

    move-wide v2, p3

    invoke-static/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/7E;->A06(Lcom/facebook/ads/androidx/media3/common/Timeline;Ljava/lang/Object;JJLcom/facebook/ads/redexgen/X/pl;)Lcom/facebook/ads/redexgen/X/no;

    move-result-object v0

    return-object v0
.end method

.method public final A0L(J)V
    .locals 1

    .line 18903
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A04:Lcom/facebook/ads/redexgen/X/7A;

    if-eqz v0, :cond_0

    .line 18904
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A04:Lcom/facebook/ads/redexgen/X/7A;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/7A;->A0P(J)V

    .line 18905
    :cond_0
    return-void
.end method

.method public final A0M(Z)V
    .locals 4

    .line 18906
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7E;->A0D()Lcom/facebook/ads/redexgen/X/7A;

    move-result-object v3

    .line 18907
    .local v0, "front":Lcom/facebook/ads/redexgen/X/7A;
    const/4 v2, 0x0

    if-eqz v3, :cond_2

    .line 18908
    if-eqz p1, :cond_1

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/7A;->A08:Ljava/lang/Object;

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A07:Ljava/lang/Object;

    .line 18909
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/7A;->A00:Lcom/facebook/ads/redexgen/X/7B;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7B;->A04:Lcom/facebook/ads/redexgen/X/no;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/3C;->A03:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A03:J

    .line 18910
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/7A;->A0M()V

    .line 18911
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/7E;->A0S(Lcom/facebook/ads/redexgen/X/7A;)Z

    .line 18912
    :cond_0
    :goto_1
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/7E;->A05:Lcom/facebook/ads/redexgen/X/7A;

    .line 18913
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/7E;->A04:Lcom/facebook/ads/redexgen/X/7A;

    .line 18914
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/7E;->A06:Lcom/facebook/ads/redexgen/X/7A;

    .line 18915
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A00:I

    .line 18916
    return-void

    .line 18917
    :cond_1
    move-object v0, v2

    goto :goto_0

    .line 18918
    :cond_2
    if-nez p1, :cond_0

    .line 18919
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/7E;->A07:Ljava/lang/Object;

    goto :goto_1
.end method

.method public final A0N()Z
    .locals 1

    .line 18920
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A05:Lcom/facebook/ads/redexgen/X/7A;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0O()Z
    .locals 6

    .line 18921
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A04:Lcom/facebook/ads/redexgen/X/7A;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A04:Lcom/facebook/ads/redexgen/X/7A;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7A;->A00:Lcom/facebook/ads/redexgen/X/7B;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/7B;->A05:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A04:Lcom/facebook/ads/redexgen/X/7A;

    .line 18922
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7A;->A0R()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A04:Lcom/facebook/ads/redexgen/X/7A;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7A;->A00:Lcom/facebook/ads/redexgen/X/7B;

    iget-wide v4, v0, Lcom/facebook/ads/redexgen/X/7B;->A00:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v4, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/7E;->A0B:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x46

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/7E;->A0B:[Ljava/lang/String;

    const-string v1, "WQJhcBpqvfFlde6mvMcdcISTeYvrM"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/7E;->A00:I

    const/16 v0, 0x64

    if-ge v1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 18923
    :goto_0
    return v0

    .line 18924
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0P(Lcom/facebook/ads/androidx/media3/common/Timeline;I)Z
    .locals 1

    .line 18925
    iput p2, p0, Lcom/facebook/ads/redexgen/X/7E;->A01:I

    .line 18926
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/7E;->A07(Lcom/facebook/ads/androidx/media3/common/Timeline;)Z

    move-result v0

    return v0
.end method

.method public final A0Q(Lcom/facebook/ads/androidx/media3/common/Timeline;Lcom/facebook/ads/redexgen/X/no;J)Z
    .locals 13

    .line 18927
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/3C;->A04:Ljava/lang/Object;

    move-object v7, p1

    invoke-virtual {v7, v0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0A(Ljava/lang/Object;)I

    move-result v8

    .line 18928
    .local v0, "periodIndex":I
    const/4 v4, 0x0

    .line 18929
    .local v1, "previousPeriodHolder":Lcom/facebook/ads/redexgen/X/7A;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7E;->A0D()Lcom/facebook/ads/redexgen/X/7A;

    move-result-object v3

    .line 18930
    .local v2, "periodHolder":Lcom/facebook/ads/redexgen/X/7A;
    :goto_0
    const/4 v6, 0x1

    if-eqz v3, :cond_7

    .line 18931
    if-nez v4, :cond_2

    .line 18932
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/7A;->A00:Lcom/facebook/ads/redexgen/X/7B;

    invoke-virtual {p0, v7, v0}, Lcom/facebook/ads/redexgen/X/7E;->A0I(Lcom/facebook/ads/androidx/media3/common/Timeline;Lcom/facebook/ads/redexgen/X/7B;)Lcom/facebook/ads/redexgen/X/7B;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/7A;->A00:Lcom/facebook/ads/redexgen/X/7B;

    .line 18933
    .end local v4
    :cond_0
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/7A;->A00:Lcom/facebook/ads/redexgen/X/7B;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/7B;->A07:Z

    if-eqz v0, :cond_1

    .line 18934
    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/7E;->A09:Lcom/facebook/ads/redexgen/X/pl;

    iget-object v10, p0, Lcom/facebook/ads/redexgen/X/7E;->A0A:Lcom/facebook/ads/redexgen/X/pj;

    iget v11, p0, Lcom/facebook/ads/redexgen/X/7E;->A01:I

    iget-boolean v12, p0, Lcom/facebook/ads/redexgen/X/7E;->A08:Z

    .line 18935
    invoke-virtual/range {v7 .. v12}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A09(ILcom/facebook/ads/redexgen/X/pl;Lcom/facebook/ads/redexgen/X/pj;IZ)I

    move-result v8

    .line 18936
    :cond_1
    move-object v4, v3

    .line 18937
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/7A;->A0I()Lcom/facebook/ads/redexgen/X/7A;

    move-result-object v3

    goto :goto_0

    .line 18938
    :cond_2
    const/4 v0, -0x1

    if-eq v8, v0, :cond_3

    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/7A;->A08:Ljava/lang/Object;

    .line 18939
    invoke-virtual {v7, v8}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0M(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/7E;->A0B:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/7E;->A0B:[Ljava/lang/String;

    const-string v1, "ytUDxXblB5dYuzkyb9"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "n5GR8r"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-nez v5, :cond_4

    .line 18940
    :cond_3
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/7E;->A0S(Lcom/facebook/ads/redexgen/X/7A;)Z

    move-result v0

    xor-int/2addr v6, v0

    return v6

    .line 18941
    :cond_4
    move-wide/from16 v0, p3

    invoke-direct {p0, v7, v4, v0, v1}, Lcom/facebook/ads/redexgen/X/7E;->A01(Lcom/facebook/ads/androidx/media3/common/Timeline;Lcom/facebook/ads/redexgen/X/7A;J)Lcom/facebook/ads/redexgen/X/7B;

    move-result-object v1

    .line 18942
    .local v4, "periodInfo":Lcom/facebook/ads/redexgen/X/7B;
    if-nez v1, :cond_5

    .line 18943
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/7E;->A0S(Lcom/facebook/ads/redexgen/X/7A;)Z

    move-result v0

    xor-int/2addr v6, v0

    return v6

    .line 18944
    :cond_5
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/7A;->A00:Lcom/facebook/ads/redexgen/X/7B;

    invoke-virtual {p0, v7, v0}, Lcom/facebook/ads/redexgen/X/7E;->A0I(Lcom/facebook/ads/androidx/media3/common/Timeline;Lcom/facebook/ads/redexgen/X/7B;)Lcom/facebook/ads/redexgen/X/7B;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/7A;->A00:Lcom/facebook/ads/redexgen/X/7B;

    .line 18945
    invoke-direct {p0, v3, v1}, Lcom/facebook/ads/redexgen/X/7E;->A0A(Lcom/facebook/ads/redexgen/X/7A;Lcom/facebook/ads/redexgen/X/7B;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 18946
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/7E;->A0S(Lcom/facebook/ads/redexgen/X/7A;)Z

    move-result v0

    xor-int/2addr v6, v0

    return v6

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 18947
    :cond_7
    return v6
.end method

.method public final A0R(Lcom/facebook/ads/androidx/media3/common/Timeline;Z)Z
    .locals 1

    .line 18948
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/7E;->A08:Z

    .line 18949
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/7E;->A07(Lcom/facebook/ads/androidx/media3/common/Timeline;)Z

    move-result v0

    return v0
.end method

.method public final A0S(Lcom/facebook/ads/redexgen/X/7A;)Z
    .locals 3

    .line 18950
    const/4 v1, 0x1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 18951
    const/4 v2, 0x0

    .line 18952
    .local v1, "removedReading":Z
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7E;->A04:Lcom/facebook/ads/redexgen/X/7A;

    .line 18953
    :goto_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/7A;->A0I()Lcom/facebook/ads/redexgen/X/7A;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 18954
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/7A;->A0I()Lcom/facebook/ads/redexgen/X/7A;

    move-result-object p1

    .line 18955
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A06:Lcom/facebook/ads/redexgen/X/7A;

    if-ne p1, v0, :cond_0

    .line 18956
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A05:Lcom/facebook/ads/redexgen/X/7A;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A06:Lcom/facebook/ads/redexgen/X/7A;

    .line 18957
    const/4 v2, 0x1

    .line 18958
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/7A;->A0M()V

    .line 18959
    iget v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A00:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A00:I

    goto :goto_1

    .line 18960
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 18961
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7E;->A04:Lcom/facebook/ads/redexgen/X/7A;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/7A;->A0Q(Lcom/facebook/ads/redexgen/X/7A;)V

    .line 18962
    return v2
.end method

.method public final A0T(Lcom/facebook/ads/redexgen/X/np;)Z
    .locals 1

    .line 18963
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A04:Lcom/facebook/ads/redexgen/X/7A;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A04:Lcom/facebook/ads/redexgen/X/7A;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7A;->A07:Lcom/facebook/ads/redexgen/X/np;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
