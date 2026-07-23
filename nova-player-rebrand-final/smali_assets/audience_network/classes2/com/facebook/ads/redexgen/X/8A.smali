.class public final Lcom/facebook/ads/redexgen/X/8A;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/A8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaPeriodQueueTracker"
.end annotation


# static fields
.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/no;

.field public A01:Lcom/facebook/ads/redexgen/X/no;

.field public A02:Lcom/facebook/ads/redexgen/X/no;

.field public A03:Lcom/facebook/ads/redexgen/X/BP;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/BP<",
            "Lcom/facebook/ads/redexgen/X/no;",
            ">;"
        }
    .end annotation
.end field

.field public A04:Lcom/facebook/ads/redexgen/X/oX;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/oX<",
            "Lcom/facebook/ads/redexgen/X/no;",
            "Lcom/facebook/ads/androidx/media3/common/Timeline;",
            ">;"
        }
    .end annotation
.end field

.field public final A05:Lcom/facebook/ads/redexgen/X/pl;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 496
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "jkVScMAnmSDw5NjtFKaMDw93YHVTZfVV"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "X8vR6FaiUrrVUV4OyPqbjTz4nTbdT"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "DJqg7VUdCo9q2ysxPrWS1RTdTLsj"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "4FrbkvGGO58oIWN02YSUZA4iQkwc41Il"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "lEgbsVLzgPUjgc1"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "ISDPu1y88m9uUW9z"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "L6djBwtYOA2bka2PQ69EdZLSIG4ne"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "x8MPEelqUvAzBLNZGFUUNdgpeh0HUacA"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/8A;->A06:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/pl;)V
    .locals 1

    .line 22384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22385
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/8A;->A05:Lcom/facebook/ads/redexgen/X/pl;

    .line 22386
    invoke-static {}, Lcom/facebook/ads/redexgen/X/BP;->A03()Lcom/facebook/ads/redexgen/X/BP;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8A;->A03:Lcom/facebook/ads/redexgen/X/BP;

    .line 22387
    invoke-static {}, Lcom/facebook/ads/redexgen/X/oX;->A04()Lcom/facebook/ads/redexgen/X/oX;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8A;->A04:Lcom/facebook/ads/redexgen/X/oX;

    .line 22388
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/3b;Lcom/facebook/ads/redexgen/X/BP;Lcom/facebook/ads/redexgen/X/no;Lcom/facebook/ads/redexgen/X/pl;)Lcom/facebook/ads/redexgen/X/no;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/3b;",
            "Lcom/facebook/ads/redexgen/X/BP<",
            "Lcom/facebook/ads/redexgen/X/no;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/no;",
            "Lcom/facebook/ads/redexgen/X/pl;",
            ")",
            "Lcom/facebook/ads/redexgen/X/no;"
        }
    .end annotation

    .line 22389
    .local p4, "mediaPeriodQueue":Lcom/facebook/ads/redexgen/X/BP;, "Lcom/google/common/collect/ImmutableList<Lcom/facebook/ads/androidx/media3/exoplayer/source/MediaSource$MediaPeriodId;>;"
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/3b;->A7g()Lcom/facebook/ads/androidx/media3/common/Timeline;

    move-result-object v5

    .line 22390
    .local v6, "playerTimeline":Lcom/facebook/ads/androidx/media3/common/Timeline;
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/3b;->A7c()I

    move-result v4

    .line 22391
    .local v7, "playerPeriodIndex":I
    invoke-virtual {v5}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0N()Z

    move-result v0

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    move-object v8, v6

    .line 22392
    .local v10, "playerPeriodUid":Ljava/lang/Object;
    :goto_0
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/3b;->AAd()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v5}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0N()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/8A;->A06:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x3

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

    .line 22393
    :cond_0
    invoke-virtual {v5, v4}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0M(I)Ljava/lang/Object;

    move-result-object v8

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/8A;->A06:[Ljava/lang/String;

    const-string v1, "fPIpfte6042F2VeKOBsTFTkNJVxhR"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_4

    .line 22394
    :cond_2
    const/4 v12, -0x1

    .line 22395
    .local p1, "playerNextAdGroupIndex":I
    :goto_1
    const/4 v1, 0x0

    .local v0, "i":I
    :goto_2
    move-object v2, p1

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/BP;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 22396
    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/BP;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/ads/redexgen/X/no;

    .line 22397
    .local v1, "mediaPeriodId":Lcom/facebook/ads/redexgen/X/no;
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/3b;->AAd()Z

    move-result v9

    .line 22398
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/3b;->A7Y()I

    move-result v10

    .line 22399
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/3b;->A7Z()I

    move-result v11

    .line 22400
    invoke-static/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/8A;->A04(Lcom/facebook/ads/redexgen/X/no;Ljava/lang/Object;ZIII)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 22401
    return-object v7

    .line 22402
    .end local v1    # "mediaPeriodId":Lcom/facebook/ads/redexgen/X/no;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 22403
    :cond_4
    move-object/from16 v7, p3

    invoke-virtual {v5, v4, v7}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0H(ILcom/facebook/ads/redexgen/X/pl;)Lcom/facebook/ads/redexgen/X/pl;

    move-result-object v4

    .line 22404
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/3b;->A7e()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/5C;->A0O(J)J

    move-result-wide v2

    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/pl;->A0C()J

    move-result-wide v0

    sub-long/2addr v2, v0

    .line 22405
    invoke-virtual {v4, v2, v3}, Lcom/facebook/ads/redexgen/X/pl;->A07(J)I

    move-result v12

    goto :goto_1

    .line 22406
    .end local v0    # "i":I
    :cond_5
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/BP;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v7, p2

    if-eqz v7, :cond_6

    .line 22407
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/3b;->AAd()Z

    move-result v9

    .line 22408
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/3b;->A7Y()I

    move-result v10

    .line 22409
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/3b;->A7Z()I

    move-result v11

    .line 22410
    move-object v8, v8

    move v12, v12

    invoke-static/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/8A;->A04(Lcom/facebook/ads/redexgen/X/no;Ljava/lang/Object;ZIII)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 22411
    return-object v7

    .line 22412
    :cond_6
    return-object v6
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/8A;)Lcom/facebook/ads/redexgen/X/BP;
    .locals 0

    .line 22413
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/8A;->A03:Lcom/facebook/ads/redexgen/X/BP;

    return-object p0
