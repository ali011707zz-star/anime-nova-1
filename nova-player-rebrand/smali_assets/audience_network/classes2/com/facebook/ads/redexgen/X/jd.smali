.class public abstract Lcom/facebook/ads/redexgen/X/jd;
.super Lcom/facebook/ads/redexgen/X/NQ;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static A0R:Lorg/json/JSONObject; = null

.field public static A0S:[B = null

.field public static A0T:[Ljava/lang/String; = null

.field public static final A0U:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final serialVersionUID:J = -0x4a480b6eb5993653L


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:Lcom/facebook/ads/redexgen/X/NN;

.field public A07:Lcom/facebook/ads/redexgen/X/Ng;

.field public A08:Lcom/facebook/ads/redexgen/X/Nj;

.field public A09:Lcom/facebook/ads/redexgen/X/Nm;

.field public A0A:Lcom/facebook/ads/redexgen/X/Ns;

.field public A0B:Ljava/lang/String;

.field public A0C:Ljava/lang/String;

.field public A0D:Z

.field public A0E:Z

.field public A0F:Z

.field public A0G:Z

.field public A0H:Z

.field public A0I:Z

.field public A0J:Z

.field public A0K:Z

.field public A0L:Z

.field public A0M:Z

.field public A0N:Z

.field public A0O:Z

.field public final A0P:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/NR;",
            ">;"
        }
    .end annotation
.end field

.field public final A0Q:Ljava/util/Map;
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
    .locals 4

    .line 3128
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "MTFiGS2hyLPfirnVlCyKu8FL5ydCU71a"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "6CtUdYtPnHS0iwt"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "3FBcQYGRSJhXKbj7ODsddhFyR1abGnGF"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "UQ7LtGE24TX4QkAlsGDlXXS4Vcev"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "JcPJu"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "s3C"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "M3uL5ar3Pz1QrNsTamNzt8iOeyqnSnZC"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "bpoJK"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/jd;->A0T:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/jd;->A09()V

    const/high16 v3, 0x3f400000    # 0.75f

    const/4 v2, 0x0

    const/16 v1, 0xa

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1, v3, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/jd;->A0U:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/NR;",
            ">;)V"
        }
    .end annotation

    .line 88431
    .local p1, "adInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adapters/datamodels/AdInfo;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/NQ;-><init>()V

    .line 88432
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/jd;->A0D:Z

    .line 88433
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/jd;->A0F:Z

    .line 88434
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/jd;->A0L:Z

    .line 88435
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/jd;->A0K:Z

    .line 88436
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/jd;->A0H:Z

    .line 88437
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/jd;->A0I:Z

    .line 88438
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/jd;->A0G:Z

    .line 88439
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/jd;->A0J:Z

    .line 88440
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A0Q:Ljava/util/Map;

    .line 88441
    const/16 v0, 0x1388

    iput v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A05:I

    .line 88442
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/jd;->A0O:Z

    .line 88443
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/jd;->A0N:Z

    .line 88444
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/jd;->A0M:Z

    .line 88445
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/jd;->A0P:Ljava/util/List;

    .line 88446
    return-void
.end method

