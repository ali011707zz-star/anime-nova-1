.class public final Lcom/facebook/ads/redexgen/X/Bs;
.super Lcom/facebook/ads/redexgen/X/lo;
.source ""

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Br;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WrappedListIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/2L<",
        "TK;TV;>.WrappedCollection.WrappedIterator;",
        "Ljava/util/ListIterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Br;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Br;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 31261
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Bs;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedList.WrappedListIterator;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Bs;->A00:Lcom/facebook/ads/redexgen/X/Br;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/lo;-><init>(Lcom/facebook/ads/redexgen/X/lp;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Br;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$1",
            "index"
        }
    .end annotation

    .line 31262
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Bs;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedList.WrappedListIterator;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Bs;->A00:Lcom/facebook/ads/redexgen/X/Br;

    .line 31263
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Br;->A06()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/lo;-><init>(Lcom/facebook/ads/redexgen/X/lp;Ljava/util/Iterator;)V

    .line 31264
    return-void
.end method

.method private A00()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TV;>;"
        }
    .end annotation

    .line 31265
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Bs;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedList.WrappedListIterator;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lo;->A02()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Ljava/util/ListIterator;

    return-object v0
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 31266
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Bs;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedList.WrappedListIterator;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bs;->A00:Lcom/facebook/ads/redexgen/X/Br;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Br;->isEmpty()Z

    move-result v1

    .line 31267
    .local v0, "wasEmpty":Z
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Bs;->A00()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 31268
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bs;->A00:Lcom/facebook/ads/redexgen/X/Br;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Br;->A00:Lcom/facebook/ads/redexgen/X/2L;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2L;->A00(Lcom/facebook/ads/redexgen/X/2L;)I

    .line 31269
    if-eqz v1, :cond_0

    .line 31270
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bs;->A00:Lcom/facebook/ads/redexgen/X/Br;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/lp;->A03()V

    .line 31271
    :cond_0
    return-void
.end method

.method public final hasPrevious()Z
    .locals 1

    .line 31272
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Bs;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedList.WrappedListIterator;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Bs;->A00()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public final nextIndex()I
    .locals 1

    .line 31273
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Bs;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedList.WrappedListIterator;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Bs;->A00()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 31274
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Bs;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedList.WrappedListIterator;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Bs;->A00()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final previousIndex()I
    .locals 1

    .line 31275
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Bs;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedList.WrappedListIterator;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Bs;->A00()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public final set(Ljava/lang/Object;)V
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
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 31276
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Bs;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedList.WrappedListIterator;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Bs;->A00()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 31277
    return-void
.end method
