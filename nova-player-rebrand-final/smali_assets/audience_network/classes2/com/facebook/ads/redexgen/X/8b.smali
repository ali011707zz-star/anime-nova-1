.class public final Lcom/facebook/ads/redexgen/X/8b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/mF;


# instance fields
.field public A00:J

.field public final A01:J

.field public final A02:Lcom/facebook/ads/redexgen/X/4h;

.field public final A03:Lcom/facebook/ads/redexgen/X/4h;


# direct methods
.method public constructor <init>(JJJ)V
    .locals 3

    .line 23176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23177
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/8b;->A00:J

    .line 23178
    iput-wide p5, p0, Lcom/facebook/ads/redexgen/X/8b;->A01:J

    .line 23179
    new-instance v0, Lcom/facebook/ads/redexgen/X/4h;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4h;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8b;->A03:Lcom/facebook/ads/redexgen/X/4h;

    .line 23180
    new-instance v0, Lcom/facebook/ads/redexgen/X/4h;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4h;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8b;->A02:Lcom/facebook/ads/redexgen/X/4h;

    .line 23181
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/8b;->A03:Lcom/facebook/ads/redexgen/X/4h;

    const-wide/16 v0, 0x0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/4h;->A04(J)V

    .line 23182
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8b;->A02:Lcom/facebook/ads/redexgen/X/4h;

    invoke-virtual {v0, p3, p4}, Lcom/facebook/ads/redexgen/X/4h;->A04(J)V

    .line 23183
    return-void
.end method


# virtual methods
.method public final A00(J)V
    .locals 0

    .line 23184
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/8b;->A00:J

    .line 23185
    return-void
.end method

.method public final A01(JJ)V
    .locals 1

    .line 23186
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/8b;->A02(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23187
    return-void

    .line 23188
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8b;->A03:Lcom/facebook/ads/redexgen/X/4h;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/4h;->A04(J)V

    .line 23189
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8b;->A02:Lcom/facebook/ads/redexgen/X/4h;

    invoke-virtual {v0, p3, p4}, Lcom/facebook/ads/redexgen/X/4h;->A04(J)V

    .line 23190
    return-void
.end method

.method public final A02(J)Z
    .locals 4

    .line 23191
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8b;->A03:Lcom/facebook/ads/redexgen/X/4h;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8b;->A03:Lcom/facebook/ads/redexgen/X/4h;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4h;->A02()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4h;->A03(I)J

    move-result-wide v0

    .line 23192
    .local v0, "lastIndexedTimeUs":J
    sub-long/2addr p1, v0

    const-wide/32 v1, 0x186a0

    cmp-long v0, p1, v1

    if-gez v0, :cond_0

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final A7j()J
    .locals 2

    .line 23193
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/8b;->A01:J

    return-wide v0
.end method

.method public final A7t()J
    .locals 2

    .line 23194
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/8b;->A00:J

    return-wide v0
.end method

.method public final A91(J)Lcom/facebook/ads/redexgen/X/HX;
    .locals 8

    .line 23195
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8b;->A03:Lcom/facebook/ads/redexgen/X/4h;

    .line 23196
    const/4 v4, 0x1

    invoke-static {v0, p1, p2, v4, v4}, Lcom/facebook/ads/redexgen/X/5C;->A0C(Lcom/facebook/ads/redexgen/X/4h;JZZ)I

    move-result v7

    .line 23197
    .local v0, "targetIndex":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8b;->A03:Lcom/facebook/ads/redexgen/X/4h;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/4h;->A03(I)J

    move-result-wide v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8b;->A02:Lcom/facebook/ads/redexgen/X/4h;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/4h;->A03(I)J

    move-result-wide v0

    new-instance v6, Lcom/facebook/ads/redexgen/X/HZ;

    invoke-direct {v6, v2, v3, v0, v1}, Lcom/facebook/ads/redexgen/X/HZ;-><init>(JJ)V

    .line 23198
    .local v2, "seekPoint":Lcom/facebook/ads/redexgen/X/HZ;
    iget-wide v1, v6, Lcom/facebook/ads/redexgen/X/HZ;->A01:J

    cmp-long v0, v1, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8b;->A03:Lcom/facebook/ads/redexgen/X/4h;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4h;->A02()I

    move-result v0

    sub-int/2addr v0, v4

    if-ne v7, v0, :cond_1

    .line 23199
    .end local v1
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/HX;

    invoke-direct {v0, v6}, Lcom/facebook/ads/redexgen/X/HX;-><init>(Lcom/facebook/ads/redexgen/X/HZ;)V

    return-object v0

    .line 23200
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8b;->A03:Lcom/facebook/ads/redexgen/X/4h;

    add-int/lit8 v0, v7, 0x1

    .line 23201
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4h;->A03(I)J

    move-result-wide v4

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8b;->A02:Lcom/facebook/ads/redexgen/X/4h;

    add-int/lit8 v0, v7, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4h;->A03(I)J

    move-result-wide v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/HZ;

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/facebook/ads/redexgen/X/HZ;-><init>(JJ)V

    .line 23202
    .local v1, "nextSeekPoint":Lcom/facebook/ads/redexgen/X/HZ;
    new-instance v0, Lcom/facebook/ads/redexgen/X/HX;

    invoke-direct {v0, v6, v1}, Lcom/facebook/ads/redexgen/X/HX;-><init>(Lcom/facebook/ads/redexgen/X/HZ;Lcom/facebook/ads/redexgen/X/HZ;)V

    return-object v0
.end method

.method public final A9H(J)J
    .locals 2

    .line 23203
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8b;->A02:Lcom/facebook/ads/redexgen/X/4h;

    .line 23204
    const/4 v0, 0x1

    invoke-static {v1, p1, p2, v0, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0C(Lcom/facebook/ads/redexgen/X/4h;JZZ)I

    move-result v1

    .line 23205
    .local v0, "targetIndex":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8b;->A03:Lcom/facebook/ads/redexgen/X/4h;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4h;->A03(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final AAj()Z
    .locals 1

    .line 23206
    const/4 v0, 0x1

    return v0
.end method
