.class public final Lcom/facebook/ads/redexgen/X/P8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/PC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Set<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/PC;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1524
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "YtNF8b8ioPsgGgaDUde7WsjUMR00Jzoy"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ONmCOidcB6U5WZLM0OONVLfChSccD2jC"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "SJu8u5Zh6YlgArwXrUirNpL4997vCJ"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "nE4owr1wlu2VobktzduoSxTpcn75jZ1P"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "qSRAP7Al4GPL3nfNBbzCOWjKh9ZAaoHj"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "XO0jmWeq4"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "JpA0oM1ow"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/P8;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/PC;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 56808
    .local p0, "this":Lcom/facebook/ads/redexgen/X/P8;, "Lcom/facebook/ads/internal/androidx/support/v4/util/MapCollections<TK;TV;>.EntrySet;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/P8;->A00:Lcom/facebook/ads/redexgen/X/PC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final A00(Ljava/util/Map$Entry;)Z
    .locals 1
    .param p1    # Ljava/util/Map$Entry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 56809
    .local p0, "this":Lcom/facebook/ads/redexgen/X/P8;, "Lcom/facebook/ads/internal/androidx/support/v4/util/MapCollections<TK;TV;>.EntrySet;"
    .local p1, "object":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 56810
    .local v0, "this":Lcom/facebook/ads/redexgen/X/P8;, "Lcom/facebook/ads/internal/androidx/support/v4/util/MapCollections<TK;TV;>.EntrySet;"
    check-cast p1, Ljava/util/Map$Entry;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/P8;->A00(Ljava/util/Map$Entry;)Z

    const/4 v0, 0x0

    throw v0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)Z"
        }
    .end annotation

    .line 56811
    .local p1, "this":Lcom/facebook/ads/redexgen/X/P8;, "Lcom/facebook/ads/internal/androidx/support/v4/util/MapCollections<TK;TV;>.EntrySet;"
    .local p2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/Map$Entry<TK;TV;>;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P8;->A00:Lcom/facebook/ads/redexgen/X/PC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PC;->A04()I

    move-result v4

    .line 56812
    .local v0, "oldSize":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 56813
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/P8;->A00:Lcom/facebook/ads/redexgen/X/PC;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/PC;->A0F(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 56814
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    goto :goto_0

    .line 56815
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P8;->A00:Lcom/facebook/ads/redexgen/X/PC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PC;->A04()I

    move-result v0

    if-eq v4, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final clear()V
    .locals 1

    .line 56816
    .local p0, "this":Lcom/facebook/ads/redexgen/X/P8;, "Lcom/facebook/ads/internal/androidx/support/v4/util/MapCollections<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P8;->A00:Lcom/facebook/ads/redexgen/X/PC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PC;->A0D()V

    .line 56817
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 56818
    .local p0, "this":Lcom/facebook/ads/redexgen/X/P8;, "Lcom/facebook/ads/internal/androidx/support/v4/util/MapCollections<TK;TV;>.EntrySet;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v3, 0x0

    if-nez v0, :cond_0

    return v3

    .line 56819
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 56820
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/P8;->A00:Lcom/facebook/ads/redexgen/X/PC;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PC;->A05(Ljava/lang/Object;)I

    move-result v2

    .line 56821
    .local v2, "index":I
    if-gez v2, :cond_1

    .line 56822
    return v3

    .line 56823
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/P8;->A00:Lcom/facebook/ads/redexgen/X/PC;

    const/4 v0, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/PC;->A0B(II)Ljava/lang/Object;

    move-result-object v1

    .line 56824
    .local v1, "foundVal":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/P5;->A04(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 56825
    .local p0, "this":Lcom/facebook/ads/redexgen/X/P8;, "Lcom/facebook/ads/internal/androidx/support/v4/util/MapCollections<TK;TV;>.EntrySet;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 56826
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56827
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/P8;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56828
    const/4 v0, 0x0

    return v0

    .line 56829
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 56830
    .local p0, "this":Lcom/facebook/ads/redexgen/X/P8;, "Lcom/facebook/ads/internal/androidx/support/v4/util/MapCollections<TK;TV;>.EntrySet;"
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/PC;->A03(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 7

    .line 56831
    .local p0, "this":Lcom/facebook/ads/redexgen/X/P8;, "Lcom/facebook/ads/internal/androidx/support/v4/util/MapCollections<TK;TV;>.EntrySet;"
    const/4 v6, 0x0

    .line 56832
    .local v0, "result":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P8;->A00:Lcom/facebook/ads/redexgen/X/PC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PC;->A04()I

    move-result v4

    const/4 v3, 0x1

    sub-int/2addr v4, v3

    .local v1, "i":I
    :goto_0
    if-ltz v4, :cond_3

    .line 56833
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/P8;->A00:Lcom/facebook/ads/redexgen/X/PC;

    sget-object v2, Lcom/facebook/ads/redexgen/X/P8;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/P8;->A01:[Ljava/lang/String;

    const-string v1, "tAEwYau76"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "8QLk4N8pE"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const/4 v2, 0x0

    invoke-virtual {v5, v4, v2}, Lcom/facebook/ads/redexgen/X/PC;->A0B(II)Ljava/lang/Object;

    move-result-object v1

    .line 56834
    .local v3, "key":Ljava/lang/Object;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P8;->A00:Lcom/facebook/ads/redexgen/X/PC;

    invoke-virtual {v0, v4, v3}, Lcom/facebook/ads/redexgen/X/PC;->A0B(II)Ljava/lang/Object;

    move-result-object v0

    .line 56835
    .local v5, "value":Ljava/lang/Object;
    if-nez v1, :cond_2

    const/4 v1, 0x0

    :goto_1
    if-nez v0, :cond_1

    :goto_2
    xor-int/2addr v2, v1

    add-int/2addr v6, v2

    .line 56836
    .end local v3    # "key":Ljava/lang/Object;
    .end local v5    # "value":Ljava/lang/Object;
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 56837
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    .line 56838
    .end local v1    # "i":I
    :cond_3
    return v6
.end method

.method public final isEmpty()Z
    .locals 1

    .line 56839
    .local p0, "this":Lcom/facebook/ads/redexgen/X/P8;, "Lcom/facebook/ads/internal/androidx/support/v4/util/MapCollections<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P8;->A00:Lcom/facebook/ads/redexgen/X/PC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PC;->A04()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 56840
    .local p0, "this":Lcom/facebook/ads/redexgen/X/P8;, "Lcom/facebook/ads/internal/androidx/support/v4/util/MapCollections<TK;TV;>.EntrySet;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/P8;->A00:Lcom/facebook/ads/redexgen/X/PC;

    new-instance v0, Lcom/facebook/ads/redexgen/X/PA;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/PA;-><init>(Lcom/facebook/ads/redexgen/X/PC;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    .line 56841
    .local p0, "this":Lcom/facebook/ads/redexgen/X/P8;, "Lcom/facebook/ads/internal/androidx/support/v4/util/MapCollections<TK;TV;>.EntrySet;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 56842
    .local p0, "this":Lcom/facebook/ads/redexgen/X/P8;, "Lcom/facebook/ads/internal/androidx/support/v4/util/MapCollections<TK;TV;>.EntrySet;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 56843
    .local p0, "this":Lcom/facebook/ads/redexgen/X/P8;, "Lcom/facebook/ads/internal/androidx/support/v4/util/MapCollections<TK;TV;>.EntrySet;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final size()I
    .locals 1

    .line 56844
    .local p0, "this":Lcom/facebook/ads/redexgen/X/P8;, "Lcom/facebook/ads/internal/androidx/support/v4/util/MapCollections<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P8;->A00:Lcom/facebook/ads/redexgen/X/PC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PC;->A04()I

    move-result v0

    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 1

    .line 56845
    .local p0, "this":Lcom/facebook/ads/redexgen/X/P8;, "Lcom/facebook/ads/internal/androidx/support/v4/util/MapCollections<TK;TV;>.EntrySet;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 56846
    .local p0, "this":Lcom/facebook/ads/redexgen/X/P8;, "Lcom/facebook/ads/internal/androidx/support/v4/util/MapCollections<TK;TV;>.EntrySet;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
