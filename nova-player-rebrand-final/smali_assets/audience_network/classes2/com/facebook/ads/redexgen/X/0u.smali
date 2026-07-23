.class public final Lcom/facebook/ads/redexgen/X/0u;
.super Lcom/facebook/ads/redexgen/X/18;
.source ""

# interfaces
.implements Ljava/util/NavigableSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/2L;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "NavigableKeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/2L<",
        "TK;TV;>.SortedKeySet;",
        "Ljava/util/NavigableSet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/2L;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/2L;Ljava/util/NavigableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "subMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableMap<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 3662
    .local p0, "this":Lcom/facebook/ads/redexgen/X/0u;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.NavigableKeySet;"
    .local p2, "subMap":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;Ljava/util/Collection<TV;>;>;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/0u;->A00:Lcom/facebook/ads/redexgen/X/2L;

    .line 3663
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/18;-><init>(Lcom/facebook/ads/redexgen/X/2L;Ljava/util/SortedMap;)V

    .line 3664
    return-void
.end method

.method private final A00()Ljava/util/NavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 3665
    .local p0, "this":Lcom/facebook/ads/redexgen/X/0u;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.NavigableKeySet;"
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/18;->A04()Ljava/util/SortedMap;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableMap;

    return-object v0
.end method

.method private final A01(Ljava/lang/Object;)Ljava/util/NavigableSet;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "toElement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 3666
    .local p0, "this":Lcom/facebook/ads/redexgen/X/0u;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.NavigableKeySet;"
    .local p1, "toElement":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/0u;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method private final A02(Ljava/lang/Object;)Ljava/util/NavigableSet;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fromElement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 3667
    .local p0, "this":Lcom/facebook/ads/redexgen/X/0u;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.NavigableKeySet;"
    .local p1, "fromElement":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/0u;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method private final A03(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/NavigableSet;
    .locals 2
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
            "fromElement",
            "toElement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 3668
    .local p0, "this":Lcom/facebook/ads/redexgen/X/0u;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.NavigableKeySet;"
    .local p1, "fromElement":Ljava/lang/Object;, "TK;"
    .local p2, "toElement":Ljava/lang/Object;, "TK;"
    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/facebook/ads/redexgen/X/0u;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic A04()Ljava/util/SortedMap;
    .locals 1

    .line 3669
    .local p0, "this":Lcom/facebook/ads/redexgen/X/0u;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.NavigableKeySet;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0u;->A00()Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public final ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "k"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 3670
    .local p0, "this":Lcom/facebook/ads/redexgen/X/0u;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.NavigableKeySet;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0u;->A00()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final descendingIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 3671
    .local p0, "this":Lcom/facebook/ads/redexgen/X/0u;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.NavigableKeySet;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/0u;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final descendingSet()Ljava/util/NavigableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 3672
    .local p0, "this":Lcom/facebook/ads/redexgen/X/0u;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.NavigableKeySet;"
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/0u;->A00:Lcom/facebook/ads/redexgen/X/2L;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0u;->A00()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/0u;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/0u;-><init>(Lcom/facebook/ads/redexgen/X/2L;Ljava/util/NavigableMap;)V

    return-object v0
.end method

.method public final floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "k"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 3673
    .local p0, "this":Lcom/facebook/ads/redexgen/X/0u;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.NavigableKeySet;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0u;->A00()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "toElement",
            "inclusive"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 3674
    .local p0, "this":Lcom/facebook/ads/redexgen/X/0u;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.NavigableKeySet;"
    .local p1, "toElement":Ljava/lang/Object;, "TK;"
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/0u;->A00:Lcom/facebook/ads/redexgen/X/2L;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0u;->A00()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/0u;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/0u;-><init>(Lcom/facebook/ads/redexgen/X/2L;Ljava/util/NavigableMap;)V

    return-object v0
.end method

.method public final bridge synthetic headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "toElement"
        }
    .end annotation

    .line 3675
    .local v0, "this":Lcom/facebook/ads/redexgen/X/0u;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.NavigableKeySet;"
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/0u;->A01(Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public final higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "k"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 3676
    .local p0, "this":Lcom/facebook/ads/redexgen/X/0u;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.NavigableKeySet;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0u;->A00()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "k"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 3677
    .local p0, "this":Lcom/facebook/ads/redexgen/X/0u;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.NavigableKeySet;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0u;->A00()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->lowerKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final pollFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 3678
    .local p0, "this":Lcom/facebook/ads/redexgen/X/0u;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.NavigableKeySet;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2O;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/p9;->A04(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final pollLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 3679
    .local p0, "this":Lcom/facebook/ads/redexgen/X/0u;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.NavigableKeySet;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/0u;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/p9;->A04(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .param p2    # Z
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fromElement",
            "fromInclusive",
            "toElement",
            "toInclusive"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 3680
    .local p0, "this":Lcom/facebook/ads/redexgen/X/0u;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.NavigableKeySet;"
    .local p1, "fromElement":Ljava/lang/Object;, "TK;"
    .local p3, "toElement":Ljava/lang/Object;, "TK;"
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/0u;->A00:Lcom/facebook/ads/redexgen/X/2L;

    .line 3681
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0u;->A00()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/0u;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/0u;-><init>(Lcom/facebook/ads/redexgen/X/2L;Ljava/util/NavigableMap;)V

    .line 3682
    return-object v0
.end method

.method public final bridge synthetic subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
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
            0x1000,
            0x1000
        }
        names = {
            "fromElement",
            "toElement"
        }
    .end annotation

    .line 3683
    .local v0, "this":Lcom/facebook/ads/redexgen/X/0u;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.NavigableKeySet;"
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/0u;->A03(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public final tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fromElement",
            "inclusive"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 3684
    .local p0, "this":Lcom/facebook/ads/redexgen/X/0u;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.NavigableKeySet;"
    .local p1, "fromElement":Ljava/lang/Object;, "TK;"
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/0u;->A00:Lcom/facebook/ads/redexgen/X/2L;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0u;->A00()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/0u;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/0u;-><init>(Lcom/facebook/ads/redexgen/X/2L;Ljava/util/NavigableMap;)V

    return-object v0
.end method

.method public final bridge synthetic tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "fromElement"
        }
    .end annotation

    .line 3685
    .local v0, "this":Lcom/facebook/ads/redexgen/X/0u;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.NavigableKeySet;"
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/0u;->A02(Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method
