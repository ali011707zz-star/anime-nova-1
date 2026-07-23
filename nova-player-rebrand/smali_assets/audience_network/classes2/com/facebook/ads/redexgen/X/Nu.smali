.class public final Lcom/facebook/ads/redexgen/X/Nu;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Nt;
    }
.end annotation


# static fields
.field public static A05:[B

.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Sx;

.field public A01:Lcom/facebook/ads/redexgen/X/bD;

.field public A02:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/dC;",
            ">;"
        }
    .end annotation
.end field

.field public final A03:Lcom/facebook/ads/redexgen/X/NQ;

.field public final A04:Lcom/facebook/ads/redexgen/X/Nt;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1461
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "SwW"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "nKJOmWTx3LjNZvOp7YbBROgXIyGkfXUh"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "cNvS8LZQYgXEdOP85dYAvAy4C3J"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ICxq6EmLG0dgZi7UJ5PBV2wBsvrmCfpb"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "tKedy3gZYTLe"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "bmz0vq"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "hvIAQTYE0cdtFIL2"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "tj9oqRvQS19ndgZTuA"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Nu;->A06:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Nu;->A06()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/O8;Lcom/facebook/ads/redexgen/X/Nt;Ljava/lang/String;)V
    .locals 1

    .line 54961
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54962
    sget-object v0, Lcom/facebook/ads/redexgen/X/bD;->A05:Lcom/facebook/ads/redexgen/X/bD;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Nu;->A01:Lcom/facebook/ads/redexgen/X/bD;

    .line 54963
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Nu;->A02:Ljava/util/ArrayList;

    .line 54964
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/O8;->A03()Lorg/json/JSONObject;

    move-result-object v0

    .line 54965
    .local v0, "dataObject":Lorg/json/JSONObject;
    invoke-static {p1, p2, p4, v0}, Lcom/facebook/ads/redexgen/X/Nu;->A01(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/O8;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/NQ;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Nu;->A03:Lcom/facebook/ads/redexgen/X/NQ;

    .line 54966
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Nu;->A04:Lcom/facebook/ads/redexgen/X/Nt;

    .line 54967
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/jd;)Lcom/facebook/ads/AdError;
    .locals 6

    .line 54968
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/jd;->A2G()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54969
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/Td;->A0Z:I

    const/4 v2, 0x5

    const/16 v1, 0x2b

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nu;->A04(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/String;)V

    .line 54970
    const/16 v2, 0x3e

    const/4 v1, 0x3

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nu;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    .line 54971
    const/16 v0, 0x7d6

    invoke-static {v0}, Lcom/facebook/ads/AdError;->internalError(I)Lcom/facebook/ads/AdError;

    move-result-object v0

    return-object v0

    .line 54972
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/O8;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/NQ;
    .locals 4

    .line 54973
    const/4 v3, 0x0

    .line 54974
    .local v0, "adDataBundle":Lcom/facebook/ads/redexgen/X/NQ;
    const/16 v2, 0x41

    const/16 v1, 0xc

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nu;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54975
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p3, p0, v0}, Lcom/facebook/ads/redexgen/X/jT;->A01(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/gi;Z)Lcom/facebook/ads/redexgen/X/jT;

    move-result-object v3

    .line 54976
    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1Q(Z)V

    .line 54977
    const/16 v2, 0x60

    const/16 v1, 0xc

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nu;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1N(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54978
    :catch_0
    :cond_0
    if-nez v3, :cond_1

    .line 54979
    invoke-static {p3, p0}, Lcom/facebook/ads/redexgen/X/7n;->A00(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/gi;)Lcom/facebook/ads/redexgen/X/7n;

    move-result-object v3

    .line 54980
    :cond_1
    invoke-virtual {v3, p2}, Lcom/facebook/ads/redexgen/X/NQ;->A1M(Ljava/lang/String;)V

    .line 54981
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/O8;->A01()Lcom/facebook/ads/redexgen/X/Tx;

    move-result-object v0

    .line 54982
    .local v1, "definition":Lcom/facebook/ads/redexgen/X/Tx;
    if-eqz v0, :cond_2

    .line 54983
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tx;->A06()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1I(I)V

    .line 54984
    :cond_2
    return-object v3
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Nu;)Lcom/facebook/ads/redexgen/X/Nt;
    .locals 0

    .line 54985
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Nu;->A04:Lcom/facebook/ads/redexgen/X/Nt;

    return-object p0
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/gi;)Lcom/facebook/ads/redexgen/X/Sx;
    .locals 1

    .line 54986
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nu;->A00:Lcom/facebook/ads/redexgen/X/Sx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nu;->A00:Lcom/facebook/ads/redexgen/X/Sx;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/Sx;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/Sx;-><init>(Lcom/facebook/ads/redexgen/X/T8;)V

    goto :goto_0
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Nu;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x61

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/Nu;)Ljava/util/ArrayList;
    .locals 0

    .line 54987
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Nu;->A02:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static A06()V
    .locals 1

    const/16 v0, 0x6c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Nu;->A05:[B

    return-void

    :array_0
    .array-data 1
        -0x23t
        0x17t
        0x23t
        0x1ct
        0x1bt
        -0x42t
        -0x1dt
        -0x17t
        -0x26t
        -0x19t
        -0x1dt
        -0x2at
        -0x1ft
        -0x6bt
        -0x46t
        -0x19t
        -0x19t
        -0x1ct
        -0x19t
        -0x6bt
        -0x59t
        -0x5bt
        -0x5bt
        -0x55t
        -0x6bt
        -0x14t
        -0x22t
        -0x17t
        -0x23t
        -0x1ct
        -0x16t
        -0x17t
        -0x6bt
        -0x2at
        -0x6bt
        -0x15t
        -0x2at
        -0x1ft
        -0x22t
        -0x27t
        -0x6bt
        -0x4at
        -0x27t
        -0x42t
        -0x1dt
        -0x25t
        -0x1ct
        -0x5dt
        0x15t
        0x18t
        0x13t
        0x18t
        0x15t
        0x28t
        0x15t
        0x13t
        0x16t
        0x29t
        0x22t
        0x18t
        0x20t
        0x19t
        -0x1dt
        -0xet
        -0x15t
        -0x24t
        -0x1ft
        -0x26t
        -0x1et
        -0x19t
        -0x28t
        -0x17t
        -0x26t
        -0x15t
        -0x26t
        -0x1at
        -0x14t
        0x12t
        0x17t
        0x10t
        0x18t
        0x1dt
        0x14t
        0x13t
        -0x10t
        0x13t
        -0xdt
        0x10t
        0x23t
        0x10t
        -0xft
        0x24t
        0x1dt
        0x13t
        0x1bt
        0x14t
        0x3ft
        0x44t
        0x4at
        0x3bt
        0x48t
        0x49t
        0x4at
        0x3ft
        0x4at
        0x3ft
        0x37t
        0x42t
    .end array-data
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/Nu;Lcom/facebook/ads/redexgen/X/gi;Ljava/util/EnumSet;Lcom/facebook/ads/redexgen/X/jT;Lcom/facebook/ads/redexgen/X/jd;ILcom/facebook/ads/redexgen/X/Nt;)V
    .locals 0

    .line 54988
    invoke-direct/range {p0 .. p6}, Lcom/facebook/ads/redexgen/X/Nu;->A0A(Lcom/facebook/ads/redexgen/X/gi;Ljava/util/EnumSet;Lcom/facebook/ads/redexgen/X/jT;Lcom/facebook/ads/redexgen/X/jd;ILcom/facebook/ads/redexgen/X/Nt;)V

    return-void