.method public static A05(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/jd;->A0S:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x70

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A06(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 88447
    sget-object v0, Lcom/facebook/ads/redexgen/X/jd;->A0U:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private A07(Lorg/json/JSONObject;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 88448
    const/16 v2, 0xfb

    const/16 v1, 0x12

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jd;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 88449
    .local v0, "dsl_app_urls":Lorg/json/JSONObject;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 88450
    .local v1, "urlMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v4, :cond_0

    .line 88451
    return-object v3

    .line 88452
    :cond_0
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 88453
    .local v2, "nameItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88454
    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 88455
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 88456
    .end local v3    # "name":Ljava/lang/String;
    :cond_1
    return-object v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
.end method

.method public static A08(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Ne;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/facebook/ads/redexgen/X/gi;",
            "Lcom/facebook/ads/redexgen/X/Ne;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/NR;",
            ">;"
        }
    .end annotation

    .line 88457
    const/16 v2, 0x9c

    const/16 v1, 0x8

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jd;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 88458
    .local v0, "carouselData":Lorg/json/JSONArray;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 88459
    invoke-static {v1, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/NZ;->A01(Lorg/json/JSONArray;Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Ne;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 88460
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 88461
    .local v1, "adInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adapters/datamodels/AdInfo;>;"
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/NR;->A00(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    .line 88462
    .local v2, "adInfo":Lcom/facebook/ads/redexgen/X/NR;
    invoke-interface {p2, v0, p0}, Lcom/facebook/ads/redexgen/X/Ne;->A3y(Lcom/facebook/ads/redexgen/X/NR;Lorg/json/JSONObject;)V

    .line 88463
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88464
    return-object v1
.end method

.method public static A09()V
    .locals 1

    const/16 v0, 0x269

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/jd;->A0S:[B

    return-void

    :array_0
    .array-data 1
        0x51t
        0x54t
        0x6ft
        0x53t
        0x58t
        0x5ft
        0x59t
        0x53t
        0x55t
        0x43t
        0x6ft
        0x5ct
        0x59t
        0x5et
        0x5bt
        0x6ft
        0x45t
        0x42t
        0x5ct
        0x7at
        0x75t
        0x44t
        0x77t
        0x74t
        0x7ct
        0x74t
        0x44t
        0x6ft
        0x62t
        0x6bt
        0x7et
        0x1dt
        0x12t
        0x15t
        0x11t
        0x1dt
        0x8t
        0x19t
        0x23t
        0x1ft
        0xet
        0x19t
        0x18t
        0x15t
        0x8t
        0x23t
        0x10t
        0x15t
        0x12t
        0x19t
        0x35t
        0x3at
        0x3dt
        0x39t
        0x35t
        0x20t
        0x31t
        0xbt
        0x37t
        0x26t
        0x31t
        0x30t
        0x3dt
        0x20t
        0xbt
        0x38t
        0x3dt
        0x3at
        0x31t
        0xbt
        0x35t
        0x21t
        0x20t
        0x3bt
        0xbt
        0x37t
        0x38t
        0x3bt
        0x27t
        0x31t
        0xbt
        0x39t
        0x3dt
        0x38t
        0x38t
        0x3dt
        0x4ct
        0x58t
        0x59t
        0x42t
        0x4et
        0x41t
        0x44t
        0x4et
        0x46t
        0x72t
        0x4et
        0x42t
        0x58t
        0x43t
        0x59t
        0x49t
        0x42t
        0x5at
        0x43t
        0x72t
        0x59t
        0x44t
        0x40t
        0x48t
        0x57t
        0x43t
        0x42t
        0x59t
        0x55t
        0x5at
        0x5ft
        0x55t
        0x5dt
        0x69t
        0x55t
        0x42t
        0x57t
        0x69t
        0x42t
        0x5ft
        0x5bt
        0x53t
        0x2ft
        0x3bt
        0x3at
        0x21t
        0x2dt
        0x22t
        0x27t
        0x2dt
        0x25t
        0x11t
        0x28t
        0x22t
        0x2ft
        0x38t
        0x21t
        0x3ct
        0x3bt
        0x39t
        0x3bt
        0x30t
        0x3dt
        0x7t
        0x39t
        0x2bt
        0x2bt
        0x3dt
        0x2ct
        0x2bt
        0xft
        0xdt
        0x1et
        0x3t
        0x19t
        0x1ft
        0x9t
        0x0t
        0x6t
        0xdt
        0x4t
        0xct
        0xbt
        0x3at
        0x4t
        0x1t
        0x16t
        0x3at
        0x3t
        0x17t
        0x0t
        0x14t
        0x10t
        0x0t
        0xbt
        0x6t
        0x1ct
        0x5ct
        0x50t
        0x52t
        0x11t
        0x59t
        0x5et
        0x5ct
        0x5at
        0x5dt
        0x50t
        0x50t
        0x54t
        0x11t
        0x5et
        0x5bt
        0x4ct
        0x11t
        0x56t
        0x51t
        0x4bt
        0x5at
        0x4dt
        0x4ct
        0x4bt
        0x56t
        0x4bt
        0x56t
        0x5et
        0x53t
        0x11t
        0x59t
        0x56t
        0x51t
        0x56t
        0x4ct
        0x57t
        0x60t
        0x5et
        0x5ct
        0x4bt
        0x56t
        0x49t
        0x56t
        0x4bt
        0x46t
        0x21t
        0x30t
        0x27t
        0x26t
        0x2bt
        0x36t
        0x1dt
        0x2et
        0x2bt
        0x2ct
        0x27t
        0x1dt
        0x2bt
        0x2ct
        0x24t
        0x2dt
        0x1dt
        0x36t
        0x27t
        0x3at
        0x36t
        0x6ft
        0x78t
        0x59t
        0x4et
        0x51t
        0x62t
        0x5ct
        0x4dt
        0x4dt
        0x62t
        0x5ft
        0x52t
        0x48t
        0x53t
        0x59t
        0x62t
        0x48t
        0x4ft
        0x51t
        0x4et
        0x77t
        0x73t
        0x25t
        0x70t
        0x4et
        0x76t
        0x61t
        0x4et
        0x7et
        0x67t
        0x74t
        0x63t
        0x7dt
        0x70t
        0x68t
        0x4et
        0x62t
        0x74t
        0x72t
        0x64t
        0x63t
        0x74t
        0x4et
        0x65t
        0x7et
        0x7at
        0x74t
        0x7ft
        0x46t
        0x4ct
        0x40t
        0x41t
        0x53t
        0x54t
        0x49t
        0x4et
        0x5bt
        0x56t
        0x56t
        0x65t
        0x48t
        0x5ft
        0x5ct
        0x5ft
        0x48t
        0x48t
        0x5ft
        0x48t
        0x4bt
        0x4ct
        0x56t
        0x47t
        0x50t
        0x51t
        0x56t
        0x4bt
        0x56t
        0x4bt
        0x43t
        0x4et
        0x6t
        0x8t
        0x8t
        0x1dt
        0x32t
        0x3t
        0x8t
        0x15t
        0x19t
        0x32t
        0x19t
        0x2t
        0x32t
        0x9t
        0x8t
        0x1et
        0x19t
        0x4t
        0x3t
        0xct
        0x19t
        0x4t
        0x2t
        0x3t
        0x32t
        0x2t
        0x3t
        0xet
        0x1t
        0x4t
        0xet
        0x6t
        0x5bt
        0x56t
        0x59t
        0x53t
        0x44t
        0x54t
        0x56t
        0x47t
        0x52t
        0x66t
        0x6bt
        0x73t
        0x65t
        0x7ft
        0x7et
        0x8t
        0x17t
        0xat
        0xct
        0xat
        0x19t
        0x11t
        0xct
        0x2bt
        0x3ct
        0x2et
        0x38t
        0x2bt
        0x3dt
        0x3ct
        0x3dt
        0x6t
        0x2ft
        0x30t
        0x3dt
        0x3ct
        0x36t
        0x3at
        0x21t
        0x26t
        0x3ct
        0x25t
        0x2dt
        0x16t
        0x25t
        0x26t
        0x2et
        0x16t
        0x28t
        0x27t
        0x30t
        0x16t
        0x20t
        0x28t
        0x2bt
        0x16t
        0x2at
        0x25t
        0x20t
        0x2at
        0x22t
        0x16t
        0x26t
        0x27t
        0x2at
        0x2ct
        0x2dt
        0x36t
        0x31t
        0x29t
        0x1t
        0x3ft
        0x3at
        0x1t
        0x3dt
        0x36t
        0x31t
        0x37t
        0x3dt
        0x3bt
        0x1t
        0x28t
        0x6ct
        0x2ct
        0x37t
        0x30t
        0x28t
        0x0t
        0x3ct
        0x2dt
        0x3at
        0x3bt
        0x36t
        0x2bt
        0x0t
        0x33t
        0x36t
        0x31t
        0x3at
        0x38t
        0x23t
        0x24t
        0x3ct
        0x14t
        0x28t
        0x39t
        0x2et
        0x2ft
        0x22t
        0x3ft
        0x14t
        0x27t
        0x22t
        0x25t
        0x2et
        0x14t
        0x24t
        0x25t
        0x14t
        0x39t
        0x28t
        0x14t
        0x38t
        0x3et
        0x28t
        0x28t
        0x2et
        0x38t
        0x38t
        0x14t
        0x38t
        0x28t
        0x39t
        0x2et
        0x2et
        0x25t
        0x7at
        0x61t
        0x66t
        0x7et
        0x56t
        0x6at
        0x7bt
        0x6ct
        0x6dt
        0x60t
        0x7dt
        0x56t
        0x65t
        0x60t
        0x67t
        0x6ct
        0x56t
        0x7ft
        0x3bt
        0x56t
        0x68t
        0x67t
        0x60t
        0x64t
        0x68t
        0x7dt
        0x60t
        0x66t
        0x67t
        0x2ct
        0x37t
        0x30t
        0x28t
        0x0t
        0x3ct
        0x2dt
        0x3at
        0x3bt
        0x36t
        0x2bt
        0x0t
        0x33t
        0x36t
        0x31t
        0x3at
        0x0t
        0x29t
        0x6dt
        0x0t
        0x2ct
        0x2bt
        0x3et
        0x2bt
        0x36t
        0x3ct
        0x64t
        0x7ft
        0x78t
        0x60t
        0x48t
        0x7bt
        0x78t
        0x76t
        0x73t
        0x72t
        0x65t
        0x48t
        0x79t
        0x63t
        0x73t
        0x40t
        0x5bt
        0x5ct
        0x44t
        0x6ct
        0x5dt
        0x56t
        0x4bt
        0x47t
        0x6ct
        0x50t
        0x47t
        0x52t
        0x6ct
        0x5ct
        0x5dt
        0x6ct
        0x56t
        0x5dt
        0x57t
        0x50t
        0x52t
        0x41t
        0x57t
        0x49t
        0x54t
        0x49t
        0x51t
        0x58t
        0x1dt
        0x6t
        0x6t
        0x5t
        0xbt
        0x8t
        0x1bt
        0x36t
        0x8t
        0xat
        0x1dt
        0x36t
        0x8t
        0x1at
        0x36t
        0xat
        0x1dt
        0x8t
        0x68t
        0x6ft
        0x71t
    .end array-data
.end method

.method private A0A(I)V
    .locals 0

    .line 88465
    iput p1, p0, Lcom/facebook/ads/redexgen/X/jd;->A00:I

    .line 88466
    return-void
.end method

.method private final A0B(I)V
    .locals 0

    .line 88467
    iput p1, p0, Lcom/facebook/ads/redexgen/X/jd;->A04:I

    .line 88468
    return-void
.end method

.method private A0C(Lcom/facebook/ads/redexgen/X/NN;)V
    .locals 0

    .line 88469
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/jd;->A06:Lcom/facebook/ads/redexgen/X/NN;

    .line 88470
    return-void
.end method

.method private final A0D(Lcom/facebook/ads/redexgen/X/Ng;)V
    .locals 0

    .line 88471
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/jd;->A07:Lcom/facebook/ads/redexgen/X/Ng;

    .line 88472
    return-void
.end method

.method private A0E(Lcom/facebook/ads/redexgen/X/Nj;)V
    .locals 0

    .line 88473
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/jd;->A08:Lcom/facebook/ads/redexgen/X/Nj;

    .line 88474
    return-void
.end method

.method private final A0F(Lcom/facebook/ads/redexgen/X/Nm;)V
    .locals 0

    .line 88475
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/jd;->A09:Lcom/facebook/ads/redexgen/X/Nm;

    .line 88476
    return-void
.end method

.method private A0G(Lcom/facebook/ads/redexgen/X/Ns;)V
    .locals 0

    .line 88477
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/jd;->A0A:Lcom/facebook/ads/redexgen/X/Ns;

    .line 88478
    return-void
.end method

.method private A0H(Ljava/lang/String;)V
    .locals 0

    .line 88479
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/jd;->A0B:Ljava/lang/String;

    .line 88480
    return-void
.end method


# virtual methods
.method public final A22()I
    .locals 1

    .line 88481
    iget v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A00:I

    return v0
.end method

.method public final A23()I
    .locals 1

    .line 88482
    iget v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A01:I

    return v0
.end method

.method public final A24()I
    .locals 1

    .line 88483
    iget v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A02:I

    return v0
.end method

.method public final A25()I
    .locals 1

    .line 88484
    iget v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A03:I

    return v0
.end method

.method public final A26()I
    .locals 1

    .line 88485
    iget v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A04:I

    return v0
.end method

.method public final A27()I
    .locals 1

    .line 88486
    iget v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A05:I

    return v0
.end method

.method public final A28()Lcom/facebook/ads/redexgen/X/NN;
    .locals 1

    .line 88487
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A06:Lcom/facebook/ads/redexgen/X/NN;

    return-object v0
.end method

.method public final A29()Lcom/facebook/ads/redexgen/X/NR;
    .locals 2

    .line 88488
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/jd;->A0P:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/NR;

    return-object v0
.end method

.method public final A2A()Lcom/facebook/ads/redexgen/X/Ng;
    .locals 1

    .line 88489
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A07:Lcom/facebook/ads/redexgen/X/Ng;

    return-object v0
.end method

.method public final A2B()Lcom/facebook/ads/redexgen/X/Nj;
    .locals 1

    .line 88490
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A08:Lcom/facebook/ads/redexgen/X/Nj;

    return-object v0
.end method

.method public final A2C()Lcom/facebook/ads/redexgen/X/Nm;
    .locals 1

    .line 88491
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A09:Lcom/facebook/ads/redexgen/X/Nm;

    return-object v0
.end method

.method public final A2D()Lcom/facebook/ads/redexgen/X/Ns;
    .locals 1

    .line 88492
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A0A:Lcom/facebook/ads/redexgen/X/Ns;

    return-object v0
.end method

.method public final A2E()Ljava/lang/String;
    .locals 1

    .line 88493
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A0B:Ljava/lang/String;

    return-object v0
.end method

.method public final A2F(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 88494
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A0Q:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final A2G()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/NR;",
            ">;"
        }
    .end annotation

    .line 88495
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A0P:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final A2H(Lcom/facebook/ads/redexgen/X/Yh;)V
    .locals 4

    .line 88496
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/NQ;->A10()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 88497
    :goto_1
    return-void

    .line 88498
    :pswitch_0
    const/16 v2, 0xb7

    const/16 v1, 0x2d

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jd;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/Yh;->A4j(Ljava/lang/String;)V

    .line 88499
    :pswitch_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/ez;->A08:Lcom/facebook/ads/redexgen/X/ez;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ez;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/Yh;->A4j(Ljava/lang/String;)V

    goto :goto_1

    .line 88500
    :sswitch_0
    const/16 v2, 0x13d

    const/16 v1, 0xc

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jd;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const/16 v2, 0x180

    const/16 v1, 0xe

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jd;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x514cfef6 -> :sswitch_1
        0x240b672c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final A2I(Lorg/json/JSONObject;)V
    .locals 6

    .line 88501
    const/16 v2, 0x12d

    const/16 v1, 0x10

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jd;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ng;->A00(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/Ng;

    move-result-object v0

    .line 88502
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/jd;->A0D(Lcom/facebook/ads/redexgen/X/Ng;)V

    .line 88503
    const/16 v2, 0x90

    const/16 v1, 0xc

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jd;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/jd;->A0R:Lorg/json/JSONObject;

    .line 88504
    new-instance v3, Lcom/facebook/ads/redexgen/X/Nl;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/Nl;-><init>()V

    .line 88505
    const/16 v2, 0x24f

    const/4 v1, 0x5

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jd;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Nl;->A06(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Nl;

    move-result-object v4

    .line 88506
    const/16 v2, 0x129

    const/4 v1, 0x4

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jd;->A05(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 88507
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const/16 v2, 0x266

    const/4 v1, 0x3

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jd;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88508
    :goto_0
    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Nl;->A05(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Nl;

    move-result-object v3

    .line 88509
    const/4 v2, 0x0

    const/16 v1, 0x13

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jd;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Nl;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Nl;

    move-result-object v1

    .line 88510
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Nn;->A03(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nl;->A07(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Nl;

    move-result-object v0

    .line 88511
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nl;->A08()Lcom/facebook/ads/redexgen/X/Nm;

    move-result-object v0

    .line 88512
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/jd;->A0F(Lcom/facebook/ads/redexgen/X/Nm;)V

    .line 88513
    const/16 v2, 0x172

    const/4 v1, 0x6

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jd;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 88514
    .local v0, "layoutObject":Lorg/json/JSONObject;
    const/4 v5, 0x0

    if-eqz v4, :cond_1

    const/16 v2, 0x178

    const/16 v1, 0x8

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jd;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 88515
    :goto_1
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Na;->A01(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/jd;->A0T:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    .line 88516
    sget-object v2, Lcom/facebook/ads/redexgen/X/jd;->A0T:[Ljava/lang/String;

    const-string v1, "MaJS3iOjDVpkOvzQIu4XnTvkYtI43ENf"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "dcadpZfpRdAwhtf1LK3imqQWfZ9Fu8JJ"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v4, :cond_0

    const/16 v2, 0x169

    const/16 v1, 0x9

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jd;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 88517
    :cond_0
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/Na;->A01(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/NN;

    invoke-direct {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/NN;-><init>(Lcom/facebook/ads/redexgen/X/Na;Lcom/facebook/ads/redexgen/X/Na;)V

    .line 88518
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/jd;->A0C(Lcom/facebook/ads/redexgen/X/NN;)V

    .line 88519
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Nn;->A01(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/Ns;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/jd;->A0G(Lcom/facebook/ads/redexgen/X/Ns;)V

    .line 88520
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Nn;->A00(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/Nj;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/jd;->A0E(Lcom/facebook/ads/redexgen/X/Nj;)V

    .line 88521
    const/16 v2, 0x13

    const/16 v1, 0xc

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jd;->A05(III)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/jd;->A0A(I)V

    .line 88522
    const/16 v2, 0xa4

    const/16 v1, 0x13

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jd;->A05(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/jd;->A0B(I)V

    .line 88523
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/jd;->A0Q:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/jd;->A07(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 88524
    const/16 v2, 0x6e

    const/16 v1, 0x12

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jd;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A03:I

    .line 88525
    const/16 v2, 0x80

    const/16 v1, 0x10

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jd;->A05(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A01:I

    .line 88526
    const/16 v2, 0x254

    const/16 v1, 0x12

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jd;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A0L:Z

    .line 88527
    const/16 v2, 0x228

    const/16 v1, 0xf

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jd;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A0K:Z

    .line 88528
    const/16 v2, 0x237

    const/16 v1, 0x18

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jd;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A0H:Z

    .line 88529
    const/16 v2, 0x1bc

    const/16 v1, 0x10

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jd;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A0I:Z

    .line 88530
    const/16 v2, 0x1f

    const/16 v1, 0x13

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jd;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A0G:Z

    .line 88531
    const/16 v2, 0x32

    const/16 v1, 0x24

    const/16 v0, 0x24

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jd;->A05(III)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0x1388

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A05:I

    .line 88532
    const/16 v2, 0xe4

    const/16 v1, 0x15

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jd;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A0C:Ljava/lang/String;

    .line 88533
    const/16 v2, 0x1cc

    const/16 v1, 0x25

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jd;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A0J:Z

    .line 88534
    const/16 v2, 0x18e

    const/16 v1, 0x1d

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jd;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A0F:Z

    .line 88535
    const/16 v2, 0x149

    const/16 v1, 0x20

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jd;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A0E:Z

    .line 88536
    iget v4, p0, Lcom/facebook/ads/redexgen/X/jd;->A03:I

    .line 88537
    const/16 v2, 0x56

    const/16 v1, 0x18

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jd;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A02:I

    .line 88538
    const/16 v2, 0xf9

    const/4 v1, 0x2

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jd;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 88539
    .local v1, "clientToken":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/facebook/ads/redexgen/X/jd;->A0H(Ljava/lang/String;)V

    .line 88540
    sget-object v4, Lcom/facebook/ads/redexgen/X/jd;->A0U:Ljava/util/LinkedHashMap;

    .line 88541
    const/16 v2, 0x10d

    const/16 v1, 0x1c

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jd;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88542
    invoke-virtual {v4, v5, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88543
    const/16 v2, 0x20e

    const/16 v1, 0x1a

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jd;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A0O:Z

    .line 88544
    const/16 v2, 0x1f1

    const/16 v1, 0x1d

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jd;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A0N:Z

    .line 88545
    const/16 v2, 0x1ab

    const/16 v1, 0x11

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jd;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A0M:Z

    .line 88546
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/NQ;->A1P(Lorg/json/JSONObject;)V

    .line 88547
    return-void

    .line 88548
    :cond_1
    move-object v0, v5

    goto/16 :goto_1

    .line 88549
    :cond_2
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jd;->A05(III)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A2J(Z)V
    .locals 0

    .line 88550
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/jd;->A0D:Z

    .line 88551
    return-void
.end method

.method public final A2K(Z)V
    .locals 0

    .line 88552
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/jd;->A0H:Z

    .line 88553
    return-void
.end method

.method public final A2L()Z
    .locals 1

    .line 88554
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A0D:Z

    return v0
.end method

.method public final A2M()Z
    .locals 1

    .line 88555
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/jd;->A2Q()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/jd;->A2U()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A2N()Z
    .locals 1

    .line 88556
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A0E:Z

    return v0
.end method

.method public final A2O()Z
    .locals 1

    .line 88557
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A0F:Z

    return v0
.end method

.method public final A2P()Z
    .locals 1

    .line 88558
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A0H:Z

    return v0
.end method

.method public final A2Q()Z
    .locals 1

    .line 88559
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A0I:Z

    return v0
.end method

.method public final A2R()Z
    .locals 1

    .line 88560
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A0J:Z

    return v0
.end method

.method public final A2S()Z
    .locals 1

    .line 88561
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A0K:Z

    return v0
.end method

.method public final A2T()Z
    .locals 1

    .line 88562
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A0L:Z

    return v0
.end method

.method public final A2U()Z
    .locals 1

    .line 88563
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A0M:Z

    return v0
.end method

.method public final A2V()Z
    .locals 1

    .line 88564
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A0N:Z

    return v0
.end method

.method public final A2W()Z
    .locals 1

    .line 88565
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A0O:Z

    return v0
.end method
