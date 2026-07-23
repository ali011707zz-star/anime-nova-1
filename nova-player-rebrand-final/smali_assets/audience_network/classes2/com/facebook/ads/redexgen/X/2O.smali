.class public Lcom/facebook/ads/redexgen/X/2O;
.super Lcom/facebook/ads/redexgen/X/BH;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/2L;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/BH<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/2L;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/2L;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x10
        }
        names = {
            "this$0",
            "subMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 9074
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2O;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.KeySet;"
    .local p2, "subMap":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2O;->A00:Lcom/facebook/ads/redexgen/X/2L;

    .line 9075
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/BH;-><init>(Ljava/util/Map;)V

    .line 9076
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 9077
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2O;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.KeySet;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2O;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/p9;->A09(Ljava/util/Iterator;)V

    .line 9078
    return-void
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 1
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

    .line 9079
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2O;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.KeySet;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/BH;->A00()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
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
            "object"
        }
    .end annotation

    .line 9080
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2O;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.KeySet;"
    if-eq p0, p1, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/BH;->A00()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

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

.method public final hashCode()I
    .locals 1

    .line 9081
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2O;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.KeySet;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/BH;->A00()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 9082
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2O;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.KeySet;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/BH;->A00()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 9083
    .local v0, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/ln;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/ln;-><init>(Lcom/facebook/ads/redexgen/X/2O;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 9084
    .local p1, "this":Lcom/facebook/ads/redexgen/X/2O;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.KeySet;"
    const/4 v1, 0x0

    .line 9085
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/BH;->A00()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 9086
    .local v1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-eqz v0, :cond_0

    .line 9087
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    .line 9088
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 9089
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2O;->A00:Lcom/facebook/ads/redexgen/X/2L;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/2L;->A03(Lcom/facebook/ads/redexgen/X/2L;I)I

    .line 9090
    :cond_0
    if-lez v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
