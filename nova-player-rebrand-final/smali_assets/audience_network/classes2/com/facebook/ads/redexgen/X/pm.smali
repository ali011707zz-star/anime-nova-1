.class public Lcom/facebook/ads/redexgen/X/pm;
.super Ljava/util/AbstractCollection;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/po;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final A00:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3452
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "in42tJQ01GZUPWpapY3GS1ba37Q621he"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "aDWnks8SkwEFtMvER77PJBAmsGMrEJ6D"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "AX4wQMRLKDeL8ngjMfYHLQFqA74wDV2X"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "9hok8rTzZXESykboyURYSAJr5s9hilMu"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "9Zv0w4TVYcP2oQrIhtVpC4IoTwCIn61q"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "DtsNkjQzxYFKhoARFm7ioA0etAdT1uIj"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Qm8i24sVu4QbvSFZB0Cqa"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "BgiAdgr6UkIVh80noo0NQyRYH0DUUQhv"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/pm;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 104840
    .local p0, "this":Lcom/facebook/ads/redexgen/X/pm;, "Lcom/google/common/collect/Maps$Values<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 104841
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/ki;->A04(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/pm;->A00:Ljava/util/Map;

    .line 104842
    return-void
.end method

.method private final A00()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 104843
    .local p0, "this":Lcom/facebook/ads/redexgen/X/pm;, "Lcom/google/common/collect/Maps$Values<TK;TV;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pm;->A00:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 104844
    .local p0, "this":Lcom/facebook/ads/redexgen/X/pm;, "Lcom/google/common/collect/Maps$Values<TK;TV;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/pm;->A00()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 104845
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 104846
    .local p0, "this":Lcom/facebook/ads/redexgen/X/pm;, "Lcom/google/common/collect/Maps$Values<TK;TV;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/pm;->A00()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .line 104847
    .local p0, "this":Lcom/facebook/ads/redexgen/X/pm;, "Lcom/google/common/collect/Maps$Values<TK;TV;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/pm;->A00()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 104848
    .local p0, "this":Lcom/facebook/ads/redexgen/X/pm;, "Lcom/google/common/collect/Maps$Values<TK;TV;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/pm;->A00()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/po;->A03(Ljava/util/Iterator;)Lcom/facebook/ads/redexgen/X/BK;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 104849
    .local v4, "this":Lcom/facebook/ads/redexgen/X/pm;, "Lcom/google/common/collect/Maps$Values<TK;TV;>;"
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104850
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    :catch_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/pm;->A00()Ljava/util/Map;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/pm;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x15

    if-eq v1, v0, :cond_0

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/pm;->A01:[Ljava/lang/String;

    const-string v1, "aipsxbSp1tnZ2v2drkTfU"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/pm;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/pm;->A01:[Ljava/lang/String;

    const-string v1, "hJKuR3xA1w5y7oQ8WRbWSr1qNuhor3Na"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "kTeXKTesQI660Qr0JB9qS0JQxEcCo8pe"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 104851
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/CB;->A01(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104852
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/pm;->A00()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104853
    const/4 v0, 0x1

    return v0

    .line 104854
    :cond_3
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/pm;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/pm;->A01:[Ljava/lang/String;

    const-string v1, "IeB1biIWoxDuKDO5ci7KI"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return v3

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/pm;->A01:[Ljava/lang/String;

    const-string v1, "wnKimEEcKP0TlLR5z0mvC"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return v3
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 104855
    .local p0, "this":Lcom/facebook/ads/redexgen/X/pm;, "Lcom/google/common/collect/Maps$Values<TK;TV;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :try_start_0
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/ki;->A04(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-super {p0, v0}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104856
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    :catch_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/qj;->A05()Ljava/util/HashSet;

    move-result-object v3

    .line 104857
    .local v1, "toRemove":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/pm;->A00()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/pm;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/pm;->A01:[Ljava/lang/String;

    const-string v1, "ER1uMOhoexHNMxXkTRXkp"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 104858
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104859
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 104860
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/pm;->A00()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 104861
    .local p1, "this":Lcom/facebook/ads/redexgen/X/pm;, "Lcom/google/common/collect/Maps$Values<TK;TV;>;"
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :try_start_0
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/ki;->A04(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-super {p0, v0}, Ljava/util/AbstractCollection;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104862
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    :catch_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/qj;->A05()Ljava/util/HashSet;

    move-result-object v3

    .line 104863
    .local v1, "toRetain":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/pm;->A00()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 104864
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104865
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 104866
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/pm;->A00()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final size()I
    .locals 1

    .line 104867
    .local p0, "this":Lcom/facebook/ads/redexgen/X/pm;, "Lcom/google/common/collect/Maps$Values<TK;TV;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/pm;->A00()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
