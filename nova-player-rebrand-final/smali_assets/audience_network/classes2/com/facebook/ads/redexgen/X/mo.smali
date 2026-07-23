.class public final Lcom/facebook/ads/redexgen/X/mo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/HY;


# instance fields
.field public final A00:J

.field public final A01:Z

.field public final A02:[J

.field public final A03:[J


# direct methods
.method public constructor <init>([J[JJ)V
    .locals 8

    .line 99531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99532
    array-length v1, p1

    array-length v0, p2

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-ne v1, v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A07(Z)V

    .line 99533
    array-length v1, p2

    .line 99534
    .local v0, "length":I
    if-lez v1, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/mo;->A01:Z

    .line 99535
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/mo;->A01:Z

    if-eqz v0, :cond_0

    aget-wide v6, p2, v3

    const-wide/16 v4, 0x0

    cmp-long v0, v6, v4

    if-lez v0, :cond_0

    .line 99536
    add-int/lit8 v0, v1, 0x1

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mo;->A02:[J

    .line 99537
    add-int/lit8 v0, v1, 0x1

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mo;->A03:[J

    .line 99538
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mo;->A02:[J

    invoke-static {p1, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99539
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mo;->A03:[J

    invoke-static {p2, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99540
    :goto_2
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/mo;->A00:J

    .line 99541
    return-void

    .line 99542
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/mo;->A02:[J

    .line 99543
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/mo;->A03:[J

    goto :goto_2

    .line 99544
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 99545
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A7t()J
    .locals 2

    .line 99546
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/mo;->A00:J

    return-wide v0
.end method

.method public final A91(J)Lcom/facebook/ads/redexgen/X/HX;
    .locals 8

    .line 99547
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/mo;->A01:Z

    if-nez v0, :cond_0

    .line 99548
    sget-object v1, Lcom/facebook/ads/redexgen/X/HZ;->A04:Lcom/facebook/ads/redexgen/X/HZ;

    new-instance v0, Lcom/facebook/ads/redexgen/X/HX;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/HX;-><init>(Lcom/facebook/ads/redexgen/X/HZ;)V

    return-object v0

    .line 99549
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mo;->A03:[J

    .line 99550
    const/4 v4, 0x1

    invoke-static {v0, p1, p2, v4, v4}, Lcom/facebook/ads/redexgen/X/5C;->A0L([JJZZ)I

    move-result v7

    .line 99551
    .local v0, "targetIndex":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mo;->A03:[J

    aget-wide v2, v0, v7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mo;->A02:[J

    aget-wide v0, v0, v7

    new-instance v6, Lcom/facebook/ads/redexgen/X/HZ;

    invoke-direct {v6, v2, v3, v0, v1}, Lcom/facebook/ads/redexgen/X/HZ;-><init>(JJ)V

    .line 99552
    .local v2, "leftSeekPoint":Lcom/facebook/ads/redexgen/X/HZ;
    iget-wide v1, v6, Lcom/facebook/ads/redexgen/X/HZ;->A01:J

    cmp-long v0, v1, p1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mo;->A03:[J

    array-length v0, v0

    sub-int/2addr v0, v4

    if-ne v7, v0, :cond_2

    .line 99553
    .end local v1
    :cond_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/HX;

    invoke-direct {v0, v6}, Lcom/facebook/ads/redexgen/X/HX;-><init>(Lcom/facebook/ads/redexgen/X/HZ;)V

    return-object v0

    .line 99554
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/mo;->A03:[J

    add-int/lit8 v0, v7, 0x1

    aget-wide v4, v1, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/mo;->A02:[J

    add-int/lit8 v0, v7, 0x1

    aget-wide v2, v1, v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/HZ;

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/facebook/ads/redexgen/X/HZ;-><init>(JJ)V

    .line 99555
    .local v1, "rightSeekPoint":Lcom/facebook/ads/redexgen/X/HZ;
    new-instance v0, Lcom/facebook/ads/redexgen/X/HX;

    invoke-direct {v0, v6, v1}, Lcom/facebook/ads/redexgen/X/HX;-><init>(Lcom/facebook/ads/redexgen/X/HZ;Lcom/facebook/ads/redexgen/X/HZ;)V

    return-object v0
.end method

.method public final AAj()Z
    .locals 1

    .line 99556
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/mo;->A01:Z

    return v0
.end method
