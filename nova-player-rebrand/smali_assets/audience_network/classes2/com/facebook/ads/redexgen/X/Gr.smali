.class public abstract Lcom/facebook/ads/redexgen/X/Gr;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Gq;
    }
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final A02:[I

.field public static final A03:[I

.field public static final A04:[I

.field public static final A05:[I

.field public static final A06:[I

.field public static final A07:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 758
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Jtf4c9GAOgAJpDK2mVqEjBHHHDeO7jol"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "kDsThcfbWymyo7SA47OqEnjsA64Naf4x"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "cJoAWc4I2qPJ3tdp2oEUxn8HL8nWEytb"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "qFOfekTrSk46i"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "58lsU6cH4CrpheTwcdx0E4dGrWTfnMIv"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Xoqjc4jVEqoArq5wHw2izr92BVYhns54"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "K2bZ7AvhLOnhV8b3rnKBJIfNWJInr7Ql"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "H1rRYQzsJBGjD"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Gr;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Gr;->A0B()V

    const/4 v3, 0x3

    const/4 v2, 0x6

    const/4 v1, 0x1

    const/4 v0, 0x2

    filled-new-array {v1, v0, v3, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Gr;->A03:[I

    .line 759
    const v2, 0xac44

    const/16 v1, 0x7d00

    const v0, 0xbb80

    filled-new-array {v0, v2, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Gr;->A05:[I

    .line 760
    const/16 v2, 0x5622

    const/16 v1, 0x3e80

    const/16 v0, 0x5dc0

    filled-new-array {v0, v2, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Gr;->A06:[I

    .line 761
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Gr;->A04:[I

    .line 762
    const/16 v1, 0x13

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/facebook/ads/redexgen/X/Gr;->A02:[I

    .line 763
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/facebook/ads/redexgen/X/Gr;->A07:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x1
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
    .end array-data

    :array_1
    .array-data 4
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0xa0
        0xc0
        0xe0
        0x100
        0x140
        0x180
        0x1c0
        0x200
        0x240
        0x280
    .end array-data

    :array_2
    .array-data 4
        0x45
        0x57
        0x68
        0x79
        0x8b
        0xae
        0xd0
        0xf3
        0x116
        0x15c
        0x1a1
        0x1e7
        0x22d
        0x2b8
        0x343
        0x3cf
        0x45a
        0x4e5
        0x571
    .end array-data
.end method

.method public static A00(II)I
    .locals 5

    .line 37795
    div-int/lit8 v1, p1, 0x2

    .line 37796
    .local v0, "halfFrmsizecod":I
    if-ltz p0, :cond_0

    sget-object v0, Lcom/facebook/ads/redexgen/X/Gr;->A05:[I

    array-length v0, v0

    if-ge p0, v0, :cond_0

    if-ltz p1, :cond_0

    sget-object v0, Lcom/facebook/ads/redexgen/X/Gr;->A07:[I

    array-length v0, v0

    if-lt v1, v0, :cond_1

    .line 37797
    .end local v1
    .end local v2
    :cond_0
    const/4 v0, -0x1

    return v0

    .line 37798
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/Gr;->A05:[I

    aget p0, v0, p0

    .line 37799
    .local v1, "sampleRate":I
    const v0, 0xac44

    if-ne p0, v0, :cond_2

    .line 37800
    sget-object v0, Lcom/facebook/ads/redexgen/X/Gr;->A07:[I

    aget v1, v0, v1

    rem-int/lit8 v0, p1, 0x2

    add-int/2addr v1, v0

    mul-int/lit8 v0, v1, 0x2

    return v0

    .line 37801
    :cond_2
    sget-object v0, Lcom/facebook/ads/redexgen/X/Gr;->A02:[I

    aget v4, v0, v1

    .line 37802
    .local v2, "bitrate":I
    const/16 v3, 0x7d00

    sget-object v2, Lcom/facebook/ads/redexgen/X/Gr;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/Gr;->A01:[Ljava/lang/String;

    const-string v1, "CpIhzBdts1JRjCy6aRe02MLhvkoBTutu"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ne p0, v3, :cond_4

    .line 37803
    mul-int/lit8 v0, v4, 0x6

    return v0

    .line 37804
    :cond_4
    mul-int/lit8 v0, v4, 0x4

    return v0
.end method

.method public static A01(III)I
    .locals 1

    .line 37805
    mul-int/2addr p0, p1

    mul-int/lit8 v0, p2, 0x20

    div-int/2addr p0, v0

    return p0
.end method

.method public static A02(Ljava/nio/ByteBuffer;)I
    .locals 5

    .line 37806
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 37807
    .local v0, "startIndex":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    add-int/lit8 v3, v0, -0xa

    .line 37808
    .local v1, "endIndex":I
    move v2, v4

    .local v2, "i":I
    :goto_0
    if-gt v2, v3, :cond_1

    .line 37809
    add-int/lit8 v0, v2, 0x4

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0F(Ljava/nio/ByteBuffer;I)I

    move-result v0

    and-int/lit8 v1, v0, -0x2

    const v0, -0x78d9046

    if-ne v1, v0, :cond_0

    .line 37810
    sub-int/2addr v2, v4

    return v2

    .line 37811
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 37812
    .end local v2    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static A03(Ljava/nio/ByteBuffer;)I
    .locals 3

    .line 37813
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v2, v0, 0xf8

    const/4 v1, 0x3

    shr-int/2addr v2, v1

    const/16 v0, 0xa

    if-le v2, v0, :cond_1

    const/4 v0, 0x1

    .line 37814
    .local v0, "isEac3":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 37815
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v0, v0, 0x6

    .line 37816
    .local v2, "fscod":I
    if-ne v0, v1, :cond_0

    .line 37817
    .local v1, "numblkscod":I
    :goto_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/Gr;->A03:[I

    aget v0, v0, v1

    mul-int/lit16 v0, v0, 0x100

    return v0

    .line 37818
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit8 v0, v0, 0x30

    shr-int/lit8 v1, v0, 0x4

    goto :goto_1

    .line 37819
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 37820
    .end local v1    # "numblkscod":I
    .end local v2    # "fscod":I
    :cond_2
    const/16 v0, 0x600

    return v0
.end method

.method public static A04(Ljava/nio/ByteBuffer;I)I
    .locals 5

    .line 37821
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v1, v0, 0xff

    const/16 v0, 0xbb

    if-ne v1, v0, :cond_0

    const/4 v4, 0x1

    .line 37822
    .local v0, "isMlp":Z
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gr;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x74

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 37823
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Gr;->A01:[Ljava/lang/String;

    const-string v1, "2LNqrJlwnzIqb"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "f1x5AMhp2hTyk"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v4, :cond_2

    .line 37824
    const/16 v0, 0x9

    :goto_1
    add-int/2addr v3, v0

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    shr-int/lit8 v0, v0, 0x4

    and-int/lit8 v1, v0, 0x7

    const/16 v0, 0x28

    shl-int/2addr v0, v1

    return v0

    :cond_2
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public static A05([B)I
    .locals 3

    .line 37825
    array-length v1, p0

    const/4 v0, 0x6

    if-ge v1, v0, :cond_0

    .line 37826
    const/4 v0, -0x1

    return v0

    .line 37827
    :cond_0
    const/4 v0, 0x5

    aget-byte v0, p0, v0

    and-int/lit16 v1, v0, 0xf8

    const/4 v2, 0x3

    shr-int/2addr v1, v2

    const/16 v0, 0xa

    if-le v1, v0, :cond_1

    const/4 v0, 0x1

    .line 37828
    .local v0, "isEac3":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 37829
    const/4 v0, 0x2

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x7

    shl-int/lit8 v1, v0, 0x8

    .line 37830
    .local p0, "frmsiz":I
    aget-byte v0, p0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    .line 37831
    .end local p0    # "frmsiz":I
    .local v2, "frmsiz":I
    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x2

    return v0

    .line 37832
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 37833
    .end local v2    # "frmsiz":I
    :cond_2
    const/4 v2, 0x4

    aget-byte v0, p0, v2

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v1, v0, 0x6

    .line 37834
    .local v1, "fscod":I
    aget-byte v0, p0, v2

    and-int/lit8 v0, v0, 0x3f

    .line 37835
    .local v2, "frmsizecod":I
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Gr;->A00(II)I

    move-result v0

    return v0
.end method

.method public static A06([B)I
    .locals 4

    .line 37836
    const/4 v0, 0x4

    aget-byte v1, p0, v0

    const/4 v0, -0x8

    const/4 v3, 0x0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x5

    aget-byte v1, p0, v0

    const/16 v0, 0x72

    if-ne v1, v0, :cond_0

    const/4 v0, 0x6

    aget-byte v1, p0, v0

    const/16 v0, 0x6f

    if-ne v1, v0, :cond_0

    const/4 v2, 0x7

    aget-byte v0, p0, v2

    and-int/lit16 v1, v0, 0xfe

    const/16 v0, 0xba

    if-eq v1, v0, :cond_1

    .line 37837
    .end local v2
    :cond_0
    return v3

    .line 37838
    :cond_1
    aget-byte v0, p0, v2

    and-int/lit16 v1, v0, 0xff

    const/16 v0, 0xbb

    if-ne v1, v0, :cond_2

    const/4 v3, 0x1

    .line 37839
    .local v2, "isMlp":Z
    :cond_2
    if-eqz v3, :cond_3

    const/16 v0, 0x9

    :goto_0
    aget-byte v0, p0, v0

    shr-int/lit8 v1, v0, 0x4

    and-int/2addr v1, v2

    const/16 v0, 0x28

    shl-int/2addr v0, v1

    return v0

    :cond_3
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public static A07(Lcom/facebook/ads/redexgen/X/4v;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/androidx/media3/common/DrmInitData;)Lcom/facebook/ads/redexgen/X/qI;
    .locals 7

    .line 37840
    new-instance v2, Lcom/facebook/ads/redexgen/X/4u;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/4u;-><init>()V

    .line 37841
    .local v0, "dataBitArray":Lcom/facebook/ads/redexgen/X/4u;
    invoke-virtual {v2, p0}, Lcom/facebook/ads/redexgen/X/4u;->A0C(Lcom/facebook/ads/redexgen/X/4v;)V

    .line 37842
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v1

    .line 37843
    .local v1, "fscod":I
    sget-object v0, Lcom/facebook/ads/redexgen/X/Gr;->A05:[I

    aget v5, v0, v1

    .line 37844
    .local v2, "sampleRate":I
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 37845
    sget-object v1, Lcom/facebook/ads/redexgen/X/Gr;->A04:[I

    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    aget v6, v1, v0

    .line 37846
    .local v3, "channelCount":I
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 37847
    add-int/lit8 v6, v6, 0x1

    .line 37848
    :cond_0
    const/4 v0, 0x5

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v1

    .line 37849
    .local v4, "halfFrmsizecod":I
    sget-object v0, Lcom/facebook/ads/redexgen/X/Gr;->A02:[I

    aget v0, v0, v1

    mul-int/lit16 v4, v0, 0x3e8

    .line 37850
    .local v5, "constantBitrate":I
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4u;->A06()V

    .line 37851
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4u;->A02()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 37852
    new-instance v0, Lcom/facebook/ads/redexgen/X/2p;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/2p;-><init>()V

    .line 37853
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/2p;->A0y(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v3

    .line 37854
    const/4 v2, 0x0

    const/16 v1, 0x9

    const/4 v0, 0x4

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gr;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/2p;->A11(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 37855
    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/2p;->A0b(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 37856
    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/2p;->A0m(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 37857
    invoke-virtual {v0, p3}, Lcom/facebook/ads/redexgen/X/2p;->A0u(Lcom/facebook/ads/androidx/media3/common/DrmInitData;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 37858
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/2p;->A10(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 37859
    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/2p;->A0a(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 37860
    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/2p;->A0j(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 37861
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2p;->A14()Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v0

    .line 37862
    return-object v0
.end method

.method public static A08(Lcom/facebook/ads/redexgen/X/4v;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/androidx/media3/common/DrmInitData;)Lcom/facebook/ads/redexgen/X/qI;
    .locals 9

    .line 37863
    new-instance v6, Lcom/facebook/ads/redexgen/X/4u;

    invoke-direct {v6}, Lcom/facebook/ads/redexgen/X/4u;-><init>()V

    .line 37864
    .local v0, "dataBitArray":Lcom/facebook/ads/redexgen/X/4u;
    invoke-virtual {v6, p0}, Lcom/facebook/ads/redexgen/X/4u;->A0C(Lcom/facebook/ads/redexgen/X/4v;)V

    .line 37865
    const/16 v0, 0xd

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    mul-int/lit16 v3, v0, 0x3e8

    .line 37866
    .local v1, "peakBitrate":I
    const/4 v2, 0x3

    invoke-virtual {v6, v2}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 37867
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v1

    .line 37868
    .local v3, "fscod":I
    sget-object v0, Lcom/facebook/ads/redexgen/X/Gr;->A05:[I

    aget v4, v0, v1

    .line 37869
    .local v4, "sampleRate":I
    const/16 v0, 0xa

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 37870
    sget-object v1, Lcom/facebook/ads/redexgen/X/Gr;->A04:[I

    invoke-virtual {v6, v2}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    aget v5, v1, v0

    .line 37871
    .local v5, "channelCount":I
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 37872
    add-int/lit8 v5, v5, 0x1

    .line 37873
    :cond_0
    invoke-virtual {v6, v2}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 37874
    const/4 v0, 0x4

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v8

    .line 37875
    .local v2, "numDepSub":I
    invoke-virtual {v6, v7}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/Gr;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 37876
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Gr;->A01:[Ljava/lang/String;

    const-string v1, "mDbBoGQY4vpPxfXnFDb06caCJn7GdJsS"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-lez v8, :cond_3

    .line 37877
    const/4 v0, 0x6

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/4u;->A0A(I)V

    .line 37878
    invoke-virtual {v6, v7}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    if-eqz v0, :cond_2

    .line 37879
    add-int/lit8 v5, v5, 0x2

    .line 37880
    :cond_2
    invoke-virtual {v6, v7}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 37881
    :cond_3
    const/16 v2, 0x9

    const/16 v1, 0xa

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gr;->A0A(III)Ljava/lang/String;

    move-result-object v2

    .line 37882
    .local v7, "mimeType":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/4u;->A01()I

    move-result v1

    const/4 v0, 0x7

    if-le v1, v0, :cond_4

    .line 37883
    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 37884
    invoke-virtual {v6, v7}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    if-eqz v0, :cond_4

    .line 37885
    const/16 v2, 0x13

    const/16 v1, 0xe

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gr;->A0A(III)Ljava/lang/String;

    move-result-object v2

    .line 37886
    :cond_4
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/4u;->A06()V

    .line 37887
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/4u;->A02()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 37888
    new-instance v0, Lcom/facebook/ads/redexgen/X/2p;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/2p;-><init>()V

    .line 37889
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/2p;->A0y(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 37890
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/2p;->A11(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 37891
    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/2p;->A0b(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 37892
    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/2p;->A0m(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 37893
    invoke-virtual {v0, p3}, Lcom/facebook/ads/redexgen/X/2p;->A0u(Lcom/facebook/ads/androidx/media3/common/DrmInitData;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 37894
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/2p;->A10(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 37895
    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/2p;->A0j(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 37896
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2p;->A14()Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v0

    .line 37897
    return-object v0
.end method

.method public static A09(Lcom/facebook/ads/redexgen/X/4u;)Lcom/facebook/ads/redexgen/X/Gq;
    .locals 24

    .line 37898
    move-object/from16 v13, p0

    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4u;->A03()I

    move-result v3

    .line 37899
    .local v1, "initialPosition":I
    const/16 v0, 0x28

    invoke-virtual {v13, v0}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 37900
    const/4 v14, 0x5

    invoke-virtual {v13, v14}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    const/4 v12, 0x1

    const/16 v1, 0xa

    if-le v0, v1, :cond_25

    const/4 v2, 0x1

    .line 37901
    .local v3, "isEac3":Z
    :goto_0
    invoke-virtual {v13, v3}, Lcom/facebook/ads/redexgen/X/4u;->A08(I)V

    .line 37902
    const/4 v11, -0x1

    .line 37903
    .local v6, "streamType":I
    const/16 v0, 0x8

    const/4 v10, 0x3

    const/4 v4, 0x2

    if-eqz v2, :cond_27

    .line 37904
    const/16 v2, 0x10

    invoke-virtual {v13, v2}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 37905
    invoke-virtual {v13, v4}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 37906
    const/4 v11, -0x1

    .line 37907
    :goto_1
    invoke-virtual {v13, v10}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 37908
    const/16 v2, 0xb

    invoke-virtual {v13, v2}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v2

    add-int/2addr v2, v12

    mul-int/lit8 v9, v2, 0x2

    .line 37909
    .local v12, "frameSize":I
    invoke-virtual {v13, v4}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v8

    .line 37910
    .local v13, "fscod":I
    if-ne v8, v10, :cond_24

    .line 37911
    const/4 v7, 0x3

    .line 37912
    .local v14, "numblkscod":I
    sget-object v3, Lcom/facebook/ads/redexgen/X/Gr;->A06:[I

    invoke-virtual {v13, v4}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v2

    aget v6, v3, v2

    .line 37913
    .local v15, "sampleRate":I
    const/4 v5, 0x6

    .line 37914
    .local v16, "audioBlocks":I
    .end local v16    # "audioBlocks":I
    .local v8, "audioBlocks":I
    .restart local v15    # "sampleRate":I
    :goto_2
    mul-int/lit16 v15, v5, 0x100

    .line 37915
    .local v10, "sampleCount":I
    invoke-static {v9, v6, v5}, Lcom/facebook/ads/redexgen/X/Gr;->A01(III)I

    move-result v4

    .line 37916
    .local v18, "bitrate":I
    invoke-virtual {v13, v10}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v3

    .line 37917
    .local v11, "acmod":I
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v18

    .line 37918
    .local v20, "lfeon":Z
    sget-object v2, Lcom/facebook/ads/redexgen/X/Gr;->A04:[I

    aget v19, v2, v3

    add-int v19, v19, v18

    .line 37919
    .local v21, "channelCount":I
    invoke-virtual {v13, v1}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 37920
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37921
    invoke-virtual {v13, v0}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 37922
    :cond_0
    if-nez v3, :cond_1

    .line 37923
    invoke-virtual {v13, v14}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 37924
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37925
    invoke-virtual {v13, v0}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 37926
    :cond_1
    if-ne v11, v12, :cond_3

    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 37927
    const/16 v2, 0x10

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gr;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x62

    if-eq v1, v0, :cond_2

    :goto_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v16, Lcom/facebook/ads/redexgen/X/Gr;->A01:[Ljava/lang/String;

    const-string v1, "EFtXQuggqvCecn8xtkL0dgnIAj4EDltD"

    const/4 v0, 0x2

    aput-object v1, v16, v0

    invoke-virtual {v13, v2}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 37928
    :cond_3
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 37929
    const/4 v1, 0x2

    if-le v3, v1, :cond_4

    .line 37930
    invoke-virtual {v13, v1}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 37931
    :cond_4
    and-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_23

    if-le v3, v1, :cond_23

    .line 37932
    const/4 v2, 0x6

    invoke-virtual {v13, v2}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 37933
    :goto_4
    and-int/lit8 v17, v3, 0x4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gr;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x62

    if-eq v1, v0, :cond_22

    if-eqz v17, :cond_5

    .line 37934
    :goto_5
    invoke-virtual {v13, v2}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 37935
    :cond_5
    if-eqz v18, :cond_6

    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 37936
    invoke-virtual {v13, v14}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 37937
    :cond_6
    if-nez v11, :cond_c

    .line 37938
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 37939
    const/4 v1, 0x6

    invoke-virtual {v13, v1}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 37940
    :goto_6
    if-nez v3, :cond_7

    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 37941
    invoke-virtual {v13, v1}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 37942
    :cond_7
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 37943
    invoke-virtual {v13, v1}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 37944
    :cond_8
    const/4 v1, 0x2

    invoke-virtual {v13, v1}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    .line 37945
    .local v7, "mixdef":I
    if-ne v0, v12, :cond_13

    .line 37946
    invoke-virtual {v13, v14}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 37947
    .end local v5
    :cond_9
    :goto_7
    const/4 v2, 0x2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gr;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x20

    if-eq v1, v0, :cond_12

    sget-object v10, Lcom/facebook/ads/redexgen/X/Gr;->A01:[Ljava/lang/String;

    const-string v1, "CT6fc8NDwAee95wvc4i3U0G4PwptFgbR"

    const/4 v0, 0x5

    aput-object v1, v10, v0

    const-string v1, "cOprcaH4V9QUBwGl6SpW2PXD2gkWJWIT"

    const/4 v0, 0x0

    aput-object v1, v10, v0

    if-ge v3, v2, :cond_b

    .line 37948
    :goto_8
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v0

    const/16 v1, 0xe

    if-eqz v0, :cond_a

    .line 37949
    invoke-virtual {v13, v1}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 37950
    :cond_a
    if-nez v3, :cond_b

    .line 37951
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 37952
    invoke-virtual {v13, v1}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 37953
    :cond_b
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 37954
    if-nez v7, :cond_10

    .line 37955
    invoke-virtual {v13, v14}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 37956
    .end local v4
    .end local v7    # "mixdef":I
    :cond_c
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 37957
    invoke-virtual {v13, v14}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 37958
    const/4 v1, 0x2

    if-ne v3, v1, :cond_d

    .line 37959
    const/4 v0, 0x4

    invoke-virtual {v13, v0}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 37960
    :cond_d
    const/4 v0, 0x6

    if-lt v3, v0, :cond_e

    .line 37961
    invoke-virtual {v13, v1}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 37962
    :cond_e
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 37963
    const/16 v5, 0x8

    invoke-virtual {v13, v5}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 37964
    :goto_9
    if-nez v3, :cond_2e

    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Gr;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2d

    goto/16 :goto_3

    .line 37965
    :cond_f
    const/16 v5, 0x8

    goto :goto_9

    .line 37966
    :cond_10
    const/4 v1, 0x0

    .local v4, "blk":I
    :goto_a
    if-ge v1, v5, :cond_c

    .line 37967
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 37968
    invoke-virtual {v13, v14}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 37969
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_12
    sget-object v10, Lcom/facebook/ads/redexgen/X/Gr;->A01:[Ljava/lang/String;

    const-string v1, "TfLNzHkYjjGfwBXQwG7FQ44lMKhqfIt5"

    const/4 v0, 0x2

    aput-object v1, v10, v0

    if-ge v3, v2, :cond_b

    goto :goto_8

    .line 37970
    :cond_13
    if-ne v0, v1, :cond_14

    .line 37971
    const/16 v0, 0xc

    invoke-virtual {v13, v0}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    goto/16 :goto_7

    .line 37972
    :cond_14
    if-ne v0, v10, :cond_9

    .line 37973
    invoke-virtual {v13, v14}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v16

    .line 37974
    .local v5, "mixdeflen":I
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 37975
    invoke-virtual {v13, v14}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 37976
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 37977
    const/4 v10, 0x4

    invoke-virtual {v13, v10}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 37978
    :goto_b
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v12

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gr;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6f

    if-eq v1, v0, :cond_1d

    sget-object v2, Lcom/facebook/ads/redexgen/X/Gr;->A01:[Ljava/lang/String;

    const-string v1, "PWQ2PfTArLXSbAuYPJT5x4iA7pnZIJ5J"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v12, :cond_15

    .line 37979
    :goto_c
    invoke-virtual {v13, v10}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 37980
    :cond_15
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 37981
    invoke-virtual {v13, v10}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 37982
    :cond_16
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 37983
    invoke-virtual {v13, v10}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 37984
    :cond_17
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 37985
    invoke-virtual {v13, v10}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 37986
    :cond_18
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 37987
    invoke-virtual {v13, v10}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 37988
    :cond_19
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 37989
    invoke-virtual {v13, v10}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 37990
    :cond_1a
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 37991
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 37992
    invoke-virtual {v13, v10}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 37993
    :cond_1b
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 37994
    invoke-virtual {v13, v10}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 37995
    :cond_1c
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 37996
    invoke-virtual {v13, v14}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 37997
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 37998
    const/4 v0, 0x7

    invoke-virtual {v13, v0}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 37999
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v10

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gr;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6f

    if-eq v1, v0, :cond_1f

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1d
    sget-object v2, Lcom/facebook/ads/redexgen/X/Gr;->A01:[Ljava/lang/String;

    const-string v1, "3piylhlPW6ECi"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "2ld3o4GemUbvA"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v12, :cond_15

    goto/16 :goto_c

    .line 38000
    :cond_1e
    const/4 v10, 0x4

    goto/16 :goto_b

    :cond_1f
    sget-object v2, Lcom/facebook/ads/redexgen/X/Gr;->A01:[Ljava/lang/String;

    const-string v1, "rSblh4R2S5jwen1kap7KA3ClbKLn4xCa"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v10, :cond_20

    .line 38001
    const/16 v0, 0x8

    invoke-virtual {v13, v0}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 38002
    :cond_20
    add-int/lit8 v0, v16, 0x2

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {v13, v0}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 38003
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4u;->A06()V

    goto/16 :goto_7

    .line 38004
    :cond_21
    const/4 v1, 0x6

    goto/16 :goto_6

    :cond_22
    sget-object v16, Lcom/facebook/ads/redexgen/X/Gr;->A01:[Ljava/lang/String;

    const-string v1, "n86rU7cJyKu1PGdXCxu3oQra88IC0cti"

    const/4 v0, 0x2

    aput-object v1, v16, v0

    if-eqz v17, :cond_5

    goto/16 :goto_5

    .line 38005
    :cond_23
    const/4 v2, 0x6

    goto/16 :goto_4

    .line 38006
    .end local v14    # "numblkscod":I
    .end local v15    # "sampleRate":I
    .end local v16
    :cond_24
    invoke-virtual {v13, v4}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v7

    .line 38007
    .restart local v14    # "numblkscod":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/Gr;->A03:[I

    aget v5, v2, v7

    .line 38008
    .restart local v16    # "audioBlocks":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/Gr;->A05:[I

    aget v6, v2, v8

    goto/16 :goto_2

    .line 38009
    :pswitch_0
    const/4 v11, 0x2

    .line 38010
    goto/16 :goto_1

    .line 38011
    :pswitch_1
    const/4 v11, 0x1

    .line 38012
    goto/16 :goto_1

    .line 38013
    :pswitch_2
    const/4 v11, 0x0

    .line 38014
    goto/16 :goto_1

    .line 38015
    :cond_25
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 38016
    :cond_26
    const/4 v1, 0x3

    goto :goto_f

    .line 38017
    .end local v4    # "blk":I
    .end local v10    # "sampleCount":I
    .end local v11    # "acmod":I
    .end local v12    # "frameSize":I
    .end local v15
    .end local v18    # "bitrate":I
    .end local v20    # "lfeon":Z
    .end local v21    # "channelCount":I
    :cond_27
    const/4 v2, 0x0

    const/16 v1, 0x9

    const/4 v0, 0x4

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gr;->A0A(III)Ljava/lang/String;

    move-result-object v17

    .line 38018
    .local v2, "mimeType":Ljava/lang/String;
    const/16 v0, 0x20

    invoke-virtual {v13, v0}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 38019
    const/4 v0, 0x2

    invoke-virtual {v13, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v3

    .line 38020
    .local v5, "fscod":I
    const/4 v0, 0x3

    if-ne v3, v0, :cond_28

    .line 38021
    const/16 v17, 0x0

    .line 38022
    .end local v2    # "mimeType":Ljava/lang/String;
    .restart local v4    # "blk":I
    :cond_28
    const/4 v0, 0x6

    invoke-virtual {v13, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v2

    .line 38023
    .local v2, "frmsizecod":I
    sget-object v1, Lcom/facebook/ads/redexgen/X/Gr;->A02:[I

    div-int/lit8 v0, v2, 0x2

    aget v0, v1, v0

    mul-int/lit16 v4, v0, 0x3e8

    .line 38024
    .local v7, "bitrate":I
    invoke-static {v3, v2}, Lcom/facebook/ads/redexgen/X/Gr;->A00(II)I

    move-result v9

    .line 38025
    .restart local v12    # "frameSize":I
    const/16 v0, 0x8

    invoke-virtual {v13, v0}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 38026
    const/4 v0, 0x3

    invoke-virtual {v13, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v2

    .line 38027
    .restart local v11    # "acmod":I
    and-int/lit8 v0, v2, 0x1

    if-eqz v0, :cond_2c

    const/4 v0, 0x1

    if-eq v2, v0, :cond_2c

    .line 38028
    const/4 v1, 0x2

    invoke-virtual {v13, v1}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 38029
    :goto_d
    and-int/lit8 v0, v2, 0x4

    if-eqz v0, :cond_29

    .line 38030
    invoke-virtual {v13, v1}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 38031
    :cond_29
    if-ne v2, v1, :cond_2a

    .line 38032
    invoke-virtual {v13, v1}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 38033
    :cond_2a
    sget-object v0, Lcom/facebook/ads/redexgen/X/Gr;->A05:[I

    array-length v0, v0

    if-ge v3, v0, :cond_2b

    sget-object v0, Lcom/facebook/ads/redexgen/X/Gr;->A05:[I

    aget v6, v0, v3

    .line 38034
    .restart local v15    # "sampleRate":I
    :goto_e
    const/16 v15, 0x600

    .line 38035
    .restart local v10    # "sampleCount":I
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v1

    .line 38036
    .restart local v20    # "lfeon":Z
    sget-object v0, Lcom/facebook/ads/redexgen/X/Gr;->A04:[I

    aget v19, v0, v2

    add-int v19, v19, v1

    goto :goto_11

    .line 38037
    :cond_2b
    const/4 v6, -0x1

    goto :goto_e

    .line 38038
    :cond_2c
    const/4 v1, 0x2

    goto :goto_d

    .line 38039
    :cond_2d
    sget-object v2, Lcom/facebook/ads/redexgen/X/Gr;->A01:[Ljava/lang/String;

    const-string v1, "YsaJcRTRbu2uSs1yKbmR882rDeXrY1Vp"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "pJsPcDksUtPyGih90nhVsOa0zw9Rh9Kw"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_2e

    .line 38040
    invoke-virtual {v13, v5}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 38041
    :cond_2e
    const/4 v1, 0x3

    if-ge v8, v1, :cond_2f

    .line 38042
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4u;->A07()V

    .line 38043
    :cond_2f
    :goto_f
    if-nez v11, :cond_30

    if-eq v7, v1, :cond_30

    .line 38044
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4u;->A07()V

    .line 38045
    :cond_30
    const/4 v0, 0x2

    if-ne v11, v0, :cond_34

    if-eq v7, v1, :cond_31

    .line 38046
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 38047
    :cond_31
    const/4 v3, 0x6

    invoke-virtual {v13, v3}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 38048
    :goto_10
    const/16 v2, 0x9

    const/16 v1, 0xa

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gr;->A0A(III)Ljava/lang/String;

    move-result-object v17

    .line 38049
    .local v4, "mimeType":Ljava/lang/String;
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 38050
    invoke-virtual {v13, v3}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    .line 38051
    .local v2, "addbsil":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_32

    const/16 v0, 0x8

    invoke-virtual {v13, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    if-ne v0, v1, :cond_32

    .line 38052
    const/16 v2, 0x13

    const/16 v1, 0xe

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gr;->A0A(III)Ljava/lang/String;

    move-result-object v17

    .line 38053
    .end local v2    # "addbsil":I
    .end local v5    # "fscod":I
    .end local v7    # "bitrate":I
    .restart local v18    # "bitrate":I
    .restart local v21    # "channelCount":I
    :cond_32
    :goto_11
    new-instance v16, Lcom/facebook/ads/redexgen/X/Gq;

    const/16 p0, 0x0

    move/from16 v21, v9

    move/from16 v22, v15

    move/from16 v23, v4

    move/from16 v18, v11

    move/from16 v20, v6

    invoke-direct/range {v16 .. v24}, Lcom/facebook/ads/redexgen/X/Gq;-><init>(Ljava/lang/String;IIIIIILcom/facebook/ads/redexgen/X/Go;)V

    return-object v16

    .line 38054
    :cond_33
    const/4 v3, 0x6

    goto :goto_10

    .line 38055
    :cond_34
    const/4 v3, 0x6

    goto :goto_10

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static A0A(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gr;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0B()V
    .locals 1

    const/16 v0, 0x21

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Gr;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x64t
        0x70t
        0x61t
        0x6ct
        0x6at
        0x2at
        0x64t
        0x66t
        0x36t
        0x6bt
        0x7ft
        0x6et
        0x63t
        0x65t
        0x25t
        0x6ft
        0x6bt
        0x69t
        0x39t
        0x27t
        0x33t
        0x22t
        0x2ft
        0x29t
        0x69t
        0x23t
        0x27t
        0x25t
        0x75t
        0x6bt
        0x2ct
        0x29t
        0x25t
    .end array-data
.end method
