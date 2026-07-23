.class public final Lcom/facebook/ads/redexgen/X/l1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/LL;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/kz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImaAdPcmOutputWriter"
.end annotation


# static fields
.field public static A0C:[B

.field public static A0D:[Ljava/lang/String;

.field public static final A0E:[I

.field public static final A0F:[I


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:J

.field public final A04:I

.field public final A05:I

.field public final A06:Lcom/facebook/ads/redexgen/X/qI;

.field public final A07:Lcom/facebook/ads/redexgen/X/4v;

.field public final A08:Lcom/facebook/ads/redexgen/X/HA;

.field public final A09:Lcom/facebook/ads/redexgen/X/Hd;

.field public final A0A:Lcom/facebook/ads/redexgen/X/LN;

.field public final A0B:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3173
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "bYPw9lwZ90LIMnDVrWR9nivpaP"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "yFs6hGP2BjxCIYW4vwAvQB"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ThDP9clSa9Dn"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ZJ8KrZKjZ6YsWfu6TvhIHbPrHjBQXt73"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "tonD2drFJKLGWlZx83XdaJTA2vW"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "BxtbVLMcuUKNP9oDIvLT"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "q4ZypHVOEkKJ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "0njOXKHdBu5kWS0YMUnz8"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/l1;->A0D:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/l1;->A04()V

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/l1;->A0E:[I

    .line 3174
    const/16 v0, 0x59

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/facebook/ads/redexgen/X/l1;->A0F:[I

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        0x2
        0x4
        0x6
        0x8
        -0x1
        -0x1
        -0x1
        -0x1
        0x2
        0x4
        0x6
        0x8
    .end array-data

    :array_1
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0x10
        0x11
        0x13
        0x15
        0x17
        0x19
        0x1c
        0x1f
        0x22
        0x25
        0x29
        0x2d
        0x32
        0x37
        0x3c
        0x42
        0x49
        0x50
        0x58
        0x61
        0x6b
        0x76
        0x82
        0x8f
        0x9d
        0xad
        0xbe
        0xd1
        0xe6
        0xfd
        0x117
        0x133
        0x151
        0x173
        0x198
        0x1c1
        0x1ee
        0x220
        0x256
        0x292
        0x2d4
        0x31c
        0x36c
        0x3c3
        0x424
        0x48e
        0x502
        0x583
        0x610
        0x6ab
        0x756
        0x812
        0x8e0
        0x9c3
        0xabd
        0xbd0
        0xcff
        0xe4c
        0xfba
        0x114c
        0x1307
        0x14ee
        0x1706
        0x1954
        0x1bdc
        0x1ea5
        0x21b6
        0x2515
        0x28ca
        0x2cdf
        0x315b
        0x364b
        0x3bb9
        0x41b2
        0x4844
        0x4f7e
        0x5771
        0x602f
        0x69ce
        0x7462
        0x7fff
    .end array-data
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/HA;Lcom/facebook/ads/redexgen/X/Hd;Lcom/facebook/ads/redexgen/X/LN;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/3K;
        }
    .end annotation

    .line 92115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92116
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/l1;->A08:Lcom/facebook/ads/redexgen/X/HA;

    .line 92117
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/l1;->A09:Lcom/facebook/ads/redexgen/X/Hd;

    .line 92118
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/l1;->A0A:Lcom/facebook/ads/redexgen/X/LN;

    .line 92119
    iget v0, p3, Lcom/facebook/ads/redexgen/X/LN;->A04:I

    div-int/lit8 v0, v0, 0xa

    const/4 v2, 0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/l1;->A05:I

    .line 92120
    iget-object v1, p3, Lcom/facebook/ads/redexgen/X/LN;->A06:[B

    new-instance v0, Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4v;-><init>([B)V

    .line 92121
    .local v0, "scratch":Lcom/facebook/ads/redexgen/X/4v;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0G()I

    .line 92122
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0G()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/l1;->A04:I

    .line 92123
    iget v5, p3, Lcom/facebook/ads/redexgen/X/LN;->A05:I

    .line 92124
    .local v2, "numChannels":I
    iget v1, p3, Lcom/facebook/ads/redexgen/X/LN;->A02:I

    mul-int/lit8 v0, v5, 0x4

    sub-int/2addr v1, v0

    mul-int/lit8 v4, v1, 0x8

    iget v0, p3, Lcom/facebook/ads/redexgen/X/LN;->A01:I

    mul-int/2addr v0, v5

    div-int/2addr v4, v0

    add-int/2addr v4, v2

    .line 92125
    .local v3, "expectedFramesPerBlock":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/l1;->A04:I

    if-ne v0, v4, :cond_0

    .line 92126
    iget v1, p0, Lcom/facebook/ads/redexgen/X/l1;->A05:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/l1;->A04:I

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A05(II)I

    move-result v2

    .line 92127
    .local v1, "maxBlocksToDecode":I
    iget v0, p3, Lcom/facebook/ads/redexgen/X/LN;->A02:I

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/l1;->A0B:[B

    .line 92128
    iget v0, p0, Lcom/facebook/ads/redexgen/X/l1;->A04:I

    .line 92129
    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/l1;->A02(II)I

    move-result v1

    mul-int/2addr v1, v2

    new-instance v0, Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4v;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/l1;->A07:Lcom/facebook/ads/redexgen/X/4v;

    .line 92130
    iget v1, p3, Lcom/facebook/ads/redexgen/X/LN;->A04:I

    iget v0, p3, Lcom/facebook/ads/redexgen/X/LN;->A02:I

    mul-int/2addr v1, v0

    mul-int/lit8 v4, v1, 0x8

    iget v0, p0, Lcom/facebook/ads/redexgen/X/l1;->A04:I

    div-int/2addr v4, v0

    .line 92131
    .local v4, "constantBitrate":I
    new-instance v3, Lcom/facebook/ads/redexgen/X/2p;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/2p;-><init>()V

    .line 92132
    const/16 v2, 0x22

    const/16 v1, 0x9

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/l1;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/2p;->A11(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 92133
    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/2p;->A0a(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 92134
    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/2p;->A0j(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/l1;->A05:I

    .line 92135
    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/l1;->A02(II)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0h(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    iget v0, p3, Lcom/facebook/ads/redexgen/X/LN;->A05:I

    .line 92136
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0b(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    iget v0, p3, Lcom/facebook/ads/redexgen/X/LN;->A04:I

    .line 92137
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0m(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    .line 92138
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0i(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 92139
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2p;->A14()Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/l1;->A06:Lcom/facebook/ads/redexgen/X/qI;

    .line 92140
    return-void

    .line 92141
    .end local v1    # "maxBlocksToDecode":I
    .end local v4    # "constantBitrate":I
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x7

    const/16 v1, 0x1b

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/l1;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x7

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/l1;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/l1;->A04:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/3K;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/3K;

    move-result-object v0

    throw v0
.end method

.method private A00(I)I
    .locals 1

    .line 92142
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l1;->A0A:Lcom/facebook/ads/redexgen/X/LN;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/LN;->A05:I

    mul-int/lit8 v0, v0, 0x2

    div-int/2addr p1, v0

    return p1
.end method

.method private A01(I)I
    .locals 1

    .line 92143
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l1;->A0A:Lcom/facebook/ads/redexgen/X/LN;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/LN;->A05:I

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/l1;->A02(II)I

    move-result v0

    return v0
.end method

.method public static A02(II)I
    .locals 0

    .line 92144
    mul-int/lit8 p0, p0, 0x2

    mul-int/2addr p0, p1

    return p0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/l1;->A0C:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x45

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

    const/16 v0, 0x2b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/l1;->A0C:[B

    return-void

    :array_0
    .array-data 1
        -0x78t
        0x6dt
        -0x4ct
        -0x44t
        -0x3ft
        -0x79t
        0x6dt
        -0x33t
        0x0t
        -0x8t
        -0x13t
        -0x15t
        -0x4t
        -0x13t
        -0x14t
        -0x58t
        -0x12t
        -0x6t
        -0x17t
        -0xbt
        -0x13t
        -0x5t
        -0x58t
        -0x8t
        -0x13t
        -0x6t
        -0x58t
        -0x16t
        -0xct
        -0x9t
        -0x15t
        -0xdt
        -0x3et
        -0x58t
        -0x7t
        0xdt
        -0x4t
        0x1t
        0x7t
        -0x39t
        0xat
        -0x7t
        0xft
    .end array-data
.end method

.method private A05(I)V
    .locals 10

    .line 92145
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/l1;->A03:J

    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/l1;->A02:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l1;->A0A:Lcom/facebook/ads/redexgen/X/LN;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/LN;->A04:I

    int-to-long v8, v0

    .line 92146
    const-wide/32 v6, 0xf4240

    invoke-static/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/5C;->A0U(JJJ)J

    move-result-wide v0

    add-long/2addr v2, v0

    .line 92147
    .local v0, "timeUs":J
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/l1;->A01(I)I

    move-result v5

    .line 92148
    .local v2, "size":I
    iget v6, p0, Lcom/facebook/ads/redexgen/X/l1;->A01:I

    sub-int/2addr v6, v5

    .line 92149
    .local v3, "offset":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/l1;->A09:Lcom/facebook/ads/redexgen/X/Hd;

    const/4 v4, 0x1

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/Hd;->AIu(JIIILcom/facebook/ads/redexgen/X/Hb;)V

    .line 92150
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/l1;->A02:J

    int-to-long v0, p1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/l1;->A02:J

    .line 92151
    iget v0, p0, Lcom/facebook/ads/redexgen/X/l1;->A01:I

    sub-int/2addr v0, v5

    iput v0, p0, Lcom/facebook/ads/redexgen/X/l1;->A01:I

    .line 92152
    return-void
.end method

.method private A06([BII[B)V
    .locals 11

    .line 92153
    move-object v5, p0

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/l1;->A0A:Lcom/facebook/ads/redexgen/X/LN;

    iget v2, v0, Lcom/facebook/ads/redexgen/X/LN;->A02:I

    .line 92154
    .local v1, "blockSize":I
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/l1;->A0A:Lcom/facebook/ads/redexgen/X/LN;

    iget v4, v0, Lcom/facebook/ads/redexgen/X/LN;->A05:I

    .line 92155
    .local v2, "numChannels":I
    mul-int v0, p2, v2

    .line 92156
    .local v3, "blockStartIndex":I
    mul-int/lit8 v1, p3, 0x4

    add-int/2addr v1, v0

    .line 92157
    .local v4, "headerStartIndex":I
    mul-int/lit8 v10, v4, 0x4

    add-int/2addr v10, v1

    .line 92158
    .local v5, "dataStartIndex":I
    div-int/2addr v2, v4

    add-int/lit8 v9, v2, -0x4

    .line 92159
    .local v6, "dataSizeBytes":I
    add-int/lit8 v0, v1, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v3, v0, 0x8

    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v3, v0

    .line 92160
    .local v7, "predictedSample":I
    add-int/lit8 v0, v1, 0x2

    aget-byte v0, p1, v0

    and-int/lit16 v1, v0, 0xff

    const/16 v0, 0x58

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 92161
    .local v8, "stepIndex":I
    sget-object v0, Lcom/facebook/ads/redexgen/X/l1;->A0F:[I

    aget v8, v0, v2

    .line 92162
    .local v9, "step":I
    iget v0, v5, Lcom/facebook/ads/redexgen/X/l1;->A04:I

    mul-int/2addr v0, p2

    mul-int/2addr v0, v4

    add-int/2addr v0, p3

    mul-int/lit8 v7, v0, 0x2

    .line 92163
    .local v10, "outputIndex":I
    and-int/lit16 v0, v3, 0xff

    int-to-byte v0, v0

    aput-byte v0, p4, v7

    .line 92164
    add-int/lit8 v1, v7, 0x1

    shr-int/lit8 v0, v3, 0x8

    int-to-byte v0, v0

    aput-byte v0, p4, v1

    .line 92165
    const/4 v5, 0x0

    .local p0, "i":I
    :goto_0
    mul-int/lit8 v0, v9, 0x2

    if-ge v5, v0, :cond_2

    .line 92166
    div-int/lit8 v6, v5, 0x8

    .line 92167
    .local p1, "dataSegmentIndex":I
    div-int/lit8 v0, v5, 0x2

    rem-int/lit8 v1, v0, 0x4

    .line 92168
    .local p2, "dataSegmentOffset":I
    mul-int/2addr v6, v4

    mul-int/lit8 v0, v6, 0x4

    add-int/2addr v0, v10

    add-int/2addr v0, v1

    .line 92169
    .local p3, "dataIndex":I
    aget-byte v0, p1, v0

    and-int/lit16 v1, v0, 0xff

    .line 92170
    .local p4, "originalSample":I
    rem-int/lit8 v0, v5, 0x2

    if-nez v0, :cond_1

    .line 92171
    and-int/lit8 v6, v1, 0xf

    .line 92172
    :goto_1
    and-int/lit8 v0, v6, 0x7

    .line 92173
    .local p5, "delta":I
    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr v0, v8

    shr-int/lit8 v1, v0, 0x3

    .line 92174
    .local v0, "difference":I
    and-int/lit8 v0, v6, 0x8

    if-eqz v0, :cond_0

    .line 92175
    neg-int v1, v1

    .line 92176
    :cond_0
    add-int/2addr v3, v1

    .line 92177
    .end local v0    # "difference":I
    .local p6, "difference":I
    const/16 v1, -0x8000

    .end local v1    # "blockSize":I
    .local p7, "blockSize":I
    const/16 v0, 0x7fff

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A07(III)I

    move-result v3

    .line 92178
    mul-int/lit8 v0, v4, 0x2

    add-int/2addr v7, v0

    .line 92179
    and-int/lit16 v0, v3, 0xff

    int-to-byte v0, v0

    aput-byte v0, p4, v7

    .line 92180
    add-int/lit8 v1, v7, 0x1

    shr-int/lit8 v0, v3, 0x8

    int-to-byte v0, v0

    aput-byte v0, p4, v1

    .line 92181
    sget-object v0, Lcom/facebook/ads/redexgen/X/l1;->A0E:[I

    aget v0, v0, v6

    add-int/2addr v2, v0

    .line 92182
    sget-object v0, Lcom/facebook/ads/redexgen/X/l1;->A0F:[I

    array-length v0, v0

    add-int/lit8 v1, v0, -0x1

    const/4 v0, 0x0

    invoke-static {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/5C;->A07(III)I

    move-result v2

    .line 92183
    sget-object v0, Lcom/facebook/ads/redexgen/X/l1;->A0F:[I

    aget v8, v0, v2

    .line 92184
    .end local p1    # "dataSegmentIndex":I
    .end local p2    # "dataSegmentOffset":I
    .end local p3    # "dataIndex":I
    .end local p4    # "originalSample":I
    .end local p5
    .end local p6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 92185
    :cond_1
    shr-int/lit8 v6, v1, 0x4

    goto :goto_1

    .line 92186
    .end local p0    # "i":I
    .end local p7
    .restart local v1    # "blockSize":I
    :cond_2
    return-void
.end method

.method private A07([BILcom/facebook/ads/redexgen/X/4v;)V
    .locals 3

    .line 92187
    const/4 v2, 0x0

    .local v0, "blockIndex":I
    :goto_0
    if-ge v2, p2, :cond_1

    .line 92188
    const/4 v1, 0x0

    .local v1, "channelIndex":I
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l1;->A0A:Lcom/facebook/ads/redexgen/X/LN;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/LN;->A05:I

    if-ge v1, v0, :cond_0

    .line 92189
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v0

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/l1;->A06([BII[B)V

    .line 92190
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 92191
    .end local v1    # "channelIndex":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 92192
    .end local v0    # "blockIndex":I
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/l1;->A04:I

    mul-int/2addr v0, p2

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/l1;->A01(I)I

    move-result v1

    .line 92193
    .local v0, "decodedDataSize":I
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 92194
    invoke-virtual {p3, v1}, Lcom/facebook/ads/redexgen/X/4v;->A0e(I)V

    .line 92195
    return-void
.end method


# virtual methods
.method public final AA8(IJ)V
    .locals 8

    .line 92196
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l1;->A08:Lcom/facebook/ads/redexgen/X/HA;

    new-instance v1, Lcom/facebook/ads/redexgen/X/ky;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/l1;->A0A:Lcom/facebook/ads/redexgen/X/LN;

    iget v3, p0, Lcom/facebook/ads/redexgen/X/l1;->A04:I

    int-to-long v4, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/ky;-><init>(Lcom/facebook/ads/redexgen/X/LN;IJJ)V

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/HA;->AJ7(Lcom/facebook/ads/redexgen/X/HY;)V

    .line 92197
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/l1;->A09:Lcom/facebook/ads/redexgen/X/Hd;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l1;->A06:Lcom/facebook/ads/redexgen/X/qI;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Hd;->A6e(Lcom/facebook/ads/redexgen/X/qI;)V

    .line 92198
    return-void
.end method

.method public final AIk(J)V
    .locals 2

    .line 92199
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/l1;->A00:I

    .line 92200
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/l1;->A03:J

    .line 92201
    iput v0, p0, Lcom/facebook/ads/redexgen/X/l1;->A01:I

    .line 92202
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/l1;->A02:J

    .line 92203
    return-void
.end method

.method public final AIt(Lcom/facebook/ads/redexgen/X/ms;J)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92204
    iget v1, p0, Lcom/facebook/ads/redexgen/X/l1;->A05:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/l1;->A01:I

    .line 92205
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/l1;->A00(I)I

    move-result v0

    sub-int/2addr v1, v0

    .line 92206
    .local v0, "targetFramesRemaining":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/l1;->A04:I

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A05(II)I

    move-result v1

    .line 92207
    .local v1, "blocksToDecode":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l1;->A0A:Lcom/facebook/ads/redexgen/X/LN;

    iget v3, v0, Lcom/facebook/ads/redexgen/X/LN;->A02:I

    mul-int/2addr v3, v1

    .line 92208
    .local v2, "targetReadBytes":I
    const-wide/16 v1, 0x0

    cmp-long v0, p2, v1

    if-nez v0, :cond_1

    const/4 v4, 0x1

    .line 92209
    .local v3, "endOfSampleData":Z
    :goto_0
    if-nez v4, :cond_2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/l1;->A00:I

    if-ge v0, v3, :cond_2

    .line 92210
    iget v0, p0, Lcom/facebook/ads/redexgen/X/l1;->A00:I

    sub-int v0, v3, v0

    int-to-long v0, v0

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v2, v0

    .line 92211
    .local p0, "bytesToRead":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/l1;->A0B:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/l1;->A00:I

    invoke-interface {p1, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/ms;->read([BII)I

    move-result v1

    .line 92212
    .local v4, "bytesAppended":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 92213
    const/4 v4, 0x1

    goto :goto_0

    .line 92214
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/l1;->A00:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/l1;->A00:I

    goto :goto_0

    .line 92215
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 92216
    :cond_2
    iget v2, p0, Lcom/facebook/ads/redexgen/X/l1;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l1;->A0A:Lcom/facebook/ads/redexgen/X/LN;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/LN;->A02:I

    div-int/2addr v2, v0

    .line 92217
    .local v4, "pendingBlockCount":I
    if-lez v2, :cond_4

    .line 92218
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/l1;->A0B:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l1;->A07:Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {p0, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/l1;->A07([BILcom/facebook/ads/redexgen/X/4v;)V

    .line 92219
    iget v1, p0, Lcom/facebook/ads/redexgen/X/l1;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l1;->A0A:Lcom/facebook/ads/redexgen/X/LN;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/LN;->A02:I

    mul-int/2addr v0, v2

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/l1;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/l1;->A0D:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x54

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 92220
    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/l1;->A0D:[Ljava/lang/String;

    const-string v1, "TvVFAtGQ"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l1;->A07:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0A()I

    move-result v2

    .line 92221
    .local p0, "decodedDataSize":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/l1;->A09:Lcom/facebook/ads/redexgen/X/Hd;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l1;->A07:Lcom/facebook/ads/redexgen/X/4v;

    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/Hd;->AIr(Lcom/facebook/ads/redexgen/X/4v;I)V

    .line 92222
    iget v0, p0, Lcom/facebook/ads/redexgen/X/l1;->A01:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/l1;->A01:I

    .line 92223
    iget v0, p0, Lcom/facebook/ads/redexgen/X/l1;->A01:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/l1;->A00(I)I

    move-result v1

    .line 92224
    .local p1, "pendingOutputFrames":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/l1;->A05:I

    if-lt v1, v0, :cond_4

    .line 92225
    iget v0, p0, Lcom/facebook/ads/redexgen/X/l1;->A05:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/l1;->A05(I)V

    .line 92226
    .end local p0    # "decodedDataSize":I
    .end local p1    # "pendingOutputFrames":I
    :cond_4
    if-eqz v4, :cond_5

    .line 92227
    iget v0, p0, Lcom/facebook/ads/redexgen/X/l1;->A01:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/l1;->A00(I)I

    move-result v0

    .line 92228
    .local p0, "pendingOutputFrames":I
    if-lez v0, :cond_5

    .line 92229
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/l1;->A05(I)V

    .line 92230
    .end local p0    # "pendingOutputFrames":I
    :cond_5
    return v4
.end method
