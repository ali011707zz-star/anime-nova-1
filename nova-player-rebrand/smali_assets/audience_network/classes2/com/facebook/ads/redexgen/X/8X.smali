.class public final Lcom/facebook/ads/redexgen/X/8X;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/mF;


# instance fields
.field public final A00:J

.field public final A01:[J

.field public final A02:[J


# direct methods
.method public constructor <init>([J[JJ)V
    .locals 3

    .line 23126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23127
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/8X;->A01:[J

    .line 23128
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/8X;->A02:[J

    .line 23129
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p3, v1

    if-eqz v0, :cond_0

    .line 23130
    :goto_0
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/8X;->A00:J

    .line 23131
    return-void

    .line 23132
    :cond_0
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    aget-wide v0, p2, v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/5C;->A0O(J)J

    move-result-wide p3

    goto :goto_0
.end method

.method public static A00(J[J[J)Landroid/util/Pair;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[J[J)",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 23133
    const/4 v0, 0x1

    invoke-static {p2, p0, p1, v0, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0L([JJZZ)I

    move-result v0

    .line 23134
    .local v3, "previousReferenceIndex":I
    aget-wide v6, p2, v0

    .line 23135
    .local v4, "xPreviousReference":J
    aget-wide v10, p3, v0

    .line 23136
    .local v6, "yPreviousReference":J
    add-int/lit8 v1, v0, 0x1

    .line 23137
    .local v8, "nextReferenceIndex":I
    array-length v0, p2

    if-ne v1, v0, :cond_0

    .line 23138
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 23139
    :cond_0
    aget-wide v4, p2, v1

    .line 23140
    .local v9, "xNextReference":J
    aget-wide v8, p3, v1

    .line 23141
    .local v11, "yNextReference":J
    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    .line 23142
    const-wide/16 v2, 0x0

    .line 23143
    .local v0, "proportion":D
    :goto_0
    sub-long/2addr v8, v10

    long-to-double v0, v8

    mul-double/2addr v0, v2

    double-to-long v2, v0

    add-long/2addr v2, v10

    .line 23144
    .local p1, "y":J
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .end local v0    # "proportion":D
    .local p4, "proportion":D
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 23145
    :cond_1
    long-to-double v2, p0

    long-to-double v0, v6

    sub-double/2addr v2, v0

    sub-long/2addr v4, v6

    long-to-double v0, v4

    div-double/2addr v2, v0

    goto :goto_0
.end method

.method public static A01(JLcom/facebook/ads/androidx/media3/extractor/metadata/id3/MlltFrame;J)Lcom/facebook/ads/redexgen/X/8X;
    .locals 9

    .line 23146
    iget-object v0, p2, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/MlltFrame;->A03:[I

    array-length v5, v0

    .line 23147
    .local v0, "referenceCount":I
    add-int/lit8 v0, v5, 0x1

    new-array v4, v0, [J

    .line 23148
    .local v1, "referencePositions":[J
    add-int/lit8 v0, v5, 0x1

    new-array v3, v0, [J

    .line 23149
    .local v2, "referenceTimesMs":[J
    const/4 v2, 0x0

    aput-wide p0, v4, v2

    .line 23150
    const-wide/16 v0, 0x0

    aput-wide v0, v3, v2

    .line 23151
    .local v3, "position":J
    const-wide/16 v7, 0x0

    .line 23152
    .local v5, "timeMs":J
    const/4 v2, 0x1

    .local v7, "i":I
    :goto_0
    if-gt v2, v5, :cond_0

    .line 23153
    iget v6, p2, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/MlltFrame;->A00:I

    iget-object v1, p2, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/MlltFrame;->A03:[I

    add-int/lit8 v0, v2, -0x1

    aget v0, v1, v0

    add-int/2addr v6, v0

    int-to-long v0, v6

    add-long/2addr p0, v0

    .line 23154
    iget v6, p2, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/MlltFrame;->A01:I

    iget-object v1, p2, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/MlltFrame;->A04:[I

    add-int/lit8 v0, v2, -0x1

    aget v0, v1, v0

    add-int/2addr v6, v0

    int-to-long v0, v6

    add-long/2addr v7, v0

    .line 23155
    aput-wide p0, v4, v2

    .line 23156
    aput-wide v7, v3, v2

    .line 23157
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 23158
    .end local v7    # "i":I
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/8X;

    invoke-direct {v0, v4, v3, p3, p4}, Lcom/facebook/ads/redexgen/X/8X;-><init>([J[JJ)V

    return-object v0
.end method


# virtual methods
.method public final A7j()J
    .locals 2

    .line 23159
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final A7t()J
    .locals 2

    .line 23160
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/8X;->A00:J

    return-wide v0
.end method

.method public final A91(J)Lcom/facebook/ads/redexgen/X/HX;
    .locals 6

    .line 23161
    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/8X;->A00:J

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/5C;->A0T(JJJ)J

    move-result-wide v0

    .line 23162
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/5C;->A0P(J)J

    move-result-wide v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8X;->A02:[J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8X;->A01:[J

    invoke-static {v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/8X;->A00(J[J[J)Landroid/util/Pair;

    move-result-object v2

    .line 23163
    .local v0, "timeMsAndPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/5C;->A0O(J)J

    move-result-wide v4

    .line 23164
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 23165
    .local v1, "position":J
    new-instance v1, Lcom/facebook/ads/redexgen/X/HZ;

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/facebook/ads/redexgen/X/HZ;-><init>(JJ)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/HX;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/HX;-><init>(Lcom/facebook/ads/redexgen/X/HZ;)V

    return-object v0
.end method

.method public final A9H(J)J
    .locals 2

    .line 23166
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8X;->A01:[J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8X;->A02:[J

    .line 23167
    invoke-static {p1, p2, v1, v0}, Lcom/facebook/ads/redexgen/X/8X;->A00(J[J[J)Landroid/util/Pair;

    move-result-object v0

    .line 23168
    .local v0, "positionAndTimeMs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/5C;->A0O(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final AAj()Z
    .locals 1

    .line 23169
    const/4 v0, 0x1

    return v0
.end method
