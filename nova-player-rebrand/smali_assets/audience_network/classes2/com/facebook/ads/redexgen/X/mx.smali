.class public Lcom/facebook/ads/redexgen/X/mx;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/HY;


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:J

.field public final A03:J

.field public final A04:J

.field public final A05:J

.field public final A06:Z


# direct methods
.method public constructor <init>(JJIIZ)V
    .locals 3

    .line 99698
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99699
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/mx;->A05:J

    .line 99700
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/mx;->A04:J

    .line 99701
    const/4 v0, -0x1

    if-ne p6, v0, :cond_0

    const/4 p6, 0x1

    :cond_0
    iput p6, p0, Lcom/facebook/ads/redexgen/X/mx;->A01:I

    .line 99702
    iput p5, p0, Lcom/facebook/ads/redexgen/X/mx;->A00:I

    .line 99703
    iput-boolean p7, p0, Lcom/facebook/ads/redexgen/X/mx;->A06:Z

    .line 99704
    const-wide/16 v1, -0x1

    cmp-long v0, p1, v1

    if-nez v0, :cond_1

    .line 99705
    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/mx;->A02:J

    .line 99706
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/mx;->A03:J

    .line 99707
    :goto_0
    return-void

    .line 99708
    :cond_1
    sub-long v0, p1, p3

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/mx;->A02:J

    .line 99709
    invoke-static {p1, p2, p3, p4, p5}, Lcom/facebook/ads/redexgen/X/mx;->A01(JJI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/mx;->A03:J

    goto :goto_0
.end method

.method private A00(J)J
    .locals 8

    .line 99710
    iget v0, p0, Lcom/facebook/ads/redexgen/X/mx;->A00:I

    int-to-long v2, v0

    mul-long/2addr v2, p1

    const-wide/32 v0, 0x7a1200

    div-long/2addr v2, v0

    .line 99711
    .local v0, "positionOffset":J
    iget v0, p0, Lcom/facebook/ads/redexgen/X/mx;->A01:I

    int-to-long v0, v0

    div-long/2addr v2, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/mx;->A01:I

    int-to-long v0, v0

    mul-long/2addr v2, v0

    .line 99712
    .end local v0    # "positionOffset":J
    .local v2, "positionOffset":J
    iget-wide v6, p0, Lcom/facebook/ads/redexgen/X/mx;->A02:J

    const-wide/16 v4, -0x1

    cmp-long v0, v6, v4

    if-eqz v0, :cond_0

    .line 99713
    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/mx;->A02:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/mx;->A01:I

    int-to-long v0, v0

    sub-long/2addr v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 99714
    :cond_0
    const-wide/16 v0, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 99715
    .end local v2    # "positionOffset":J
    .restart local v0    # "positionOffset":J
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/mx;->A04:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static A01(JJI)J
    .locals 2

    .line 99716
    const-wide/16 v0, 0x0

    sub-long/2addr p0, p2

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    const-wide/16 v0, 0x8

    mul-long/2addr p0, v0

    const-wide/32 v0, 0xf4240

    mul-long/2addr p0, v0

    int-to-long v0, p4

    div-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public final A02(J)J
    .locals 3

    .line 99717
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/mx;->A04:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/mx;->A00:I

    invoke-static {p1, p2, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/mx;->A01(JJI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final A7t()J
    .locals 2

    .line 99718
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/mx;->A03:J

    return-wide v0
.end method

.method public final A91(J)Lcom/facebook/ads/redexgen/X/HX;
    .locals 11

    .line 99719
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/mx;->A02:J

    const-wide/16 v9, -0x1

    cmp-long v0, v1, v9

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/mx;->A06:Z

    if-nez v0, :cond_0

    .line 99720
    const-wide/16 v4, 0x0

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/mx;->A04:J

    new-instance v1, Lcom/facebook/ads/redexgen/X/HZ;

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/facebook/ads/redexgen/X/HZ;-><init>(JJ)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/HX;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/HX;-><init>(Lcom/facebook/ads/redexgen/X/HZ;)V

    return-object v0

    .line 99721
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/mx;->A00(J)J

    move-result-wide v1

    .line 99722
    .local v0, "seekFramePosition":J
    invoke-virtual {p0, v1, v2}, Lcom/facebook/ads/redexgen/X/mx;->A02(J)J

    move-result-wide v3

    .line 99723
    .local v4, "seekTimeUs":J
    new-instance v6, Lcom/facebook/ads/redexgen/X/HZ;

    invoke-direct {v6, v3, v4, v1, v2}, Lcom/facebook/ads/redexgen/X/HZ;-><init>(JJ)V

    .line 99724
    .local v6, "seekPoint":Lcom/facebook/ads/redexgen/X/HZ;
    iget-wide v7, p0, Lcom/facebook/ads/redexgen/X/mx;->A02:J

    cmp-long v0, v7, v9

    if-eqz v0, :cond_1

    cmp-long v0, v3, p1

    if-gez v0, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/mx;->A01:I

    int-to-long v7, v0

    add-long/2addr v7, v1

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/mx;->A05:J

    cmp-long v0, v7, v3

    if-ltz v0, :cond_2

    .line 99725
    .end local v2
    .end local v7
    .end local v9
    :cond_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/HX;

    invoke-direct {v0, v6}, Lcom/facebook/ads/redexgen/X/HX;-><init>(Lcom/facebook/ads/redexgen/X/HZ;)V

    return-object v0

    .line 99726
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/mx;->A01:I

    int-to-long v4, v0

    add-long/2addr v4, v1

    .line 99727
    .local v2, "secondSeekPosition":J
    invoke-virtual {p0, v4, v5}, Lcom/facebook/ads/redexgen/X/mx;->A02(J)J

    move-result-wide v2

    .line 99728
    .local v7, "secondSeekTimeUs":J
    new-instance v1, Lcom/facebook/ads/redexgen/X/HZ;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/facebook/ads/redexgen/X/HZ;-><init>(JJ)V

    .line 99729
    .local v9, "secondSeekPoint":Lcom/facebook/ads/redexgen/X/HZ;
    new-instance v0, Lcom/facebook/ads/redexgen/X/HX;

    invoke-direct {v0, v6, v1}, Lcom/facebook/ads/redexgen/X/HX;-><init>(Lcom/facebook/ads/redexgen/X/HZ;Lcom/facebook/ads/redexgen/X/HZ;)V

    return-object v0
.end method

.method public final AAj()Z
    .locals 5

    .line 99730
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/mx;->A02:J

    const-wide/16 v1, -0x1

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/mx;->A06:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
