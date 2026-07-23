.class public abstract Lcom/facebook/ads/redexgen/X/4i;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 345
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "xemy17oJESjX"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "rPO8UlQzVoplqsv241x2vKH9ITvvG5RO"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "lwnNPX4PInl"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "3ZJzEwR8uVRMBQC0tqntIJ86zVyjP6"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "EDwbiEJ5SEYx8yR18WYzWyNJdlpGFaeE"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Kr1YCqNPaz9XeY6"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "vkRdwAWmOCKEbB6zjyqD0a8RWRR8tEwK"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "9fnayNKVpPH2aeCe0iQJlqHqzIFqpYut"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/4i;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/4i;->A01()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/4i;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x70

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 4

    const/16 v0, 0x3a

    new-array v3, v0, [B

    sget-object v1, Lcom/facebook/ads/redexgen/X/4i;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x71

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/4i;->A01:[Ljava/lang/String;

    const-string v1, "2QjkwbE64yFQhHjtiWmGMRmbrZEFKpMO"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "Fg5M50njpCut"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    fill-array-data v3, :array_0

    sput-object v3, Lcom/facebook/ads/redexgen/X/4i;->A00:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x4at
        0x56t
        0x53t
        0x56t
        0x59t
        0x14t
        0x59t
        0x48t
        0x55t
        0x4et
        0x4ct
        0xbt
        0x17t
        0x14t
        0x17t
        0x1at
        -0x2bt
        0x1bt
        0x1ct
        0x9t
        0x16t
        0xct
        0x9t
        0x1at
        0xct
        -0x16t
        -0xat
        -0xdt
        -0xat
        -0x7t
        -0x4ct
        -0x5t
        -0x7t
        -0x18t
        -0xbt
        -0x6t
        -0x13t
        -0x14t
        -0x7t
        -0x1dt
        -0xdt
        -0x1ct
        -0x53t
        0x55t
        0x51t
        0x5ft
        0x1at
        0x60t
        0x61t
        0x4et
        0x61t
        0x56t
        0x50t
        0x1at
        0x56t
        0x5bt
        0x53t
        0x5ct
    .end array-data
.end method

.method public static A02(Landroid/media/MediaFormat;Lcom/facebook/ads/androidx/media3/common/ColorInfo;)V
    .locals 3

    .line 12378
    if-eqz p1, :cond_0

    .line 12379
    const/16 v2, 0x19

    const/16 v1, 0xe

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4i;->A00(III)Ljava/lang/String;

    move-result-object v1

    iget v0, p1, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A03:I

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/4i;->A04(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 12380
    const/16 v2, 0xb

    const/16 v1, 0xe

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4i;->A00(III)Ljava/lang/String;

    move-result-object v1

    iget v0, p1, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A02:I

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/4i;->A04(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 12381
    const/4 v2, 0x0

    const/16 v1, 0xb

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4i;->A00(III)Ljava/lang/String;

    move-result-object v1

    iget v0, p1, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A01:I

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/4i;->A04(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 12382
    const/16 v2, 0x2b

    const/16 v1, 0xf

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4i;->A00(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p1, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A04:[B

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/4i;->A05(Landroid/media/MediaFormat;Ljava/lang/String;[B)V

    .line 12383
    :cond_0
    return-void
.end method

.method public static A03(Landroid/media/MediaFormat;Ljava/lang/String;F)V
    .locals 1

    .line 12384
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_0

    .line 12385
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 12386
    :cond_0
    return-void
.end method

.method public static A04(Landroid/media/MediaFormat;Ljava/lang/String;I)V
    .locals 1

    .line 12387
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 12388
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 12389
    :cond_0
    return-void
.end method

.method public static A05(Landroid/media/MediaFormat;Ljava/lang/String;[B)V
    .locals 1

    .line 12390
    if-eqz p2, :cond_0

    .line 12391
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 12392
    :cond_0
    return-void
.end method

.method public static A06(Landroid/media/MediaFormat;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaFormat;",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 12393
    .local v4, "csdBuffers":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v4, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_0

    .line 12394
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x27

    const/4 v1, 0x4

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4i;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 12395
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 12396
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
