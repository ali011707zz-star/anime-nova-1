.class public final Lcom/facebook/ads/redexgen/X/g9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public A00:Ljava/util/Map;
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
    .locals 3

    .line 2854
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Cy9Ol7puM0ud9B1M8hlJlb0"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "qBLGxoigf1fC"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "mxspOl2wXxp96xi"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "1GotRAtMtk4n0Ye4yuR0usUojP3tB7kg"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Q5cfUKUjlAvrOqac2Z528PAxhBhncEkS"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "XGB7"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "HNCS9EbNXrRkXrCNXemSKzc47T2AJZ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "NeqKP8obYXci"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/g9;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/g9;->A03()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 83086
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83087
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/g9;->A00:Ljava/util/Map;

    .line 83088
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 83089
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83090
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/g9;->A00:Ljava/util/Map;

    .line 83091
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/g9;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x44

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private final A01(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 83092
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/g9;->A00:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final A02(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 83093
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/g9;->A00:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static A03()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/g9;->A01:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x5at
        -0x2at
        0x12t
        0x11t
        0x3t
        -0x16t
        -0xbt
    .end array-data
.end method


# virtual methods
.method public final A04(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/g9;
    .locals 1

    .line 83094
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/g9;->A00:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83095
    return-object p0
.end method

.method public final A05(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/g9;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/g9;"
        }
    .end annotation

    .line 83096
    .local p1, "arg":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/String;+Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/g9;->putAll(Ljava/util/Map;)V

    .line 83097
    return-object p0
.end method

.method public final A06()Ljava/lang/String;
    .locals 6

    .line 83098
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/g9;->A00:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 83099
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/g9;->A00(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 83100
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 83101
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/g9;->A00:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/g9;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/g9;->A02:[Ljava/lang/String;

    const-string v1, "zd0VkDByyj8QSiyKJuZO82g8n4nVkMDg"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    check-cast v4, Ljava/lang/String;

    .line 83102
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 83103
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/g9;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83104
    :cond_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83105
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/g9;->A00:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 83106
    .local v3, "value":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 83107
    const/4 v2, 0x1

    const/4 v1, 0x1

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/g9;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83108
    :try_start_0
    const/4 v2, 0x2

    const/4 v1, 0x5

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/g9;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83109
    :catch_0
    move-exception v0

    .line 83110
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 83111
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A07(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 83112
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/g9;->A00:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final A08()[B
    .locals 5

    .line 83113
    const/4 v1, 0x0

    .line 83114
    .local v0, "bytes":[B
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/g9;->A06()Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x2

    const/4 v2, 0x5

    const/16 v0, 0x79

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/g9;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 83115
    goto :goto_0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83116
    :catch_0
    move-exception v0

    .line 83117
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 83118
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_0
    return-object v1
.end method

.method public final clear()V
    .locals 1

    .line 83119
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/g9;->A00:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 83120
    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 83121
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/g9;->A00:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 1

    .line 83122
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/g9;->A00:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 83123
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/g9;->A00:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 83124
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/g9;->A01(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isEmpty()Z
    .locals 1

    .line 83125
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/g9;->A00:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 83126
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/g9;->A00:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 83127
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/g9;->A07(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 83128
    .local p1, "arg":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/String;+Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/g9;->A00:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 83129
    return-void
.end method

.method public final bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 83130
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/g9;->A02(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 83131
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/g9;->A00:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 83132
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/g9;->A00:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
