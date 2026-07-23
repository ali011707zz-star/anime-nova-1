.class public final Lcom/facebook/ads/redexgen/X/lM;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Kv;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Kw;
    }
.end annotation


# static fields
.field public static A0G:[B

.field public static A0H:[Ljava/lang/String;

.field public static final A0I:[D


# instance fields
.field public A00:J

.field public A01:J

.field public A02:J

.field public A03:J

.field public A04:J

.field public A05:Lcom/facebook/ads/redexgen/X/Hd;

.field public A06:Ljava/lang/String;

.field public A07:Z

.field public A08:Z

.field public A09:Z

.field public A0A:Z

.field public final A0B:Lcom/facebook/ads/redexgen/X/4v;

.field public final A0C:Lcom/facebook/ads/redexgen/X/Kw;

.field public final A0D:Lcom/facebook/ads/redexgen/X/L4;

.field public final A0E:Lcom/facebook/ads/redexgen/X/LJ;

.field public final A0F:[Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3188
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "cAtU07tvAHmpQwteCa8pEQH5gF5iUcfh"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Hjeg7grS71Jm6r5NKbmR8o7Al25NvLrB"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "8TbkpeEOwiN436cBQhp4NSePMq1Z0ZNp"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "wFA3Sleqv"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "yws6lvEdJf3TdH9okNAymdfPd8aH69ii"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "xvx7jE251jeLUpmQ5JTTtAODp7RTPAZj"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "flKrm8KbmQNj7vJDUwRTOfFPMCPuTaKn"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "2PQM5lIFNms8BVmrvHkuPmbcHqu7a2gR"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/lM;->A0H:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/lM;->A02()V

    const/16 v0, 0x8

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/lM;->A0I:[D

    return-void

    nop

    :array_0
    .array-data 8
        0x4037f9dcb5112287L    # 23.976023976023978
        0x4038000000000000L    # 24.0
        0x4039000000000000L    # 25.0
        0x403df853e2556b28L    # 29.97002997002997
        0x403e000000000000L    # 30.0
        0x4049000000000000L    # 50.0
        0x404df853e2556b28L    # 59.94005994005994
        0x404e000000000000L    # 60.0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 93832
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/lM;-><init>(Lcom/facebook/ads/redexgen/X/LJ;)V

    .line 93833
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/LJ;)V
    .locals 3

    .line 93834
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93835
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/lM;->A0E:Lcom/facebook/ads/redexgen/X/LJ;

    .line 93836
    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lM;->A0F:[Z

    .line 93837
    const/16 v2, 0x80

    new-instance v0, Lcom/facebook/ads/redexgen/X/Kw;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/Kw;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lM;->A0C:Lcom/facebook/ads/redexgen/X/Kw;

    .line 93838
    if-eqz p1, :cond_0

    .line 93839
    const/16 v1, 0xb2

    new-instance v0, Lcom/facebook/ads/redexgen/X/L4;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/L4;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lM;->A0D:Lcom/facebook/ads/redexgen/X/L4;

    .line 93840
    new-instance v0, Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4v;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lM;->A0B:Lcom/facebook/ads/redexgen/X/4v;

    .line 93841
    :goto_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/lM;->A01:J

    .line 93842
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/lM;->A03:J

    .line 93843
    return-void

    .line 93844
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lM;->A0D:Lcom/facebook/ads/redexgen/X/L4;

    .line 93845
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lM;->A0B:Lcom/facebook/ads/redexgen/X/4v;

    goto :goto_0
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/Kw;Ljava/lang/String;)Landroid/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Kw;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/facebook/ads/redexgen/X/qI;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 93846
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Kw;->A02:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Kw;->A00:I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v9

    .line 93847
    .local v1, "csdData":[B
    const/4 v0, 0x4

    aget-byte v0, v9, v0

    and-int/lit16 v3, v0, 0xff

    .line 93848
    .local v3, "firstByte":I
    const/4 v0, 0x5

    aget-byte v0, v9, v0

    and-int/lit16 v2, v0, 0xff

    .line 93849
    .local v5, "secondByte":I
    const/4 v0, 0x6

    aget-byte v0, v9, v0

    and-int/lit16 v1, v0, 0xff

    .line 93850
    .local v6, "thirdByte":I
    shl-int/lit8 v5, v3, 0x4

    shr-int/lit8 v0, v2, 0x4

    or-int/2addr v5, v0

    .line 93851
    .local v7, "width":I
    and-int/lit8 v0, v2, 0xf

    shl-int/lit8 v4, v0, 0x8

    or-int/2addr v4, v1

    .line 93852
    .local v8, "height":I
    const/high16 v6, 0x3f800000    # 1.0f

    .line 93853
    .local v9, "pixelWidthHeightRatio":F
    const/4 v7, 0x7

    aget-byte v0, v9, v7

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    .line 93854
    .local v2, "aspectRatioCode":I
    packed-switch v0, :pswitch_data_0

    .line 93855
    :goto_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/2p;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/2p;-><init>()V

    .line 93856
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/2p;->A0y(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v3

    .line 93857
    const/4 v2, 0x0

    const/16 v1, 0xb

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lM;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/2p;->A11(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 93858
    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/2p;->A0r(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 93859
    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/2p;->A0f(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 93860
    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/2p;->A0Y(F)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    .line 93861
    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A12(Ljava/util/List;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 93862
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2p;->A14()Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v5

    .line 93863
    .local p1, "format":Lcom/facebook/ads/redexgen/X/qI;
    const-wide/16 v2, 0x0

    .line 93864
    .local p3, "frameDurationUs":J
    aget-byte v0, v9, v7

    and-int/lit8 v0, v0, 0xf

    add-int/lit8 v1, v0, -0x1

    .line 93865
    .local p0, "frameRateCodeMinusOne":I
    if-ltz v1, :cond_3

    sget-object v0, Lcom/facebook/ads/redexgen/X/lM;->A0I:[D

    array-length v0, v0

    if-ge v1, v0, :cond_3

    .line 93866
    sget-object v0, Lcom/facebook/ads/redexgen/X/lM;->A0I:[D

    aget-wide v7, v0, v1

    .line 93867
    .local p6, "frameRate":D
    iget v2, p0, Lcom/facebook/ads/redexgen/X/Kw;->A01:I

    .line 93868
    .local p5, "sequenceExtensionPosition":I
    add-int/lit8 v0, v2, 0x9

    aget-byte v0, v9, v0

    and-int/lit8 v0, v0, 0x60

    shr-int/lit8 v1, v0, 0x5

    .line 93869
    .local v4, "frameRateExtensionN":I
    add-int/lit8 v0, v2, 0x9

    aget-byte v0, v9, v0

    and-int/lit8 v6, v0, 0x1f

    .line 93870
    .local v0, "frameRateExtensionD":I
    if-eq v1, v6, :cond_2

    .line 93871
    .end local v1    # "csdData":[B
    .end local v2    # "aspectRatioCode":I
    .local p8, "csdData":[B
    .local p9, "aspectRatioCode":I
    int-to-double v2, v1

    sget-object v1, Lcom/facebook/ads/redexgen/X/lM;->A0H:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6b

    if-eq v1, v0, :cond_1

    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 93872
    :pswitch_0
    mul-int/lit8 v0, v4, 0x79

    int-to-float v6, v0

    mul-int/lit8 v0, v5, 0x64

    int-to-float v0, v0

    div-float/2addr v6, v0

    .line 93873
    goto :goto_0

    .line 93874
    :pswitch_1
    mul-int/lit8 v0, v4, 0x10

    int-to-float v6, v0

    mul-int/lit8 v0, v5, 0x9

    int-to-float v0, v0

    div-float/2addr v6, v0

    .line 93875
    goto :goto_0

    .line 93876
    :pswitch_2
    mul-int/lit8 v0, v4, 0x4

    int-to-float v6, v0

    mul-int/lit8 v0, v5, 0x3

    int-to-float v3, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/lM;->A0H:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6b

    if-eq v1, v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/lM;->A0H:[Ljava/lang/String;

    const-string v1, "IKG5315UEoYuWi8w79ZvxkF28jax6fmF"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    div-float/2addr v6, v3

    .line 93877
    goto/16 :goto_0

    .line 93878
    :cond_1
    sget-object v4, Lcom/facebook/ads/redexgen/X/lM;->A0H:[Ljava/lang/String;

    const-string v1, "rAMAKKtXIRKmVhmwxuLKv06bcSnWRDth"

    const/4 v0, 0x5

    aput-object v1, v4, v0

    const-string v1, "TlBzrdA8FTcPVEmXq7DzDEHR3QnpW5Am"

    const/4 v0, 0x7

    aput-object v1, v4, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v0

    .end local v3    # "firstByte":I
    .local p10, "firstByte":I
    add-int/lit8 v0, v6, 0x1

    .end local v4    # "frameRateExtensionN":I
    .local p11, "frameRateExtensionN":I
    int-to-double v0, v0

    div-double/2addr v2, v0

    mul-double/2addr v7, v2

    .line 93879
    .end local v1
    .end local v2
    .end local v3
    .end local v4
    .restart local p8
    .restart local p9
    .restart local p10
    .restart local p11
    :cond_2
    const-wide v0, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v7

    double-to-long v2, v0

    .line 93880
    .end local v1
    .end local v2
    .end local v3
    .restart local p8
    .restart local p9
    .restart local p10
    :cond_3
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/lM;->A0G:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x7a

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 4

    const/16 v0, 0xb

    new-array v3, v0, [B

    sget-object v1, Lcom/facebook/ads/redexgen/X/lM;->A0H:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x79

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/lM;->A0H:[Ljava/lang/String;

    const-string v1, "5b4kHrs0qMccPUXJRINIqLrMs4aEtqXr"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    fill-array-data v3, :array_0

    sput-object v3, Lcom/facebook/ads/redexgen/X/lM;->A0G:[B

    return-void

    :array_0
    .array-data 1
        0x32t
        0x2dt
        0x20t
        0x21t
        0x2bt
        0x6bt
        0x29t
        0x34t
        0x21t
        0x23t
        0x76t
    .end array-data
.end method


# virtual methods
.method public final A5A(Lcom/facebook/ads/redexgen/X/4v;)V
    .locals 23

    .line 93881
    move-object/from16 v9, p0

    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/lM;->A05:Lcom/facebook/ads/redexgen/X/Hd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A02(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93882
    move-object/from16 v15, p1

    invoke-virtual {v15}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v4

    .line 93883
    .local v1, "offset":I
    invoke-virtual {v15}, Lcom/facebook/ads/redexgen/X/4v;->A0A()I

    move-result v10

    .line 93884
    .local v2, "limit":I
    invoke-virtual {v15}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v8

    .line 93885
    .local v3, "dataArray":[B
    iget-wide v2, v9, Lcom/facebook/ads/redexgen/X/lM;->A04:J

    invoke-virtual {v15}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v2, v0

    iput-wide v2, v9, Lcom/facebook/ads/redexgen/X/lM;->A04:J

    .line 93886
    iget-object v1, v9, Lcom/facebook/ads/redexgen/X/lM;->A05:Lcom/facebook/ads/redexgen/X/Hd;

    invoke-virtual {v15}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v0

    invoke-interface {v1, v15, v0}, Lcom/facebook/ads/redexgen/X/Hd;->AIr(Lcom/facebook/ads/redexgen/X/4v;I)V

    .line 93887
    :goto_0
    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/lM;->A0F:[Z

    invoke-static {v8, v4, v10, v0}, Lcom/facebook/ads/redexgen/X/HS;->A04([BII[Z)I

    move-result v7

    .line 93888
    .local v4, "startCodeOffset":I
    if-ne v7, v10, :cond_2

    .line 93889
    iget-boolean v3, v9, Lcom/facebook/ads/redexgen/X/lM;->A07:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/lM;->A0H:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_14

    sget-object v2, Lcom/facebook/ads/redexgen/X/lM;->A0H:[Ljava/lang/String;

    const-string v1, "ooUhAAd1UFU3ZsdgbXiiZIdc17zvx9JT"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-nez v3, :cond_0

    .line 93890
    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/lM;->A0C:Lcom/facebook/ads/redexgen/X/Kw;

    invoke-virtual {v0, v8, v4, v10}, Lcom/facebook/ads/redexgen/X/Kw;->A01([BII)V

    .line 93891
    :cond_0
    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/lM;->A0D:Lcom/facebook/ads/redexgen/X/L4;

    if-eqz v0, :cond_1

    .line 93892
    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/lM;->A0D:Lcom/facebook/ads/redexgen/X/L4;

    invoke-virtual {v0, v8, v4, v10}, Lcom/facebook/ads/redexgen/X/L4;->A02([BII)V

    .line 93893
    :cond_1
    return-void

    .line 93894
    :cond_2
    invoke-virtual {v15}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v1

    add-int/lit8 v0, v7, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v6, v0, 0xff

    .line 93895
    .local v5, "startCodeValue":I
    sub-int v3, v7, v4

    .line 93896
    .local v7, "lengthToStartCode":I
    iget-boolean v0, v9, Lcom/facebook/ads/redexgen/X/lM;->A07:Z

    const/4 v12, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    .line 93897
    if-lez v3, :cond_3

    .line 93898
    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/lM;->A0C:Lcom/facebook/ads/redexgen/X/Kw;

    invoke-virtual {v0, v8, v4, v7}, Lcom/facebook/ads/redexgen/X/Kw;->A01([BII)V

    .line 93899
    :cond_3
    if-gez v3, :cond_13

    neg-int v1, v3

    .line 93900
    .local v8, "bytesAlreadyPassed":I
    :goto_1
    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/lM;->A0C:Lcom/facebook/ads/redexgen/X/Kw;

    invoke-virtual {v0, v6, v1}, Lcom/facebook/ads/redexgen/X/Kw;->A02(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 93901
    iget-object v1, v9, Lcom/facebook/ads/redexgen/X/lM;->A0C:Lcom/facebook/ads/redexgen/X/Kw;

    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/lM;->A06:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/lM;->A00(Lcom/facebook/ads/redexgen/X/Kw;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v5

    .line 93902
    .local v11, "result":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/ads/androidx/media3/common/Format;Ljava/lang/Long;>;"
    iget-object v1, v9, Lcom/facebook/ads/redexgen/X/lM;->A05:Lcom/facebook/ads/redexgen/X/Hd;

    iget-object v0, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/qI;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Hd;->A6e(Lcom/facebook/ads/redexgen/X/qI;)V

    .line 93903
    iget-object v0, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, v9, Lcom/facebook/ads/redexgen/X/lM;->A00:J

    .line 93904
    iput-boolean v2, v9, Lcom/facebook/ads/redexgen/X/lM;->A07:Z

    .line 93905
    .end local v8    # "bytesAlreadyPassed":I
    .end local v11    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/ads/androidx/media3/common/Format;Ljava/lang/Long;>;"
    :cond_4
    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/lM;->A0D:Lcom/facebook/ads/redexgen/X/L4;

    if-eqz v0, :cond_6

    .line 93906
    const/4 v1, 0x0

    .line 93907
    .restart local v8    # "bytesAlreadyPassed":I
    if-lez v3, :cond_12

    .line 93908
    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/lM;->A0D:Lcom/facebook/ads/redexgen/X/L4;

    invoke-virtual {v0, v8, v4, v7}, Lcom/facebook/ads/redexgen/X/L4;->A02([BII)V

    .line 93909
    :goto_2
    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/lM;->A0D:Lcom/facebook/ads/redexgen/X/L4;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/L4;->A04(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 93910
    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/lM;->A0D:Lcom/facebook/ads/redexgen/X/L4;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/L4;->A01:[B

    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/lM;->A0D:Lcom/facebook/ads/redexgen/X/L4;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/L4;->A00:I

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/HS;->A02([BI)I

    move-result v3

    .line 93911
    .local v11, "unescapedLength":I
    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/lM;->A0B:Lcom/facebook/ads/redexgen/X/4v;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/4v;

    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/lM;->A0D:Lcom/facebook/ads/redexgen/X/L4;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/L4;->A01:[B

    invoke-virtual {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/4v;->A0j([BI)V

    .line 93912
    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/lM;->A0E:Lcom/facebook/ads/redexgen/X/LJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/LJ;

    iget-wide v0, v9, Lcom/facebook/ads/redexgen/X/lM;->A03:J

    iget-object v3, v9, Lcom/facebook/ads/redexgen/X/lM;->A0B:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v4, v0, v1, v3}, Lcom/facebook/ads/redexgen/X/LJ;->A02(JLcom/facebook/ads/redexgen/X/4v;)V

    .line 93913
    .end local v11    # "unescapedLength":I
    :cond_5
    const/16 v0, 0xb2

    if-ne v6, v0, :cond_6

    invoke-virtual {v15}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v1

    add-int/lit8 v0, v7, 0x2

    aget-byte v0, v1, v0

    if-ne v0, v2, :cond_6

    .line 93914
    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/lM;->A0D:Lcom/facebook/ads/redexgen/X/L4;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/L4;->A01(I)V

    .line 93915
    .end local v8    # "bytesAlreadyPassed":I
    :cond_6
    if-eqz v6, :cond_7

    const/16 v0, 0xb3

    if-ne v6, v0, :cond_11

    .line 93916
    :cond_7
    sub-int v11, v10, v7

    .line 93917
    .local v8, "bytesWrittenPastStartCode":I
    iget-boolean v0, v9, Lcom/facebook/ads/redexgen/X/lM;->A08:Z

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_8

    iget-boolean v3, v9, Lcom/facebook/ads/redexgen/X/lM;->A07:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/lM;->A0H:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6b

    if-eq v1, v0, :cond_10

    if-eqz v3, :cond_8

    :goto_3
    iget-wide v0, v9, Lcom/facebook/ads/redexgen/X/lM;->A03:J

    cmp-long v2, v0, v4

    if-eqz v2, :cond_8

    .line 93918
    iget-boolean v13, v9, Lcom/facebook/ads/redexgen/X/lM;->A09:Z

    .line 93919
    .local v14, "flags":I
    iget-wide v2, v9, Lcom/facebook/ads/redexgen/X/lM;->A04:J

    iget-wide v0, v9, Lcom/facebook/ads/redexgen/X/lM;->A02:J

    sub-long/2addr v2, v0

    long-to-int v14, v2

    sub-int/2addr v14, v11

    .line 93920
    .local v10, "size":I
    iget-object v2, v9, Lcom/facebook/ads/redexgen/X/lM;->A05:Lcom/facebook/ads/redexgen/X/Hd;

    iget-wide v0, v9, Lcom/facebook/ads/redexgen/X/lM;->A03:J

    const/16 v22, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .end local v1    # "offset":I
    .end local v2    # "limit":I
    .local v18, "limit":I
    .local v19, "offset":I
    move/from16 v20, v14

    move/from16 v21, v11

    move/from16 v19, v13

    move-wide/from16 v17, v0

    move-object/from16 v16, v2

    invoke-interface/range {v16 .. v22}, Lcom/facebook/ads/redexgen/X/Hd;->AIu(JIIILcom/facebook/ads/redexgen/X/Hb;)V

    .line 93921
    .end local v1
    .end local v2
    .restart local v18    # "limit":I
    .restart local v19    # "offset":I
    :cond_8
    iget-boolean v3, v9, Lcom/facebook/ads/redexgen/X/lM;->A0A:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/lM;->A0H:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_14

    sget-object v2, Lcom/facebook/ads/redexgen/X/lM;->A0H:[Ljava/lang/String;

    const-string v1, "M1cTpkEI0lqbwMedLRZ4APYv7Db9TSYf"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_9

    iget-boolean v0, v9, Lcom/facebook/ads/redexgen/X/lM;->A08:Z

    if-eqz v0, :cond_a

    .line 93922
    :cond_9
    iget-wide v2, v9, Lcom/facebook/ads/redexgen/X/lM;->A04:J

    int-to-long v0, v11

    sub-long/2addr v2, v0

    iput-wide v2, v9, Lcom/facebook/ads/redexgen/X/lM;->A02:J

    .line 93923
    iget-wide v0, v9, Lcom/facebook/ads/redexgen/X/lM;->A01:J

    cmp-long v2, v0, v4

    if-eqz v2, :cond_d

    .line 93924
    iget-wide v0, v9, Lcom/facebook/ads/redexgen/X/lM;->A01:J

    .line 93925
    :goto_4
    iput-wide v0, v9, Lcom/facebook/ads/redexgen/X/lM;->A03:J

    .line 93926
    iput-boolean v12, v9, Lcom/facebook/ads/redexgen/X/lM;->A09:Z

    .line 93927
    iput-wide v4, v9, Lcom/facebook/ads/redexgen/X/lM;->A01:J

    .line 93928
    const/4 v0, 0x1

    iput-boolean v0, v9, Lcom/facebook/ads/redexgen/X/lM;->A0A:Z

    .line 93929
    :cond_a
    if-nez v6, :cond_b

    const/4 v12, 0x1

    :cond_b
    iput-boolean v12, v9, Lcom/facebook/ads/redexgen/X/lM;->A08:Z

    .line 93930
    .end local v8    # "bytesWrittenPastStartCode":I
    :cond_c
    :goto_5
    add-int/lit8 v4, v7, 0x3

    .line 93931
    .end local v4    # "startCodeOffset":I
    .end local v5    # "startCodeValue":I
    .end local v7    # "lengthToStartCode":I
    .end local v19    # "offset":I
    .restart local v1    # "offset":I
    goto/16 :goto_0

    .line 93932
    :cond_d
    iget-wide v0, v9, Lcom/facebook/ads/redexgen/X/lM;->A03:J

    cmp-long v2, v0, v4

    if-eqz v2, :cond_f

    .line 93933
    iget-wide v2, v9, Lcom/facebook/ads/redexgen/X/lM;->A03:J

    sget-object v1, Lcom/facebook/ads/redexgen/X/lM;->A0H:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6d

    if-eq v1, v0, :cond_e

    iget-wide v0, v9, Lcom/facebook/ads/redexgen/X/lM;->A00:J

    add-long/2addr v0, v2

    goto :goto_4

    :cond_e
    sget-object v11, Lcom/facebook/ads/redexgen/X/lM;->A0H:[Ljava/lang/String;

    const-string v1, "FNyxia2DuWmH1fHrZAJ70vL24BcjBrNj"

    const/4 v0, 0x0

    aput-object v1, v11, v0

    iget-wide v0, v9, Lcom/facebook/ads/redexgen/X/lM;->A00:J

    add-long/2addr v0, v2

    goto :goto_4

    .line 93934
    :cond_f
    move-wide v0, v4

    goto :goto_4

    :cond_10
    sget-object v2, Lcom/facebook/ads/redexgen/X/lM;->A0H:[Ljava/lang/String;

    const-string v1, "I3q7BGa2d1yxMNRbgKUy1FZhwbtqEBv0"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v3, :cond_8

    goto/16 :goto_3

    .line 93935
    :cond_11
    const/16 v0, 0xb8

    if-ne v6, v0, :cond_c

    .line 93936
    iput-boolean v2, v9, Lcom/facebook/ads/redexgen/X/lM;->A09:Z

    goto :goto_5

    .line 93937
    :cond_12
    neg-int v1, v3

    goto/16 :goto_2

    .line 93938
    :cond_13
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_14
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A5c(Lcom/facebook/ads/redexgen/X/HA;Lcom/facebook/ads/redexgen/X/LG;)V
    .locals 2

    .line 93939
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/LG;->A05()V

    .line 93940
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/LG;->A04()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lM;->A06:Ljava/lang/String;

    .line 93941
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/LG;->A03()I

    move-result v1

    const/4 v0, 0x2

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/HA;->AKS(II)Lcom/facebook/ads/redexgen/X/Hd;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lM;->A05:Lcom/facebook/ads/redexgen/X/Hd;

    .line 93942
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lM;->A0E:Lcom/facebook/ads/redexgen/X/LJ;

    if-eqz v0, :cond_0

    .line 93943
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lM;->A0E:Lcom/facebook/ads/redexgen/X/LJ;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/LJ;->A03(Lcom/facebook/ads/redexgen/X/HA;Lcom/facebook/ads/redexgen/X/LG;)V

    .line 93944
    :cond_0
    return-void
.end method

.method public final AGp()V
    .locals 0

    .line 93945
    return-void
.end method

.method public final AGq(JI)V
    .locals 0

    .line 93946
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/lM;->A01:J

    .line 93947
    return-void
.end method

.method public final AJ5()V
    .locals 4

    .line 93948
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lM;->A0F:[Z

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HS;->A0H([Z)V

    .line 93949
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lM;->A0C:Lcom/facebook/ads/redexgen/X/Kw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Kw;->A00()V

    .line 93950
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lM;->A0D:Lcom/facebook/ads/redexgen/X/L4;

    if-eqz v0, :cond_1

    .line 93951
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/lM;->A0D:Lcom/facebook/ads/redexgen/X/L4;

    sget-object v1, Lcom/facebook/ads/redexgen/X/lM;->A0H:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x20

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/lM;->A0H:[Ljava/lang/String;

    const-string v1, "joVCJevLOtmtIagsqVBvfxemqq2mA7LA"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/L4;->A00()V

    .line 93952
    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/lM;->A04:J

    .line 93953
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lM;->A0A:Z

    .line 93954
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/lM;->A01:J

    .line 93955
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/lM;->A03:J

    .line 93956
    return-void
.end method
