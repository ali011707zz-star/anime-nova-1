.class public final Lcom/facebook/ads/redexgen/X/lv;
.super Lcom/facebook/ads/redexgen/X/Jb;
.source ""


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;

.field public static final A03:[B

.field public static final A04:[B


# instance fields
.field public A00:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3209
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "llfHvvp5w7AsdcfCf5e"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "amqCmPcUyTwYr5NdTloeCtiw"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "0NAIhycYLxj75"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "dj34azdkZPKXRKaV6TbpL4Sg"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ijcAEj6S85lKiCQyoflHjypUMqTEGqRn"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "eY0hdp8"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "jqGnWXF3Z8AkxtecEpgwxV1mUEmkJWKs"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "4zwbE0EN4gXO5y3Vp0p"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/lv;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/lv;->A01()V

    const/16 v1, 0x8

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/lv;->A04:[B

    .line 3210
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/facebook/ads/redexgen/X/lv;->A03:[B

    return-void

    :array_0
    .array-data 1
        0x4ft
        0x70t
        0x75t
        0x73t
        0x48t
        0x65t
        0x61t
        0x64t
    .end array-data

    :array_1
    .array-data 1
        0x4ft
        0x70t
        0x75t
        0x73t
        0x54t
        0x61t
        0x67t
        0x73t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 95169
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Jb;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/lv;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x7d

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
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/lv;->A01:[B

    return-void

    :array_0
    .array-data 1
        -0x1t
        0x13t
        0x2t
        0x7t
        0xdt
        -0x33t
        0xdt
        0xet
        0x13t
        0x11t
    .end array-data
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/4v;)Z
    .locals 1

    .line 95170
    sget-object v0, Lcom/facebook/ads/redexgen/X/lv;->A04:[B

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/lv;->A03(Lcom/facebook/ads/redexgen/X/4v;[B)Z

    move-result v0

    return v0
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/4v;[B)Z
    .locals 4

    .line 95171
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v1

    array-length v0, p1

    const/4 v3, 0x0

    if-ge v1, v0, :cond_0

    .line 95172
    return v3

    .line 95173
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v2

    .line 95174
    .local v0, "startPosition":I
    array-length v0, p1

    new-array v1, v0, [B

    .line 95175
    .local v1, "header":[B
    array-length v0, p1

    invoke-virtual {p0, v1, v3, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0k([BII)V

    .line 95176
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 95177
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final A09(Lcom/facebook/ads/redexgen/X/4v;)J
    .locals 2

    .line 95178
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HT;->A05([B)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Jb;->A06(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final A0B(Z)V
    .locals 1

    .line 95179
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Jb;->A0B(Z)V

    .line 95180
    if-eqz p1, :cond_0

    .line 95181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lv;->A00:Z

    .line 95182
    :cond_0
    return-void
.end method

.method public final A0C(Lcom/facebook/ads/redexgen/X/4v;JLcom/facebook/ads/redexgen/X/Ja;)Z
    .locals 7
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Replaces ImmutableList.of with MetaExoPlayerCustomizedCollections"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/3K;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "#3.format"
        }
        result = false
    .end annotation

    .line 95183
    sget-object v0, Lcom/facebook/ads/redexgen/X/lv;->A04:[B

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/lv;->A03(Lcom/facebook/ads/redexgen/X/4v;[B)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 95184
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0A()I

    move-result v0

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 95185
    .local v0, "headerBytes":[B
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HT;->A01([B)I

    move-result v6

    .line 95186
    .local v2, "channelCount":I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HT;->A06([B)Ljava/util/List;

    move-result-object v5

    .line 95187
    .local v3, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    iget-object v0, p4, Lcom/facebook/ads/redexgen/X/Ja;->A00:Lcom/facebook/ads/redexgen/X/qI;

    if-eqz v0, :cond_0

    .line 95188
    return v3

    .line 95189
    :cond_0
    new-instance v4, Lcom/facebook/ads/redexgen/X/2p;

    invoke-direct {v4}, Lcom/facebook/ads/redexgen/X/2p;-><init>()V

    .line 95190
    const/4 v2, 0x0

    const/16 v1, 0xa

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lv;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/2p;->A11(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 95191
    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/2p;->A0b(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    .line 95192
    const v0, 0xbb80

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0m(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 95193
    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/2p;->A12(Ljava/util/List;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 95194
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2p;->A14()Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v0

    iput-object v0, p4, Lcom/facebook/ads/redexgen/X/Ja;->A00:Lcom/facebook/ads/redexgen/X/qI;

    .line 95195
    return v3

    .line 95196
    .end local v0    # "headerBytes":[B
    .end local v2    # "channelCount":I
    .end local v3    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/lv;->A03:[B

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/lv;->A03(Lcom/facebook/ads/redexgen/X/4v;[B)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 95197
    iget-object v0, p4, Lcom/facebook/ads/redexgen/X/Ja;->A00:Lcom/facebook/ads/redexgen/X/qI;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A02(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95198
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lv;->A00:Z

    if-eqz v0, :cond_2

    .line 95199
    return v3

    .line 95200
    :cond_2
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/lv;->A00:Z

    .line 95201
    sget-object v0, Lcom/facebook/ads/redexgen/X/lv;->A03:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 95202
    invoke-static {p1, v1, v1}, Lcom/facebook/ads/redexgen/X/Hk;->A05(Lcom/facebook/ads/redexgen/X/4v;ZZ)Lcom/facebook/ads/redexgen/X/Hh;

    move-result-object v0

    .line 95203
    .local v0, "commentHeader":Lcom/facebook/ads/redexgen/X/Hh;
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Hh;->A02:[Ljava/lang/String;

    .line 95204
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/jW;->A02([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 95205
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hk;->A02(Ljava/util/List;)Lcom/facebook/ads/androidx/media3/common/Metadata;

    move-result-object v5

    .line 95206
    .local v2, "vorbisMetadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    if-nez v5, :cond_3

    .line 95207
    return v3

    .line 95208
    :cond_3
    iget-object v0, p4, Lcom/facebook/ads/redexgen/X/Ja;->A00:Lcom/facebook/ads/redexgen/X/qI;

    .line 95209
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/qI;->A07()Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/lv;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/lv;->A02:[Ljava/lang/String;

    const-string v1, "80vtnZ0VGuLh5BtNytGnkcmL"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "kfnMkjsOg47yHVBMKsSTRfGb"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iget-object v0, p4, Lcom/facebook/ads/redexgen/X/Ja;->A00:Lcom/facebook/ads/redexgen/X/qI;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/qI;->A0P:Lcom/facebook/ads/androidx/media3/common/Metadata;

    .line 95210
    invoke-virtual {v5, v0}, Lcom/facebook/ads/androidx/media3/common/Metadata;->A04(Lcom/facebook/ads/androidx/media3/common/Metadata;)Lcom/facebook/ads/androidx/media3/common/Metadata;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0v(Lcom/facebook/ads/androidx/media3/common/Metadata;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 95211
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2p;->A14()Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v0

    iput-object v0, p4, Lcom/facebook/ads/redexgen/X/Ja;->A00:Lcom/facebook/ads/redexgen/X/qI;

    .line 95212
    return v3

    .line 95213
    .end local v0    # "commentHeader":Lcom/facebook/ads/redexgen/X/Hh;
    .end local v2    # "vorbisMetadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    :cond_5
    iget-object v0, p4, Lcom/facebook/ads/redexgen/X/Ja;->A00:Lcom/facebook/ads/redexgen/X/qI;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A02(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95214
    return v1
.end method
