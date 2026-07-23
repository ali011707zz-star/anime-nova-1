.class public final Lcom/facebook/ads/redexgen/X/Ib;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceScheduleCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Event"
.end annotation


# static fields
.field public static A0B:[Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:J

.field public final A04:J

.field public final A05:J

.field public final A06:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Ia;",
            ">;"
        }
    .end annotation
.end field

.field public final A07:Z

.field public final A08:Z

.field public final A09:Z

.field public final A0A:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 807
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "nEg82cXZVYZFfZdDmhKyBuPXw98CjCqr"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "lWWNRS3KueXb9Tbf73wyUq3w1CVt7zYo"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "9i1TifP67Pthfk8s9WN"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "2Mfz8aUpVuODbM0LRRY7IzxNE33rrKDp"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "lWmgQQDKaNBy8Pu2POQEfpeN2vAsVVBR"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "WAUg7lL5KFyy4cAmNpLa1cxU0cT6TIeS"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "jMg6XDLnbUHNrmDX3ZR"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "RwGxvdCbKX59SF6mGNLLwZG43nCYkk8W"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ib;->A0B:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JZZZLjava/util/List;JZJIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZZZ",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Ia;",
            ">;JZJIII)V"
        }
    .end annotation

    .line 40279
    .local p6, "componentSpliceList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$ComponentSplice;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40280
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Ib;->A04:J

    .line 40281
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/Ib;->A0A:Z

    .line 40282
    iput-boolean p4, p0, Lcom/facebook/ads/redexgen/X/Ib;->A08:Z

    .line 40283
    iput-boolean p5, p0, Lcom/facebook/ads/redexgen/X/Ib;->A09:Z

    .line 40284
    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ib;->A06:Ljava/util/List;

    .line 40285
    iput-wide p7, p0, Lcom/facebook/ads/redexgen/X/Ib;->A05:J

    .line 40286
    iput-boolean p9, p0, Lcom/facebook/ads/redexgen/X/Ib;->A07:Z

    .line 40287
    iput-wide p10, p0, Lcom/facebook/ads/redexgen/X/Ib;->A03:J

    .line 40288
    iput p12, p0, Lcom/facebook/ads/redexgen/X/Ib;->A02:I

    .line 40289
    iput p13, p0, Lcom/facebook/ads/redexgen/X/Ib;->A00:I

    .line 40290
    iput p14, p0, Lcom/facebook/ads/redexgen/X/Ib;->A01:I

    .line 40291
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .line 40292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40293
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Ib;->A04:J

    .line 40294
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ib;->A0A:Z

    .line 40295
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v4, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ib;->A08:Z

    .line 40296
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v4, :cond_0

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ib;->A09:Z

    .line 40297
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 40298
    .local v0, "componentSpliceListLength":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 40299
    .local v3, "componentSpliceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$ComponentSplice;>;"
    const/4 v1, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v1, v3, :cond_3

    .line 40300
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Ia;->A01(Landroid/os/Parcel;)Lcom/facebook/ads/redexgen/X/Ia;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40301
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 40302
    :cond_0
    const/4 v0, 0x0

    goto :goto_2

    .line 40303
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 40304
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 40305
    .end local v4    # "i":I
    :cond_3
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ib;->A06:Ljava/util/List;

    .line 40306
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Ib;->A05:J

    .line 40307
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v4, :cond_4

    const/4 v5, 0x1

    :cond_4
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/Ib;->A07:Z

    .line 40308
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Ib;->A03:J

    .line 40309
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ib;->A02:I

    .line 40310
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ib;->A00:I

    .line 40311
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ib;->A01:I

    .line 40312
    return-void
.end method

