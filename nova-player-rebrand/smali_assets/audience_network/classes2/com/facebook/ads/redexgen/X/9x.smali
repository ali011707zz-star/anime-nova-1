.class public final Lcom/facebook/ads/redexgen/X/9x;
.super Lcom/facebook/ads/redexgen/X/oQ;
.source ""


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:J

.field public A05:Z

.field public A06:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26677
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oQ;-><init>()V

    .line 26678
    sget-object v0, Lcom/facebook/ads/redexgen/X/5C;->A07:[B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9x;->A06:[B

    .line 26679
    return-void
.end method


# virtual methods
.method public final A09(Lcom/facebook/ads/redexgen/X/3i;)Lcom/facebook/ads/redexgen/X/3i;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/3j;
        }
    .end annotation

    .line 26680
    iget v1, p1, Lcom/facebook/ads/redexgen/X/3i;->A02:I

    const/4 v0, 0x2

    if-ne v1, v0, :cond_2

    .line 26681
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9x;->A05:Z

    .line 26682
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9x;->A03:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9x;->A02:I

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    sget-object p1, Lcom/facebook/ads/redexgen/X/3i;->A05:Lcom/facebook/ads/redexgen/X/3i;

    goto :goto_0

    .line 26683
    :cond_2
    new-instance v0, Lcom/facebook/ads/redexgen/X/3j;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/3j;-><init>(Lcom/facebook/ads/redexgen/X/3i;)V

    throw v0
.end method

.method public final A0A()V
    .locals 3

    .line 26684
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9x;->A05:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 26685
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/9x;->A05:Z

    .line 26686
    iget v1, p0, Lcom/facebook/ads/redexgen/X/9x;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oQ;->A05:Lcom/facebook/ads/redexgen/X/3i;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/3i;->A00:I

    mul-int/2addr v1, v0

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9x;->A06:[B

    .line 26687
    iget v1, p0, Lcom/facebook/ads/redexgen/X/9x;->A03:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oQ;->A05:Lcom/facebook/ads/redexgen/X/3i;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/3i;->A00:I

    mul-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/9x;->A01:I

    .line 26688
    :cond_0
    iput v2, p0, Lcom/facebook/ads/redexgen/X/9x;->A00:I

    .line 26689
    return-void
.end method

.method public final A0B()V
    .locals 4

    .line 26690
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9x;->A05:Z

    if-eqz v0, :cond_1

    .line 26691
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9x;->A00:I

    if-lez v0, :cond_0

    .line 26692
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/9x;->A04:J

    iget v1, p0, Lcom/facebook/ads/redexgen/X/9x;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oQ;->A05:Lcom/facebook/ads/redexgen/X/3i;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/3i;->A00:I

    div-int/2addr v1, v0

    int-to-long v0, v1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/9x;->A04:J

    .line 26693
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/9x;->A00:I

    .line 26694
    :cond_1
    return-void
.end method

.method public final A0C()J
    .locals 2

    .line 26695
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/9x;->A04:J

    return-wide v0
.end method

.method public final A0D()V
    .locals 2

    .line 26696
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/9x;->A04:J

    .line 26697
    return-void
.end method

.method public final A0E(II)V
    .locals 0

    .line 26698
    iput p1, p0, Lcom/facebook/ads/redexgen/X/9x;->A03:I

    .line 26699
    iput p2, p0, Lcom/facebook/ads/redexgen/X/9x;->A02:I

    .line 26700
    return-void
.end method

.method public final A8d()Ljava/nio/ByteBuffer;
    .locals 4

    .line 26701
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/oQ;->AAP()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9x;->A00:I

    if-lez v0, :cond_0

    .line 26702
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9x;->A00:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/oQ;->A00(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9x;->A06:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9x;->A00:I

    const/4 v1, 0x0

    invoke-virtual {v3, v2, v1, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 26703
    iput v1, p0, Lcom/facebook/ads/redexgen/X/9x;->A00:I

    .line 26704
    :cond_0
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/oQ;->A8d()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final AAP()Z
    .locals 1

    .line 26705
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/oQ;->AAP()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9x;->A00:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final AHH(Ljava/nio/ByteBuffer;)V
    .locals 8

    .line 26706
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    .line 26707
    .local v0, "position":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 26708
    .local v1, "limit":I
    sub-int v6, v2, v7

    .line 26709
    .local v2, "remaining":I
    if-nez v6, :cond_0

    .line 26710
    return-void

    .line 26711
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9x;->A01:I

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 26712
    .local v3, "trimBytes":I
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/9x;->A04:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oQ;->A05:Lcom/facebook/ads/redexgen/X/3i;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/3i;->A00:I

    div-int v0, v5, v0

    int-to-long v0, v0

    add-long/2addr v3, v0

    iput-wide v3, p0, Lcom/facebook/ads/redexgen/X/9x;->A04:J

    .line 26713
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9x;->A01:I

    sub-int/2addr v0, v5

    iput v0, p0, Lcom/facebook/ads/redexgen/X/9x;->A01:I

    .line 26714
    add-int/2addr v7, v5

    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 26715
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9x;->A01:I

    if-lez v0, :cond_1

    .line 26716
    return-void

    .line 26717
    :cond_1
    sub-int/2addr v6, v5

    .line 26718
    iget v1, p0, Lcom/facebook/ads/redexgen/X/9x;->A00:I

    add-int/2addr v1, v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9x;->A06:[B

    array-length v0, v0

    sub-int/2addr v1, v0

    .line 26719
    .local v4, "remainingBytesToOutput":I
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/oQ;->A00(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 26720
    .local v5, "buffer":Ljava/nio/ByteBuffer;
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9x;->A00:I

    const/4 v4, 0x0

    invoke-static {v1, v4, v0}, Lcom/facebook/ads/redexgen/X/5C;->A07(III)I

    move-result v3

    .line 26721
    .local v6, "endBufferBytesToOutput":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9x;->A06:[B

    invoke-virtual {v5, v0, v4, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 26722
    sub-int/2addr v1, v3

    .line 26723
    invoke-static {v1, v4, v6}, Lcom/facebook/ads/redexgen/X/5C;->A07(III)I

    move-result v1

    .line 26724
    .local p0, "inputBufferBytesToOutput":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 26725
    invoke-virtual {v5, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 26726
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 26727
    sub-int/2addr v6, v1

    .line 26728
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9x;->A00:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/9x;->A00:I

    .line 26729
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9x;->A06:[B

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9x;->A06:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9x;->A00:I

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26730
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9x;->A06:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9x;->A00:I

    invoke-virtual {p1, v1, v0, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 26731
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9x;->A00:I

    add-int/2addr v0, v6

    iput v0, p0, Lcom/facebook/ads/redexgen/X/9x;->A00:I

    .line 26732
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 26733
    return-void
.end method
