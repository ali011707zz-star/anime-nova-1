.class public abstract Lcom/facebook/ads/redexgen/X/3C;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:J

.field public final A04:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/3C;)V
    .locals 2

    .line 10168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10169
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/3C;->A04:Ljava/lang/Object;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3C;->A04:Ljava/lang/Object;

    .line 10170
    iget v0, p1, Lcom/facebook/ads/redexgen/X/3C;->A00:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3C;->A00:I

    .line 10171
    iget v0, p1, Lcom/facebook/ads/redexgen/X/3C;->A01:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3C;->A01:I

    .line 10172
    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/3C;->A03:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/3C;->A03:J

    .line 10173
    iget v0, p1, Lcom/facebook/ads/redexgen/X/3C;->A02:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3C;->A02:I

    .line 10174
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    .line 10175
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/3C;-><init>(Ljava/lang/Object;J)V

    .line 10176
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;IIJ)V
    .locals 7

    .line 10177
    const/4 v6, -0x1

    move-object v0, p0

    move-wide v4, p4

    move v3, p3

    move v2, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/3C;-><init>(Ljava/lang/Object;IIJI)V

    .line 10178
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;IIJI)V
    .locals 0

    .line 10179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10180
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3C;->A04:Ljava/lang/Object;

    .line 10181
    iput p2, p0, Lcom/facebook/ads/redexgen/X/3C;->A00:I

    .line 10182
    iput p3, p0, Lcom/facebook/ads/redexgen/X/3C;->A01:I

    .line 10183
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/3C;->A03:J

    .line 10184
    iput p6, p0, Lcom/facebook/ads/redexgen/X/3C;->A02:I

    .line 10185
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;J)V
    .locals 7

    .line 10186
    const/4 v3, -0x1

    const/4 v6, -0x1

    const/4 v2, -0x1

    move-object v0, p0

    move-wide v4, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/3C;-><init>(Ljava/lang/Object;IIJI)V

    .line 10187
    return-void
.end method


# virtual methods
.method public final A00()Z
    .locals 2

    .line 10188
    iget v1, p0, Lcom/facebook/ads/redexgen/X/3C;->A00:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 10189
    const/4 v5, 0x1

    if-ne p0, p1, :cond_0

    .line 10190
    return v5

    .line 10191
    :cond_0
    instance-of v1, p1, Lcom/facebook/ads/redexgen/X/3C;

    const/4 v0, 0x0

    if-nez v1, :cond_1

    .line 10192
    return v0

    .line 10193
    :cond_1
    check-cast p1, Lcom/facebook/ads/redexgen/X/3C;

    .line 10194
    .local v1, "periodId":Lcom/facebook/ads/redexgen/X/3C;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3C;->A04:Ljava/lang/Object;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/3C;->A04:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/3C;->A00:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/3C;->A00:I

    if-ne v1, v0, :cond_2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/3C;->A01:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/3C;->A01:I

    if-ne v1, v0, :cond_2

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/3C;->A03:J

    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/3C;->A03:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/3C;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/3C;->A02:I

    if-ne v1, v0, :cond_2

    :goto_0
    return v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .line 10195
    const/16 v0, 0x11

    .line 10196
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3C;->A04:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 10197
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3C;->A00:I

    add-int/2addr v1, v0

    .line 10198
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3C;->A01:I

    add-int/2addr v1, v0

    .line 10199
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v3, v1, 0x1f

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/3C;->A03:J

    long-to-int v0, v1

    add-int/2addr v3, v0

    .line 10200
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v3, 0x1f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3C;->A02:I

    add-int/2addr v1, v0

    .line 10201
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method
