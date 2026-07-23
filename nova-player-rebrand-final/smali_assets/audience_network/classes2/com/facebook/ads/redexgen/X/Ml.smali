.class public final Lcom/facebook/ads/redexgen/X/Ml;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;


# instance fields
.field public final A00:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final A01:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1402
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "TCwFA"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "n8MKtp9dwzEQhpBe6BR2lxKd"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "DvIgkYTRPnnTPXJJnoSR1kudzHpByEo2"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ukKEwC6XKRrkT9sIUNjxPleVuSFlcA27"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "xINsVOhHX0SgxNuz70RgaHOI4yPeG"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "tcBEB0UiUFi9btMnbz6doT8G4EON6"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, ""

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ml;->A03:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ml;->A07()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 52494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52495
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ml;->A01:Ljava/util/Map;

    .line 52496
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ml;->A00:Ljava/util/List;

    .line 52497
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/Ml;J)Lcom/facebook/ads/redexgen/X/Ml;
    .locals 3

    .line 52498
    const/4 v2, 0x0

    const/4 v1, 0x7

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ml;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ml;->A03(Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/Ml;

    move-result-object v0

    return-object v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/Ml;Landroid/net/Uri;)Lcom/facebook/ads/redexgen/X/Ml;
    .locals 3

    .line 52499
    const/4 v2, 0x7

    const/16 v1, 0x9

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ml;->A06(III)Ljava/lang/String;

    move-result-object v1

    if-nez p1, :cond_0

    .line 52500
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ml;->A02(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Ml;

    move-result-object v0

    return-object v0

    .line 52501
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Ml;->A05(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Ml;

    move-result-object v0

    return-object v0
.end method

.method private final A02(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Ml;
    .locals 1

    .line 52502
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ml;->A00:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52503
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ml;->A01:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52504
    return-object p0
.end method

.method private final A03(Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/Ml;
    .locals 1

    .line 52505
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Ml;->A04(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/Ml;

    move-result-object v0

    return-object v0
.end method

.method private A04(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/Ml;
    .locals 3

    .line 52506
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ml;->A01:Ljava/util/Map;

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52507
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ml;->A00:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 52508
    return-object p0
.end method

.method private final A05(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Ml;
    .locals 1

    .line 52509
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ml;->A04(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/Ml;

    move-result-object v0

    return-object v0
.end method

.method public static A06(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ml;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x74

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A07()V
    .locals 4

    const/16 v0, 0x10

    new-array v3, v0, [B

    fill-array-data v3, :array_0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ml;->A03:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x69

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ml;->A03:[Ljava/lang/String;

    const-string v1, "OztgjXBJYpDAKFMtRJu6AzmPW9OlK9cP"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    sput-object v3, Lcom/facebook/ads/redexgen/X/Ml;->A02:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :array_0
    .array-data 1
        0x4ft
        0x52t
        0x45t
        0x75t
        0x46t
        0x4ft
        0x44t
        0x2bt
        0x36t
        0x21t
        0x11t
        0x3ct
        0x2bt
        0x2at
        0x27t
        0x3ct
    .end array-data
.end method


# virtual methods
.method public final A08()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 52510
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ml;->A00:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final A09()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 52511
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ml;->A01:Ljava/util/Map;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 52512
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 52513
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 52514
    .local v3, "value":Ljava/lang/Object;
    instance-of v6, v5, [B

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ml;->A03:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x69

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ml;->A03:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, ""

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v6, :cond_0

    .line 52515
    check-cast v5, [B

    .line 52516
    .local v4, "bytes":[B
    array-length v0, v5

    invoke-static {v5, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 52517
    :cond_2
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
