.class public final Lcom/facebook/ads/redexgen/X/B3;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/B1;,
        Lcom/facebook/ads/androidx/media3/exoplayer/mediacodec/MediaCodecInfo$PerformancePointCoverageResult;
    }
.end annotation


# static fields
.field public static A0B:[B

.field public static A0C:[Ljava/lang/String;


# instance fields
.field public final A00:Landroid/media/MediaCodecInfo$CodecCapabilities;

.field public final A01:Ljava/lang/String;

.field public final A02:Ljava/lang/String;

.field public final A03:Ljava/lang/String;

.field public final A04:Z

.field public final A05:Z

.field public final A06:Z

.field public final A07:Z

.field public final A08:Z

.field public final A09:Z

.field public final A0A:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 648
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "I9JaO4heFf5nDgSUvVeAxAeOAdbY1nhs"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "PVSEhsxK0zpzpXeziFZITHKDYbLYMlXw"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "qlK6yxEC"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "9zKWhcki2UyQZLYGzaAyWcMw08QqvpbN"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "JlMwKIWIzkUyHhMRK"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "e8OveLjqyhc2hkEtyY01o7K"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "DY1oAH7PrQgT6IVPSHYZAZf9F8l8uJ13"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "bCAM9BCoFLqZyqtmC8leb"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/B3;->A0C:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/B3;->A04()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZZ)V
    .locals 1

    .line 29565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29566
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/B3;->A03:Ljava/lang/String;

    .line 29567
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/B3;->A02:Ljava/lang/String;

    .line 29568
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/B3;->A01:Ljava/lang/String;

    .line 29569
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/B3;->A00:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 29570
    iput-boolean p5, p0, Lcom/facebook/ads/redexgen/X/B3;->A05:Z

    .line 29571
    iput-boolean p6, p0, Lcom/facebook/ads/redexgen/X/B3;->A07:Z

    .line 29572
    iput-boolean p7, p0, Lcom/facebook/ads/redexgen/X/B3;->A09:Z

    .line 29573
    iput-boolean p8, p0, Lcom/facebook/ads/redexgen/X/B3;->A04:Z

    .line 29574
    iput-boolean p9, p0, Lcom/facebook/ads/redexgen/X/B3;->A08:Z

    .line 29575
    iput-boolean p10, p0, Lcom/facebook/ads/redexgen/X/B3;->A06:Z

    .line 29576
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/3J;->A0F(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/B3;->A0A:Z

    .line 29577
    return-void
.end method

.method public static A00(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5

    .line 29578
    const/4 v0, 0x1

    if-gt p2, v0, :cond_0

    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x1a

    if-lt v1, v0, :cond_1

    if-lez p2, :cond_1

    .line 29579
    :cond_0
    return p2

    .line 29580
    :cond_1
    const/16 v2, 0x182

    const/16 v1, 0xa

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 29581
    const/16 v2, 0x119

    const/16 v1, 0xa

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 29582
    const/16 v2, 0x12c

    const/16 v1, 0xc

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 29583
    const/16 v2, 0x173

    const/16 v1, 0xf

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 29584
    const/16 v2, 0x19f

    const/16 v1, 0xc

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 29585
    const/16 v2, 0x18c

    const/16 v1, 0xa

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 29586
    const/16 v2, 0x196

    const/16 v1, 0x9

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/B3;->A0C:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/B3;->A0C:[Ljava/lang/String;

    const-string v1, "P3L7eJR7rcEs8Hcud8b0q"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "gztvffw6orscNCYhET6gtHo"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 29587
    const/16 v2, 0x142

    const/16 v1, 0xa

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 29588
    const/16 v3, 0x14c

    sget-object v1, Lcom/facebook/ads/redexgen/X/B3;->A0C:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x41

    if-eq v1, v0, :cond_4

    const/16 v1, 0xf

    const/4 v0, 0x4

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 29589
    :goto_0
    const/16 v2, 0x15b

    const/16 v1, 0xf

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 29590
    const/16 v2, 0x16a

    const/16 v1, 0x9

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 29591
    .end local v0
    :cond_3
    return p2

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/B3;->A0C:[Ljava/lang/String;

    const-string v1, "8EyIo3AmLznCqcE1QD1Y0pSK088XgXR2"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "dhhtuZGj1yFwqgsK2BE3ZfBkQ801LDWI"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const/16 v1, 0xf

    const/4 v0, 0x4

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 29592
    :cond_5
    const/16 v2, 0x123

    const/16 v1, 0x9

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 29593
    const/4 v4, 0x6

    .line 29594
    .local v0, "assumedMaxChannelCount":I
    .restart local v0    # "assumedMaxChannelCount":I
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xa

    const/16 v1, 0x1d

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x6

    const/4 v1, 0x3

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x104

    const/4 v1, 0x1

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x61

    const/16 v1, 0xe

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 29595
    return v4

    .line 29596
    .end local v0    # "assumedMaxChannelCount":I
    :cond_6
    const/16 v2, 0x138

    const/16 v1, 0xa

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 29597
    const/16 v4, 0x10

    .restart local v0    # "assumedMaxChannelCount":I
    goto :goto_1

    .line 29598
    .end local v0    # "assumedMaxChannelCount":I
    :cond_7
    const/16 v4, 0x1e

    goto :goto_1
.end method

.method public static A01(Landroid/media/MediaCodecInfo$VideoCapabilities;II)Landroid/graphics/Point;
    .locals 2

    .line 29599
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getWidthAlignment()I

    move-result v1

    .line 29600
    .local v0, "widthAlignment":I
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getHeightAlignment()I

    move-result v0

    .line 29601
    .local v1, "heightAlignment":I
    invoke-static {p1, v1}, Lcom/facebook/ads/redexgen/X/5C;->A05(II)I

    move-result p0

    mul-int/2addr p0, v1

    .line 29602
    invoke-static {p2, v0}, Lcom/facebook/ads/redexgen/X/5C;->A05(II)I

    move-result v1

    mul-int/2addr v1, v0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 29603
    return-object v0
.end method

.method public static A02(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Lcom/facebook/ads/redexgen/X/B3;
    .locals 14

    .line 29604
    new-instance v4, Lcom/facebook/ads/redexgen/X/B3;

    move-object/from16 v8, p3

    move-object v5, p0

    if-nez p7, :cond_0

    if-eqz v8, :cond_0

    .line 29605
    invoke-static {v8}, Lcom/facebook/ads/redexgen/X/B3;->A09(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/B3;->A0C:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 29606
    :cond_0
    const/4 v12, 0x0

    goto :goto_0

    .line 29607
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/B3;->A0C:[Ljava/lang/String;

    const-string v1, "xqlBNWNY"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    .line 29608
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/B3;->A0J(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v12, 0x1

    :goto_0
    if-eqz v8, :cond_4

    .line 29609
    invoke-static {v8}, Lcom/facebook/ads/redexgen/X/B3;->A0D(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v13, 0x1

    :goto_1
    if-nez p8, :cond_2

    if-eqz v8, :cond_3

    .line 29610
    invoke-static {v8}, Lcom/facebook/ads/redexgen/X/B3;->A0B(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 p0, 0x1

    :goto_2
    move/from16 v11, p6

    move/from16 v10, p5

    move/from16 v9, p4

    move-object/from16 v7, p2

    move-object v6, p1

    invoke-direct/range {v4 .. v14}, Lcom/facebook/ads/redexgen/X/B3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZZ)V

    .line 29611
    return-object v4

    .line 29612
    :cond_3
    const/4 p0, 0x0

    goto :goto_2

    .line 29613
    :cond_4
    const/4 v13, 0x0

    goto :goto_1
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/B3;->A0B:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x1a

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0x30d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/B3;->A0B:[B

    return-void

    :array_0
    .array-data 1
        0x49t
        0x1dt
        0x6t
        0x49t
        0x1dt
        0x11t
        0x41t
        0x4dt
        0x36t
        0x2et
        0x30t
        0x2t
        0x2t
        0x4t
        0x1ct
        0x14t
        0x15t
        0x3ct
        0x10t
        0x9t
        0x32t
        0x19t
        0x10t
        0x1ft
        0x1ft
        0x14t
        0x1dt
        0x30t
        0x15t
        0x1bt
        0x4t
        0x2t
        0x5t
        0x1ct
        0x14t
        0x1ft
        0x5t
        0x4bt
        0x51t
        0xet
        0x3ct
        0x3ct
        0x3at
        0x22t
        0x2at
        0x2bt
        0x1ct
        0x3at
        0x3ft
        0x3ft
        0x20t
        0x3dt
        0x3bt
        0x6ft
        0x14t
        0x13t
        0x3at
        0x31t
        0x30t
        0x29t
        0x30t
        0x7ft
        0xbt
        0x1dt
        0x72t
        0x7t
        0x69t
        0x6ft
        0x6at
        0x62t
        0x4bt
        0x40t
        0x41t
        0x58t
        0x41t
        0xet
        0x7at
        0x6ct
        0x3t
        0x76t
        0x18t
        0x1et
        0x18t
        0x56t
        0x7ft
        0x74t
        0x75t
        0x6ct
        0x75t
        0x3at
        0x4et
        0x58t
        0x37t
        0x42t
        0x2ct
        0x2bt
        0x2ct
        0x34t
        0x1ct
        0x1dt
        0x10t
        0x18t
        0x3at
        0x16t
        0x1dt
        0x1ct
        0x1at
        0x30t
        0x17t
        0x1ft
        0x16t
        0x1ct
        0x37t
        0x2at
        0x27t
        0x21t
        0x72t
        0x63t
        0x62t
        0x7et
        0x5ft
        0x63t
        0x45t
        0x40t
        0x40t
        0x5ft
        0x42t
        0x44t
        0x10t
        0x6bt
        0xbt
        0x0t
        0x16t
        0xbt
        0xdt
        0x0t
        0x69t
        0x1ct
        0x11t
        0x77t
        0x20t
        0x22t
        0x37t
        0x41t
        0x2at
        0x17t
        0x16t
        0x1t
        0x0t
        0x1ct
        0x41t
        0x2et
        0x39t
        0x2ct
        0x41t
        0x2bt
        0xat
        0xct
        0x0t
        0xbt
        0xat
        0x1dt
        0x1ft
        0x1dt
        0x8t
        0x7et
        0x15t
        0x28t
        0x29t
        0x3et
        0x3ft
        0x23t
        0x7et
        0x11t
        0x6t
        0x13t
        0x7et
        0x14t
        0x35t
        0x33t
        0x3ft
        0x34t
        0x35t
        0x22t
        0x7et
        0x23t
        0x35t
        0x33t
        0x25t
        0x22t
        0x35t
        0x54t
        0x56t
        0x43t
        0x35t
        0x56t
        0x5at
        0x49t
        0x4dt
        0x5et
        0x57t
        0x57t
        0x35t
        0x4dt
        0x52t
        0x5ft
        0x5et
        0x54t
        0x35t
        0x53t
        0x4ct
        0x35t
        0x58t
        0x54t
        0x5ft
        0x5at
        0x2ct
        0x2et
        0x2ft
        0x29t
        0x5ft
        0x5et
        0x58t
        0x54t
        0x5ft
        0x5et
        0x49t
        0xbt
        0x9t
        0x1ct
        0x6at
        0x9t
        0x10t
        0xft
        0x6at
        0x12t
        0xdt
        0x0t
        0x1t
        0xbt
        0x6at
        0x0t
        0x1t
        0x7t
        0xbt
        0x0t
        0x1t
        0x16t
        0x6at
        0xct
        0x1t
        0x12t
        0x7t
        0x10t
        0xet
        0x6et
        0x17t
        0x71t
        0x70t
        0x73t
        0xft
        0x66t
        0x1bt
        0x60t
        0x5at
        0x5ft
        0x5at
        0x4bt
        0x4ft
        0x52t
        0x4dt
        0x5et
        0x16t
        0x4bt
        0x57t
        0x5at
        0x42t
        0x59t
        0x5at
        0x58t
        0x50t
        0x1dt
        0x9t
        0x18t
        0x15t
        0x13t
        0x53t
        0x4ft
        0x1bt
        0xct
        0xct
        0x4at
        0x5et
        0x4ft
        0x42t
        0x44t
        0x4t
        0x4at
        0x48t
        0x18t
        0x6et
        0x7at
        0x6bt
        0x66t
        0x60t
        0x20t
        0x6et
        0x62t
        0x7dt
        0x22t
        0x78t
        0x6dt
        0x2ct
        0x38t
        0x29t
        0x24t
        0x22t
        0x62t
        0x28t
        0x2ct
        0x2et
        0x7et
        0x7t
        0x13t
        0x2t
        0xft
        0x9t
        0x49t
        0x0t
        0xat
        0x7t
        0x5t
        0x7ft
        0x6bt
        0x7at
        0x77t
        0x71t
        0x31t
        0x79t
        0x29t
        0x2ft
        0x2ft
        0x33t
        0x7ft
        0x72t
        0x7ft
        0x69t
        0x2at
        0x3et
        0x2ft
        0x22t
        0x24t
        0x64t
        0x2ct
        0x7ct
        0x7at
        0x7at
        0x66t
        0x26t
        0x27t
        0x2at
        0x3ct
        0x18t
        0xct
        0x1dt
        0x10t
        0x16t
        0x56t
        0x1et
        0xat
        0x14t
        0x4et
        0x5at
        0x4bt
        0x46t
        0x40t
        0x0t
        0x42t
        0x5ft
        0x1bt
        0x4et
        0x2t
        0x43t
        0x4et
        0x5bt
        0x42t
        0x55t
        0x41t
        0x50t
        0x5dt
        0x5bt
        0x1bt
        0x59t
        0x44t
        0x51t
        0x53t
        0x4ft
        0x5bt
        0x4at
        0x47t
        0x41t
        0x1t
        0x41t
        0x5et
        0x5bt
        0x5dt
        0x54t
        0x40t
        0x51t
        0x5ct
        0x5at
        0x1at
        0x47t
        0x54t
        0x42t
        0x6ft
        0x7bt
        0x6at
        0x67t
        0x61t
        0x21t
        0x78t
        0x61t
        0x7ct
        0x6ct
        0x67t
        0x7dt
        0x7et
        0x73t
        0x6et
        0x79t
        0x7dt
        0x70t
        0x5t
        0xet
        0x7t
        0x8t
        0x8t
        0x3t
        0xat
        0x25t
        0x9t
        0x13t
        0x8t
        0x12t
        0x48t
        0x7t
        0x25t
        0x7t
        0x16t
        0x15t
        0x42t
        0x49t
        0x40t
        0x4ft
        0x4ft
        0x44t
        0x4dt
        0x62t
        0x4et
        0x54t
        0x4ft
        0x55t
        0xft
        0x42t
        0x40t
        0x51t
        0x52t
        0x37t
        0x3ct
        0x35t
        0x3at
        0x3at
        0x31t
        0x38t
        0x17t
        0x3bt
        0x21t
        0x3at
        0x20t
        0x7at
        0x27t
        0x21t
        0x24t
        0x24t
        0x3bt
        0x26t
        0x20t
        0x78t
        0x74t
        0x35t
        0x39t
        0x32t
        0x33t
        0x35t
        0x78t
        0x3bt
        0x3ft
        0x3bt
        0x33t
        0x76t
        0x6bt
        0x67t
        0x6ct
        0x6dt
        0x6bt
        0x26t
        0x78t
        0x7at
        0x67t
        0x6et
        0x61t
        0x64t
        0x6dt
        0x44t
        0x6dt
        0x7et
        0x6dt
        0x64t
        0x24t
        0x28t
        0x7et
        0x72t
        0x61t
        0x7ft
        0x7at
        0x7dt
        0x24t
        0x2at
        0x3ft
        0x7ct
        0x28t
        0x57t
        0x45t
        0x46t
        0x56t
        0x4dt
        0x4at
        0x45t
        0x4dt
        0x5ft
        0x57t
        0x52t
        0x58t
        0x57t
        0x4dt
        0x56t
        0x31t
        0x23t
        0x2ft
        0x32t
        0x2et
        0x27t
        0x10t
        0x23t
        0x36t
        0x27t
        0x6ct
        0x23t
        0x1t
        0x23t
        0x32t
        0x31t
        0x6dt
        0x7ft
        0x73t
        0x6et
        0x72t
        0x7bt
        0x4ct
        0x7ft
        0x6at
        0x7bt
        0x30t
        0x7dt
        0x7ft
        0x6et
        0x6dt
        0x2t
        0x10t
        0x1ct
        0x1t
        0x1dt
        0x14t
        0x23t
        0x10t
        0x5t
        0x14t
        0x5ft
        0x2t
        0x4t
        0x1t
        0x1t
        0x1et
        0x3t
        0x5t
        0x5dt
        0x51t
        0x1t
        0x17t
        0x11t
        0x7t
        0x0t
        0x17t
        0x5ft
        0x2t
        0x1et
        0x13t
        0xbt
        0x10t
        0x13t
        0x11t
        0x19t
        0x66t
        0x7ct
        0x6ft
        0x70t
        0x54t
        0x7bt
        0x71t
        0x47t
        0x74t
        0x61t
        0x70t
        0x3bt
        0x76t
        0x74t
        0x65t
        0x66t
        0x40t
        0x5at
        0x49t
        0x56t
        0x72t
        0x5dt
        0x57t
        0x61t
        0x52t
        0x47t
        0x56t
        0x1dt
        0x50t
        0x5ct
        0x45t
        0x56t
        0x41t
        0x1ft
        0x13t
        0x6ct
        0x76t
        0x65t
        0x7at
        0x5et
        0x71t
        0x7bt
        0x4dt
        0x7et
        0x6bt
        0x7at
        0x31t
        0x6dt
        0x70t
        0x6bt
        0x7et
        0x6bt
        0x7at
        0x7bt
        0x33t
        0x3ft
        0x18t
        0x2t
        0x11t
        0xet
        0x2at
        0x5t
        0xft
        0x39t
        0xat
        0x1ft
        0xet
        0x45t
        0x18t
        0x1et
        0x1bt
        0x1bt
        0x4t
        0x19t
        0x1ft
        0x47t
        0x4bt
        0x64t
        0x7et
        0x6dt
        0x72t
        0x56t
        0x79t
        0x73t
        0x45t
        0x76t
        0x63t
        0x72t
        0x39t
        0x61t
        0x54t
        0x76t
        0x67t
        0x64t
        0x4t
        0x5t
        0x1et
        0x1et
        0x15t
        0x1ct
        0x15t
        0x14t
        0x5dt
        0x0t
        0x1ct
        0x11t
        0x9t
        0x12t
        0x11t
        0x13t
        0x1bt
        0x30t
        0x2ft
        0x22t
        0x23t
        0x29t
        0x69t
        0x27t
        0x30t
        0x25t
        0x72t
        0x6dt
        0x60t
        0x61t
        0x6bt
        0x2bt
        0x60t
        0x6bt
        0x68t
        0x66t
        0x7dt
        0x29t
        0x72t
        0x6dt
        0x77t
        0x6dt
        0x6bt
        0x6at
        0x15t
        0xat
        0x7t
        0x6t
        0xct
        0x4ct
        0xbt
        0x6t
        0x15t
        0x0t
        0x52t
        0x4dt
        0x40t
        0x41t
        0x4bt
        0xbt
        0x5ct
        0x9t
        0x52t
        0x4at
        0x40t
        0xat
        0x4bt
        0x4at
        0x16t
        0xat
        0x52t
        0x54t
        0x1dt
        0x5ct
    .end array-data
.end method

.method private A05(Ljava/lang/String;)V
    .locals 5

    .line 29614
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x27

    const/16 v1, 0x10

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x105

    const/4 v1, 0x3

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B3;->A03:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x4

    const/4 v1, 0x2

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B3;->A02:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/5C;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x104

    const/4 v1, 0x1

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x61

    const/16 v1, 0xe

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/4g;->A04(Ljava/lang/String;Ljava/lang/String;)V

    .line 29615
    return-void
.end method

.method private A06(Ljava/lang/String;)V
    .locals 5

    .line 29616
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x77

    const/16 v1, 0xb

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x105

    const/4 v1, 0x3

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B3;->A03:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x4

    const/4 v1, 0x2

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B3;->A02:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/5C;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x104

    const/4 v1, 0x1

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x61

    const/16 v1, 0xe

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/4g;->A04(Ljava/lang/String;Ljava/lang/String;)V

    .line 29617
    return-void
.end method

.method public static A07()Z
    .locals 4

    .line 29618
    sget-object v3, Lcom/facebook/ads/redexgen/X/5C;->A03:Ljava/lang/String;

    const/16 v2, 0x214

    const/4 v1, 0x7

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v3, Lcom/facebook/ads/redexgen/X/5C;->A03:Ljava/lang/String;

    .line 29619
    const/16 v2, 0x1ab

    const/4 v1, 0x6

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v3, Lcom/facebook/ads/redexgen/X/5C;->A06:Ljava/lang/String;

    .line 29620
    const/16 v2, 0x37

    const/16 v1, 0xe

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v3, Lcom/facebook/ads/redexgen/X/5C;->A06:Ljava/lang/String;

    .line 29621
    const/16 v2, 0x45

    const/16 v1, 0xe

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v3, Lcom/facebook/ads/redexgen/X/5C;->A06:Ljava/lang/String;

    .line 29622
    const/16 v2, 0x53

    const/16 v1, 0xe

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 29623
    :goto_0
    return v0

    .line 29624
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic A08()Z
    .locals 1

    .line 29625
    invoke-static {}, Lcom/facebook/ads/redexgen/X/B3;->A07()Z

    move-result v0

    return v0
.end method

.method public static A09(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 2

    .line 29626
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x13

    if-lt v1, v0, :cond_0

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/B3;->A0A(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0A(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 3

    .line 29627
    const/16 v2, 0x108

    const/16 v1, 0x11

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static A0B(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 2

    .line 29628
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_0

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/B3;->A0C(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0C(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 3

    .line 29629
    const/16 v2, 0x256

    const/16 v1, 0xf

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static A0D(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 2

    .line 29630
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_0

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/B3;->A0E(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0E(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 3

    .line 29631
    const/16 v2, 0x2c3

    const/16 v1, 0x11

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static A0F(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z
    .locals 5

    .line 29632
    invoke-static {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/B3;->A01(Landroid/media/MediaCodecInfo$VideoCapabilities;II)Landroid/graphics/Point;

    move-result-object v0

    .line 29633
    .local v0, "alignedSize":Landroid/graphics/Point;
    iget v4, v0, Landroid/graphics/Point;->x:I

    .line 29634
    iget v3, v0, Landroid/graphics/Point;->y:I

    .line 29635
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    cmpl-double v0, p3, v1

    if-eqz v0, :cond_0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p3, v1

    if-gez v0, :cond_1

    .line 29636
    .end local v1
    :cond_0
    invoke-virtual {p0, v4, v3}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result v0

    return v0

    .line 29637
    :cond_1
    invoke-static {p3, p4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    .line 29638
    .local v1, "floorFrameRate":D
    invoke-virtual {p0, v4, v3, v0, v1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->areSizeAndRateSupported(IID)Z

    move-result v0

    return v0
.end method

.method private A0G(Lcom/facebook/ads/redexgen/X/qI;Z)Z
    .locals 11
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "FEATURE_LOGIC"
        }
        value = "D46258033: [FBLite][Video] Solve tasks T154141530 T154151746 gating the call for SDK >=21"
    .end annotation

    .line 29639
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Ba;->A0B(Lcom/facebook/ads/redexgen/X/qI;)Landroid/util/Pair;

    move-result-object v3

    .line 29640
    .local v0, "codecProfileAndLevel":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v10, 0x1

    if-nez v3, :cond_0

    .line 29641
    return v10

    .line 29642
    :cond_0
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    sget-object v2, Lcom/facebook/ads/redexgen/X/B3;->A0C:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/B3;->A0C:[Ljava/lang/String;

    const-string v1, "XFIr8RM8"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 29643
    .local v2, "profile":I
    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 29644
    .local v3, "level":I
    const/16 v2, 0x2dd

    const/16 v1, 0x12

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0W:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 29645
    const/16 v2, 0x2d4

    const/16 v1, 0x9

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B3;->A02:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 29646
    const/16 v4, 0x8

    .line 29647
    const/4 v3, 0x0

    .line 29648
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/B3;->A0A:Z

    if-nez v0, :cond_5

    const/16 v5, 0x2a

    sget-object v1, Lcom/facebook/ads/redexgen/X/B3;->A0C:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_4

    goto :goto_0

    .line 29649
    :cond_3
    const/16 v2, 0x2ef

    const/16 v1, 0xa

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B3;->A02:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 29650
    const/4 v4, 0x2

    .line 29651
    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/B3;->A0C:[Ljava/lang/String;

    const-string v1, "U7uwaC6XnAT7ItuO5"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eq v4, v5, :cond_5

    .line 29652
    return v10

    .line 29653
    :cond_5
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/B3;->A0V()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v0

    array-length v0, v0

    if-gtz v0, :cond_6

    .line 29654
    return v10

    .line 29655
    :cond_6
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/B3;->A0V()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v7

    .line 29656
    .local v4, "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_7

    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x17

    if-gt v1, v0, :cond_7

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/B3;->A02:Ljava/lang/String;

    .line 29657
    const/16 v2, 0x2f9

    const/16 v1, 0x13

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    array-length v0, v7

    if-nez v0, :cond_7

    .line 29658
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B3;->A00:Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/B3;->A0M(Landroid/media/MediaCodecInfo$CodecCapabilities;)[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v7

    .line 29659
    :cond_7
    array-length v6, v7

    const/4 v9, 0x0

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v6, :cond_c

    aget-object v1, v7, v5

    .line 29660
    .local v8, "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    iget v0, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-ne v0, v4, :cond_b

    iget v8, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/B3;->A0C:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x41

    if-eq v1, v0, :cond_8

    goto/16 :goto_0

    :cond_8
    sget-object v2, Lcom/facebook/ads/redexgen/X/B3;->A0C:[Ljava/lang/String;

    const-string v1, "Tk1KZqXmKjuSsbjIU3mgahSyAhYoMHEk"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ge v8, v3, :cond_9

    if-nez p2, :cond_b

    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B3;->A02:Ljava/lang/String;

    .line 29661
    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/B3;->A0L(Ljava/lang/String;I)Z

    move-result v8

    sget-object v1, Lcom/facebook/ads/redexgen/X/B3;->A0C:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6b

    if-eq v1, v0, :cond_a

    sget-object v2, Lcom/facebook/ads/redexgen/X/B3;->A0C:[Ljava/lang/String;

    const-string v1, "B6qJQnb2cEtex6AQnXMJ6AJyRiBsPuck"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-nez v8, :cond_b

    .line 29662
    :goto_3
    return v10

    :cond_a
    if-nez v8, :cond_b

    goto :goto_3

    .line 29663
    .end local v8    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 29664
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1f5

    const/16 v1, 0x14

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0R:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x4

    const/4 v1, 0x2

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B3;->A01:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/B3;->A06(Ljava/lang/String;)V

    .line 29665
    return v9
.end method

.method public static A0H(Ljava/lang/String;)Z
    .locals 3

    .line 29666
    const/16 v2, 0x18c

    const/16 v1, 0xa

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static A0I(Ljava/lang/String;)Z
    .locals 4

    .line 29667
    sget-object v3, Lcom/facebook/ads/redexgen/X/5C;->A06:Ljava/lang/String;

    const/16 v2, 0xfd

    const/4 v1, 0x7

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v2, 0xbf

    const/16 v1, 0x24

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0J(Ljava/lang/String;)Z
    .locals 4

    .line 29668
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x16

    if-gt v1, v0, :cond_2

    sget-object v3, Lcom/facebook/ads/redexgen/X/5C;->A06:Ljava/lang/String;

    .line 29669
    const/16 v2, 0x82

    const/16 v1, 0xa

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v2, 0x6f

    const/16 v1, 0x8

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/5C;->A06:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 29670
    :cond_0
    const/16 v2, 0x8c

    const/16 v1, 0x16

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v2, 0xa2

    const/16 v1, 0x1d

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 29671
    :goto_0
    return v0

    .line 29672
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0K(Ljava/lang/String;)Z
    .locals 3

    .line 29673
    const/16 v2, 0xe3

    const/16 v1, 0x1a

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v2, 0x20f

    const/4 v1, 0x5

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/5C;->A03:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29674
    const/4 v0, 0x0

    return v0

    .line 29675
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static A0L(Ljava/lang/String;I)Z
    .locals 3

    .line 29676
    const/16 v2, 0x2ef

    const/16 v1, 0xa

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    if-ne v0, p1, :cond_1

    sget-object p0, Lcom/facebook/ads/redexgen/X/5C;->A03:Ljava/lang/String;

    .line 29677
    const/16 v2, 0x21b

    const/16 v1, 0x8

    const/16 v0, 0x24

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v2, 0x209

    const/4 v1, 0x6

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/5C;->A03:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 29678
    :goto_0
    return v0

    .line 29679
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0M(Landroid/media/MediaCodecInfo$CodecCapabilities;)[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .locals 4

    .line 29680
    const/4 v3, 0x0

    .line 29681
    .local v0, "maxBitrate":I
    if-eqz p0, :cond_1

    .line 29682
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v0

    .line 29683
    .local v1, "videoCapabilities":Landroid/media/MediaCodecInfo$VideoCapabilities;
    if-eqz v0, :cond_1

    .line 29684
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBitrateRange()Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    sget-object v1, Lcom/facebook/ads/redexgen/X/B3;->A0C:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x41

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/B3;->A0C:[Ljava/lang/String;

    const-string v1, "QcEMGW7v0Yxqh7XLcQ4xIAQDDerowqhX"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 29685
    .end local v1    # "videoCapabilities":Landroid/media/MediaCodecInfo$VideoCapabilities;
    :cond_1
    const v0, 0xaba9500

    if-lt v3, v0, :cond_2

    .line 29686
    const/16 v1, 0x400

    .line 29687
    .local v1, "level":I
    .restart local v1    # "level":I
    :goto_0
    new-instance v2, Landroid/media/MediaCodecInfo$CodecProfileLevel;

    invoke-direct {v2}, Landroid/media/MediaCodecInfo$CodecProfileLevel;-><init>()V

    .line 29688
    .local v2, "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const/4 v0, 0x1

    iput v0, v2, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 29689
    iput v1, v2, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    .line 29690
    new-array v1, v0, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    const/4 v0, 0x0

    aput-object v2, v1, v0

    return-object v1

    .line 29691
    .end local v1    # "level":I
    :cond_2
    const v0, 0x7270e00

    if-lt v3, v0, :cond_3

    .line 29692
    const/16 v1, 0x200

    .restart local v1    # "level":I
    goto :goto_0

    .line 29693
    .end local v1    # "level":I
    :cond_3
    const v0, 0x3938700

    if-lt v3, v0, :cond_4

    .line 29694
    const/16 v1, 0x100

    .restart local v1    # "level":I
    goto :goto_0

    .line 29695
    .end local v1    # "level":I
    :cond_4
    const v0, 0x1c9c380

    if-lt v3, v0, :cond_5

    .line 29696
    const/16 v1, 0x80

    .restart local v1    # "level":I
    goto :goto_0

    .line 29697
    .end local v1    # "level":I
    :cond_5
    const v0, 0x112a880

    if-lt v3, v0, :cond_6

    .line 29698
    const/16 v1, 0x40

    .restart local v1    # "level":I
    goto :goto_0

    .line 29699
    .end local v1    # "level":I
    :cond_6
    const p0, 0xb71b00

    sget-object v1, Lcom/facebook/ads/redexgen/X/B3;->A0C:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x41

    if-eq v1, v0, :cond_7

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/B3;->A0C:[Ljava/lang/String;

    const-string v1, "cnj1P9QIvdvvlmM3jq4NJ"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "0LKKsHUxH9Ew65kXLPhVQ5r"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-lt v3, p0, :cond_8

    .line 29700
    const/16 v1, 0x20

    .restart local v1    # "level":I
    goto :goto_0

    .line 29701
    .end local v1    # "level":I
    :cond_8
    const v0, 0x6ddd00

    if-lt v3, v0, :cond_9

    .line 29702
    const/16 v1, 0x10

    .restart local v1    # "level":I
    goto :goto_0

    .line 29703
    .end local v1    # "level":I
    :cond_9
    const v0, 0x36ee80

    if-lt v3, v0, :cond_a

    .line 29704
    const/16 v1, 0x8

    .restart local v1    # "level":I
    goto :goto_0

    .line 29705
    .end local v1    # "level":I
    :cond_a
    const v0, 0x1b7740

    if-lt v3, v0, :cond_b

    .line 29706
    const/4 v1, 0x4

    .restart local v1    # "level":I
    goto :goto_0

    .line 29707
    .end local v1    # "level":I
    :cond_b
    const v0, 0xc3500

    if-lt v3, v0, :cond_c

    .line 29708
    const/4 v1, 0x2

    .restart local v1    # "level":I
    goto :goto_0

    .line 29709
    .end local v1    # "level":I
    :cond_c
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final A0N(II)Landroid/graphics/Point;
    .locals 2

    .line 29710
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B3;->A00:Landroid/media/MediaCodecInfo$CodecCapabilities;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 29711
    return-object v1

    .line 29712
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B3;->A00:Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v0

    .line 29713
    .local v0, "videoCapabilities":Landroid/media/MediaCodecInfo$VideoCapabilities;
    if-nez v0, :cond_1

    .line 29714
    return-object v1

    .line 29715
    :cond_1
    invoke-static {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/B3;->A01(Landroid/media/MediaCodecInfo$VideoCapabilities;II)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public final A0O(Lcom/facebook/ads/redexgen/X/qI;Lcom/facebook/ads/redexgen/X/qI;)Lcom/facebook/ads/redexgen/X/6L;
    .locals 12

    .line 29716
    move-object v3, p0

    const/4 v7, 0x0

    .line 29717
    .local v1, "discardReasons":I
    move-object v4, p1

    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/qI;->A0W:Ljava/lang/String;

    move-object v5, p2

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/qI;->A0W:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A1E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 29718
    or-int/lit8 v7, v7, 0x8

    .line 29719
    :cond_0
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/B3;->A0A:Z

    if-eqz v0, :cond_8

    .line 29720
    iget v1, v4, Lcom/facebook/ads/redexgen/X/qI;->A0F:I

    iget v0, v5, Lcom/facebook/ads/redexgen/X/qI;->A0F:I

    if-eq v1, v0, :cond_1

    .line 29721
    or-int/lit16 v7, v7, 0x400

    .line 29722
    :cond_1
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/B3;->A04:Z

    if-nez v0, :cond_3

    iget v1, v4, Lcom/facebook/ads/redexgen/X/qI;->A0L:I

    iget v0, v5, Lcom/facebook/ads/redexgen/X/qI;->A0L:I

    if-ne v1, v0, :cond_2

    iget v1, v4, Lcom/facebook/ads/redexgen/X/qI;->A0A:I

    iget v0, v5, Lcom/facebook/ads/redexgen/X/qI;->A0A:I

    if-eq v1, v0, :cond_3

    .line 29723
    :cond_2
    or-int/lit16 v7, v7, 0x200

    .line 29724
    :cond_3
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/qI;->A0N:Lcom/facebook/ads/androidx/media3/common/ColorInfo;

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/qI;->A0N:Lcom/facebook/ads/androidx/media3/common/ColorInfo;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A1E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 29725
    or-int/lit16 v7, v7, 0x800

    .line 29726
    :cond_4
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/B3;->A03:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/B3;->A0I(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 29727
    invoke-virtual {v4, v5}, Lcom/facebook/ads/redexgen/X/qI;->A0A(Lcom/facebook/ads/redexgen/X/qI;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 29728
    or-int/lit8 v7, v7, 0x2

    .line 29729
    .end local v1    # "discardReasons":I
    .local v9, "discardReasons":I
    :cond_5
    if-nez v7, :cond_f

    .line 29730
    new-instance v6, Lcom/facebook/ads/redexgen/X/6L;

    iget-object v7, v3, Lcom/facebook/ads/redexgen/X/B3;->A03:Ljava/lang/String;

    .line 29731
    invoke-virtual {v4, v5}, Lcom/facebook/ads/redexgen/X/qI;->A0A(Lcom/facebook/ads/redexgen/X/qI;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 29732
    const/4 v10, 0x3

    .line 29733
    :goto_0
    const/4 v11, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/B3;->A0C:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x41

    if-eq v1, v0, :cond_7

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_6
    const/4 v10, 0x2

    goto :goto_0

    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/B3;->A0C:[Ljava/lang/String;

    const-string v1, "2o9LDR7wht3djkkWSozFp"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "xzNY8imEyNfCiAqEOIotcML"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    move-object v8, v4

    move-object v9, v5

    invoke-direct/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/6L;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/qI;Lcom/facebook/ads/redexgen/X/qI;II)V

    .line 29734
    return-object v6

    .line 29735
    .end local v9    # "discardReasons":I
    .restart local v1    # "discardReasons":I
    :cond_8
    iget v1, v4, Lcom/facebook/ads/redexgen/X/qI;->A06:I

    iget v0, v5, Lcom/facebook/ads/redexgen/X/qI;->A06:I

    if-eq v1, v0, :cond_9

    .line 29736
    or-int/lit16 v7, v7, 0x1000

    .line 29737
    :cond_9
    iget v1, v4, Lcom/facebook/ads/redexgen/X/qI;->A0G:I

    iget v0, v5, Lcom/facebook/ads/redexgen/X/qI;->A0G:I

    if-eq v1, v0, :cond_a

    .line 29738
    or-int/lit16 v7, v7, 0x2000

    .line 29739
    :cond_a
    iget v1, v4, Lcom/facebook/ads/redexgen/X/qI;->A0C:I

    iget v0, v5, Lcom/facebook/ads/redexgen/X/qI;->A0C:I

    if-eq v1, v0, :cond_b

    .line 29740
    or-int/lit16 v7, v7, 0x4000

    .line 29741
    .end local v1    # "discardReasons":I
    .restart local v9    # "discardReasons":I
    :cond_b
    if-nez v7, :cond_c

    const/16 v2, 0x173

    const/16 v1, 0xf

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/B3;->A02:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 29742
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Ba;->A0B(Lcom/facebook/ads/redexgen/X/qI;)Landroid/util/Pair;

    move-result-object v0

    .line 29743
    .local v10, "oldCodecProfileLevel":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/Ba;->A0B(Lcom/facebook/ads/redexgen/X/qI;)Landroid/util/Pair;

    move-result-object v1

    .line 29744
    .local v11, "newCodecProfileLevel":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_c

    if-eqz v1, :cond_c

    .line 29745
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 29746
    .local p0, "oldProfile":I
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 29747
    .local p1, "newProfile":I
    const/16 v0, 0x2a

    if-ne v2, v0, :cond_c

    if-ne v1, v0, :cond_c

    .line 29748
    new-instance v2, Lcom/facebook/ads/redexgen/X/6L;

    iget-object v3, v3, Lcom/facebook/ads/redexgen/X/B3;->A03:Ljava/lang/String;

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/6L;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/qI;Lcom/facebook/ads/redexgen/X/qI;II)V

    return-object v2

    .line 29749
    .end local v10    # "oldCodecProfileLevel":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v11    # "newCodecProfileLevel":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local p0    # "oldProfile":I
    .end local p1    # "newProfile":I
    :cond_c
    invoke-virtual {v4, v5}, Lcom/facebook/ads/redexgen/X/qI;->A0A(Lcom/facebook/ads/redexgen/X/qI;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 29750
    or-int/lit8 v7, v7, 0x20

    .line 29751
    :cond_d
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/B3;->A02:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/B3;->A0H(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 29752
    or-int/lit8 v7, v7, 0x2

    .line 29753
    :cond_e
    if-nez v7, :cond_f

    .line 29754
    new-instance v2, Lcom/facebook/ads/redexgen/X/6L;

    iget-object v3, v3, Lcom/facebook/ads/redexgen/X/B3;->A03:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/6L;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/qI;Lcom/facebook/ads/redexgen/X/qI;II)V

    return-object v2

    .line 29755
    :cond_f
    new-instance v2, Lcom/facebook/ads/redexgen/X/6L;

    iget-object v3, v3, Lcom/facebook/ads/redexgen/X/B3;->A03:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/6L;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/qI;Lcom/facebook/ads/redexgen/X/qI;II)V

    return-object v2
.end method

.method public final A0P(I)Z
    .locals 5

    .line 29756
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B3;->A00:Landroid/media/MediaCodecInfo$CodecCapabilities;

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 29757
    const/16 v2, 0x1c3

    const/16 v1, 0x11

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/B3;->A06(Ljava/lang/String;)V

    .line 29758
    return v4

    .line 29759
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B3;->A00:Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object v0

    .line 29760
    .local v0, "audioCapabilities":Landroid/media/MediaCodecInfo$AudioCapabilities;
    if-nez v0, :cond_1

    .line 29761
    const/16 v2, 0x1b1

    const/16 v1, 0x12

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/B3;->A06(Ljava/lang/String;)V

    .line 29762
    return v4

    .line 29763
    :cond_1
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/B3;->A03:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/B3;->A02:Ljava/lang/String;

    .line 29764
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$AudioCapabilities;->getMaxInputChannelCount()I

    move-result v0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A00(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 29765
    .local v2, "maxInputChannelCount":I
    if-ge v0, p1, :cond_2

    .line 29766
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1d4

    const/16 v1, 0x16

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/B3;->A06(Ljava/lang/String;)V

    .line 29767
    return v4

    .line 29768
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public final A0Q(I)Z
    .locals 5

    .line 29769
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B3;->A00:Landroid/media/MediaCodecInfo$CodecCapabilities;

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 29770
    const/16 v2, 0x233

    const/16 v1, 0xf

    const/4 v0, 0x4

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/B3;->A06(Ljava/lang/String;)V

    .line 29771
    return v4

    .line 29772
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B3;->A00:Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object v0

    .line 29773
    .local v0, "audioCapabilities":Landroid/media/MediaCodecInfo$AudioCapabilities;
    if-nez v0, :cond_1

    .line 29774
    const/16 v2, 0x223

    const/16 v1, 0x10

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/B3;->A06(Ljava/lang/String;)V

    .line 29775
    return v4

    .line 29776
    :cond_1
    invoke-virtual {v0, p1}, Landroid/media/MediaCodecInfo$AudioCapabilities;->isSampleRateSupported(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 29777
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x242

    const/16 v1, 0x14

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/B3;->A06(Ljava/lang/String;)V

    .line 29778
    return v4

    .line 29779
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public final A0R(IID)Z
    .locals 9

    .line 29780
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B3;->A00:Landroid/media/MediaCodecInfo$CodecCapabilities;

    const/4 v8, 0x0

    if-nez v0, :cond_1

    .line 29781
    const/16 v3, 0x265

    sget-object v1, Lcom/facebook/ads/redexgen/X/B3;->A0C:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x11

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/B3;->A0C:[Ljava/lang/String;

    const-string v1, "VtsIfpRARdWM2RcSD8UT7BsOJP98i2Mb"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/16 v1, 0x10

    const/16 v0, 0xf

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/B3;->A06(Ljava/lang/String;)V

    .line 29782
    return v8

    .line 29783
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B3;->A00:Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v3

    .line 29784
    .local v0, "videoCapabilities":Landroid/media/MediaCodecInfo$VideoCapabilities;
    if-nez v3, :cond_2

    .line 29785
    const/16 v2, 0x2b2

    const/16 v1, 0x11

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/B3;->A06(Ljava/lang/String;)V

    .line 29786
    return v8

    .line 29787
    :cond_2
    sget v7, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v4, 0x1d

    const/16 v2, 0x9

    const/4 v1, 0x1

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0x30c

    const/4 v1, 0x1

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x1

    if-lt v7, v4, :cond_4

    .line 29788
    invoke-static {v3, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/B1;->A00(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)I

    move-result v1

    .line 29789
    .local v2, "evaluation":I
    const/4 v0, 0x2

    if-ne v1, v0, :cond_3

    .line 29790
    return v2

    .line 29791
    :cond_3
    if-ne v1, v2, :cond_4

    .line 29792
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x275

    const/16 v1, 0x13

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/B3;->A06(Ljava/lang/String;)V

    .line 29793
    return v8

    .line 29794
    .end local v2    # "evaluation":I
    :cond_4
    invoke-static {v3, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/B3;->A0F(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z

    move-result v0

    if-nez v0, :cond_7

    .line 29795
    if-ge p1, p2, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B3;->A03:Ljava/lang/String;

    .line 29796
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/B3;->A0K(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 29797
    invoke-static {v3, p2, p1, p3, p4}, Lcom/facebook/ads/redexgen/X/B3;->A0F(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z

    move-result v0

    if-nez v0, :cond_6

    .line 29798
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x29d

    const/16 v1, 0x15

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/B3;->A06(Ljava/lang/String;)V

    .line 29799
    return v8

    .line 29800
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x288

    const/16 v1, 0x15

    const/4 v0, 0x5

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/B3;->A05(Ljava/lang/String;)V

    .line 29801
    :cond_7
    return v2
.end method

.method public final A0S(Lcom/facebook/ads/redexgen/X/qI;)Z
    .locals 5
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "DEPRECATED_LOGIC"
        }
        value = "D51676338: Control Renderer Support behavior"
    .end annotation

    .line 29802
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0R:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B3;->A02:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 29803
    .end local v0
    :cond_0
    return v1

    .line 29804
    :cond_1
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0R:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3J;->A07(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 29805
    .local v0, "codecMimeType":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 29806
    return v1

    .line 29807
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B3;->A02:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 29808
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1ea

    const/16 v1, 0xb

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0R:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x4

    const/4 v1, 0x2

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B3;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/B3;->A06(Ljava/lang/String;)V

    .line 29809
    const/4 v0, 0x0

    return v0

    .line 29810
    :cond_3
    invoke-direct {p0, p1, v1}, Lcom/facebook/ads/redexgen/X/B3;->A0G(Lcom/facebook/ads/redexgen/X/qI;Z)Z

    move-result v0

    return v0
.end method

.method public final A0T(Lcom/facebook/ads/redexgen/X/qI;)Z
    .locals 4

    .line 29811
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/B3;->A0A:Z

    if-eqz v0, :cond_1

    .line 29812
    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/B3;->A04:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/B3;->A0C:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6b

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/B3;->A0C:[Ljava/lang/String;

    const-string v1, "p6ujkjtFWGTlktsjRzxuv"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "iao6hIdGkkUEjHJmkTON0Ul"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 29813
    :cond_1
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Ba;->A0B(Lcom/facebook/ads/redexgen/X/qI;)Landroid/util/Pair;

    move-result-object v0

    .line 29814
    .local v0, "profileLevel":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_2

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v0, 0x2a

    if-ne v1, v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0U(Lcom/facebook/ads/redexgen/X/qI;Lcom/facebook/ads/redexgen/X/qI;Z)Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 29815
    if-nez p3, :cond_0

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0N:Lcom/facebook/ads/androidx/media3/common/ColorInfo;

    if-eqz v0, :cond_0

    iget-object v3, p2, Lcom/facebook/ads/redexgen/X/qI;->A0N:Lcom/facebook/ads/androidx/media3/common/ColorInfo;

    sget-object v2, Lcom/facebook/ads/redexgen/X/B3;->A0C:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/B3;->A0C:[Ljava/lang/String;

    const-string v1, "CiueF8sE"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-nez v3, :cond_0

    .line 29816
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/qI;->A07()Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0N:Lcom/facebook/ads/androidx/media3/common/ColorInfo;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0t(Lcom/facebook/ads/androidx/media3/common/ColorInfo;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2p;->A14()Lcom/facebook/ads/redexgen/X/qI;

    move-result-object p2

    .line 29817
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/B3;->A0O(Lcom/facebook/ads/redexgen/X/qI;Lcom/facebook/ads/redexgen/X/qI;)Lcom/facebook/ads/redexgen/X/6L;

    move-result-object v0

    iget v1, v0, Lcom/facebook/ads/redexgen/X/6L;->A01:I

    .line 29818
    .local v0, "reuseResult":I
    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    const/4 v0, 0x3

    if-ne v1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0V()[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .locals 4

    .line 29819
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B3;->A00:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B3;->A00:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget-object v0, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    if-nez v0, :cond_1

    .line 29820
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 29821
    :goto_0
    return-object v0

    .line 29822
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/B3;->A00:Landroid/media/MediaCodecInfo$CodecCapabilities;

    sget-object v1, Lcom/facebook/ads/redexgen/X/B3;->A0C:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/B3;->A0C:[Ljava/lang/String;

    const-string v1, "wYBsKMorArWFj72U1vIrO"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "2GYgXVRgmEsc3DaR9LQ86J2"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    iget-object v0, v3, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 29823
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B3;->A03:Ljava/lang/String;

    return-object v0
.end method
