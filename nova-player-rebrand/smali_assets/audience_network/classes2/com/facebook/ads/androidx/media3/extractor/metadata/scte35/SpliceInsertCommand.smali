.class public final Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceInsertCommand;
.super Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceCommand;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/IX;
    }
.end annotation


# static fields
.field public static A0D:[Ljava/lang/String;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceInsertCommand;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:J

.field public final A04:J

.field public final A05:J

.field public final A06:J

.field public final A07:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/IX;",
            ">;"
        }
    .end annotation
.end field

.field public final A08:Z

.field public final A09:Z

.field public final A0A:Z

.field public final A0B:Z

.field public final A0C:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 534
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "2fVUWVW5Hj7LHoGITBtqA0sUitS4PTb4"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Q8qvKmypWvqXriKcaeBTncTBfq8seygK"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "PB3TBbluvnbAoPy"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "V5r7AKyrTxu4nkwu31wVya7iCL5S2t7X"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ptiIvLXZk7optwegrSJTcSLpf9JtKnje"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Im1w1jT"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "8VlbtMqcAJkMoCkUmgZltZaiEM6o3"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "PsL5EDhhHapqBInAVo5dkvRq7GvOLwYr"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->A0D:[Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/IW;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/IW;-><init>()V

    sput-object v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JZZZZJJLjava/util/List;ZJIII)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZZZZJJ",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/IX;",
            ">;ZJIII)V"
        }
    .end annotation

    .line 23385
    .local p25, "componentSpliceList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceInsertCommand$ComponentSplice;>;"
    move-object v1, p0

    invoke-direct {p0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceCommand;-><init>()V

    .line 23386
    iput-wide p1, v1, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->A06:J

    .line 23387
    iput-boolean p3, v1, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->A0B:Z

    .line 23388
    iput-boolean p4, v1, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->A09:Z

    .line 23389
    iput-boolean p5, v1, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->A0A:Z

    .line 23390
    iput-boolean p6, v1, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->A0C:Z

    .line 23391
    iput-wide p7, v1, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->A05:J

    .line 23392
    iput-wide p9, v1, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->A04:J

    .line 23393
    invoke-static {p11}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->A07:Ljava/util/List;

    .line 23394
    iput-boolean p12, v1, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->A08:Z

    .line 23395
    iput-wide p13, v1, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->A03:J

    .line 23396
    move/from16 v0, p15

    iput v0, v1, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->A02:I

    .line 23397
    move/from16 v0, p16

    iput v0, v1, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->A00:I

    .line 23398
    move/from16 v0, p17

    iput v0, v1, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->A01:I

    .line 23399
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .line 23400
    invoke-direct {p0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceCommand;-><init>()V

    .line 23401
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->A06:J

    .line 23402
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_3

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->A0B:Z

    .line 23403
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v4, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->A09:Z

    .line 23404
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v4, :cond_1

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->A0A:Z

    .line 23405
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v4, :cond_0

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->A0C:Z

    .line 23406
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->A05:J

    .line 23407
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->A04:J

    .line 23408
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 23409
    .local v0, "componentSpliceListSize":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 23410
    .local v3, "componentSpliceList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceInsertCommand$ComponentSplice;>;"
    const/4 v1, 0x0

    .local v4, "i":I
    :goto_4
    if-ge v1, v3, :cond_4

    .line 23411
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/IX;->A00(Landroid/os/Parcel;)Lcom/facebook/ads/redexgen/X/IX;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23412
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 23413
    :cond_0
    const/4 v0, 0x0

    goto :goto_3

    .line 23414
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 23415
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 23416
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 23417
    .end local v4    # "i":I
    :cond_4
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->A07:Ljava/util/List;

    .line 23418
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v4, :cond_5

    const/4 v5, 0x1

    :cond_5
    iput-boolean v5, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->A08:Z

    .line 23419
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->A03:J

    .line 23420
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->A02:I

    .line 23421
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->A00:I

    .line 23422
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->A01:I

    .line 23423
    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/facebook/ads/redexgen/X/IW;)V
    .locals 0

    .line 23424
    invoke-direct {p0, p1}, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceInsertCommand;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/4v;JLcom/facebook/ads/redexgen/X/53;)Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceInsertCommand;
    .locals 31

    .line 23425
    move-object/from16 v10, p0

    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4v;->A0Q()J

    move-result-wide v14

    .line 23426
    .local v19, "spliceEventId":J
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_6

    const/16 v16, 0x1

    .line 23427
    .local v21, "spliceEventCancelIndicator":Z
    :goto_0
    const/16 v17, 0x0

    .line 23428
    .local v1, "outOfNetworkIndicator":Z
    const/16 v18, 0x0

    .line 23429
    .local v4, "programSpliceFlag":Z
    const/16 v19, 0x0

    .line 23430
    .local v5, "spliceImmediateFlag":Z
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 23431
    .local v6, "programSplicePts":J
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    sget-object v1, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->A0D:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x13

    if-eq v1, v0, :cond_b

    .line 23432
    .local v8, "componentSplices":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceInsertCommand$ComponentSplice;>;"
    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->A0D:[Ljava/lang/String;

    const-string v1, "mssbEGkdhdKHHgY1hMK2RaJspuJCG0bt"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/16 v28, 0x0

    .line 23433
    .local v9, "uniqueProgramId":I
    const/16 v29, 0x0

    .line 23434
    .local v10, "availNum":I
    const/16 v30, 0x0

    .line 23435
    .local v11, "availsExpected":I
    const/16 v25, 0x0

    .line 23436
    .local v12, "autoReturn":Z
    const-wide v26, -0x7fffffffffffffffL    # -4.9E-324

    .line 23437
    .local v13, "breakDurationUs":J
    move-object/from16 v11, p3

    if-nez v16, :cond_9

    .line 23438
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v1

    .line 23439
    .local v15, "headerByte":I
    and-int/lit16 v0, v1, 0x80

    if-eqz v0, :cond_5

    const/16 v17, 0x1

    .line 23440
    :goto_1
    and-int/lit8 v0, v1, 0x40

    if-eqz v0, :cond_4

    const/16 v18, 0x1

    .line 23441
    :goto_2
    and-int/lit8 v0, v1, 0x20

    if-eqz v0, :cond_3

    const/4 v12, 0x1

    .line 23442
    .local v2, "durationFlag":Z
    :goto_3
    and-int/lit8 v0, v1, 0x10

    if-eqz v0, :cond_2

    const/16 v19, 0x1

    .line 23443
    :goto_4
    move-wide/from16 v7, p1

    if-eqz v18, :cond_0

    if-nez v19, :cond_0

    .line 23444
    invoke-static {v10, v7, v8}, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/TimeSignalCommand;->A00(Lcom/facebook/ads/redexgen/X/4v;J)J

    move-result-wide v4

    .line 23445
    :cond_0
    if-nez v18, :cond_7

    .line 23446
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v3

    .line 23447
    .local v3, "componentCount":I
    .end local v1    # "outOfNetworkIndicator":Z
    .local v18, "outOfNetworkIndicator":Z
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 23448
    .end local v8    # "componentSplices":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceInsertCommand$ComponentSplice;>;"
    .local v1, "componentSplices":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceInsertCommand$ComponentSplice;>;"
    const/4 v2, 0x0

    .local v8, "i":I
    :goto_5
    if-ge v2, v3, :cond_7

    .line 23449
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v29

    .line 23450
    .local v29, "componentTag":I
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 23451
    .local v22, "componentSplicePts":J
    if-nez v19, :cond_1

    .line 23452
    invoke-static {v10, v7, v8}, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/TimeSignalCommand;->A00(Lcom/facebook/ads/redexgen/X/4v;J)J

    move-result-wide v0

    .line 23453
    .end local v4    # "programSpliceFlag":Z
    .end local v22    # "componentSplicePts":J
    .local v3, "componentSplicePts":J
    .local v30, "programSpliceFlag":Z
    .local p0, "componentCount":I
    .end local v5    # "spliceImmediateFlag":Z
    .local p1, "spliceImmediateFlag":Z
    :cond_1
    new-instance v9, Lcom/facebook/ads/redexgen/X/IX;

    .line 23454
    invoke-virtual {v11, v0, v1}, Lcom/facebook/ads/redexgen/X/53;->A06(J)J

    move-result-wide p1

    const/16 p3, 0x0

    move-object/from16 v28, v9

    move-wide/from16 v30, v0

    invoke-direct/range {v28 .. v34}, Lcom/facebook/ads/redexgen/X/IX;-><init>(IJJLcom/facebook/ads/redexgen/X/IW;)V

    .line 23455
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23456
    .end local v3    # "componentSplicePts":J
    .end local v29    # "componentTag":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 23457
    :cond_2
    const/16 v19, 0x0

    goto :goto_4

    .line 23458
    :cond_3
    const/4 v12, 0x0

    goto :goto_3

    .line 23459
    :cond_4
    const/16 v18, 0x0

    goto :goto_2

    .line 23460
    :cond_5
    const/16 v17, 0x0

    goto :goto_1

    .line 23461
    :cond_6
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 23462
    .end local v1    # "componentSplices":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceInsertCommand$ComponentSplice;>;"
    .end local v4
    .end local v5
    .restart local v18    # "outOfNetworkIndicator":Z
    .restart local v30    # "programSpliceFlag":Z
    .restart local p1    # "spliceImmediateFlag":Z
    :cond_7
    if-eqz v12, :cond_8

    .line 23463
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v0

    int-to-long v0, v0

    .line 23464
    .local v3, "firstByte":J
    const-wide/16 v2, 0x80

    and-long v12, v0, v2

    const-wide/16 v7, 0x0

    cmp-long v2, v12, v7

    if-eqz v2, :cond_a

    const/16 v25, 0x1

    .line 23465
    .end local v12    # "autoReturn":Z
    .local v1, "autoReturn":Z
    :goto_6
    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4v;->A0Q()J

    move-result-wide v2

    or-long/2addr v0, v2

    .line 23466
    .local v16, "breakDuration90khz":J
    const-wide/16 v26, 0x3e8

    mul-long v26, v26, v0

    const-wide/16 v0, 0x5a

    div-long v26, v26, v0

    .line 23467
    .end local v1    # "autoReturn":Z
    .end local v3    # "firstByte":J
    .end local v16    # "breakDuration90khz":J
    .restart local v12    # "autoReturn":Z
    :cond_8
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4v;->A0M()I

    move-result v28

    .line 23468
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v29

    .line 23469
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v30

    .line 23470
    .end local v1
    .end local v4
    .end local v5
    .end local v6    # "programSplicePts":J
    .end local v8    # "i":I
    .end local v9    # "uniqueProgramId":I
    .end local v10    # "availNum":I
    .end local v11    # "availsExpected":I
    .end local v12    # "autoReturn":Z
    .end local v13    # "breakDurationUs":J
    .local v14, "programSplicePts":J
    .local v22, "outOfNetworkIndicator":Z
    .local v23, "componentSplices":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceInsertCommand$ComponentSplice;>;"
    .local v24, "uniqueProgramId":I
    .local v25, "availNum":I
    .local v26, "availsExpected":I
    .local v27, "autoReturn":Z
    .local v28, "breakDurationUs":J
    .restart local v30    # "programSpliceFlag":Z
    .restart local p1    # "spliceImmediateFlag":Z
    :cond_9
    new-instance v13, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceInsertCommand;

    .line 23471
    invoke-virtual {v11, v4, v5}, Lcom/facebook/ads/redexgen/X/53;->A06(J)J

    move-result-wide v22

    .end local v14    # "programSplicePts":J
    .local p2, "programSplicePts":J
    move-object/from16 v24, v6

    move-wide/from16 v20, v4

    invoke-direct/range {v13 .. v30}, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceInsertCommand;-><init>(JZZZZJJLjava/util/List;ZJIII)V

    .line 23472
    return-object v13

    .line 23473
    :cond_a
    const/16 v25, 0x0

    goto :goto_6

    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 23474
    iget-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->A06:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 23475
    iget-boolean v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->A0B:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 23476
    iget-boolean v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->A09:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 23477
    iget-boolean v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->A0A:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 23478
    iget-boolean v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->A0C:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 23479
    iget-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->A05:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 23480
    iget-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->A04:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 23481
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->A07:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 23482
    .local v0, "componentSpliceListSize":I
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 23483
    const/4 v3, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 23484
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->A07:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/IX;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/IX;->A01(Landroid/os/Parcel;)V

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->A0D:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    .line 23485
    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->A0D:[Ljava/lang/String;

    const-string v1, "b82jUGYrdOItwNOnrxCotui81UmrwpK"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 23486
    .end local v1    # "i":I
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->A08:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 23487
    iget-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->A03:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 23488
    iget v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->A02:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 23489
    iget v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->A00:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 23490
    iget v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->A01:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 23491
    return-void
.end method
