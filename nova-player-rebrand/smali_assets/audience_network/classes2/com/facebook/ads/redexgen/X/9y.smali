.class public final Lcom/facebook/ads/redexgen/X/9y;
.super Lcom/facebook/ads/redexgen/X/oQ;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/androidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor$State;
    }
.end annotation


# static fields
.field public static A0C:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:J

.field public A05:Z

.field public A06:Z

.field public A07:[B

.field public A08:[B

.field public final A09:J

.field public final A0A:J

.field public final A0B:S


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 598
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "kTOKNBh1Wp6avXYwKxrfNqHQCe6IowZb"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "fsh7jTNUZTGCSew0VT63IO4tkQUYppyQ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "CGsUWOpaOXfE7pNtsFBesiWCOQ75lYHg"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "3QzqyUj5HYGt0uXrFXWs5fdma44AOfyL"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "C3DxIlHWWAPwLuHgY8W8WEDh6NP"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "cCeo7h1kMT8v6dcJbz1RM5PEEOyjnS1I"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "8Ip3ivaO"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "u5WK46JzMVMnhOVxX0VDjJ353j7WObAc"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/9y;->A0C:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 26734
    const-wide/16 v3, 0x4e20

    const/16 v5, 0x400

    const-wide/32 v1, 0x249f0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/9y;-><init>(JJS)V

    .line 26735
    return-void
.end method

.method public constructor <init>(JJS)V
    .locals 1

    .line 26736
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oQ;-><init>()V

    .line 26737
    cmp-long v0, p3, p1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A07(Z)V

    .line 26738
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/9y;->A09:J

    .line 26739
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/9y;->A0A:J

    .line 26740
    iput-short p5, p0, Lcom/facebook/ads/redexgen/X/9y;->A0B:S

    .line 26741
    sget-object v0, Lcom/facebook/ads/redexgen/X/5C;->A07:[B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9y;->A07:[B

    .line 26742
    sget-object v0, Lcom/facebook/ads/redexgen/X/5C;->A07:[B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9y;->A08:[B

    .line 26743
    return-void

    .line 26744
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A00(J)I
    .locals 4

    .line 26745
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oQ;->A05:Lcom/facebook/ads/redexgen/X/3i;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/3i;->A03:I

    int-to-long v2, v0

    mul-long/2addr v2, p1

    const-wide/32 v0, 0xf4240

    div-long/2addr v2, v0

    long-to-int v0, v2

    return v0
.end method

.method private A01(Ljava/nio/ByteBuffer;)I
    .locals 3

    .line 26746
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    add-int/lit8 v2, v0, -0x2

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-lt v2, v0, :cond_1

    .line 26747
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-short v0, p0, Lcom/facebook/ads/redexgen/X/9y;->A0B:S

    if-le v1, v0, :cond_0

    .line 26748
    iget v1, p0, Lcom/facebook/ads/redexgen/X/9y;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9y;->A00:I

    div-int/2addr v2, v0

    mul-int/2addr v1, v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9y;->A00:I

    add-int/2addr v1, v0

    return v1

    .line 26749
    :cond_0
    add-int/lit8 v2, v2, -0x2

    goto :goto_0

    .line 26750
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method private A02(Ljava/nio/ByteBuffer;)I
    .locals 3

    .line 26751
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 26752
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-short v0, p0, Lcom/facebook/ads/redexgen/X/9y;->A0B:S

    if-le v1, v0, :cond_0

    .line 26753
    iget v1, p0, Lcom/facebook/ads/redexgen/X/9y;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9y;->A00:I

    div-int/2addr v2, v0

    mul-int/2addr v1, v2

    return v1

    .line 26754
    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 26755
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    return v0
.end method

.method private A03(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 26756
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 26757
    .local v0, "length":I
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/oQ;->A00(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 26758
    if-lez v1, :cond_0

    .line 26759
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9y;->A06:Z

    .line 26760
    :cond_0
    return-void
.end method

.method private A04(Ljava/nio/ByteBuffer;)V
    .locals 7

    .line 26761
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    .line 26762
    .local v0, "limit":I
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/9y;->A02(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 26763
    .local v1, "noisePosition":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    sub-int v2, v3, v0

    .line 26764
    .local v2, "maybeSilenceInputSize":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9y;->A07:[B

    array-length v1, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9y;->A01:I

    sub-int/2addr v1, v0

    .line 26765
    .local v3, "maybeSilenceBufferRemaining":I
    const/4 v4, 0x0

    if-ge v3, v6, :cond_0

    if-ge v2, v1, :cond_0

    .line 26766
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/9y;->A07:[B

    iget v3, p0, Lcom/facebook/ads/redexgen/X/9y;->A01:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/9y;->A0C:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/9y;->A0C:[Ljava/lang/String;

    const-string v1, "id1mOky4Zsioh8kkFhZ0Iqg9uH7l7sht"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "uHcgX8Q5LBy4SketH3HUZ8MVXP73GzFI"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-direct {p0, v5, v3}, Lcom/facebook/ads/redexgen/X/9y;->A08([BI)V

    .line 26767
    iput v4, p0, Lcom/facebook/ads/redexgen/X/9y;->A01:I

    .line 26768
    iput v4, p0, Lcom/facebook/ads/redexgen/X/9y;->A03:I

    .line 26769
    .end local v5
    :goto_0
    return-void

    .line 26770
    :cond_0
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 26771
    .local v5, "bytesToWrite":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 26772
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9y;->A07:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9y;->A01:I

    invoke-virtual {p1, v1, v0, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 26773
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9y;->A01:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/9y;->A01:I

    .line 26774
    iget v1, p0, Lcom/facebook/ads/redexgen/X/9y;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9y;->A07:[B

    array-length v0, v0

    if-ne v1, v0, :cond_1

    .line 26775
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9y;->A06:Z

    const/4 v5, 0x2

    if-eqz v0, :cond_2

    .line 26776
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9y;->A07:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9y;->A02:I

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/9y;->A08([BI)V

    .line 26777
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/9y;->A04:J

    iget v1, p0, Lcom/facebook/ads/redexgen/X/9y;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9y;->A02:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9y;->A00:I

    div-int/2addr v1, v0

    int-to-long v0, v1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/9y;->A04:J

    .line 26778
    :goto_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9y;->A07:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9y;->A01:I

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/9y;->A07(Ljava/nio/ByteBuffer;[BI)V

    .line 26779
    iput v4, p0, Lcom/facebook/ads/redexgen/X/9y;->A01:I

    .line 26780
    iput v5, p0, Lcom/facebook/ads/redexgen/X/9y;->A03:I

    .line 26781
    :cond_1
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 26782
    :cond_2
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/9y;->A04:J

    iget v1, p0, Lcom/facebook/ads/redexgen/X/9y;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9y;->A02:I

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9y;->A00:I

    div-int/2addr v1, v0

    int-to-long v0, v1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/9y;->A04:J

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A05(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 26783
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 26784
    .local v0, "limit":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9y;->A07:[B

    array-length v0, v0

    add-int/2addr v1, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 26785
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/9y;->A01(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 26786
    .local v1, "noiseLimit":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 26787
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/9y;->A03:I

    .line 26788
    :goto_0
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 26789
    return-void

    .line 26790
    :cond_0
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 26791
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/9y;->A03(Ljava/nio/ByteBuffer;)V

    goto :goto_0
.end method

.method private A06(Ljava/nio/ByteBuffer;)V
    .locals 6

    .line 26792
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    .line 26793
    .local v0, "limit":I
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/9y;->A02(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 26794
    .local v1, "noisyPosition":I
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 26795
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/9y;->A04:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9y;->A00:I

    div-int/2addr v1, v0

    int-to-long v0, v1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/9y;->A04:J

    .line 26796
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9y;->A08:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9y;->A02:I

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/9y;->A07(Ljava/nio/ByteBuffer;[BI)V

    .line 26797
    if-ge v4, v5, :cond_0

    .line 26798
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9y;->A08:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9y;->A02:I

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/9y;->A08([BI)V

    .line 26799
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/9y;->A03:I

    .line 26800
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 26801
    :cond_0
    return-void
.end method

.method private A07(Ljava/nio/ByteBuffer;[BI)V
    .locals 4

    .line 26802
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9y;->A02:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 26803
    .local v0, "fromInputSize":I
    iget v2, p0, Lcom/facebook/ads/redexgen/X/9y;->A02:I

    sub-int/2addr v2, v3

    .line 26804
    .local v1, "fromBufferSize":I
    sub-int/2addr p3, v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9y;->A08:[B

    const/4 v0, 0x0

    invoke-static {p2, p3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26805
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 26806
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9y;->A08:[B

    invoke-virtual {p1, v0, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 26807
    return-void
.end method

.method private A08([BI)V
    .locals 2

    .line 26808
    invoke-virtual {p0, p2}, Lcom/facebook/ads/redexgen/X/oQ;->A00(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v0, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 26809
    if-lez p2, :cond_0

    .line 26810
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9y;->A06:Z

    .line 26811
    :cond_0
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

    .line 26812
    iget v1, p1, Lcom/facebook/ads/redexgen/X/3i;->A02:I

    const/4 v0, 0x2

    if-ne v1, v0, :cond_1

    .line 26813
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9y;->A05:Z

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    sget-object p1, Lcom/facebook/ads/redexgen/X/3i;->A05:Lcom/facebook/ads/redexgen/X/3i;

    goto :goto_0

    .line 26814
    :cond_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/3j;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/3j;-><init>(Lcom/facebook/ads/redexgen/X/3i;)V

    throw v0
.end method

.method public final A0A()V
    .locals 3

    .line 26815
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9y;->A05:Z

    if-eqz v0, :cond_1

    .line 26816
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oQ;->A05:Lcom/facebook/ads/redexgen/X/3i;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/3i;->A00:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/9y;->A00:I

    .line 26817
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/9y;->A09:J

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/9y;->A00(J)I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9y;->A00:I

    mul-int/2addr v1, v0

    .line 26818
    .local v0, "maybeSilenceBufferSize":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9y;->A07:[B

    array-length v0, v0

    if-eq v0, v1, :cond_0

    .line 26819
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9y;->A07:[B

    .line 26820
    :cond_0
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/9y;->A0A:J

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/9y;->A00(J)I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9y;->A00:I

    mul-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/9y;->A02:I

    .line 26821
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9y;->A08:[B

    array-length v1, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9y;->A02:I

    if-eq v1, v0, :cond_1

    .line 26822
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9y;->A02:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9y;->A08:[B

    .line 26823
    .end local v0    # "maybeSilenceBufferSize":I
    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Lcom/facebook/ads/redexgen/X/9y;->A03:I

    .line 26824
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/9y;->A04:J

    .line 26825
    iput v2, p0, Lcom/facebook/ads/redexgen/X/9y;->A01:I

    .line 26826
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/9y;->A06:Z

    .line 26827
    return-void
.end method

.method public final A0B()V
    .locals 4

    .line 26828
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9y;->A01:I

    if-lez v0, :cond_0

    .line 26829
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9y;->A07:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9y;->A01:I

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/9y;->A08([BI)V

    .line 26830
    :cond_0
    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/9y;->A06:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/9y;->A0C:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6f

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/9y;->A0C:[Ljava/lang/String;

    const-string v1, "3PybTV2kdzhjV0AdFBUr0i874h0Ge15Q"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-nez v3, :cond_1

    .line 26831
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/9y;->A04:J

    iget v1, p0, Lcom/facebook/ads/redexgen/X/9y;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9y;->A00:I

    div-int/2addr v1, v0

    int-to-long v0, v1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/9y;->A04:J

    .line 26832
    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0C()J
    .locals 2

    .line 26833
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/9y;->A04:J

    return-wide v0
.end method

.method public final A0D(Z)V
    .locals 0

    .line 26834
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/9y;->A05:Z

    .line 26835
    return-void
.end method

.method public final AAL()Z
    .locals 1

    .line 26836
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9y;->A05:Z

    return v0
.end method

.method public final AHH(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 26837
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/oQ;->A01()Z

    move-result v0

    if-nez v0, :cond_0

    .line 26838
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9y;->A03:I

    packed-switch v0, :pswitch_data_0

    .line 26839
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 26840
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/9y;->A06(Ljava/nio/ByteBuffer;)V

    .line 26841
    goto :goto_0

    .line 26842
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/9y;->A04(Ljava/nio/ByteBuffer;)V

    .line 26843
    goto :goto_0

    .line 26844
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/9y;->A05(Ljava/nio/ByteBuffer;)V

    .line 26845
    goto :goto_0

    .line 26846
    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
