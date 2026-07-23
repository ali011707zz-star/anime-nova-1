.class public Lcom/facebook/ads/redexgen/X/Br;
.super Lcom/facebook/ads/redexgen/X/lp;
.source ""

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/2L;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WrappedList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Bs;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/2L<",
        "TK;TV;>.WrappedCollection;",
        "Ljava/util/List<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/2L;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/2L;Ljava/lang/Object;Ljava/util/List;Lcom/facebook/ads/redexgen/X/lp;)V
    .locals 0
    .param p1    # Lcom/facebook/ads/redexgen/X/2L;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "key",
            "delegate",
            "ancestor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/List<",
            "TV;>;",
            "Lcom/facebook/ads/redexgen/X/2L<",
            "TK;TV;>.WrappedCollection;)V"
        }
    .end annotation

    .line 31216
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Br;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedList;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "delegate":Ljava/util/List;, "Ljava/util/List<TV;>;"
    .local p4, "ancestor":Lcom/facebook/ads/redexgen/X/lp;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Br;->A00:Lcom/facebook/ads/redexgen/X/2L;

    .line 31217
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/lp;-><init>(Lcom/facebook/ads/redexgen/X/2L;Ljava/lang/Object;Ljava/util/Collection;Lcom/facebook/ads/redexgen/X/lp;)V

    .line 31218
    return-void
.end method


# virtual methods
.method public final A06()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 31219
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Br;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedList;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lp;->A02()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final add(ILjava/lang/Object;)V
    .locals 2
    .param p1    # I
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    .line 31220
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Br;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedList;"
    .local p2, "element":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lp;->A04()V

    .line 31221
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lp;->A02()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    .line 31222
    .local v0, "wasEmpty":Z
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Br;->A06()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 31223
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Br;->A00:Lcom/facebook/ads/redexgen/X/2L;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2L;->A00(Lcom/facebook/ads/redexgen/X/2L;)I

    .line 31224
    if-eqz v1, :cond_0

    .line 31225
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lp;->A03()V

    .line 31226
    :cond_0
    return-void
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "c"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TV;>;)Z"
        }
    .end annotation

    .line 31227
    .local p1, "this":Lcom/facebook/ads/redexgen/X/Br;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedList;"
    .local p3, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TV;>;"
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31228
    const/4 v0, 0x0

    return v0

    .line 31229
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lp;->size()I

    move-result v3

    .line 31230
    .local v0, "oldSize":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Br;->A06()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v2

    .line 31231
    .local v1, "changed":Z
    if-eqz v2, :cond_1

    .line 31232
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lp;->A02()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    .line 31233
    .local v2, "newSize":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Br;->A00:Lcom/facebook/ads/redexgen/X/2L;

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/2L;->A02(Lcom/facebook/ads/redexgen/X/2L;I)I

    .line 31234
    if-nez v3, :cond_1

    .line 31235
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lp;->A03()V

    .line 31236
    .end local v2    # "newSize":I
    :cond_1
    return v2
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 31237
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Br;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedList;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lp;->A04()V

    .line 31238
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Br;->A06()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final indexOf(Ljava/lang/Object;)I
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

    .line 31239
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Br;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedList;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lp;->A04()V

    .line 31240
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Br;->A06()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
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

    .line 31241
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Br;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedList;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lp;->A04()V

    .line 31242
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Br;->A06()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TV;>;"
        }
    .end annotation

    .line 31243
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Br;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedList;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lp;->A04()V

    .line 31244
    new-instance v0, Lcom/facebook/ads/redexgen/X/Bs;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Bs;-><init>(Lcom/facebook/ads/redexgen/X/Br;)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TV;>;"
        }
    .end annotation

    .line 31245
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Br;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedList;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lp;->A04()V

    .line 31246
    new-instance v0, Lcom/facebook/ads/redexgen/X/Bs;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Bs;-><init>(Lcom/facebook/ads/redexgen/X/Br;I)V

    return-object v0
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 2
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 31247
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Br;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedList;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lp;->A04()V

    .line 31248
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Br;->A06()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    .line 31249
    .local v0, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Br;->A00:Lcom/facebook/ads/redexgen/X/2L;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2L;->A01(Lcom/facebook/ads/redexgen/X/2L;)I

    .line 31250
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lp;->A05()V

    .line 31251
    return-object v1
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # I
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .line 31252
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Br;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedList;"
    .local p2, "element":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lp;->A04()V

    .line 31253
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Br;->A06()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final subList(II)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fromIndex",
            "toIndex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 31254
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Br;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedList;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lp;->A04()V

    .line 31255
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Br;->A00:Lcom/facebook/ads/redexgen/X/2L;

    .line 31256
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lp;->A01()Ljava/lang/Object;

    move-result-object v2

    .line 31257
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Br;->A06()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 31258
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lp;->A00()Lcom/facebook/ads/redexgen/X/lp;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p0

    .line 31259
    :goto_0
    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2L;->A0H(Ljava/lang/Object;Ljava/util/List;Lcom/facebook/ads/redexgen/X/lp;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 31260
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lp;->A00()Lcom/facebook/ads/redexgen/X/lp;

    move-result-object v0

    goto :goto_0
.end method
