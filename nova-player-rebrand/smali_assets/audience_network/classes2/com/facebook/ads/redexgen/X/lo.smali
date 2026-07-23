.class public Lcom/facebook/ads/redexgen/X/lo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/lp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WrappedIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final A00:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final A01:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/lp;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/lp;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 94957
    .local p0, "this":Lcom/facebook/ads/redexgen/X/lo;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection.WrappedIterator;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/lo;->A02:Lcom/facebook/ads/redexgen/X/lp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94958
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lo;->A02:Lcom/facebook/ads/redexgen/X/lp;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/lp;->A00:Ljava/util/Collection;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lo;->A00:Ljava/util/Collection;

    .line 94959
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/lp;->A00:Ljava/util/Collection;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2L;->A06(Ljava/util/Collection;)Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lo;->A01:Ljava/util/Iterator;

    .line 94960
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/lp;Ljava/util/Iterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$1",
            "delegateIterator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TV;>;)V"
        }
    .end annotation

    .line 94961
    .local p0, "this":Lcom/facebook/ads/redexgen/X/lo;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection.WrappedIterator;"
    .local p2, "delegateIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/lo;->A02:Lcom/facebook/ads/redexgen/X/lp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94962
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lo;->A02:Lcom/facebook/ads/redexgen/X/lp;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/lp;->A00:Ljava/util/Collection;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lo;->A00:Ljava/util/Collection;

    .line 94963
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/lo;->A01:Ljava/util/Iterator;

    .line 94964
    return-void
.end method

.method private final A01()V
    .locals 2

    .line 94965
    .local p0, "this":Lcom/facebook/ads/redexgen/X/lo;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection.WrappedIterator;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lo;->A02:Lcom/facebook/ads/redexgen/X/lp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/lp;->A04()V

    .line 94966
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lo;->A02:Lcom/facebook/ads/redexgen/X/lp;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/lp;->A00:Ljava/util/Collection;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lo;->A00:Ljava/util/Collection;

    if-ne v1, v0, :cond_0

    .line 94967
    return-void

    .line 94968
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A02()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 94969
    .local p0, "this":Lcom/facebook/ads/redexgen/X/lo;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection.WrappedIterator;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lo;->A01()V

    .line 94970
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lo;->A01:Ljava/util/Iterator;

    return-object v0
.end method

.method public final hasNext()Z
    .locals 1

    .line 94971
    .local p0, "this":Lcom/facebook/ads/redexgen/X/lo;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection.WrappedIterator;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lo;->A01()V

    .line 94972
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lo;->A01:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 94973
    .local p0, "this":Lcom/facebook/ads/redexgen/X/lo;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection.WrappedIterator;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lo;->A01()V

    .line 94974
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lo;->A01:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 1

    .line 94975
    .local p0, "this":Lcom/facebook/ads/redexgen/X/lo;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection.WrappedIterator;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lo;->A01:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 94976
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lo;->A02:Lcom/facebook/ads/redexgen/X/lp;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/lp;->A04:Lcom/facebook/ads/redexgen/X/2L;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2L;->A01(Lcom/facebook/ads/redexgen/X/2L;)I

    .line 94977
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lo;->A02:Lcom/facebook/ads/redexgen/X/lp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/lp;->A05()V

    .line 94978
    return-void
.end method
