.class public final Lcom/facebook/ads/redexgen/X/YK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/V8;


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;

.field public static final A04:Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/ge;

.field public A01:Lcom/facebook/ads/redexgen/X/ZD;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2436
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "nSyQhtMfpq2jNqGGNPt5NI90oeOfe1"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "vvfyUHTPPgzLU9ZJhsHsRroWK12HyjVH"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "qslzdaLavUZ6hWrKlj1Zt3UP1k3mmB4y"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "NIvb6IKYOgsNqkR8AWNkoYQGWWwuN"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "c4tQ8NQ91n2uUc9nTvHWxfXCnHLpYFgI"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "tMmd9elNu7YQkbRY7XCik1QBLE"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "7gl4a25pOcE06E3aPI2wtSqogJ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "FAOoLRBR29CEN05oKXcOTgWFdOs"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/YK;->A03:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/YK;->A01()V

    const-class v0, Lcom/facebook/ads/redexgen/X/YK;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/YK;->A04:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ge;Lcom/facebook/ads/redexgen/X/ZD;)V
    .locals 0

    .line 73877
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73878
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/YK;->A00:Lcom/facebook/ads/redexgen/X/ge;

    .line 73879
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/YK;->A01:Lcom/facebook/ads/redexgen/X/ZD;

    .line 73880
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/YK;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x20

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

    const/16 v0, 0x1b7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/YK;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x3ct
        0x7at
        0x73t
        0x6et
        0x3ct
        0x79t
        0x6at
        0x79t
        0x72t
        0x68t
        0x55t
        0x78t
        0x3ct
        0x57t
        0x4t
        0x2t
        0x14t
        0x14t
        0x12t
        0x4t
        0x4t
        0x11t
        0x2t
        0x1bt
        0x1bt
        0xet
        0x59t
        0x12t
        0x2ft
        0xet
        0x7t
        0xet
        0x1ft
        0xet
        0xft
        0x4bt
        0xet
        0x1dt
        0xet
        0x5t
        0x1ft
        0x18t
        0x4bt
        0xet
        0x13t
        0x8t
        0xet
        0xet
        0xft
        0xet
        0xft
        0x4bt
        0x19t
        0xet
        0x1ft
        0x19t
        0x12t
        0x4bt
        0x7t
        0x2t
        0x6t
        0x2t
        0x1ft
        0x45t
        0x4bt
        0x28t
        0x4t
        0x1et
        0x5t
        0x1ft
        0x51t
        0x4bt
        0x2ct
        0xbt
        0x3t
        0x6t
        0xft
        0xet
        0x4at
        0x1et
        0x5t
        0x4at
        0x1at
        0xbt
        0x18t
        0x19t
        0xft
        0x4at
        0xbt
        0x4t
        0x4at
        0xft
        0x1ct
        0xft
        0x4t
        0x1et
        0x4at
        0x3t
        0x4t
        0x4at
        0xft
        0x1ct
        0xft
        0x4t
        0x1et
        0x19t
        0x4at
        0xbt
        0x18t
        0x18t
        0xbt
        0x13t
        0x4at
        0xct
        0x5t
        0x18t
        0x4at
        0xet
        0x3t
        0x19t
        0x1at
        0xbt
        0x1et
        0x9t
        0x2t
        0x4at
        0xct
        0xbt
        0x3t
        0x6t
        0x1ft
        0x18t
        0xft
        0x44t
        0x58t
        0x7ft
        0x77t
        0x72t
        0x7bt
        0x7at
        0x3et
        0x6at
        0x71t
        0x3et
        0x6et
        0x7ft
        0x6ct
        0x6dt
        0x7bt
        0x3et
        0x7ft
        0x70t
        0x3et
        0x7bt
        0x68t
        0x7bt
        0x70t
        0x6at
        0x3et
        0x77t
        0x70t
        0x3et
        0x7bt
        0x68t
        0x7bt
        0x70t
        0x6at
        0x6dt
        0x3et
        0x72t
        0x77t
        0x6dt
        0x6at
        0x3et
        0x69t
        0x76t
        0x7bt
        0x70t
        0x3et
        0x6et
        0x6ct
        0x7bt
        0x6et
        0x7ft
        0x6ct
        0x77t
        0x70t
        0x79t
        0x3et
        0x7at
        0x77t
        0x6dt
        0x6et
        0x7ft
        0x6at
        0x7dt
        0x76t
        0x3et
        0x6et
        0x7ft
        0x67t
        0x72t
        0x71t
        0x7ft
        0x7at
        0x30t
        0x1at
        0x2ct
        0x3bt
        0x3ft
        0x2ct
        0x3bt
        0x69t
        0x39t
        0x3bt
        0x26t
        0x2at
        0x2ct
        0x3at
        0x3at
        0x2ct
        0x2dt
        0x69t
        0x2ct
        0x3ft
        0x2ct
        0x27t
        0x3dt
        0x0t
        0x2dt
        0x69t
        0x14t
        0x22t
        0x35t
        0x31t
        0x22t
        0x35t
        0x67t
        0x35t
        0x22t
        0x33t
        0x32t
        0x35t
        0x29t
        0x22t
        0x23t
        0x67t
        0x29t
        0x28t
        0x29t
        0x6at
        0x35t
        0x22t
        0x33t
        0x35t
        0x3et
        0x26t
        0x25t
        0x2bt
        0x22t
        0x67t
        0x22t
        0x35t
        0x35t
        0x28t
        0x35t
        0x67t
        0x24t
        0x28t
        0x23t
        0x22t
        0x67t
        0x6dt
        0x5bt
        0x4ct
        0x48t
        0x5bt
        0x4ct
        0x1et
        0x4ct
        0x5bt
        0x4at
        0x4bt
        0x4ct
        0x50t
        0x5bt
        0x5at
        0x1et
        0x4ct
        0x5bt
        0x4at
        0x4ct
        0x47t
        0x5ft
        0x5ct
        0x52t
        0x5bt
        0x1et
        0x5bt
        0x4ct
        0x4ct
        0x51t
        0x4ct
        0x1et
        0x5dt
        0x51t
        0x5at
        0x5bt
        0x1et
        0x19t
        0x22t
        0x2dt
        0x2et
        0x20t
        0x29t
        0x6ct
        0x38t
        0x23t
        0x6ct
        0x3ct
        0x2dt
        0x3et
        0x3ft
        0x29t
        0x6ct
        0x3ft
        0x29t
        0x3et
        0x3at
        0x29t
        0x3et
        0x6ct
        0x3et
        0x29t
        0x3ft
        0x3ct
        0x23t
        0x22t
        0x3ft
        0x29t
        0x6ct
        0x2dt
        0x38t
        0x6ct
        0x3ct
        0x23t
        0x3ft
        0x25t
        0x38t
        0x25t
        0x23t
        0x22t
        0x6ct
        0x1dt
        0x11t
        0x1at
        0x1bt
        0x5et
        0x4dt
        0x5et
        0x55t
        0x4ft
        0x48t
        0x7t
        0x4t
        0x0t
        0x15t
        0x14t
        0x13t
        0x4t
        0x4ct
        0x2t
        0xet
        0xft
        0x7t
        0x8t
        0x6t
        0x4ct
        0x4t
        0x17t
        0x4t
        0xft
        0x15t
        0x4ct
        0xct
        0x0t
        0x6t
        0x8t
        0x2t
        0x27t
        0x24t
        0x20t
        0x35t
        0x34t
        0x33t
        0x24t
        0x1et
        0x22t
        0x2et
        0x2ft
        0x27t
        0x28t
        0x26t
        0x17t
        0x1at
        0x74t
        0x63t
        0x65t
        0x69t
        0x74t
        0x62t
        0x59t
        0x62t
        0x67t
        0x72t
        0x67t
        0x64t
        0x67t
        0x75t
        0x63t
        0x49t
        0x52t
        0x56t
        0x58t
        0x53t
        0x16t
        0xdt
        0x9t
        0x7t
        0xct
        0x3dt
        0xbt
        0x6t
        0x4at
        0x51t
        0x55t
        0x5bt
        0x50t
        0x4dt
    .end array-data
