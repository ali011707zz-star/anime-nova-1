.class public final Lcom/facebook/ads/redexgen/X/9z;
.super Lcom/facebook/ads/redexgen/X/oQ;
.source ""


# static fields
.field public static A00:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 599
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "xDq4aPrtB4VOa6dWWLPhCvkNe2Vl9lis"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "EsfqB3zUW"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "UtEiT2kwdPvCqjHQhdRb9TlQndFxkub5"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Wgbe7hD6UIy"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "xb"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "RmqoPGkQn7vPyUpVU7ZkSehlX2jVBNRl"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "20c7QZBscERNsZTH"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "LeRFFk0E0DkpEnw35dU8lGRVd8w5nI17"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/9z;->A00:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26847
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oQ;-><init>()V

    return-void
.end method


# virtual methods
.method public final A09(Lcom/facebook/ads/redexgen/X/3i;)Lcom/facebook/ads/redexgen/X/3i;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/3j;
        }
    .end annotation

    .line 26848
    iget v5, p1, Lcom/facebook/ads/redexgen/X/3i;->A02:I

    .line 26849
    .local v0, "encoding":I
    const/4 v0, 0x3

    const/4 v3, 0x2

    if-eq v5, v0, :cond_1

    if-eq v5, v3, :cond_1

    const/high16 v4, 0x10000000

    sget-object v1, Lcom/facebook/ads/redexgen/X/9z;->A00:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x62

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/9z;->A00:[Ljava/lang/String;

    const-string v1, "ty1ASCrQyl5"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eq v5, v4, :cond_1

    const/high16 v0, 0x20000000

    if-eq v5, v0, :cond_1

    const/high16 v0, 0x30000000

    if-eq v5, v0, :cond_1

    const/4 v0, 0x4

    if-ne v5, v0, :cond_3

    .line 26850
    :cond_1
    if-eq v5, v3, :cond_2

    .line 26851
    iget v2, p1, Lcom/facebook/ads/redexgen/X/3i;->A03:I

    iget v1, p1, Lcom/facebook/ads/redexgen/X/3i;->A01:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/3i;

    invoke-direct {v0, v2, v1, v3}, Lcom/facebook/ads/redexgen/X/3i;-><init>(III)V

    .line 26852
    :goto_0
    return-object v0

    .line 26853
    :cond_2
    sget-object v0, Lcom/facebook/ads/redexgen/X/3i;->A05:Lcom/facebook/ads/redexgen/X/3i;

    goto :goto_0

    .line 26854
    :cond_3
    new-instance v0, Lcom/facebook/ads/redexgen/X/3j;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/3j;-><init>(Lcom/facebook/ads/redexgen/X/3i;)V

    throw v0
.end method

.method public final AHH(Ljava/nio/ByteBuffer;)V
    .locals 6

    .line 26855
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 26856
    .local v0, "position":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 26857
    .local v1, "limit":I
    sub-int v1, v2, v3

    .line 26858
    .local v2, "size":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oQ;->A05:Lcom/facebook/ads/redexgen/X/3i;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/3i;->A02:I

    sparse-switch v0, :sswitch_data_0

    .line 26859
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 26860
    :sswitch_0
    div-int/lit8 v0, v1, 0x3

    mul-int/lit8 v1, v0, 0x2

    .line 26861
    .local v3, "resampledSize":I
    goto :goto_0

    .line 26862
    .end local v3    # "resampledSize":I
    :sswitch_1
    div-int/lit8 v1, v1, 0x2

    .line 26863
    .restart local v3    # "resampledSize":I
    goto :goto_0

    .line 26864
    .end local v3    # "resampledSize":I
    :sswitch_2
    mul-int/lit8 v1, v1, 0x2

    .line 26865
    .restart local v3    # "resampledSize":I
    :goto_0
    :sswitch_3
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/oQ;->A00(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 26866
    .local v4, "buffer":Ljava/nio/ByteBuffer;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oQ;->A05:Lcom/facebook/ads/redexgen/X/3i;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/3i;->A02:I

    sparse-switch v0, :sswitch_data_1

    .line 26867
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 26868
    .local v5, "i":I
    :goto_1
    :sswitch_4
    if-ge v3, v2, :cond_0

    .line 26869
    add-int/lit8 v0, v3, 0x2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 26870
    add-int/lit8 v0, v3, 0x3

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 26871
    add-int/lit8 v3, v3, 0x4

    goto :goto_1

    .line 26872
    .restart local v5    # "i":I
    :goto_2
    :sswitch_5
    if-ge v3, v2, :cond_0

    .line 26873
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 26874
    add-int/lit8 v0, v3, 0x2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 26875
    add-int/lit8 v3, v3, 0x3

    goto :goto_2

    .line 26876
    .restart local v5    # "i":I
    :goto_3
    :sswitch_6
    if-ge v3, v2, :cond_0

    .line 26877
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 26878
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 26879
    add-int/lit8 v3, v3, 0x2

    goto :goto_3

    .line 26880
    .restart local v5    # "i":I
    :goto_4
    :sswitch_7
    if-ge v3, v2, :cond_0

    .line 26881
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v5

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A00(FFF)F

    move-result v1

    .line 26882
    .local p0, "floatValue":F
    const v0, 0x46fffe00    # 32767.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-short v1, v0

    .line 26883
    .local p1, "shortValue":S
    and-int/lit16 v0, v1, 0xff

    int-to-byte v0, v0

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 26884
    shr-int/lit8 v0, v1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 26885
    .end local p0    # "floatValue":F
    .end local p1    # "shortValue":S
    add-int/lit8 v3, v3, 0x4

    goto :goto_4

    .line 26886
    .restart local v5    # "i":I
    :goto_5
    :sswitch_8
    if-ge v3, v2, :cond_0

    .line 26887
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 26888
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v0, v0, -0x80

    int-to-byte v0, v0

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 26889
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 26890
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/9z;->A00:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x35

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/9z;->A00:[Ljava/lang/String;

    const-string v1, "iqTXYqAhTQO7Wpg5y1SXfPoSIsa3UBxa"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 26891
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 26892
    return-void

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x4 -> :sswitch_1
        0x10000000 -> :sswitch_3
        0x20000000 -> :sswitch_0
        0x30000000 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x3 -> :sswitch_8
        0x4 -> :sswitch_7
        0x10000000 -> :sswitch_6
        0x20000000 -> :sswitch_5
        0x30000000 -> :sswitch_4
    .end sparse-switch
.end method
