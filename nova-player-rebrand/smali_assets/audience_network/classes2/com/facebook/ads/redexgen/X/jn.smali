.class public final Lcom/facebook/ads/redexgen/X/jn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Mw;


# static fields
.field public static A08:[B


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Mv;

.field public final A01:Ljava/lang/String;

.field public final A02:Ljava/lang/String;

.field public final A03:Ljava/lang/String;

.field public final A04:Ljava/lang/String;

.field public final A05:Ljava/lang/String;

.field public final A06:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final A07:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/jn;->A02()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Mv;Ljava/util/Collection;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Mv;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 88954
    .local p4, "detectionStrings":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p5, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88955
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/jn;->A04:Ljava/lang/String;

    .line 88956
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/jn;->A01:Ljava/lang/String;

    .line 88957
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/jn;->A00:Lcom/facebook/ads/redexgen/X/Mv;

    .line 88958
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/jn;->A06:Ljava/util/Collection;

    .line 88959
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/jn;->A07:Ljava/util/Map;

    .line 88960
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/jn;->A05:Ljava/lang/String;

    .line 88961
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/jn;->A02:Ljava/lang/String;

    .line 88962
    iput-object p8, p0, Lcom/facebook/ads/redexgen/X/jn;->A03:Ljava/lang/String;

    .line 88963
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/76;Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/jn;
    .locals 11

    .line 88964
    const/16 v2, 0x21

    const/4 v1, 0x6

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jn;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 88965
    .local v1, "markup":Ljava/lang/String;
    const/4 v2, 0x0

    const/16 v1, 0x12

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jn;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 88966
    .local p0, "activationCommand":Ljava/lang/String;
    const/16 v2, 0x2f

    const/16 v1, 0xa

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jn;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 88967
    .local p1, "requestId":Ljava/lang/String;
    const/16 v2, 0x12

    const/4 v1, 0x2

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jn;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/Xd;->A02(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 88968
    .local p2, "clientToken":Ljava/lang/String;
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Mx;->A00(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/Mv;

    move-result-object v6

    .line 88969
    .local p3, "invalidationBehavior":Lcom/facebook/ads/redexgen/X/Mv;
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/Mx;->A03(Lcom/facebook/ads/redexgen/X/gi;Lorg/json/JSONObject;)Ljava/util/Collection;

    move-result-object v7

    .line 88970
    .local p4, "detectionStrings":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/16 v2, 0x27

    const/16 v1, 0x8

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jn;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 88971
    .local v10, "metadataObject":Lorg/json/JSONObject;
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 88972
    .local v9, "mMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    .line 88973
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 88974
    .local v2, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88975
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 88976
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88977
    .end local v3    # "key":Ljava/lang/String;
    goto :goto_0

    .line 88978
    .end local v2    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    const/16 v2, 0x14

    const/16 v1, 0xd

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jn;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/Xd;->A02(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 88979
    .local p5, "encryptedCPM":Ljava/lang/String;
    new-instance v3, Lcom/facebook/ads/redexgen/X/jn;

    .end local v9    # "mMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p7, "mMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "metadataObject":Lorg/json/JSONObject;
    .local p8, "metadataObject":Lorg/json/JSONObject;
    invoke-direct/range {v3 .. v11}, Lcom/facebook/ads/redexgen/X/jn;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Mv;Ljava/util/Collection;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/jn;->A08:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x77

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
    .locals 1

    const/16 v0, 0x39

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/jn;->A08:[B

    return-void

    :array_0
    .array-data 1
        0x4et
        0x50t
        0x61t
        0x56t
        0x63t
        0x4et
        0x61t
        0x56t
        0x5ct
        0x5bt
        0x4ct
        0x50t
        0x5ct
        0x5at
        0x5at
        0x4et
        0x5bt
        0x51t
        0x2dt
        0x3et
        0x35t
        0x3et
        0x33t
        0x42t
        0x49t
        0x40t
        0x44t
        0x35t
        0x34t
        0x2ft
        0x33t
        0x40t
        0x3dt
        0x5ct
        0x50t
        0x61t
        0x5at
        0x64t
        0x5ft
        0x26t
        0x1et
        0x2dt
        0x1at
        0x1dt
        0x1at
        0x2dt
        0x1at
        0x1dt
        0x10t
        0x1ct
        0x20t
        0x10t
        0x1et
        0x1ft
        0xat
        0x14t
        0xft
    .end array-data
.end method


# virtual methods
.method public final A03()Ljava/lang/String;
    .locals 1

    .line 88980
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jn;->A01:Ljava/lang/String;

    return-object v0
.end method

.method public final A04()Ljava/lang/String;
    .locals 1

    .line 88981
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jn;->A04:Ljava/lang/String;

    return-object v0
.end method

.method public final A05()Ljava/lang/String;
    .locals 1

    .line 88982
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jn;->A03:Ljava/lang/String;

    return-object v0
.end method

.method public final A7O()Ljava/lang/String;
    .locals 1

    .line 88983
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jn;->A02:Ljava/lang/String;

    return-object v0
.end method

.method public final A7p()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 88984
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jn;->A06:Ljava/util/Collection;

    return-object v0
.end method

.method public final A8K()Lcom/facebook/ads/redexgen/X/Mv;
    .locals 1

    .line 88985
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jn;->A00:Lcom/facebook/ads/redexgen/X/Mv;

    return-object v0
.end method
