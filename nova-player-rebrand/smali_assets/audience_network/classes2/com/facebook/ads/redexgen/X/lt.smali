.class public final Lcom/facebook/ads/redexgen/X/lt;
.super Lcom/facebook/ads/redexgen/X/Jb;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Jc;
    }
.end annotation


# static fields
.field public static A05:[B

.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/Hh;

.field public A02:Lcom/facebook/ads/redexgen/X/Hj;

.field public A03:Lcom/facebook/ads/redexgen/X/Jc;

.field public A04:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3208
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "uV3egKqPt"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "vbtXlOI"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "gip2ILD7nBGTUOP5yb7zSULibNYEk"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ypzju5tbq0Qdtgd67o3qNaulkzBfCJSX"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "gCa1Tkio4U0hXnRqOcWVPONwWAtrpMS5"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "m"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "OXoEHzgO5FTzqO33f"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "i"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/lt;->A06:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/lt;->A04()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 95088
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Jb;-><init>()V

    return-void
.end method

.method public static A00(BII)I
    .locals 2

    .line 95089
    shr-int/2addr p0, p2

    rsub-int/lit8 v1, p1, 0x8

    const/16 v0, 0xff

    ushr-int/2addr v0, v1

    and-int/2addr p0, v0

    return p0
.end method

.method public static A01(BLcom/facebook/ads/redexgen/X/Jc;)I
    .locals 2

    .line 95090
    iget v1, p1, Lcom/facebook/ads/redexgen/X/Jc;->A00:I

    const/4 v0, 0x1

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/lt;->A00(BII)I

    move-result v1

    .line 95091
    .local v0, "modeNumber":I
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Jc;->A04:[Lcom/facebook/ads/redexgen/X/Hi;

    aget-object v0, v0, v1

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/Hi;->A03:Z

    if-nez v0, :cond_0

    .line 95092
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Jc;->A02:Lcom/facebook/ads/redexgen/X/Hj;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Hj;->A03:I

    .line 95093
    .local v1, "currentBlockSize":I
    .restart local v1    # "currentBlockSize":I
    :goto_0
    return v0

    .line 95094
    .end local v1    # "currentBlockSize":I
    :cond_0
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Jc;->A02:Lcom/facebook/ads/redexgen/X/Hj;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Hj;->A04:I

    goto :goto_0
.end method

.method private final A02(Lcom/facebook/ads/redexgen/X/4v;)Lcom/facebook/ads/redexgen/X/Jc;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95095
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lt;->A02:Lcom/facebook/ads/redexgen/X/Hj;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 95096
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Hk;->A06(Lcom/facebook/ads/redexgen/X/4v;)Lcom/facebook/ads/redexgen/X/Hj;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lt;->A02:Lcom/facebook/ads/redexgen/X/Hj;

    .line 95097
    return-object v1

    .line 95098
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lt;->A01:Lcom/facebook/ads/redexgen/X/Hh;

    if-nez v0, :cond_1

    .line 95099
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Hk;->A04(Lcom/facebook/ads/redexgen/X/4v;)Lcom/facebook/ads/redexgen/X/Hh;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lt;->A01:Lcom/facebook/ads/redexgen/X/Hh;

    .line 95100
    return-object v1

    .line 95101
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/lt;->A02:Lcom/facebook/ads/redexgen/X/Hj;

    .line 95102
    .local v0, "vorbisIdHeader":Lcom/facebook/ads/redexgen/X/Hj;
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/lt;->A01:Lcom/facebook/ads/redexgen/X/Hh;

    .line 95103
    .local v1, "commentHeader":Lcom/facebook/ads/redexgen/X/Hh;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0A()I

    move-result v0

    new-array v5, v0, [B

    .line 95104
    .local p0, "setupHeaderData":[B
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0A()I

    move-result v1

    const/4 v0, 0x0

    invoke-static {v2, v0, v5, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95105
    iget v0, v3, Lcom/facebook/ads/redexgen/X/Hj;->A05:I

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/Hk;->A0D(Lcom/facebook/ads/redexgen/X/4v;I)[Lcom/facebook/ads/redexgen/X/Hi;

    move-result-object v6

    .line 95106
    .local p1, "modes":[Lcom/facebook/ads/redexgen/X/Hi;
    array-length v0, v6

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hk;->A00(I)I

    move-result v7

    .line 95107
    .local p2, "iLogModes":I
    new-instance v2, Lcom/facebook/ads/redexgen/X/Jc;

    invoke-direct/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/Jc;-><init>(Lcom/facebook/ads/redexgen/X/Hj;Lcom/facebook/ads/redexgen/X/Hh;[B[Lcom/facebook/ads/redexgen/X/Hi;I)V

    return-object v2
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/lt;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1d

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

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/lt;->A05:[B

    return-void

    :array_0
    .array-data 1
        -0x6ct
        -0x58t
        -0x69t
        -0x64t
        -0x5et
        0x62t
        -0x57t
        -0x5et
        -0x5bt
        -0x6bt
        -0x64t
        -0x5at
    .end array-data
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/4v;J)V
    .locals 7

    .line 95108
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A08()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0A()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    if-ge v1, v0, :cond_0

    .line 95109
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0A()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0i([B)V

    .line 95110
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v6

    .line 95111
    .local v0, "data":[B
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0A()I

    move-result v0

    add-int/lit8 v1, v0, -0x4

    const-wide/16 v2, 0xff

    and-long v4, p1, v2

    long-to-int v0, v4

    int-to-byte v0, v0

    aput-byte v0, v6, v1

    .line 95112
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0A()I

    move-result v0

    add-int/lit8 v1, v0, -0x3

    const/16 v0, 0x8

    ushr-long v4, p1, v0

    and-long/2addr v4, v2

    long-to-int v0, v4

    int-to-byte v0, v0

    aput-byte v0, v6, v1

    .line 95113
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0A()I

    move-result v0

    add-int/lit8 v1, v0, -0x2

    const/16 v0, 0x10

    ushr-long v4, p1, v0

    and-long/2addr v4, v2

    long-to-int v0, v4

    int-to-byte v0, v0

    aput-byte v0, v6, v1

    .line 95114
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0A()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/16 v0, 0x18

    ushr-long/2addr p1, v0

    and-long/2addr v2, p1

    long-to-int v0, v2

    int-to-byte v0, v0

    aput-byte v0, v6, v1

    .line 95115
    return-void

    .line 95116
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0A()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0e(I)V

    goto :goto_0
.end method

.method public static A06(Lcom/facebook/ads/redexgen/X/4v;)Z
    .locals 1

    .line 95117
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0, p0, v0}, Lcom/facebook/ads/redexgen/X/Hk;->A0C(ILcom/facebook/ads/redexgen/X/4v;Z)Z

    move-result v0

    return v0
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/3K; {:try_start_0 .. :try_end_0} :catch_0

    .line 95118
    .local v0, "e":Lcom/facebook/ads/redexgen/X/3K;
    :catch_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final A09(Lcom/facebook/ads/redexgen/X/4v;)J
    .locals 6

    .line 95119
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v0

    const/4 v5, 0x0

    aget-byte v0, v0, v5

    const/4 v4, 0x1

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_0

    .line 95120
    const-wide/16 v0, -0x1

    return-wide v0

    .line 95121
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v0

    aget-byte v3, v0, v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/lt;->A06:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x43

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/lt;->A06:[Ljava/lang/String;

    const-string v1, "17tCp0Qcd"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "uqZ30DdcDRhFwj0kQ"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lt;->A03:Lcom/facebook/ads/redexgen/X/Jc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A02(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Jc;

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/lt;->A01(BLcom/facebook/ads/redexgen/X/Jc;)I

    move-result v1

    .line 95122
    .local v0, "packetBlockSize":I
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lt;->A04:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/lt;->A00:I

    add-int/2addr v0, v1

    div-int/lit8 v5, v0, 0x4

    .line 95123
    .local v1, "samplesInPacket":I
    :cond_2
    int-to-long v2, v5

    invoke-static {p1, v2, v3}, Lcom/facebook/ads/redexgen/X/lt;->A05(Lcom/facebook/ads/redexgen/X/4v;J)V

    .line 95124
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/lt;->A04:Z

    .line 95125
    iput v1, p0, Lcom/facebook/ads/redexgen/X/lt;->A00:I

    .line 95126
    int-to-long v0, v5

    return-wide v0
.end method

.method public final A0A(J)V
    .locals 4

    .line 95127
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Jb;->A0A(J)V

    .line 95128
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    cmp-long v0, p1, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lt;->A04:Z

    .line 95129
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lt;->A02:Lcom/facebook/ads/redexgen/X/Hj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lt;->A02:Lcom/facebook/ads/redexgen/X/Hj;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/Hj;->A03:I

    :cond_0
    iput v1, p0, Lcom/facebook/ads/redexgen/X/lt;->A00:I

    .line 95130
    return-void

    .line 95131
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0B(Z)V
    .locals 1

    .line 95132
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Jb;->A0B(Z)V

    .line 95133
    if-eqz p1, :cond_0

    .line 95134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lt;->A03:Lcom/facebook/ads/redexgen/X/Jc;

    .line 95135
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lt;->A02:Lcom/facebook/ads/redexgen/X/Hj;

    .line 95136
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lt;->A01:Lcom/facebook/ads/redexgen/X/Hh;

    .line 95137
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lt;->A00:I

    .line 95138
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lt;->A04:Z

    .line 95139
    return-void
.end method

.method public final A0C(Lcom/facebook/ads/redexgen/X/4v;JLcom/facebook/ads/redexgen/X/Ja;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "#3.format"
        }
        result = false
    .end annotation

    .line 95140
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lt;->A03:Lcom/facebook/ads/redexgen/X/Jc;

    if-eqz v0, :cond_0

    .line 95141
    iget-object v0, p4, Lcom/facebook/ads/redexgen/X/Ja;->A00:Lcom/facebook/ads/redexgen/X/qI;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95142
    const/4 v0, 0x0

    return v0

    .line 95143
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/lt;->A02(Lcom/facebook/ads/redexgen/X/4v;)Lcom/facebook/ads/redexgen/X/Jc;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lt;->A03:Lcom/facebook/ads/redexgen/X/Jc;

    .line 95144
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lt;->A03:Lcom/facebook/ads/redexgen/X/Jc;

    const/4 v7, 0x1

    if-nez v0, :cond_1

    .line 95145
    return v7

    .line 95146
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lt;->A03:Lcom/facebook/ads/redexgen/X/Jc;

    .line 95147
    .local v0, "vorbisSetup":Lcom/facebook/ads/redexgen/X/Jc;
    iget-object v5, v1, Lcom/facebook/ads/redexgen/X/Jc;->A02:Lcom/facebook/ads/redexgen/X/Hj;

    .line 95148
    .local v2, "idHeader":Lcom/facebook/ads/redexgen/X/Hj;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 95149
    .local v3, "codecInitializationData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Hj;->A09:[B

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95150
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Jc;->A03:[B

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95151
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Jc;->A01:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Hh;->A02:[Ljava/lang/String;

    .line 95152
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/jW;->A02([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 95153
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hk;->A02(Ljava/util/List;)Lcom/facebook/ads/androidx/media3/common/Metadata;

    move-result-object v2

    .line 95154
    .local v4, "metadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    new-instance v6, Lcom/facebook/ads/redexgen/X/2p;

    invoke-direct {v6}, Lcom/facebook/ads/redexgen/X/2p;-><init>()V

    .line 95155
    const/4 v4, 0x0

    const/16 v1, 0xc

    const/16 v0, 0x16

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/lt;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/2p;->A11(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    iget v0, v5, Lcom/facebook/ads/redexgen/X/Hj;->A02:I

    .line 95156
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0a(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    iget v0, v5, Lcom/facebook/ads/redexgen/X/Hj;->A00:I

    .line 95157
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0j(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    iget v0, v5, Lcom/facebook/ads/redexgen/X/Hj;->A05:I

    .line 95158
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0b(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    iget v0, v5, Lcom/facebook/ads/redexgen/X/Hj;->A06:I

    .line 95159
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0m(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 95160
    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/2p;->A12(Ljava/util/List;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 95161
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/2p;->A0v(Lcom/facebook/ads/androidx/media3/common/Metadata;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 95162
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2p;->A14()Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v0

    iput-object v0, p4, Lcom/facebook/ads/redexgen/X/Ja;->A00:Lcom/facebook/ads/redexgen/X/qI;

    .line 95163
    return v7
.end method
