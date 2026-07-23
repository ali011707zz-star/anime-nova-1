.class public abstract Lcom/facebook/ads/redexgen/X/B1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/B3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Api29"
.end annotation


# static fields
.field public static A00:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 646
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "XFGs1lyyeZSUQVmeVGOQgjZdx0Lg5SQ7"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "gIr6pD0DRCuLw9pu"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "xFdIOEguE42sAuXi"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "sWe2SXgfKDUPeP6q9qV3qPenQfS3yrFL"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "xArwsOhMvePeNXFYJk80LlCaAczGuKur"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "d6DKz523SxuOwdk6"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "C714aw4WOKSmleIF7c9CmjeVatfjbSsR"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "QY3y3Mpjcqc9dDZ4GPBIzJJwsqI"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/B1;->A00:[Ljava/lang/String;

    return-void
.end method

.method public static A00(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)I
    .locals 3

    .line 29541
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedPerformancePoints()Ljava/util/List;

    move-result-object p0

    .line 29542
    .local v0, "performancePointList":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;>;"
    if-eqz p0, :cond_0

    .line 29543
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 29544
    invoke-static {}, Lcom/facebook/ads/redexgen/X/B3;->A08()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29545
    .end local v1
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 29546
    :cond_1
    double-to-int v0, p3

    new-instance v2, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v2, p1, p2, v0}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    .line 29547
    .local v1, "targetPerformancePoint":Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;
    const/4 v1, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 29548
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-virtual {v0, v2}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->covers(Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 29549
    const/4 v0, 0x2

    return v0

    .line 29550
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 29551
    .end local v2    # "i":I
    :cond_3
    const/4 p0, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/B1;->A00:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x44

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/B1;->A00:[Ljava/lang/String;

    const-string v1, "YcALvT0VMkVLsK9p"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "SPZaEiX7Pp9WtVjf"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return p0
.end method
