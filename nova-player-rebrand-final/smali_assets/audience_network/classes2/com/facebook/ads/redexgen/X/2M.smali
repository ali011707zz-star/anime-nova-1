.class public Lcom/facebook/ads/redexgen/X/2M;
.super Lcom/facebook/ads/redexgen/X/Bt;
.source ""

# interfaces
.implements Ljava/util/SortedMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/2L;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SortedAsMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/2L<",
        "TK;TV;>.AsMap;",
        "Ljava/util/SortedMap<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field public A00:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "TK;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/2L;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/2L;Ljava/util/SortedMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "submap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 9057
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2M;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.SortedAsMap;"
    .local p2, "submap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;Ljava/util/Collection<TV;>;>;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2M;->A01:Lcom/facebook/ads/redexgen/X/2L;

    .line 9058
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Bt;-><init>(Lcom/facebook/ads/redexgen/X/2L;Ljava/util/Map;)V

    .line 9059
    return-void
.end method


# virtual methods
.method public A0B()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 9060
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2M;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.SortedAsMap;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bt;->A00:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method public A0C()Ljava/util/SortedSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "TK;>;"
        }
    .end annotation

    .line 9061
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2M;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.SortedAsMap;"
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2M;->A01:Lcom/facebook/ads/redexgen/X/2L;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2M;->A0B()Ljava/util/SortedMap;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/18;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/18;-><init>(Lcom/facebook/ads/redexgen/X/2L;Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public A0D()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "TK;>;"
        }
    .end annotation

    .line 9062
    .local p1, "this":Lcom/facebook/ads/redexgen/X/2M;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.SortedAsMap;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2M;->A00:Ljava/util/SortedSet;

    .line 9063
    .local v0, "result":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TK;>;"
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2M;->A0C()Ljava/util/SortedSet;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2M;->A00:Ljava/util/SortedSet;

    :cond_0
    return-object v0
.end method

.method public final comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 9064
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2M;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.SortedAsMap;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2M;->A0B()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public final firstKey()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 9065
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2M;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.SortedAsMap;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2M;->A0B()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "toKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 9066
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2M;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.SortedAsMap;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2M;->A01:Lcom/facebook/ads/redexgen/X/2L;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2M;->A0B()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/2M;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/2M;-><init>(Lcom/facebook/ads/redexgen/X/2L;Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .line 9067
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2M;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.SortedAsMap;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2M;->A0D()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public final lastKey()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 9068
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2M;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.SortedAsMap;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2M;->A0B()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fromKey",
            "toKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 9069
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2M;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.SortedAsMap;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p2, "toKey":Ljava/lang/Object;, "TK;"
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2M;->A01:Lcom/facebook/ads/redexgen/X/2L;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2M;->A0B()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/2M;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/2M;-><init>(Lcom/facebook/ads/redexgen/X/2L;Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fromKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 9070
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2M;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.SortedAsMap;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2M;->A01:Lcom/facebook/ads/redexgen/X/2L;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2M;->A0B()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/2M;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/2M;-><init>(Lcom/facebook/ads/redexgen/X/2L;Ljava/util/SortedMap;)V

    return-object v0
.end method