.end method

.method private A02(Ljava/util/Set;Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 73881
    .local p1, "eventsToRetry":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p2, "eventsToDelete":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YK;->A00:Lcom/facebook/ads/redexgen/X/ge;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ur;->A0G(Landroid/content/Context;)I

    move-result v1

    .line 73882
    .local v0, "retryLimit":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YK;->A01:Lcom/facebook/ads/redexgen/X/ZD;

    .line 73883
    invoke-virtual {v0, v1, p1, p2}, Lcom/facebook/ads/redexgen/X/ZD;->A0B(ILjava/util/Set;Ljava/util/Set;)I

    move-result v6

    .line 73884
    .local v1, "attemptsExceededEventsCount":I
    if-lez v6, :cond_0

    .line 73885
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YK;->A00:Lcom/facebook/ads/redexgen/X/ge;

    .line 73886
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/Td;->A10:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1c

    const/16 v1, 0x2c

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YK;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/String;)V

    .line 73887
    const/16 v2, 0x195

    const/16 v1, 0xf

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YK;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    .line 73888
    :cond_0
    return-void
.end method


# virtual methods
.method public final A5L()Lorg/json/JSONObject;
    .locals 9

    .line 73889
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YK;->A00:Lcom/facebook/ads/redexgen/X/ge;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ur;->A0F(Landroid/content/Context;)I

    move-result v3

    .line 73890
    .local v0, "eventLimit":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YK;->A01:Lcom/facebook/ads/redexgen/X/ZD;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/ZD;->A0C(I)Ljava/util/List;

    move-result-object v7

    .line 73891
    .local v1, "events":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 73892
    .local v2, "tokensJson":Lorg/json/JSONObject;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    .line 73893
    .local v4, "event":Lorg/json/JSONObject;
    :try_start_0
    const/16 v2, 0x1a4

    const/4 v1, 0x5

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YK;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73894
    .local v5, "token":Ljava/lang/String;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    .line 73895
    .local v6, "tokenId":Ljava/lang/String;
    invoke-virtual {v5, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73896
    const/16 v2, 0x1a9

    const/16 v1, 0x8

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YK;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73897
    :catch_0
    move-exception v6

    .line 73898
    .local v5, "jsone":Lorg/json/JSONException;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YK;->A00:Lcom/facebook/ads/redexgen/X/ge;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A05()Lcom/facebook/ads/redexgen/X/TD;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/TD;->AAO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73899
    sget-object v4, Lcom/facebook/ads/redexgen/X/YK;->A04:Ljava/lang/String;

    const/16 v2, 0x86

    const/16 v1, 0x48

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YK;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 73900
    :cond_1
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v7}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 73901
    .local v3, "eventsJson":Lorg/json/JSONArray;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YK;->A00:Lcom/facebook/ads/redexgen/X/ge;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ur;->A0P(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73902
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YK;->A00:Lcom/facebook/ads/redexgen/X/ge;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ur;->A08(Landroid/content/Context;)I

    move-result v2

    .line 73903
    .local v4, "debugEventLimit":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YK;->A00:Lcom/facebook/ads/redexgen/X/ge;

    .line 73904
    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/Tf;->A04(Lcom/facebook/ads/redexgen/X/T8;I)Lorg/json/JSONArray;

    move-result-object v1

    .line 73905
    .local v5, "debugLogEvents":Lorg/json/JSONArray;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 73906
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YK;->A00:Lcom/facebook/ads/redexgen/X/ge;

    add-int/2addr v3, v2

    .line 73907
    invoke-static {v0, v1, v4, v3}, Lcom/facebook/ads/redexgen/X/WV;->A02(Lcom/facebook/ads/redexgen/X/ge;Lorg/json/JSONArray;Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    move-result-object v4

    .line 73908
    .end local v4    # "debugEventLimit":I
    .end local v5    # "debugLogEvents":Lorg/json/JSONArray;
    :cond_2
    const/4 v3, 0x0

    .line 73909
    .local v4, "payload":Lorg/json/JSONObject;
    :try_start_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 73910
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 73911
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 73912
    const/16 v2, 0x1b1

    const/4 v1, 0x6

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YK;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73913
    :cond_3
    const/16 v2, 0x165

    const/4 v1, 0x6

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YK;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73914
    :cond_4
    return-object v3
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 73915
    .end local v4    # "payload":Lorg/json/JSONObject;
    .local v4, "jsone":Lorg/json/JSONException;
    :catch_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final AAb()Z
    .locals 1

    .line 73916
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YK;->A01:Lcom/facebook/ads/redexgen/X/ZD;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ZD;->A0A()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ACu()V
    .locals 1

    .line 73917
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YK;->A00:Lcom/facebook/ads/redexgen/X/ge;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tf;->A0F(Lcom/facebook/ads/redexgen/X/T8;)Z

    .line 73918
    return-void
.end method

.method public final ADe(Lorg/json/JSONArray;)V
    .locals 9

    .line 73919
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v7

    .line 73920
    .local v0, "length":I
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, v7}, Ljava/util/HashSet;-><init>(I)V

    .line 73921
    .local v1, "eventsToRetry":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v5, v7, :cond_3

    .line 73922
    :try_start_0
    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 73923
    .local v3, "eventJson":Lorg/json/JSONObject;
    const/16 v2, 0x193

    const/4 v1, 0x2

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YK;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73924
    .local v4, "eventId":Ljava/lang/String;
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Tf;->A0I(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73925
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YK;->A00:Lcom/facebook/ads/redexgen/X/ge;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Tf;->A0B(Lcom/facebook/ads/redexgen/X/ge;Ljava/lang/String;)V

    goto :goto_1

    .line 73926
    :cond_0
    invoke-interface {v6, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73927
    :catch_0
    move-exception v8

    .line 73928
    .local v3, "jsone":Lorg/json/JSONException;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YK;->A00:Lcom/facebook/ads/redexgen/X/ge;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A05()Lcom/facebook/ads/redexgen/X/TD;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/TD;->AAO()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73929
    sget-object v4, Lcom/facebook/ads/redexgen/X/YK;->A04:Ljava/lang/String;

    const/16 v2, 0x48

    const/16 v1, 0x3e

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YK;->A00(III)Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/YK;->A03:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6d

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/YK;->A03:[Ljava/lang/String;

    const-string v1, "wUavWABsdMwqX86gv8aQq4NsYa"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "TgLwFV200Sew2OuM724xEw99Fl"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-static {v4, v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73930
    .end local v3    # "jsone":Lorg/json/JSONException;
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 73931
    .end local v2    # "i":I
    :cond_3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, v6, v0}, Lcom/facebook/ads/redexgen/X/YK;->A02(Ljava/util/Set;Ljava/util/Set;)V

    .line 73932
    return-void
.end method

.method public final ADf(Lorg/json/JSONArray;)Z
    .locals 14

    .line 73933
    const/16 v2, 0x1b

    const/4 v1, 0x1

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YK;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/4 v13, 0x1

    .line 73934
    .local v1, "success":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YK;->A00:Lcom/facebook/ads/redexgen/X/ge;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ur;->A0P(Landroid/content/Context;)Z

    move-result v12

    .line 73935
    .local v2, "isDebugGKEnabled":Z
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 73936
    .local v3, "eventsToDelete":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 73937
    .local v4, "eventsToRetry":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_a

    .line 73938
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 73939
    .local v6, "event":Lorg/json/JSONObject;
    const/16 v6, 0x193

    const/4 v5, 0x2

    const/16 v0, 0x5e

    invoke-static {v6, v5, v0}, Lcom/facebook/ads/redexgen/X/YK;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 73940
    .local v7, "eventId":Ljava/lang/String;
    const/16 v7, 0x16b

    const/16 v6, 0x1a

    const/16 v0, 0x41

    invoke-static {v7, v6, v0}, Lcom/facebook/ads/redexgen/X/YK;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73941
    const/16 v6, 0x185

    const/16 v5, 0xe

    const/16 v0, 0x61

    invoke-static {v6, v5, v0}, Lcom/facebook/ads/redexgen/X/YK;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 73942
    .local v8, "featureConfigString":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YK;->A00:Lcom/facebook/ads/redexgen/X/ge;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A0V(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Up;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Up;->A36(Ljava/lang/String;)V

    .line 73943
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YK;->A00:Lcom/facebook/ads/redexgen/X/ge;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A04()Lcom/facebook/ads/redexgen/X/TB;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/TB;->ACP()V

    goto/16 :goto_2

    .line 73944
    .end local v8    # "featureConfigString":Ljava/lang/String;
    :cond_0
    const/16 v7, 0x161

    const/4 v6, 0x4

    const/16 v0, 0x5e

    invoke-static {v7, v6, v0}, Lcom/facebook/ads/redexgen/X/YK;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 73945
    .local v8, "errorCode":I
    const/4 v0, 0x1

    if-ne v10, v0, :cond_3

    .line 73946
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YK;->A00:Lcom/facebook/ads/redexgen/X/ge;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A05()Lcom/facebook/ads/redexgen/X/TD;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/TD;->AAO()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73947
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0xce

    const/16 v6, 0x19

    const/16 v0, 0x69

    invoke-static {v7, v6, v0}, Lcom/facebook/ads/redexgen/X/YK;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v7, 0xd

    const/16 v6, 0xe

    const/16 v0, 0x57

    invoke-static {v7, v6, v0}, Lcom/facebook/ads/redexgen/X/YK;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73948
    :cond_1
    if-eqz v12, :cond_2

    .line 73949
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/Tf;->A0D(Ljava/lang/String;)V

    .line 73950
    :cond_2
    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73951
    :cond_3
    const/16 v8, 0x3e8

    const/4 v7, 0x0

    const/16 v6, 0xd

    const/16 v0, 0x3c

    invoke-static {v7, v6, v0}, Lcom/facebook/ads/redexgen/X/YK;->A00(III)Ljava/lang/String;

    move-result-object v9

    const/16 v0, 0x7d0

    if-lt v10, v8, :cond_6

    if-ge v10, v0, :cond_6

    .line 73952
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YK;->A00:Lcom/facebook/ads/redexgen/X/ge;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A05()Lcom/facebook/ads/redexgen/X/TD;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/TD;->AAO()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 73953
    sget-object v6, Lcom/facebook/ads/redexgen/X/YK;->A04:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v8, 0x110

    const/16 v7, 0x25

    const/16 v0, 0x1e

    invoke-static {v8, v7, v0}, Lcom/facebook/ads/redexgen/X/YK;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73954
    :cond_4
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/Tf;->A0I(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 73955
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YK;->A00:Lcom/facebook/ads/redexgen/X/ge;

    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/Tf;->A0B(Lcom/facebook/ads/redexgen/X/ge;Ljava/lang/String;)V

    goto :goto_1

    .line 73956
    :cond_5
    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73957
    :goto_1
    const/4 v13, 0x0

    goto :goto_2

    .line 73958
    :cond_6
    if-lt v10, v0, :cond_9

    const/16 v0, 0xbb8

    if-ge v10, v0, :cond_9

    .line 73959
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YK;->A00:Lcom/facebook/ads/redexgen/X/ge;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A05()Lcom/facebook/ads/redexgen/X/TD;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/TD;->AAO()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 73960
    sget-object v6, Lcom/facebook/ads/redexgen/X/YK;->A04:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v8, 0xe7

    const/16 v7, 0x29

    const/16 v0, 0x67

    invoke-static {v8, v7, v0}, Lcom/facebook/ads/redexgen/X/YK;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73961
    :cond_7
    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73962
    if-eqz v12, :cond_9

    .line 73963
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/Tf;->A0D(Ljava/lang/String;)V

    goto :goto_2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 73964
    :catch_0
    move-exception v8

    .line 73965
    .local v6, "jsone":Lorg/json/JSONException;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YK;->A00:Lcom/facebook/ads/redexgen/X/ge;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A05()Lcom/facebook/ads/redexgen/X/TD;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/TD;->AAO()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 73966
    sget-object v7, Lcom/facebook/ads/redexgen/X/YK;->A04:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x135

    const/16 v5, 0x2c

    const/16 v0, 0x6c

    invoke-static {v6, v5, v0}, Lcom/facebook/ads/redexgen/X/YK;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73967
    :cond_8
    const/4 v13, 0x0

    .line 73968
    .end local v6    # "jsone":Lorg/json/JSONException;
    :cond_9
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 73969
    .end local v5    # "i":I
    :cond_a
    invoke-direct {p0, v2, v3}, Lcom/facebook/ads/redexgen/X/YK;->A02(Ljava/util/Set;Ljava/util/Set;)V

    .line 73970
    return v13
.end method

.method public final AFZ()V
    .locals 1

    .line 73971
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YK;->A01:Lcom/facebook/ads/redexgen/X/ZD;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ZD;->A51()V

    .line 73972
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YK;->A00:Lcom/facebook/ads/redexgen/X/ge;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tf;->A07(Landroid/content/Context;)V

    .line 73973
    return-void
.end method