.end method

.method private A02(Lcom/facebook/ads/androidx/media3/common/Timeline;)V
    .locals 6
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "FEATURE_LOGIC"
        }
        value = "builder of ImmutableMap should be a buildOrThrow"
    .end annotation

    .line 22414
    invoke-static {}, Lcom/facebook/ads/redexgen/X/oX;->A03()Lcom/facebook/ads/redexgen/X/oV;

    move-result-object v3

    .line 22415
    .local v0, "builder":Lcom/facebook/ads/redexgen/X/oV;, "Lcom/google/common/collect/ImmutableMap$Builder<Lcom/facebook/ads/androidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Lcom/facebook/ads/androidx/media3/common/Timeline;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8A;->A03:Lcom/facebook/ads/redexgen/X/BP;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BP;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 22416
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8A;->A01:Lcom/facebook/ads/redexgen/X/no;

    invoke-direct {p0, v3, v0, p1}, Lcom/facebook/ads/redexgen/X/8A;->A03(Lcom/facebook/ads/redexgen/X/oV;Lcom/facebook/ads/redexgen/X/no;Lcom/facebook/ads/androidx/media3/common/Timeline;)V

    .line 22417
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/8A;->A02:Lcom/facebook/ads/redexgen/X/no;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/8A;->A01:Lcom/facebook/ads/redexgen/X/no;

    sget-object v1, Lcom/facebook/ads/redexgen/X/8A;->A06:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/8A;->A06:[Ljava/lang/String;

    const-string v1, "UxUdIKnoAyUMpq9t4QIr4fpxRPT3"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "6BCX8szW2uTmGViuSf00Yq1AObOIr"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v5, v4}, Lcom/facebook/ads/redexgen/X/CB;->A01(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 22418
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8A;->A02:Lcom/facebook/ads/redexgen/X/no;

    invoke-direct {p0, v3, v0, p1}, Lcom/facebook/ads/redexgen/X/8A;->A03(Lcom/facebook/ads/redexgen/X/oV;Lcom/facebook/ads/redexgen/X/no;Lcom/facebook/ads/androidx/media3/common/Timeline;)V

    .line 22419
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8A;->A00:Lcom/facebook/ads/redexgen/X/no;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8A;->A01:Lcom/facebook/ads/redexgen/X/no;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/CB;->A01(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8A;->A00:Lcom/facebook/ads/redexgen/X/no;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8A;->A02:Lcom/facebook/ads/redexgen/X/no;

    .line 22420
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/CB;->A01(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 22421
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8A;->A00:Lcom/facebook/ads/redexgen/X/no;

    invoke-direct {p0, v3, v0, p1}, Lcom/facebook/ads/redexgen/X/8A;->A03(Lcom/facebook/ads/redexgen/X/oV;Lcom/facebook/ads/redexgen/X/no;Lcom/facebook/ads/androidx/media3/common/Timeline;)V

    .line 22422
    :cond_1
    :goto_0
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/oV;->A07()Lcom/facebook/ads/redexgen/X/oX;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8A;->A04:Lcom/facebook/ads/redexgen/X/oX;

    .line 22423
    return-void

    .line 22424
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8A;->A03:Lcom/facebook/ads/redexgen/X/BP;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BP;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 22425
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8A;->A03:Lcom/facebook/ads/redexgen/X/BP;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/BP;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/no;

    invoke-direct {p0, v3, v0, p1}, Lcom/facebook/ads/redexgen/X/8A;->A03(Lcom/facebook/ads/redexgen/X/oV;Lcom/facebook/ads/redexgen/X/no;Lcom/facebook/ads/androidx/media3/common/Timeline;)V

    .line 22426
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 22427
    .end local v1    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8A;->A03:Lcom/facebook/ads/redexgen/X/BP;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8A;->A00:Lcom/facebook/ads/redexgen/X/no;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/BP;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 22428
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8A;->A00:Lcom/facebook/ads/redexgen/X/no;

    invoke-direct {p0, v3, v0, p1}, Lcom/facebook/ads/redexgen/X/8A;->A03(Lcom/facebook/ads/redexgen/X/oV;Lcom/facebook/ads/redexgen/X/no;Lcom/facebook/ads/androidx/media3/common/Timeline;)V

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/oV;Lcom/facebook/ads/redexgen/X/no;Lcom/facebook/ads/androidx/media3/common/Timeline;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/oV<",
            "Lcom/facebook/ads/redexgen/X/no;",
            "Lcom/facebook/ads/androidx/media3/common/Timeline;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/no;",
            "Lcom/facebook/ads/androidx/media3/common/Timeline;",
            ")V"
        }
    .end annotation

    .line 22429
    .local p1, "mediaPeriodTimelinesBuilder":Lcom/facebook/ads/redexgen/X/oV;, "Lcom/google/common/collect/ImmutableMap$Builder<Lcom/facebook/ads/androidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Lcom/facebook/ads/androidx/media3/common/Timeline;>;"
    if-nez p2, :cond_0

    .line 22430
    return-void

    .line 22431
    :cond_0
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/3C;->A04:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0A(Ljava/lang/Object;)I

    move-result v1

    const/4 v0, -0x1

    if-eq v1, v0, :cond_2

    .line 22432
    invoke-virtual {p1, p2, p3}, Lcom/facebook/ads/redexgen/X/oV;->A05(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/oV;

    .line 22433
    .end local v0
    :cond_1
    :goto_0
    return-void

    .line 22434
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8A;->A04:Lcom/facebook/ads/redexgen/X/oX;

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/oX;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/androidx/media3/common/Timeline;

    .line 22435
    .local v0, "existingTimeline":Lcom/facebook/ads/androidx/media3/common/Timeline;
    if-eqz v0, :cond_1

    .line 22436
    invoke-virtual {p1, p2, v0}, Lcom/facebook/ads/redexgen/X/oV;->A05(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/oV;

    goto :goto_0
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/no;Ljava/lang/Object;ZIII)Z
    .locals 3

    .line 22437
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3C;->A04:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 22438
    return v2

    .line 22439
    :cond_0
    if-eqz p2, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3C;->A00:I

    if-ne v0, p3, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3C;->A01:I

    if-eq v0, p4, :cond_2

    :cond_1
    if-nez p2, :cond_3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/3C;->A00:I

    const/4 v0, -0x1

    if-ne v1, v0, :cond_3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3C;->A02:I

    if-ne v0, p5, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    return v2
.end method


# virtual methods
.method public final A05(Lcom/facebook/ads/redexgen/X/no;)Lcom/facebook/ads/androidx/media3/common/Timeline;
    .locals 1

    .line 22440
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8A;->A04:Lcom/facebook/ads/redexgen/X/oX;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/oX;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/androidx/media3/common/Timeline;

    return-object v0
.end method

.method public final A06()Lcom/facebook/ads/redexgen/X/no;
    .locals 1

    .line 22441
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8A;->A00:Lcom/facebook/ads/redexgen/X/no;

    return-object v0
.end method

.method public final A07(Lcom/facebook/ads/redexgen/X/3b;)V
    .locals 3

    .line 22442
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/8A;->A03:Lcom/facebook/ads/redexgen/X/BP;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8A;->A01:Lcom/facebook/ads/redexgen/X/no;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8A;->A05:Lcom/facebook/ads/redexgen/X/pl;

    .line 22443
    invoke-static {p1, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8A;->A00(Lcom/facebook/ads/redexgen/X/3b;Lcom/facebook/ads/redexgen/X/BP;Lcom/facebook/ads/redexgen/X/no;Lcom/facebook/ads/redexgen/X/pl;)Lcom/facebook/ads/redexgen/X/no;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8A;->A00:Lcom/facebook/ads/redexgen/X/no;

    .line 22444
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/3b;->A7g()Lcom/facebook/ads/androidx/media3/common/Timeline;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/8A;->A02(Lcom/facebook/ads/androidx/media3/common/Timeline;)V

    .line 22445
    return-void
.end method