.method public static A00(Landroid/os/Parcel;)Lcom/facebook/ads/redexgen/X/Ib;
    .locals 1

    .line 40313
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ib;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Ib;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public static synthetic A01(Landroid/os/Parcel;)Lcom/facebook/ads/redexgen/X/Ib;
    .locals 0

    .line 40314
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Ib;->A00(Landroid/os/Parcel;)Lcom/facebook/ads/redexgen/X/Ib;

    move-result-object p0

    return-object p0
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/4v;)Lcom/facebook/ads/redexgen/X/Ib;
    .locals 22

    .line 40315
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/4v;->A0Q()J

    move-result-wide v8

    .line 40316
    .local v15, "spliceEventId":J
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_2

    const/4 v10, 0x1

    .line 40317
    .local v17, "spliceEventCancelIndicator":Z
    :goto_0
    const/4 v11, 0x0

    .line 40318
    .local v0, "outOfNetworkIndicator":Z
    const/4 v12, 0x0

    .line 40319
    .local v3, "programSpliceFlag":Z
    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    .line 40320
    .local v4, "utcSpliceTime":J
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 40321
    .local v6, "componentSplices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$ComponentSplice;>;"
    const/16 v19, 0x0

    .line 40322
    .local v7, "uniqueProgramId":I
    const/16 v20, 0x0

    .line 40323
    .local v8, "availNum":I
    const/16 v21, 0x0

    .line 40324
    .local v9, "availsExpected":I
    const/16 v16, 0x0

    .line 40325
    .local v10, "autoReturn":Z
    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    .line 40326
    .local v11, "breakDurationUs":J
    if-nez v10, :cond_9

    .line 40327
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v2

    .line 40328
    .local v13, "headerByte":I
    and-int/lit16 v0, v2, 0x80

    if-eqz v0, :cond_1

    const/4 v11, 0x1

    .line 40329
    :goto_1
    and-int/lit8 v0, v2, 0x40

    if-eqz v0, :cond_0

    const/4 v12, 0x1

    :goto_2
    sget-object v1, Lcom/facebook/ads/redexgen/X/Ib;->A0B:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x37

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    const/4 v12, 0x0

    goto :goto_2

    .line 40330
    :cond_1
    const/4 v11, 0x0

    goto :goto_1

    .line 40331
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .line 40332
    :cond_3
    sget-object v3, Lcom/facebook/ads/redexgen/X/Ib;->A0B:[Ljava/lang/String;

    const-string v1, "nLO0WJRxYuU9qthfzcYyP1P8ccIGaxOi"

    const/4 v0, 0x0

    aput-object v1, v3, v0

    const-string v1, "OIpoqKTSq2Ia2FsBUXzy5KxMNemzaoxr"

    const/4 v0, 0x1

    aput-object v1, v3, v0

    and-int/lit8 v0, v2, 0x20

    if-eqz v0, :cond_5

    const/4 v7, 0x1

    .line 40333
    .local v14, "durationFlag":Z
    :goto_3
    if-eqz v12, :cond_4

    .line 40334
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/4v;->A0Q()J

    move-result-wide v14

    .line 40335
    :cond_4
    if-nez v12, :cond_7

    .line 40336
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v4

    .line 40337
    .local v1, "componentCount":I
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 40338
    .end local v6    # "componentSplices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$ComponentSplice;>;"
    .local v2, "componentSplices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$ComponentSplice;>;"
    const/4 v3, 0x0

    .local v6, "i":I
    :goto_4
    if-ge v3, v4, :cond_6

    .line 40339
    .end local v0    # "outOfNetworkIndicator":Z
    .local v20, "outOfNetworkIndicator":Z
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v6

    .line 40340
    .local v0, "componentTag":I
    .end local v3    # "programSpliceFlag":Z
    .end local v4    # "utcSpliceTime":J
    .local v21, "programSpliceFlag":Z
    .local p0, "utcSpliceTime":J
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/4v;->A0Q()J

    move-result-wide v0

    .line 40341
    .local v3, "componentUtcSpliceTime":J
    .end local v1    # "componentCount":I
    .local p2, "componentCount":I
    const/4 v5, 0x0

    new-instance v2, Lcom/facebook/ads/redexgen/X/Ia;

    invoke-direct {v2, v6, v0, v1, v5}, Lcom/facebook/ads/redexgen/X/Ia;-><init>(IJLcom/facebook/ads/redexgen/X/IZ;)V

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40342
    .end local v0    # "componentTag":I
    .end local v3    # "componentUtcSpliceTime":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 40343
    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    .line 40344
    .end local v20    # "outOfNetworkIndicator":Z
    .end local v21    # "programSpliceFlag":Z
    .end local p0    # "utcSpliceTime":J
    .end local p2
    .local v0, "outOfNetworkIndicator":Z
    .restart local v1    # "componentCount":I
    .local v3, "programSpliceFlag":Z
    .restart local v4    # "utcSpliceTime":J
    :cond_6
    sget-object v1, Lcom/facebook/ads/redexgen/X/Ib;->A0B:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x37

    if-eq v1, v0, :cond_b

    .line 40345
    .end local v0    # "outOfNetworkIndicator":Z
    .end local v3    # "programSpliceFlag":Z
    .end local v4    # "utcSpliceTime":J
    .restart local v20    # "outOfNetworkIndicator":Z
    .restart local v21    # "programSpliceFlag":Z
    .restart local p0    # "utcSpliceTime":J
    :cond_7
    :goto_5
    if-eqz v7, :cond_8

    .line 40346
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v0

    int-to-long v0, v0

    .line 40347
    .local v0, "firstByte":J
    const-wide/16 v5, 0x80

    and-long/2addr v5, v0

    const-wide/16 v3, 0x0

    cmp-long v2, v5, v3

    if-eqz v2, :cond_a

    const/16 v16, 0x1

    .line 40348
    .end local v10    # "autoReturn":Z
    .local v2, "autoReturn":Z
    :goto_6
    const-wide/16 v2, 0x1

    and-long/2addr v2, v0

    const/16 v0, 0x20

    shl-long/2addr v2, v0

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/4v;->A0Q()J

    move-result-wide v0

    or-long/2addr v2, v0

    .line 40349
    .local v3, "breakDuration90khz":J
    const-wide/16 v17, 0x3e8

    mul-long v17, v17, v2

    const-wide/16 v0, 0x5a

    div-long v17, v17, v0

    .line 40350
    .end local v0    # "firstByte":J
    .end local v2    # "autoReturn":Z
    .end local v3    # "breakDuration90khz":J
    .restart local v10    # "autoReturn":Z
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/4v;->A0M()I

    move-result v19

    .line 40351
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v20

    .line 40352
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v21

    .line 40353
    .end local v0
    .end local v3
    .end local v4
    .end local v6    # "i":I
    .end local v7    # "uniqueProgramId":I
    .end local v8    # "availNum":I
    .end local v9    # "availsExpected":I
    .end local v10    # "autoReturn":Z
    .end local v11    # "breakDurationUs":J
    .local v18, "componentSplices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$ComponentSplice;>;"
    .local v19, "uniqueProgramId":I
    .restart local v20    # "outOfNetworkIndicator":Z
    .restart local v21    # "programSpliceFlag":Z
    .restart local p0    # "utcSpliceTime":J
    .local p2, "availNum":I
    .local p3, "availsExpected":I
    .local p4, "autoReturn":Z
    .local p5, "breakDurationUs":J
    :cond_9
    new-instance v7, Lcom/facebook/ads/redexgen/X/Ib;

    invoke-direct/range {v7 .. v21}, Lcom/facebook/ads/redexgen/X/Ib;-><init>(JZZZLjava/util/List;JZJIII)V

    return-object v7

    .line 40354
    :cond_a
    const/16 v16, 0x0

    goto :goto_6

    .end local v0
    .end local v1    # "componentCount":I
    .end local v3
    .end local v4
    .restart local v20    # "outOfNetworkIndicator":Z
    .restart local v21    # "programSpliceFlag":Z
    .restart local p0    # "utcSpliceTime":J
    .restart local p2
    :cond_b
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ib;->A0B:[Ljava/lang/String;

    const-string v1, "ZIJV8CxCO5lc3X0ct1XMotdLhBio9GzL"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    goto :goto_5
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/4v;)Lcom/facebook/ads/redexgen/X/Ib;
    .locals 0

    .line 40355
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Ib;->A02(Lcom/facebook/ads/redexgen/X/4v;)Lcom/facebook/ads/redexgen/X/Ib;

    move-result-object p0

    return-object p0
.end method

.method private A04(Landroid/os/Parcel;)V
    .locals 3

    .line 40356
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Ib;->A04:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 40357
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ib;->A0A:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 40358
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ib;->A08:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 40359
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ib;->A09:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 40360
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ib;->A06:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 40361
    .local v0, "componentSpliceListSize":I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 40362
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 40363
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ib;->A06:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ia;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/Ia;->A03(Lcom/facebook/ads/redexgen/X/Ia;Landroid/os/Parcel;)V

    .line 40364
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 40365
    .end local v1    # "i":I
    :cond_0
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Ib;->A05:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 40366
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ib;->A07:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 40367
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Ib;->A03:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 40368
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ib;->A02:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 40369
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ib;->A00:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 40370
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ib;->A01:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 40371
    return-void
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/Ib;Landroid/os/Parcel;)V
    .locals 0

    .line 40372
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ib;->A04(Landroid/os/Parcel;)V

    return-void
.end method