.end method

.method private A08(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/7n;)V
    .locals 10

    .line 54989
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NU;->A07()Lcom/facebook/ads/redexgen/X/No;

    move-result-object v0

    .line 54990
    .local v0, "playableData":Lcom/facebook/ads/redexgen/X/No;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/No;->A0H()Lcom/facebook/ads/redexgen/X/bD;

    move-result-object v0

    .line 54991
    :goto_0
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Nu;->A0B(Lcom/facebook/ads/redexgen/X/bD;)V

    .line 54992
    new-instance v2, Lcom/facebook/ads/redexgen/X/jC;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/jC;-><init>(Lcom/facebook/ads/redexgen/X/Nu;)V

    .line 54993
    .local v1, "playablePreCacheListener":Lcom/facebook/ads/redexgen/X/O3;
    new-instance v4, Lcom/facebook/ads/redexgen/X/Sx;

    invoke-direct {v4, p1}, Lcom/facebook/ads/redexgen/X/Sx;-><init>(Lcom/facebook/ads/redexgen/X/T8;)V

    .line 54994
    .local v2, "cacheManager":Lcom/facebook/ads/redexgen/X/Sx;
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Up;->A2H(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 54995
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/NQ;->A1H()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SN;->A0A(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v8, 0x1

    .line 54996
    .local p0, "isUnifiedAssetsLoaderEnabled":Z
    :goto_1
    if-eqz v8, :cond_0

    .line 54997
    new-instance v3, Lcom/facebook/ads/redexgen/X/SN;

    .line 54998
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/NQ;->A1H()Lorg/json/JSONObject;

    move-result-object v5

    .line 54999
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/NQ;->A10()Ljava/lang/String;

    move-result-object v6

    .line 55000
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/NQ;->A1D()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Lcom/facebook/ads/redexgen/X/jB;

    invoke-direct {v9, p0}, Lcom/facebook/ads/redexgen/X/jB;-><init>(Lcom/facebook/ads/redexgen/X/Nu;)V

    invoke-direct/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/SN;-><init>(Lcom/facebook/ads/redexgen/X/Sx;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/SM;)V

    .line 55001
    .local v3, "unifiedAssetsLoader":Lcom/facebook/ads/redexgen/X/SN;
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/T8;->A0A()Lcom/facebook/ads/redexgen/X/VA;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/VI;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/VI;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/VA;)V

    .line 55002
    .local v4, "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/VI;
    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Sx;->A0e(Lcom/facebook/ads/redexgen/X/VI;)V

    .line 55003
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/SN;->A0B()V

    .line 55004
    .end local v3    # "unifiedAssetsLoader":Lcom/facebook/ads/redexgen/X/SN;
    .end local v4    # "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/VI;
    :goto_2
    return-void

    .line 55005
    :cond_0
    invoke-static {p1, p2, v1, v2}, Lcom/facebook/ads/redexgen/X/O5;->A02(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/jd;ZLcom/facebook/ads/redexgen/X/O3;)V

    goto :goto_2

    .line 55006
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 55007
    :cond_2
    sget-object v0, Lcom/facebook/ads/redexgen/X/bD;->A05:Lcom/facebook/ads/redexgen/X/bD;

    goto :goto_0
.end method

.method private A09(Lcom/facebook/ads/redexgen/X/gi;Ljava/util/EnumSet;Lcom/facebook/ads/redexgen/X/jd;ILcom/facebook/ads/redexgen/X/Nt;)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/gi;",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/jd;",
            "I",
            "Lcom/facebook/ads/redexgen/X/Nt;",
            ")V"
        }
    .end annotation

    .line 55008
    .local v25, "cacheFlags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/ads/CacheFlag;>;"
    move-object/from16 v5, p3

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/NQ;->A1g()Z

    move-result v17

    .line 55009
    .local v6, "isDSL":Z
    move-object/from16 v4, p1

    move-object/from16 v6, p0

    invoke-direct {v6, v4}, Lcom/facebook/ads/redexgen/X/Nu;->A03(Lcom/facebook/ads/redexgen/X/gi;)Lcom/facebook/ads/redexgen/X/Sx;

    move-result-object v0

    .line 55010
    .local v14, "cacheManager":Lcom/facebook/ads/redexgen/X/Sx;
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/T8;->A0A()Lcom/facebook/ads/redexgen/X/VA;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/VI;

    invoke-direct {v1, v3, v2}, Lcom/facebook/ads/redexgen/X/VI;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/VA;)V

    .line 55011
    .local v15, "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/VI;
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Sx;->A0e(Lcom/facebook/ads/redexgen/X/VI;)V

    .line 55012
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Up;->A2H(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v8, 0x1

    if-eqz v1, :cond_a

    .line 55013
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/NQ;->A1H()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/SN;->A0A(Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v12, 0x1

    .line 55014
    .local v16, "isUnifiedAssetsLoaderEnabled":Z
    :goto_0
    move-object/from16 v19, p5

    if-eqz v12, :cond_0

    .line 55015
    new-instance v7, Lcom/facebook/ads/redexgen/X/SN;

    .line 55016
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/NQ;->A1H()Lorg/json/JSONObject;

    move-result-object v9

    .line 55017
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/NQ;->A10()Ljava/lang/String;

    move-result-object v10

    .line 55018
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/NQ;->A1D()Ljava/lang/String;

    move-result-object v11

    new-instance v13, Lcom/facebook/ads/redexgen/X/jF;

    move-object v15, v6

    move-object/from16 v16, v4

    move-object/from16 v18, v5

    move-object v14, v13

    invoke-direct/range {v14 .. v19}, Lcom/facebook/ads/redexgen/X/jF;-><init>(Lcom/facebook/ads/redexgen/X/Nu;Lcom/facebook/ads/redexgen/X/gi;ZLcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/Nt;)V

    move-object v8, v0

    invoke-direct/range {v7 .. v13}, Lcom/facebook/ads/redexgen/X/SN;-><init>(Lcom/facebook/ads/redexgen/X/Sx;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/SM;)V

    .line 55019
    .local v0, "unifiedAssetsLoader":Lcom/facebook/ads/redexgen/X/SN;
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/SN;->A0B()V

    .line 55020
    .end local v0    # "unifiedAssetsLoader":Lcom/facebook/ads/redexgen/X/SN;
    .end local v9
    .end local v11
    .end local v12
    :goto_1
    return-void

    .line 55021
    :cond_0
    const/16 v7, 0x60

    const/16 v3, 0xc

    const/16 v1, 0x75

    invoke-static {v7, v3, v1}, Lcom/facebook/ads/redexgen/X/Nu;->A04(III)Ljava/lang/String;

    move-result-object v1

    if-eqz v17, :cond_1

    .line 55022
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/NQ;->A0x()Ljava/lang/String;

    move-result-object v7

    .line 55023
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/NQ;->A1D()Ljava/lang/String;

    move-result-object v3

    new-instance v9, Lcom/facebook/ads/redexgen/X/St;

    invoke-direct {v9, v7, v3, v1}, Lcom/facebook/ads/redexgen/X/St;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55024
    .local v0, "cacheFileData":Lcom/facebook/ads/redexgen/X/St;
    iput-boolean v8, v9, Lcom/facebook/ads/redexgen/X/St;->A04:Z

    .line 55025
    const/4 v8, 0x0

    const/4 v7, 0x5

    const/16 v3, 0x4e

    invoke-static {v8, v7, v3}, Lcom/facebook/ads/redexgen/X/Nu;->A04(III)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v9, Lcom/facebook/ads/redexgen/X/St;->A03:Ljava/lang/String;

    .line 55026
    invoke-virtual {v0, v9}, Lcom/facebook/ads/redexgen/X/Sx;->A0Y(Lcom/facebook/ads/redexgen/X/St;)V

    .line 55027
    .end local v0    # "cacheFileData":Lcom/facebook/ads/redexgen/X/St;
    :cond_1
    new-instance v9, Lcom/facebook/ads/redexgen/X/Sv;

    .line 55028
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/jd;->A2C()Lcom/facebook/ads/redexgen/X/Nm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Nm;->A01()Ljava/lang/String;

    move-result-object v10

    sget v11, Lcom/facebook/ads/redexgen/X/e4;->A04:I

    sget v12, Lcom/facebook/ads/redexgen/X/e4;->A04:I

    .line 55029
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/NQ;->A1D()Ljava/lang/String;

    move-result-object v13

    const/16 v8, 0x60

    const/16 v7, 0xc

    const/16 v3, 0x75

    invoke-static {v8, v7, v3}, Lcom/facebook/ads/redexgen/X/Nu;->A04(III)Ljava/lang/String;

    move-result-object v14

    invoke-direct/range {v9 .. v14}, Lcom/facebook/ads/redexgen/X/Sv;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 55030
    invoke-virtual {v0, v9}, Lcom/facebook/ads/redexgen/X/Sx;->A0d(Lcom/facebook/ads/redexgen/X/Sv;)V

    .line 55031
    sget-object v3, Lcom/facebook/ads/CacheFlag;->VIDEO:Lcom/facebook/ads/CacheFlag;

    move-object/from16 v7, p2

    invoke-virtual {v7, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v16

    .line 55032
    .local v9, "cacheVideos":Z
    const/4 v15, 0x0

    .line 55033
    .local v0, "i":I
    invoke-static {}, Lcom/facebook/ads/redexgen/X/fX;->A03()Z

    move-result v3

    invoke-static {v4, v3}, Lcom/facebook/ads/redexgen/X/Up;->A30(Landroid/content/Context;Z)Z

    move-result v14

    .line 55034
    .local v11, "useExoPlayerCacheForDSL":Z
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/jd;->A2G()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .end local v0    # "i":I
    .local v12, "i":I
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/NR;

    .line 55035
    .local v0, "adInfo":Lcom/facebook/ads/redexgen/X/NR;
    new-instance v9, Lcom/facebook/ads/redexgen/X/Sv;

    .line 55036
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v7

    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/NU;->A08()Ljava/lang/String;

    move-result-object v21

    .line 55037
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v7

    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/O1;->A00(Lcom/facebook/ads/redexgen/X/NU;)I

    move-result v22

    .line 55038
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v7

    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/O1;->A01(Lcom/facebook/ads/redexgen/X/NU;)I

    move-result v23

    .line 55039
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/NQ;->A1D()Ljava/lang/String;

    move-result-object v24

    const/16 v10, 0x60

    const/16 v8, 0xc

    const/16 v7, 0x75

    invoke-static {v10, v8, v7}, Lcom/facebook/ads/redexgen/X/Nu;->A04(III)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v20, v9

    invoke-direct/range {v20 .. v25}, Lcom/facebook/ads/redexgen/X/Sv;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 55040
    .local v3, "imageData":Lcom/facebook/ads/redexgen/X/Sv;
    if-nez v15, :cond_7

    .line 55041
    invoke-virtual {v0, v9}, Lcom/facebook/ads/redexgen/X/Sx;->A0c(Lcom/facebook/ads/redexgen/X/Sv;)V

    .line 55042
    :goto_3
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/NR;->A0K()Lcom/facebook/ads/redexgen/X/Nd;

    move-result-object v7

    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/Nd;->A02()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 55043
    .local v5, "endCardUrl":Ljava/lang/String;
    new-instance v9, Lcom/facebook/ads/redexgen/X/Sv;

    .line 55044
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/NQ;->A1D()Ljava/lang/String;

    move-result-object v24

    const/16 v11, 0x60

    const/16 v8, 0xc

    const/16 v7, 0x75

    invoke-static {v11, v8, v7}, Lcom/facebook/ads/redexgen/X/Nu;->A04(III)Ljava/lang/String;

    move-result-object v25

    const/16 v22, -0x1

    const/16 v23, -0x1

    move-object/from16 v21, v10

    move-object/from16 v20, v9

    invoke-direct/range {v20 .. v25}, Lcom/facebook/ads/redexgen/X/Sv;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 55045
    invoke-virtual {v0, v9}, Lcom/facebook/ads/redexgen/X/Sx;->A0d(Lcom/facebook/ads/redexgen/X/Sv;)V

    .line 55046
    .end local v5    # "endCardUrl":Ljava/lang/String;
    goto :goto_4

    .line 55047
    :cond_2
    if-eqz v16, :cond_3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v7

    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/NU;->A09()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 55048
    new-instance v8, Lcom/facebook/ads/redexgen/X/St;

    .line 55049
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v7

    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/NU;->A09()Ljava/lang/String;

    move-result-object v21

    .line 55050
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/NQ;->A1D()Ljava/lang/String;

    move-result-object v22

    .line 55051
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/NU;->A06()J

    move-result-wide v24

    const/16 v9, 0x60

    const/16 v7, 0xc

    const/16 v3, 0x75

    invoke-static {v9, v7, v3}, Lcom/facebook/ads/redexgen/X/Nu;->A04(III)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v20, v8

    invoke-direct/range {v20 .. v25}, Lcom/facebook/ads/redexgen/X/St;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 55052
    .local v4, "fileData":Lcom/facebook/ads/redexgen/X/St;
    iput-boolean v2, v8, Lcom/facebook/ads/redexgen/X/St;->A04:Z

    .line 55053
    if-nez v15, :cond_5

    .line 55054
    if-eqz v17, :cond_4

    if-nez v14, :cond_4

    .line 55055
    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/Sx;->A0Y(Lcom/facebook/ads/redexgen/X/St;)V

    .line 55056
    .end local v4    # "fileData":Lcom/facebook/ads/redexgen/X/St;
    .end local v0    # "adInfo":Lcom/facebook/ads/redexgen/X/NR;
    .end local v3    # "imageData":Lcom/facebook/ads/redexgen/X/Sv;
    :cond_3
    :goto_5
    add-int/lit8 v15, v15, 0x1

    .line 55057
    goto/16 :goto_2

    .line 55058
    :cond_4
    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/Sx;->A0b(Lcom/facebook/ads/redexgen/X/St;)V

    goto :goto_5

    .line 55059
    :cond_5
    if-eqz v17, :cond_6

    if-nez v14, :cond_6

    .line 55060
    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/Sx;->A0Z(Lcom/facebook/ads/redexgen/X/St;)V

    goto :goto_5

    .line 55061
    :cond_6
    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/Sx;->A0a(Lcom/facebook/ads/redexgen/X/St;)V

    goto :goto_5

    .line 55062
    :cond_7
    invoke-virtual {v0, v9}, Lcom/facebook/ads/redexgen/X/Sx;->A0d(Lcom/facebook/ads/redexgen/X/Sv;)V

    goto/16 :goto_3

    .line 55063
    :cond_8
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/NQ;->A1W()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 55064
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/NQ;->A11()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 55065
    new-instance v8, Lcom/facebook/ads/redexgen/X/Sv;

    .line 55066
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/NQ;->A11()Ljava/lang/String;

    move-result-object v9

    sget v10, Lcom/facebook/ads/redexgen/X/Pe;->A0A:I

    sget v11, Lcom/facebook/ads/redexgen/X/Pe;->A0A:I

    .line 55067
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/NQ;->A1D()Ljava/lang/String;

    move-result-object v12

    const/16 v7, 0x60

    const/16 v3, 0xc

    const/16 v2, 0x75

    invoke-static {v7, v3, v2}, Lcom/facebook/ads/redexgen/X/Nu;->A04(III)Ljava/lang/String;

    move-result-object v13

    invoke-direct/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/Sv;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 55068
    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/Sx;->A0d(Lcom/facebook/ads/redexgen/X/Sv;)V

    .line 55069
    :cond_9
    invoke-static {v5, v0, v1}, Lcom/facebook/ads/redexgen/X/O0;->A00(Lcom/facebook/ads/redexgen/X/NQ;Lcom/facebook/ads/redexgen/X/Sx;Ljava/lang/String;)V

    .line 55070
    new-instance v14, Lcom/facebook/ads/redexgen/X/jD;

    move-object v15, v6

    move-object v6, v14

    .end local v6    # "isDSL":Z
    .local v17, "isDSL":Z
    move-object/from16 v16, v4

    move-object/from16 v18, v5

    invoke-direct/range {v14 .. v19}, Lcom/facebook/ads/redexgen/X/jD;-><init>(Lcom/facebook/ads/redexgen/X/Nu;Lcom/facebook/ads/redexgen/X/gi;ZLcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/Nt;)V

    .line 55071
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/NQ;->A1D()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Lcom/facebook/ads/redexgen/X/Sq;

    move/from16 v4, p4

    invoke-direct {v2, v3, v1, v4}, Lcom/facebook/ads/redexgen/X/Sq;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 55072
    invoke-virtual {v0, v6, v2}, Lcom/facebook/ads/redexgen/X/Sx;->A0X(Lcom/facebook/ads/redexgen/X/Sp;Lcom/facebook/ads/redexgen/X/Sq;)V

    goto/16 :goto_1

    .line 55073
    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_0
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/gi;Ljava/util/EnumSet;Lcom/facebook/ads/redexgen/X/jT;Lcom/facebook/ads/redexgen/X/jd;ILcom/facebook/ads/redexgen/X/Nt;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/gi;",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/jT;",
            "Lcom/facebook/ads/redexgen/X/jd;",
            "I",
            "Lcom/facebook/ads/redexgen/X/Nt;",
            ")V"
        }
    .end annotation

    .line 55074
    .local v11, "cacheFlags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/ads/CacheFlag;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/jH;

    move-object v1, p0

    move-object/from16 v6, p6

    move/from16 v5, p5

    move-object/from16 v3, p4

    move-object/from16 v4, p3

    move-object/from16 v7, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/jH;-><init>(Lcom/facebook/ads/redexgen/X/Nu;Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/jT;ILcom/facebook/ads/redexgen/X/Nt;Ljava/util/EnumSet;)V

    move-object v8, p0

    move-object v9, v2

    move-object v10, v7

    move-object v11, v3

    move v12, v5

    move-object v13, v0

    invoke-direct/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/Nu;->A09(Lcom/facebook/ads/redexgen/X/gi;Ljava/util/EnumSet;Lcom/facebook/ads/redexgen/X/jd;ILcom/facebook/ads/redexgen/X/Nt;)V

    .line 55075
    return-void
.end method

.method private A0B(Lcom/facebook/ads/redexgen/X/bD;)V
    .locals 0

    .line 55076
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Nu;->A01:Lcom/facebook/ads/redexgen/X/bD;

    .line 55077
    return-void
.end method

.method private A0C(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/jd;)Z
    .locals 2

    .line 55078
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Nu;->A00(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/jd;)Lcom/facebook/ads/AdError;

    move-result-object v1

    .line 55079
    .local v0, "adError":Lcom/facebook/ads/AdError;
    if-eqz v1, :cond_0

    .line 55080
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nu;->A04:Lcom/facebook/ads/redexgen/X/Nt;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Nt;->ACo(Lcom/facebook/ads/AdError;)V

    .line 55081
    const/4 v0, 0x1

    return v0

    .line 55082
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final A0D()Lcom/facebook/ads/redexgen/X/NQ;
    .locals 1

    .line 55083
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nu;->A03:Lcom/facebook/ads/redexgen/X/NQ;

    return-object v0
.end method

.method public final A0E()Lcom/facebook/ads/redexgen/X/WK;
    .locals 5

    .line 55084
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nu;->A03:Lcom/facebook/ads/redexgen/X/NQ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55085
    sget-object v0, Lcom/facebook/ads/redexgen/X/WK;->A04:Lcom/facebook/ads/redexgen/X/WK;

    return-object v0

    .line 55086
    :cond_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Nu;->A03:Lcom/facebook/ads/redexgen/X/NQ;

    check-cast v4, Lcom/facebook/ads/redexgen/X/jd;

    .line 55087
    .local v0, "adDataBundle":Lcom/facebook/ads/redexgen/X/jd;
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/NQ;->A1g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55088
    sget-object v0, Lcom/facebook/ads/redexgen/X/WK;->A06:Lcom/facebook/ads/redexgen/X/WK;

    return-object v0

    .line 55089
    :cond_1
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/jd;->A2G()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v0, 0x1

    if-le v1, v0, :cond_2

    .line 55090
    sget-object v0, Lcom/facebook/ads/redexgen/X/WK;->A0A:Lcom/facebook/ads/redexgen/X/WK;

    return-object v0

    .line 55091
    :cond_2
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NU;->A07()Lcom/facebook/ads/redexgen/X/No;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Nu;->A06:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xe

    if-eq v1, v0, :cond_9

    sget-object v2, Lcom/facebook/ads/redexgen/X/Nu;->A06:[Ljava/lang/String;

    const-string v1, "HO5lN2vl3hawZ3xdOTbB4PXxItmZOFKM"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "QabHGQsenJFHZf5mHftqzVXi6FXcwsQx"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v3, :cond_6

    .line 55092
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/NQ;->A1n()Z

    move-result v0

    if-nez v0, :cond_3

    .line 55093
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/NQ;->A1u()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Nu;->A06:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Nu;->A06:[Ljava/lang/String;

    const-string v1, "iV2CDA2M2IfUZLXvhnmiNr1pV0Sur2CQ"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "GDT4frbvCKvkZrCQcOaJTMqN9T6RIdn0"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v3, :cond_5

    .line 55094
    :cond_3
    :goto_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/WK;->A0E:Lcom/facebook/ads/redexgen/X/WK;

    return-object v0

    :cond_4
    if-eqz v3, :cond_5

    goto :goto_0

    .line 55095
    :cond_5
    sget-object v0, Lcom/facebook/ads/redexgen/X/WK;->A0C:Lcom/facebook/ads/redexgen/X/WK;

    return-object v0

    .line 55096
    :cond_6
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/Nu;->A0L(Lcom/facebook/ads/redexgen/X/jd;)Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Nu;->A06:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_8

    sget-object v2, Lcom/facebook/ads/redexgen/X/Nu;->A06:[Ljava/lang/String;

    const-string v1, "iDu"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_7

    .line 55097
    sget-object v0, Lcom/facebook/ads/redexgen/X/WK;->A0D:Lcom/facebook/ads/redexgen/X/WK;

    return-object v0

    .line 55098
    :cond_7
    sget-object v0, Lcom/facebook/ads/redexgen/X/WK;->A0B:Lcom/facebook/ads/redexgen/X/WK;

    return-object v0

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0F()Lcom/facebook/ads/redexgen/X/bD;
    .locals 1

    .line 55099
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nu;->A01:Lcom/facebook/ads/redexgen/X/bD;

    return-object v0
.end method

.method public final A0G()Ljava/lang/String;
    .locals 1

    .line 55100
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nu;->A03:Lcom/facebook/ads/redexgen/X/NQ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55101
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nu;->A03:Lcom/facebook/ads/redexgen/X/NQ;

    check-cast v0, Lcom/facebook/ads/redexgen/X/jT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jT;->A2A()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 55102
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nu;->A03:Lcom/facebook/ads/redexgen/X/NQ;

    check-cast v0, Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A0H()V
    .locals 1

    .line 55103
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nu;->A04:Lcom/facebook/ads/redexgen/X/Nt;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Nt;->AKX()V

    .line 55104
    return-void
.end method

.method public final A0I(Landroid/content/Intent;Lcom/facebook/ads/RewardData;Ljava/lang/String;)V
    .locals 3

    .line 55105
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nu;->A03:Lcom/facebook/ads/redexgen/X/NQ;

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/NQ;->A1K(Lcom/facebook/ads/RewardData;)V

    .line 55106
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nu;->A03:Lcom/facebook/ads/redexgen/X/NQ;

    invoke-virtual {v0, p3}, Lcom/facebook/ads/redexgen/X/NQ;->A1O(Ljava/lang/String;)V

    .line 55107
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nu;->A0D()Lcom/facebook/ads/redexgen/X/NQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55108
    const/16 v2, 0x4d

    const/16 v1, 0x13

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nu;->A04(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nu;->A03:Lcom/facebook/ads/redexgen/X/NQ;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 55109
    :cond_0
    const/16 v2, 0x30

    const/16 v1, 0xe

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nu;->A04(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nu;->A03:Lcom/facebook/ads/redexgen/X/NQ;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 55110
    return-void
.end method

.method public final A0J(Lcom/facebook/ads/redexgen/X/gi;Ljava/util/EnumSet;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/gi;",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;)V"
        }
    .end annotation

    .line 55111
    .local p1, "cacheFlags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/ads/CacheFlag;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nu;->A0E()Lcom/facebook/ads/redexgen/X/WK;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/WK;->A04:Lcom/facebook/ads/redexgen/X/WK;

    move-object v5, p2

    move-object v4, p1

    if-ne v1, v0, :cond_2

    .line 55112
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Nu;->A03:Lcom/facebook/ads/redexgen/X/NQ;

    check-cast v6, Lcom/facebook/ads/redexgen/X/jT;

    .line 55113
    .local v0, "chainedAdDataBundle":Lcom/facebook/ads/redexgen/X/jT;
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/jT;->A26()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v7

    .line 55114
    .local v8, "firstAdDataBundle":Lcom/facebook/ads/redexgen/X/jd;
    invoke-direct {p0, v4, v7}, Lcom/facebook/ads/redexgen/X/Nu;->A0C(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/jd;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez v7, :cond_1

    .line 55115
    .restart local v0    # "chainedAdDataBundle":Lcom/facebook/ads/redexgen/X/jT;
    .restart local v8    # "firstAdDataBundle":Lcom/facebook/ads/redexgen/X/jd;
    :cond_0
    return-void

    .line 55116
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nu;->A04:Lcom/facebook/ads/redexgen/X/Nt;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Nt;->AHY()V

    .line 55117
    const/4 v8, 0x0

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/Nu;->A04:Lcom/facebook/ads/redexgen/X/Nt;

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/Nu;->A0A(Lcom/facebook/ads/redexgen/X/gi;Ljava/util/EnumSet;Lcom/facebook/ads/redexgen/X/jT;Lcom/facebook/ads/redexgen/X/jd;ILcom/facebook/ads/redexgen/X/Nt;)V

    .line 55118
    .end local v0    # "chainedAdDataBundle":Lcom/facebook/ads/redexgen/X/jT;
    .end local v8    # "firstAdDataBundle":Lcom/facebook/ads/redexgen/X/jd;
    goto :goto_0

    .line 55119
    .end local v0
    .end local v8
    :cond_2
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Nu;->A03:Lcom/facebook/ads/redexgen/X/NQ;

    check-cast v3, Lcom/facebook/ads/redexgen/X/jd;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Nu;->A06:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/Nu;->A06:[Ljava/lang/String;

    const-string v1, "h3j4XQE4N9RDZ4AU6tvjsFYKX3e30HKG"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "lDhcJ7lgFtqhZjTb781X3zaoWDc2BWUc"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-direct {p0, v4, v3}, Lcom/facebook/ads/redexgen/X/Nu;->A0C(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/jd;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 55120
    return-void

    .line 55121
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nu;->A04:Lcom/facebook/ads/redexgen/X/Nt;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Nt;->AHY()V

    .line 55122
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nu;->A0E()Lcom/facebook/ads/redexgen/X/WK;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/WK;->A0C:Lcom/facebook/ads/redexgen/X/WK;

    if-ne v1, v0, :cond_5

    .line 55123
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Nu;->A03:Lcom/facebook/ads/redexgen/X/NQ;

    check-cast v3, Lcom/facebook/ads/redexgen/X/7n;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Nu;->A06:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Nu;->A06:[Ljava/lang/String;

    const-string v1, "0uVLF1bkkTEn2WeYm46QMmOd1A6"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-direct {p0, v4, v3}, Lcom/facebook/ads/redexgen/X/Nu;->A08(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/7n;)V

    .line 55124
    :goto_0
    return-void

    .line 55125
    :cond_4
    invoke-direct {p0, v4, v3}, Lcom/facebook/ads/redexgen/X/Nu;->A08(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/7n;)V

    goto :goto_0

    .line 55126
    :cond_5
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Nu;->A03:Lcom/facebook/ads/redexgen/X/NQ;

    check-cast v6, Lcom/facebook/ads/redexgen/X/7n;

    const/4 v7, -0x1

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/Nu;->A04:Lcom/facebook/ads/redexgen/X/Nt;

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/Nu;->A09(Lcom/facebook/ads/redexgen/X/gi;Ljava/util/EnumSet;Lcom/facebook/ads/redexgen/X/jd;ILcom/facebook/ads/redexgen/X/Nt;)V

    goto :goto_0

    .line 55127
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0K()Z
    .locals 1

    .line 55128
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nu;->A03:Lcom/facebook/ads/redexgen/X/NQ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1U()Z

    move-result v0

    return v0
.end method

.method public final A0L(Lcom/facebook/ads/redexgen/X/jd;)Z
    .locals 1

    .line 55129
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NU;->A09()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
