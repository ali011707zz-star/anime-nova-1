.class public final Lcom/facebook/ads/redexgen/X/My;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A06:[B

.field public static A07:[Ljava/lang/String;


# instance fields
.field public final A00:Ljava/lang/String;

.field public final A01:Ljava/lang/String;

.field public final A02:Ljava/lang/String;

.field public final A03:Ljava/lang/String;

.field public final A04:Ljava/lang/String;

.field public final A05:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1419
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "mJqTstYmruZhgAwaIEL2b4JvWf0CXQMB"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "HnU4x"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "PGMUzhdVy0Xmj4ysKeXKBv0ydkVK"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "GINYaTk0"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "V6CaE"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "fikkh2q6ZMH0m3YxzoB0Qf3bpiihQ1Gk"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "lQcCmoZBYA5tZudR22aEG8J8TvwruM4P"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "bCUE2z1YAZE0LvG9WsX4zUjeUwMdrUpo"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/My;->A07:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/My;->A02()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 52664
    .local p4, "mKeyHashes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52665
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/My;->A04:Ljava/lang/String;

    .line 52666
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/My;->A01:Ljava/lang/String;

    .line 52667
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/My;->A00:Ljava/lang/String;

    .line 52668
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/My;->A05:Ljava/util/List;

    .line 52669
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/My;->A03:Ljava/lang/String;

    .line 52670
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/My;->A02:Ljava/lang/String;

    .line 52671
    return-void
.end method

.method public static A00(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/My;
    .locals 11
    .param p0    # Lorg/json/JSONObject;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 52672
    if-nez p0, :cond_0

    .line 52673
    const/4 v0, 0x0

    return-object v0

    .line 52674
    :cond_0
    const/16 v2, 0x32

    const/4 v1, 0x7

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/My;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 52675
    .local v0, "mPackageName":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v1, 0x7

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/My;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 52676
    .local v8, "appsite":Ljava/lang/String;
    const/4 v2, 0x7

    const/16 v1, 0xb

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/My;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 52677
    .local v9, "appsiteUri":Ljava/lang/String;
    const/16 v2, 0x1e

    const/16 v1, 0xa

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/My;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 52678
    .local v10, "keyHashesArray":Lorg/json/JSONArray;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 52679
    .local p0, "mKeyHashes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_2

    .line 52680
    const/4 v3, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/My;->A07:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/My;->A07:[Ljava/lang/String;

    const-string v1, "6bZ3PT4hZpte9eL2tY79J7XfrRT1VGoj"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "LsdIpdVpvhsRMPSbdpH1TYtbnc9xgebb"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-ge v3, v5, :cond_2

    .line 52681
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52682
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 52683
    .end local v1    # "i":I
    :cond_2
    const/16 v2, 0x28

    const/16 v1, 0xa

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/My;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 52684
    .local p1, "mMarketUri":Ljava/lang/String;
    const/16 v2, 0x12

    const/16 v1, 0xc

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/My;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 52685
    .local p2, "mFallbackUrl":Ljava/lang/String;
    new-instance v5, Lcom/facebook/ads/redexgen/X/My;

    invoke-direct/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/My;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v5
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/My;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x24

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

    const/16 v0, 0x39

    new-array v3, v0, [B

    fill-array-data v3, :array_0

    sget-object v1, Lcom/facebook/ads/redexgen/X/My;->A07:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/My;->A07:[Ljava/lang/String;

    const-string v1, "XQt1KGXtiLW9MsB6ZzaZR9RXZ3iXxMSI"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    sput-object v3, Lcom/facebook/ads/redexgen/X/My;->A06:[B

    return-void

    :array_0
    .array-data 1
        -0x76t
        -0x67t
        -0x67t
        -0x64t
        -0x6et
        -0x63t
        -0x72t
        -0x18t
        -0x9t
        -0x9t
        -0x6t
        -0x10t
        -0x5t
        -0x14t
        -0x1at
        -0x4t
        -0x7t
        -0xdt
        -0x71t
        -0x76t
        -0x6bt
        -0x6bt
        -0x75t
        -0x76t
        -0x74t
        -0x6ct
        -0x78t
        -0x62t
        -0x65t
        -0x6bt
        -0x59t
        -0x5ft
        -0x4bt
        -0x65t
        -0x5ct
        -0x63t
        -0x51t
        -0x5ct
        -0x5ft
        -0x51t
        0x10t
        0x4t
        0x15t
        0xet
        0x8t
        0x17t
        0x2t
        0x18t
        0x15t
        0xct
        0x6t
        -0x9t
        -0x7t
        0x1t
        -0x9t
        -0x3t
        -0x5t
    .end array-data
.end method


# virtual methods
.method public final A03()Ljava/lang/String;
    .locals 1

    .line 52686
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/My;->A00:Ljava/lang/String;

    return-object v0
.end method

.method public final A04()Ljava/lang/String;
    .locals 1

    .line 52687
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/My;->A01:Ljava/lang/String;

    return-object v0
.end method

.method public final A05()Ljava/lang/String;
    .locals 1

    .line 52688
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/My;->A04:Ljava/lang/String;

    return-object v0
.end method
