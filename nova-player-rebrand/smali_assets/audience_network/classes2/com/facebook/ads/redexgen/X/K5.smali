.class public final Lcom/facebook/ads/redexgen/X/K5;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/1S;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CueBuilder"
.end annotation


# static fields
.field public static A09:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:Z

.field public final A07:Lcom/facebook/ads/redexgen/X/4v;

.field public final A08:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 855
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "UUlEJ3Jo50NOk35TUHs6UNRK6svNK9bY"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Rfapb4gOuHxAcdI53hJjgoF3fgUzCf8l"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "549CgiYhO6ZoxkZsxucd"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "d0g0H9nuc7MFYEKhz8GgPJKXV4KY3uwa"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "SvGPJzr3mUIjg4zk3UE0lmEsGQStmHiR"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "UIGV6MTRsZPNdj8JuGQraJXbpN7YiCpC"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "sPKUkdPP6cbZl7mqg699SGb1Qg8cwcjc"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "pSvb9vtzFVNohJw9Yc2pgYHm"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/K5;->A09:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44962
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44963
    new-instance v0, Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4v;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/K5;->A07:Lcom/facebook/ads/redexgen/X/4v;

    .line 44964
    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/K5;->A08:[I

    .line 44965
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/4v;I)V
    .locals 4

    .line 44966
    const/4 v1, 0x4

    if-ge p2, v1, :cond_0

    .line 44967
    return-void

    .line 44968
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 44969
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 44970
    .local v1, "isBaseSection":Z
    :goto_0
    add-int/lit8 v3, p2, -0x4

    .line 44971
    if-eqz v0, :cond_4

    .line 44972
    const/4 v0, 0x7

    if-ge v3, v0, :cond_2

    .line 44973
    return-void

    .line 44974
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 44975
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0K()I

    move-result v2

    .line 44976
    .local v2, "totalLength":I
    if-ge v2, v1, :cond_3

    .line 44977
    return-void

    .line 44978
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0M()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/K5;->A01:I

    .line 44979
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0M()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/K5;->A00:I

    .line 44980
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/K5;->A07:Lcom/facebook/ads/redexgen/X/4v;

    add-int/lit8 v0, v2, -0x4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0d(I)V

    .line 44981
    add-int/lit8 v3, v3, -0x7

    .line 44982
    .end local v2    # "totalLength":I
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/K5;->A07:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v2

    .line 44983
    .local v0, "position":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/K5;->A07:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0A()I

    move-result v0

    .line 44984
    .local v2, "limit":I
    if-ge v2, v0, :cond_5

    if-lez v3, :cond_5

    .line 44985
    sub-int/2addr v0, v2

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 44986
    .local v3, "bytesToRead":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/K5;->A07:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v0

    invoke-virtual {p1, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/4v;->A0k([BII)V

    .line 44987
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/K5;->A07:Lcom/facebook/ads/redexgen/X/4v;

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 44988
    .end local v3    # "bytesToRead":I
    :cond_5
    return-void
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/4v;I)V
    .locals 1

    .line 44989
    const/16 v0, 0x13

    if-ge p2, v0, :cond_0

    .line 44990
    return-void

    .line 44991
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0M()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/K5;->A05:I

    .line 44992
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0M()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/K5;->A04:I

    .line 44993
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 44994
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0M()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/K5;->A02:I

    .line 44995
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0M()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/K5;->A03:I

    .line 44996
    return-void
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/4v;I)V
    .locals 17

    .line 44997
    move-object/from16 v8, p0

    rem-int/lit8 v1, p2, 0x5

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    .line 44998
    return-void

    .line 44999
    :cond_0
    move-object/from16 v10, p1

    invoke-virtual {v10, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 45000
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/K5;->A08:[I

    const/4 v7, 0x0

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([II)V

    .line 45001
    div-int/lit8 v6, p2, 0x5

    .line 45002
    .local v2, "entryCount":I
    const/4 v5, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v5, v6, :cond_1

    .line 45003
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v16

    .line 45004
    .local v5, "index":I
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v9

    .line 45005
    .local v6, "y":I
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v15

    .line 45006
    .local v7, "cr":I
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v13

    .line 45007
    .local v8, "cb":I
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v14

    .line 45008
    .local v9, "a":I
    int-to-double v0, v9

    add-int/lit8 v2, v15, -0x80

    int-to-double v2, v2

    const-wide v11, 0x3ff66e978d4fdf3bL    # 1.402

    mul-double/2addr v2, v11

    add-double/2addr v0, v2

    double-to-int v4, v0

    .line 45009
    .local v10, "r":I
    int-to-double v2, v9

    add-int/lit8 v0, v13, -0x80

    int-to-double v0, v0

    const-wide v11, 0x3fd60663c74fb54aL    # 0.34414

    mul-double/2addr v0, v11

    sub-double/2addr v2, v0

    add-int/lit8 v0, v15, -0x80

    int-to-double v0, v0

    const-wide v11, 0x3fe6da3c21187e7cL    # 0.71414

    mul-double/2addr v0, v11

    sub-double/2addr v2, v0

    double-to-int v11, v2

    .line 45010
    .local v11, "g":I
    int-to-double v2, v9

    add-int/lit8 v0, v13, -0x80

    int-to-double v0, v0

    const-wide v12, 0x3ffc5a1cac083127L    # 1.772

    mul-double/2addr v0, v12

    add-double/2addr v2, v0

    double-to-int v9, v2

    .line 45011
    .local v12, "b":I
    iget-object v3, v8, Lcom/facebook/ads/redexgen/X/K5;->A08:[I

    shl-int/lit8 v2, v14, 0x18

    .line 45012
    const/16 v1, 0xff

    invoke-static {v4, v7, v1}, Lcom/facebook/ads/redexgen/X/5C;->A07(III)I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v2, v0

    .line 45013
    invoke-static {v11, v7, v1}, Lcom/facebook/ads/redexgen/X/5C;->A07(III)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v2, v0

    .line 45014
    invoke-static {v9, v7, v1}, Lcom/facebook/ads/redexgen/X/5C;->A07(III)I

    move-result v0

    or-int/2addr v2, v0

    aput v2, v3, v16

    .line 45015
    .end local v5    # "index":I
    .end local v6    # "y":I
    .end local v7    # "cr":I
    .end local v8    # "cb":I
    .end local v9    # "a":I
    .end local v10    # "r":I
    .end local v11    # "g":I
    .end local v12    # "b":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 45016
    .end local v4    # "i":I
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, v8, Lcom/facebook/ads/redexgen/X/K5;->A06:Z

    .line 45017
    return-void
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/K5;Lcom/facebook/ads/redexgen/X/4v;I)V
    .locals 0

    .line 45018
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/K5;->A02(Lcom/facebook/ads/redexgen/X/4v;I)V

    return-void
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/K5;Lcom/facebook/ads/redexgen/X/4v;I)V
    .locals 0

    .line 45019
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/K5;->A00(Lcom/facebook/ads/redexgen/X/4v;I)V

    return-void
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/K5;Lcom/facebook/ads/redexgen/X/4v;I)V
    .locals 0

    .line 45020
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/K5;->A01(Lcom/facebook/ads/redexgen/X/4v;I)V

    return-void
.end method


# virtual methods
.method public final A06()Lcom/facebook/ads/redexgen/X/pT;
    .locals 8

    .line 45021
    iget v0, p0, Lcom/facebook/ads/redexgen/X/K5;->A05:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/K5;->A04:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/K5;->A01:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/K5;->A00:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/K5;->A07:Lcom/facebook/ads/redexgen/X/4v;

    .line 45022
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0A()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/K5;->A07:Lcom/facebook/ads/redexgen/X/4v;

    .line 45023
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/K5;->A07:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0A()I

    move-result v0

    if-ne v1, v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/K5;->A06:Z

    if-nez v0, :cond_1

    .line 45024
    .end local v0
    .end local v2
    .end local v3
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 45025
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/K5;->A07:Lcom/facebook/ads/redexgen/X/4v;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 45026
    iget v1, p0, Lcom/facebook/ads/redexgen/X/K5;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/K5;->A00:I

    mul-int/2addr v1, v0

    new-array v4, v1, [I

    .line 45027
    .local v0, "argbBitmapData":[I
    const/4 v5, 0x0

    .line 45028
    .local v2, "argbBitmapDataIndex":I
    :cond_2
    :goto_0
    array-length v0, v4

    if-ge v5, v0, :cond_7

    .line 45029
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/K5;->A07:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v2

    .line 45030
    .local v3, "colorIndex":I
    if-eqz v2, :cond_3

    .line 45031
    add-int/lit8 v1, v5, 0x1

    .end local v2    # "argbBitmapDataIndex":I
    .local v4, "argbBitmapDataIndex":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/K5;->A08:[I

    aget v0, v0, v2

    aput v0, v4, v5

    move v5, v1

    goto :goto_0

    .line 45032
    .end local v4    # "argbBitmapDataIndex":I
    .restart local v2    # "argbBitmapDataIndex":I
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/K5;->A07:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v6

    .line 45033
    .local v4, "switchBits":I
    if-eqz v6, :cond_2

    .line 45034
    and-int/lit8 v7, v6, 0x40

    sget-object v2, Lcom/facebook/ads/redexgen/X/K5;->A09:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/K5;->A09:[Ljava/lang/String;

    const-string v1, "GtJojiNEMobCnjKA96lXJCCL45Dtio0z"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "Lfhzohsg2V0yWJPoWAL0pRvwojJGYPpJ"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-nez v7, :cond_5

    .line 45035
    and-int/lit8 v1, v6, 0x3f

    .line 45036
    .local v5, "runLength":I
    :goto_1
    and-int/lit16 v0, v6, 0x80

    if-nez v0, :cond_4

    const/4 v2, 0x0

    .line 45037
    .local v6, "color":I
    :goto_2
    add-int v0, v5, v1

    invoke-static {v4, v5, v0, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 45038
    add-int/2addr v5, v1

    goto :goto_0

    .line 45039
    :cond_4
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/K5;->A08:[I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/K5;->A07:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v0

    aget v2, v2, v0

    goto :goto_2

    .line 45040
    :cond_5
    and-int/lit8 v0, v6, 0x3f

    shl-int/lit8 v1, v0, 0x8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/K5;->A07:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v0

    or-int/2addr v1, v0

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 45041
    :cond_7
    iget v2, p0, Lcom/facebook/ads/redexgen/X/K5;->A01:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/K5;->A00:I

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 45042
    invoke-static {v4, v2, v1, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 45043
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    new-instance v0, Lcom/facebook/ads/redexgen/X/3o;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/3o;-><init>()V

    .line 45044
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/3o;->A0D(Landroid/graphics/Bitmap;)Lcom/facebook/ads/redexgen/X/3o;

    move-result-object v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/K5;->A02:I

    int-to-float v1, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/K5;->A05:I

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 45045
    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/3o;->A04(F)Lcom/facebook/ads/redexgen/X/3o;

    move-result-object v0

    .line 45046
    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/3o;->A0A(I)Lcom/facebook/ads/redexgen/X/3o;

    move-result-object v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/K5;->A03:I

    int-to-float v1, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/K5;->A04:I

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 45047
    invoke-virtual {v2, v1, v3}, Lcom/facebook/ads/redexgen/X/3o;->A07(FI)Lcom/facebook/ads/redexgen/X/3o;

    move-result-object v0

    .line 45048
    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/3o;->A09(I)Lcom/facebook/ads/redexgen/X/3o;

    move-result-object v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/K5;->A01:I

    int-to-float v1, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/K5;->A05:I

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 45049
    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/3o;->A06(F)Lcom/facebook/ads/redexgen/X/3o;

    move-result-object v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/K5;->A00:I

    int-to-float v1, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/K5;->A04:I

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 45050
    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/3o;->A03(F)Lcom/facebook/ads/redexgen/X/3o;

    move-result-object v0

    .line 45051
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3o;->A0H()Lcom/facebook/ads/redexgen/X/pT;

    move-result-object v0

    .line 45052
    return-object v0
.end method

.method public final A07()V
    .locals 2

    .line 45053
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/K5;->A05:I

    .line 45054
    iput v1, p0, Lcom/facebook/ads/redexgen/X/K5;->A04:I

    .line 45055
    iput v1, p0, Lcom/facebook/ads/redexgen/X/K5;->A02:I

    .line 45056
    iput v1, p0, Lcom/facebook/ads/redexgen/X/K5;->A03:I

    .line 45057
    iput v1, p0, Lcom/facebook/ads/redexgen/X/K5;->A01:I

    .line 45058
    iput v1, p0, Lcom/facebook/ads/redexgen/X/K5;->A00:I

    .line 45059
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/K5;->A07:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4v;->A0d(I)V

    .line 45060
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/K5;->A06:Z

    .line 45061
    return-void
.end method
