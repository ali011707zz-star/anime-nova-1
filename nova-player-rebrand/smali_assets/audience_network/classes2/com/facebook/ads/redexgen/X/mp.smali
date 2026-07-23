.class public final Lcom/facebook/ads/redexgen/X/mp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/HY;


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public final A00:J

.field public final A01:Lcom/facebook/ads/redexgen/X/HJ;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3268
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "1Tt6ltc55g"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ops4n6D0RsDIbcNK2iFIW7Ay7S5Nano"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "QFUbJLsUaFmSVLdjzr36RpAXorrqi07i"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "7FxugF0ZmqBQk4dAnarwpNTfiaTe1g6g"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "N3T7HRrxqFzk5rl0dpC6S3h47ocLp3rK"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Rq3uRmlvLOcLbWX3oXceNMTvaDTByq6j"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "8TmLuftHICqYkzwVWbIwZIwFPzZSJxQj"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "4hmJxBFNQAJLWam3xj85pvhcrB85xjeQ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/mp;->A02:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/HJ;J)V
    .locals 0

    .line 99557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99558
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/mp;->A01:Lcom/facebook/ads/redexgen/X/HJ;

    .line 99559
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/mp;->A00:J

    .line 99560
    return-void
.end method

.method private A00(JJ)Lcom/facebook/ads/redexgen/X/HZ;
    .locals 5

    .line 99561
    const-wide/32 v1, 0xf4240

    mul-long/2addr v1, p1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mp;->A01:Lcom/facebook/ads/redexgen/X/HJ;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/HJ;->A07:I

    int-to-long v3, v0

    div-long/2addr v1, v3

    .line 99562
    .local v0, "seekTimeUs":J
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/mp;->A00:J

    add-long/2addr v3, p3

    .line 99563
    .local v2, "seekPosition":J
    new-instance v0, Lcom/facebook/ads/redexgen/X/HZ;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/ads/redexgen/X/HZ;-><init>(JJ)V

    return-object v0
.end method


# virtual methods
.method public final A7t()J
    .locals 2

    .line 99564
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mp;->A01:Lcom/facebook/ads/redexgen/X/HJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/HJ;->A06()J

    move-result-wide v0

    return-wide v0
.end method

.method public final A91(J)Lcom/facebook/ads/redexgen/X/HX;
    .locals 10

    .line 99565
    move-object v7, p0

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/mp;->A01:Lcom/facebook/ads/redexgen/X/HJ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/HJ;->A0A:Lcom/facebook/ads/redexgen/X/HI;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A02(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99566
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/mp;->A01:Lcom/facebook/ads/redexgen/X/HJ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/HJ;->A0A:Lcom/facebook/ads/redexgen/X/HI;

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/HI;->A01:[J

    .line 99567
    .local v3, "pointSampleNumbers":[J
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/mp;->A01:Lcom/facebook/ads/redexgen/X/HJ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/HJ;->A0A:Lcom/facebook/ads/redexgen/X/HI;

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/HI;->A00:[J

    .line 99568
    .local v4, "pointOffsets":[J
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/mp;->A01:Lcom/facebook/ads/redexgen/X/HJ;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/HJ;->A07(J)J

    move-result-wide v0

    .line 99569
    .local v5, "targetSampleNumber":J
    const/4 v8, 0x1

    const/4 v2, 0x0

    invoke-static {v6, v0, v1, v8, v2}, Lcom/facebook/ads/redexgen/X/5C;->A0L([JJZZ)I

    move-result v4

    .line 99570
    .local v8, "index":I
    const-wide/16 v2, 0x0

    const/4 v9, -0x1

    if-ne v4, v9, :cond_1

    move-wide v0, v2

    .line 99571
    .local p2, "seekPointSampleNumber":J
    :goto_0
    if-ne v4, v9, :cond_0

    .line 99572
    .local v9, "seekPointOffsetFromFirstFrame":J
    :goto_1
    invoke-direct {v7, v0, v1, v2, v3}, Lcom/facebook/ads/redexgen/X/mp;->A00(JJ)Lcom/facebook/ads/redexgen/X/HZ;

    move-result-object v3

    .line 99573
    .local p1, "seekPoint":Lcom/facebook/ads/redexgen/X/HZ;
    iget-wide v0, v3, Lcom/facebook/ads/redexgen/X/HZ;->A01:J

    cmp-long v2, v0, p1

    if-eqz v2, :cond_3

    array-length v9, v6

    sub-int/2addr v9, v8

    sget-object v2, Lcom/facebook/ads/redexgen/X/mp;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 99574
    :cond_0
    aget-wide v2, v5, v4

    goto :goto_1

    .line 99575
    :cond_1
    aget-wide v0, v6, v4

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/mp;->A02:[Ljava/lang/String;

    const-string v1, "o5tsTNyqew751hc5myqwVOdw8F1gICkG"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "VidtQTuToVY7NImzxnJwSrK8bx75lEQY"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-ne v4, v9, :cond_4

    .line 99576
    .end local v1
    :cond_3
    new-instance v0, Lcom/facebook/ads/redexgen/X/HX;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/HX;-><init>(Lcom/facebook/ads/redexgen/X/HZ;)V

    return-object v0

    .line 99577
    :cond_4
    add-int/lit8 v0, v4, 0x1

    aget-wide v0, v6, v0

    add-int/lit8 v2, v4, 0x1

    aget-wide v4, v5, v2

    .line 99578
    invoke-direct {v7, v0, v1, v4, v5}, Lcom/facebook/ads/redexgen/X/mp;->A00(JJ)Lcom/facebook/ads/redexgen/X/HZ;

    move-result-object v1

    .line 99579
    .local v1, "secondSeekPoint":Lcom/facebook/ads/redexgen/X/HZ;
    new-instance v0, Lcom/facebook/ads/redexgen/X/HX;

    invoke-direct {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/HX;-><init>(Lcom/facebook/ads/redexgen/X/HZ;Lcom/facebook/ads/redexgen/X/HZ;)V

    return-object v0
.end method

.method public final AAj()Z
    .locals 1

    .line 99580
    const/4 v0, 0x1

    return v0
.end method
