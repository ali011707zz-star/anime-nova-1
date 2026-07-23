.class public abstract Lcom/facebook/ads/redexgen/X/BI;
.super Lcom/facebook/ads/redexgen/X/qf;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/po;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/ads/redexgen/X/qf<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30350
    .local p0, "this":Lcom/facebook/ads/redexgen/X/BI;, "Lcom/google/common/collect/Maps$EntrySet<TK;TV;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/qf;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract A00()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public final clear()V
    .locals 1

    .line 30351
    .local p0, "this":Lcom/facebook/ads/redexgen/X/BI;, "Lcom/google/common/collect/Maps$EntrySet<TK;TV;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/BI;->A00()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 30352
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 30353
    .local p0, "this":Lcom/facebook/ads/redexgen/X/BI;, "Lcom/google/common/collect/Maps$EntrySet<TK;TV;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/BI;->A00()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
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

    .line 30354
    .local p1, "this":Lcom/facebook/ads/redexgen/X/BI;, "Lcom/google/common/collect/Maps$EntrySet<TK;TV;>;"
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :try_start_0
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/ki;->A04(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-super {p0, v0}, Lcom/facebook/ads/redexgen/X/qf;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30355
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    :catch_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/qj;->A0B(Ljava/util/Set;Ljava/util/Iterator;)Z

    move-result v0

    return v0
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

    .line 30356
    .local p2, "this":Lcom/facebook/ads/redexgen/X/BI;, "Lcom/google/common/collect/Maps$EntrySet<TK;TV;>;"
    .local p3, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :try_start_0
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/ki;->A04(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-super {p0, v0}, Lcom/facebook/ads/redexgen/X/qf;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30357
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    :catch_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/qj;->A06(I)Ljava/util/HashSet;

    move-result-object v3

    .line 30358
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 30359
    .local v3, "o":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, v1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 30360
    check-cast v1, Ljava/util/Map$Entry;

    .line 30361
    .local p0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 30362
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/BI;->A00()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .line 30363
    .local p0, "this":Lcom/facebook/ads/redexgen/X/BI;, "Lcom/google/common/collect/Maps$EntrySet<TK;TV;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/BI;->A00()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
