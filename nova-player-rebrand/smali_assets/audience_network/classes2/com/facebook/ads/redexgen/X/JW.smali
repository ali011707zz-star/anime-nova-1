.class public final Lcom/facebook/ads/redexgen/X/JW;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A05:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Z

.field public final A03:Lcom/facebook/ads/redexgen/X/4v;

.field public final A04:Lcom/facebook/ads/redexgen/X/JX;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 834
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "woqNFTEJ1xTDdkI437bHtamdu4tXteqY"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "wF9EC05jEy4IHYIwxnPCGFJPaq3oRF"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "mvXHGyDRnyfaH7rDUTrxLU"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Y3pxu"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "rdrAFFFqCGKv06lfALLqqSpp4fott15M"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "y1UafG2XcmxkBa1SOf4hmBpigeNmapwO"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "We1qkMSr6SX3sfWhtZ2XCBlgLjoOgFnd"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "pWnGwQQvfY"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/JW;->A05:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 43026
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43027
    new-instance v0, Lcom/facebook/ads/redexgen/X/JX;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/JX;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JW;->A04:Lcom/facebook/ads/redexgen/X/JX;

    .line 43028
    const v0, 0xfe01

    new-array v2, v0, [B

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/4v;-><init>([BI)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JW;->A03:Lcom/facebook/ads/redexgen/X/4v;

    .line 43029
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/JW;->A00:I

    return-void
.end method

.method private A00(I)I
    .locals 4

    .line 43030
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/JW;->A01:I

    .line 43031
    const/4 v3, 0x0

    .line 43032
    .local v0, "size":I
    :cond_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/JW;->A01:I

    add-int/2addr v1, p1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JW;->A04:Lcom/facebook/ads/redexgen/X/JX;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/JX;->A02:I

    if-ge v1, v0, :cond_1

    .line 43033
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JW;->A04:Lcom/facebook/ads/redexgen/X/JX;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/JX;->A09:[I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/JW;->A01:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/JW;->A01:I

    add-int/2addr v1, p1

    aget v1, v2, v1

    .line 43034
    .local v1, "segmentLength":I
    add-int/2addr v3, v1

    .line 43035
    const/16 v0, 0xff

    if-eq v1, v0, :cond_0

    .line 43036
    :cond_1
    return v3
.end method


# virtual methods
.method public final A01()Lcom/facebook/ads/redexgen/X/4v;
    .locals 1

    .line 43037
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JW;->A03:Lcom/facebook/ads/redexgen/X/4v;

    return-object v0
.end method

.method public final A02()Lcom/facebook/ads/redexgen/X/JX;
    .locals 1

    .line 43038
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JW;->A04:Lcom/facebook/ads/redexgen/X/JX;

    return-object v0
.end method

.method public final A03()V
    .locals 2

    .line 43039
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JW;->A04:Lcom/facebook/ads/redexgen/X/JX;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/JX;->A02()V

    .line 43040
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JW;->A03:Lcom/facebook/ads/redexgen/X/4v;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4v;->A0d(I)V

    .line 43041
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/JW;->A00:I

    .line 43042
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/JW;->A02:Z

    .line 43043
    return-void
.end method

.method public final A04()V
    .locals 4

    .line 43044
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JW;->A03:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v0

    array-length v0, v0

    const v3, 0xfe01

    if-ne v0, v3, :cond_0

    .line 43045
    return-void

    .line 43046
    :cond_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/JW;->A03:Lcom/facebook/ads/redexgen/X/4v;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JW;->A03:Lcom/facebook/ads/redexgen/X/4v;

    .line 43047
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JW;->A03:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0A()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 43048
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JW;->A03:Lcom/facebook/ads/redexgen/X/4v;

    .line 43049
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0A()I

    move-result v0

    .line 43050
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0j([BI)V

    .line 43051
    return-void
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/ms;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43052
    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_d

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 43053
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/JW;->A02:Z

    if-eqz v0, :cond_0

    .line 43054
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/JW;->A02:Z

    .line 43055
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JW;->A03:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/4v;->A0d(I)V

    .line 43056
    :cond_0
    :goto_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/JW;->A02:Z

    if-nez v0, :cond_f

    .line 43057
    iget v3, p0, Lcom/facebook/ads/redexgen/X/JW;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/JW;->A05:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x16

    if-eq v1, v0, :cond_2

    :cond_1
    :goto_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/JW;->A05:[Ljava/lang/String;

    const-string v1, "11LtUWwuTljX7vpVMDmw91gP9qyXcF1F"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "domIksdZFoGV1iSe2ioqlJ00HNTdFQYJ"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-gez v3, :cond_7

    .line 43058
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JW;->A04:Lcom/facebook/ads/redexgen/X/JX;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/JX;->A03(Lcom/facebook/ads/redexgen/X/ms;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JW;->A04:Lcom/facebook/ads/redexgen/X/JX;

    invoke-virtual {v0, p1, v5}, Lcom/facebook/ads/redexgen/X/JX;->A05(Lcom/facebook/ads/redexgen/X/ms;Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 43059
    .end local v2
    .end local v3
    :cond_3
    return v4

    .line 43060
    :cond_4
    const/4 v3, 0x0

    .line 43061
    .local v2, "segmentIndex":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JW;->A04:Lcom/facebook/ads/redexgen/X/JX;

    iget v6, v0, Lcom/facebook/ads/redexgen/X/JX;->A01:I

    .line 43062
    .local v3, "bytesToSkip":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JW;->A04:Lcom/facebook/ads/redexgen/X/JX;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/JX;->A04:I

    and-int/2addr v0, v5

    if-ne v0, v5, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JW;->A03:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0A()I

    move-result v7

    sget-object v2, Lcom/facebook/ads/redexgen/X/JW;->A05:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_e

    sget-object v2, Lcom/facebook/ads/redexgen/X/JW;->A05:[Ljava/lang/String;

    const-string v1, "Y9zvOFuJw9CJ8t2sOsvBkpDySrHa8OsK"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "XKYFbcbdBuLAcpGhFvzSCFSZpxBENLjQ"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-nez v7, :cond_5

    .line 43063
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/JW;->A00(I)I

    move-result v0

    add-int/2addr v6, v0

    .line 43064
    iget v0, p0, Lcom/facebook/ads/redexgen/X/JW;->A01:I

    add-int/2addr v3, v0

    .line 43065
    :cond_5
    invoke-static {p1, v6}, Lcom/facebook/ads/redexgen/X/HB;->A02(Lcom/facebook/ads/redexgen/X/ms;I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 43066
    return v4

    .line 43067
    :cond_6
    iput v3, p0, Lcom/facebook/ads/redexgen/X/JW;->A00:I

    .line 43068
    :cond_7
    iget v3, p0, Lcom/facebook/ads/redexgen/X/JW;->A00:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/JW;->A05:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/JW;->A05:[Ljava/lang/String;

    const-string v1, "D5kSzmFKF6oS1B0XjjhMyT"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/JW;->A00(I)I

    move-result v1

    .line 43069
    .local v2, "size":I
    iget v3, p0, Lcom/facebook/ads/redexgen/X/JW;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/JW;->A01:I

    add-int/2addr v3, v0

    .line 43070
    .local v3, "segmentIndex":I
    if-lez v1, :cond_a

    .line 43071
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/JW;->A03:Lcom/facebook/ads/redexgen/X/4v;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JW;->A03:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0A()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0c(I)V

    .line 43072
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JW;->A03:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JW;->A03:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0A()I

    move-result v0

    invoke-static {p1, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/HB;->A03(Lcom/facebook/ads/redexgen/X/ms;[BII)Z

    move-result v0

    if-nez v0, :cond_8

    .line 43073
    return v4

    .line 43074
    :cond_8
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/JW;->A03:Lcom/facebook/ads/redexgen/X/4v;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JW;->A03:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0A()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0e(I)V

    .line 43075
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JW;->A04:Lcom/facebook/ads/redexgen/X/JX;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/JX;->A09:[I

    add-int/lit8 v0, v3, -0x1

    aget v7, v1, v0

    const/16 v6, 0xff

    sget-object v1, Lcom/facebook/ads/redexgen/X/JW;->A05:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x16

    if-eq v1, v0, :cond_9

    goto/16 :goto_2

    :cond_9
    sget-object v2, Lcom/facebook/ads/redexgen/X/JW;->A05:[Ljava/lang/String;

    const-string v1, "zAFVDFtFmf"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "FIDx8"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eq v7, v6, :cond_c

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/JW;->A02:Z

    .line 43076
    :cond_a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JW;->A04:Lcom/facebook/ads/redexgen/X/JX;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/JX;->A02:I

    if-ne v3, v0, :cond_b

    const/4 v3, -0x1

    :cond_b
    iput v3, p0, Lcom/facebook/ads/redexgen/X/JW;->A00:I

    .line 43077
    .end local v2    # "size":I
    .end local v3    # "segmentIndex":I
    goto/16 :goto_1

    .line 43078
    :cond_c
    const/4 v0, 0x0

    goto :goto_3

    .line 43079
    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_e
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 43080
    :cond_f
    return v5
.end method
