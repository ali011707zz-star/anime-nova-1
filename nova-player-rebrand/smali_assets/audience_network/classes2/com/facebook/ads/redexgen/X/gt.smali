.class public final Lcom/facebook/ads/redexgen/X/gt;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/SR;


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;


# instance fields
.field public A00:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/facebook/ads/redexgen/X/SU;",
            ">;"
        }
    .end annotation
.end field

.field public final A01:Lcom/facebook/ads/redexgen/X/gK;

.field public final A02:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/ST;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2907
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "1hpByTARN6eOnQ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "46DvCO0dFj9d90pc7Bl3Va1pW3afVu0G"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "LtfSHnVMNf9jD1VPw2QJdb6akNXb3KRw"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "UXeRQ2HNaneiXsHAoGvRBzblNiVPPyfq"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "WcHPi3i27m6LdaHLnkH9ENRpFxyJu3g8"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "FTcDokCppzFM6olvGfJVNXVubstDZ8VZ"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "v3Z7C81p3UBYKX6nY0MAEeka3DNz7RKw"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "vwYfKziuTy1RLYscQHjTEDI4uYjWuvBq"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/gt;->A04:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/gt;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/CY;)V
    .locals 2

    .line 83567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83568
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/gt;->A00:Ljava/util/Set;

    .line 83569
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/gt;->A02:Ljava/util/List;

    .line 83570
    sget-object v0, Lcom/facebook/ads/redexgen/X/gL;->A0B:Lcom/facebook/ads/redexgen/X/gL;

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/CY;->A5U(Lcom/facebook/ads/redexgen/X/gL;)Lcom/facebook/ads/redexgen/X/gK;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/gt;->A01:Lcom/facebook/ads/redexgen/X/gK;

    .line 83571
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/gt;->A01:Lcom/facebook/ads/redexgen/X/gK;

    new-instance v0, Lcom/facebook/ads/redexgen/X/gu;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/gu;-><init>(Lcom/facebook/ads/redexgen/X/gt;)V

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/gK;->A41(Lcom/facebook/ads/redexgen/X/gM;)V

    .line 83572
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/gt;->A03()V

    .line 83573
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/gt;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x51

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01(Lorg/json/JSONObject;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Set<",
            "Lcom/facebook/ads/redexgen/X/SU;",
            ">;"
        }
    .end annotation

    .line 83574
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 83575
    .local v0, "assets":Ljava/util/Set;, "Ljava/util/Set<Lcom/facebook/ads/internal/assetpreloaddb/AssetToPreload;>;"
    const/16 v2, 0x8

    const/4 v1, 0x6

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gt;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 83576
    .local v1, "assetsInData":Lorg/json/JSONArray;
    const/4 v5, 0x0

    if-nez p0, :cond_0

    .line 83577
    return-object v5

    .line 83578
    :cond_0
    const/4 v4, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/gt;->A04:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4d

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/gt;->A04:[Ljava/lang/String;

    const-string v1, "HjevAVNXdTQxpc55Yqf8Zim5Y"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-ge v4, v3, :cond_4

    .line 83579
    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 83580
    .local v4, "assetJson":Lorg/json/JSONObject;
    if-nez v0, :cond_2

    .line 83581
    return-object v5

    .line 83582
    :cond_2
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gs;->A00(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/gs;

    move-result-object v0

    .line 83583
    .local v5, "asset":Lcom/facebook/ads/redexgen/X/SU;
    if-nez v0, :cond_3

    .line 83584
    return-object v5

    .line 83585
    :cond_3
    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83586
    .end local v4    # "assetJson":Lorg/json/JSONObject;
    .end local v5    # "asset":Lcom/facebook/ads/redexgen/X/SU;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 83587
    .end local v3    # "i":I
    :cond_4
    return-object v6
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/gt;->A03:[B

    return-void

    :array_0
    .array-data 1
        0x4bt
        0x4bt
        0x4et
        0x18t
        0x51t
        0x4bt
        0x4et
        0x18t
        0x27t
        0x35t
        0x35t
        0x23t
        0x32t
        0x35t
    .end array-data
.end method

.method private declared-synchronized A03()V
    .locals 7

    monitor-enter p0

    .line 83588
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gt;->A01:Lcom/facebook/ads/redexgen/X/gK;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/gK;->AAe()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83589
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83590
    .end local p3
    monitor-exit p0

    return-void

    .line 83591
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gt;->A01:Lcom/facebook/ads/redexgen/X/gK;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/gK;->A7i()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gt;->A01(Lorg/json/JSONObject;)Ljava/util/Set;

    move-result-object v1

    .line 83592
    .local v0, "assets":Ljava/util/Set;, "Ljava/util/Set<Lcom/facebook/ads/internal/assetpreloaddb/AssetToPreload;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gt;->A00:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    .line 83593
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/gt;->A00:Ljava/util/Set;

    .line 83594
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gt;->A02:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/ST;

    .line 83595
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/ST;
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ST;->A4J()V

    goto :goto_0

    .line 83596
    :cond_1
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83597
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gt;->A00:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/SU;

    .line 83598
    .local v2, "asset":Lcom/facebook/ads/redexgen/X/SU;
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gt;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/SU;->A9O()Lcom/facebook/ads/redexgen/X/SV;

    move-result-object v4

    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/SU;->getUrl()Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v4, v2, v1

    const/4 v1, 0x1

    aput-object v3, v2, v1

    invoke-static {v5, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83599
    :cond_2
    monitor-exit p0

    return-void

    .line 83600
    .end local v0    # "assets":Ljava/util/Set;, "Ljava/util/Set<Lcom/facebook/ads/internal/assetpreloaddb/AssetToPreload;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/gt;)V
    .locals 0

    .line 83601
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/gt;->A03()V

    return-void
.end method


# virtual methods
.method public final A40(Lcom/facebook/ads/redexgen/X/ST;)V
    .locals 1

    .line 83602
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gt;->A02:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83603
    return-void
.end method

.method public final declared-synchronized A6x()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/facebook/ads/redexgen/X/SU;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 83604
    :try_start_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/gt;->A00:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/gt;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
