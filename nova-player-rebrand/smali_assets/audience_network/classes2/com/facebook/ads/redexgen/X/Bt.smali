.class public Lcom/facebook/ads/redexgen/X/Bt;
.super Lcom/facebook/ads/redexgen/X/pn;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/2L;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AsMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/2P;,
        Lcom/facebook/ads/redexgen/X/ll;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/pn<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field public final transient A00:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/2L;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/2L;Ljava/util/Map;)V
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
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 31278
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Bt;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.AsMap;"
    .local p2, "submap":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Bt;->A01:Lcom/facebook/ads/redexgen/X/2L;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/pn;-><init>()V

    .line 31279
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Bt;->A00:Ljava/util/Map;

    .line 31280
    return-void
.end method

.method private final A07(Ljava/lang/Object;)Ljava/util/Collection;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 31281
    .local p1, "this":Lcom/facebook/ads/redexgen/X/Bt;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.AsMap;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bt;->A00:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/po;->A05(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 31282
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v1, :cond_0

    .line 31283
    const/4 v0, 0x0

    return-object v0

    .line 31284
    .local v1, "k":Ljava/lang/Object;, "TK;"
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bt;->A01:Lcom/facebook/ads/redexgen/X/2L;

    invoke-virtual {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/2L;->A0F(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private final A08(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 4
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 31285
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Bt;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.AsMap;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bt;->A00:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .line 31286
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v3, :cond_0

    .line 31287
    const/4 v0, 0x0

    return-object v0

    .line 31288
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bt;->A01:Lcom/facebook/ads/redexgen/X/2L;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2L;->A0D()Ljava/util/Collection;

    move-result-object v2

    .line 31289
    .local v1, "output":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-interface {v2, v3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 31290
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Bt;->A01:Lcom/facebook/ads/redexgen/X/2L;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/2L;->A03(Lcom/facebook/ads/redexgen/X/2L;I)I

    .line 31291
    invoke-interface {v3}, Ljava/util/Collection;->clear()V

    .line 31292
    return-object v2
.end method


# virtual methods
.method public final A09()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation

    .line 31293
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Bt;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.AsMap;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/2P;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/2P;-><init>(Lcom/facebook/ads/redexgen/X/Bt;)V

    return-object v0
.end method

.method public final A0A(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;)",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 31294
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Bt;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.AsMap;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 31295
    .local v0, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Bt;->A01:Lcom/facebook/ads/redexgen/X/2L;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/2L;->A0F(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/po;->A01(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/BQ;

    move-result-object v0

    return-object v0
.end method

.method public final clear()V
    .locals 2

    .line 31296
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Bt;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.AsMap;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Bt;->A00:Ljava/util/Map;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bt;->A01:Lcom/facebook/ads/redexgen/X/2L;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2L;->A07(Lcom/facebook/ads/redexgen/X/2L;)Ljava/util/Map;

    move-result-object v0

    if-ne v1, v0, :cond_0

    .line 31297
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bt;->A01:Lcom/facebook/ads/redexgen/X/2L;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2L;->clear()V

    .line 31298
    :goto_0
    return-void

    .line 31299
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/ll;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ll;-><init>(Lcom/facebook/ads/redexgen/X/Bt;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/p9;->A09(Ljava/util/Iterator;)V

    goto :goto_0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
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
            "key"
        }
    .end annotation

    .line 31300
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Bt;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.AsMap;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bt;->A00:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/po;->A0C(Ljava/util/Map;Ljava/lang/Object;)Z

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

    .line 31301
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Bt;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.AsMap;"
    if-eq p0, p1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bt;->A00:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

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

.method public final bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "key"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 31302
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Bt;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.AsMap;"
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Bt;->A07(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .line 31303
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Bt;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.AsMap;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bt;->A00:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 31304
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Bt;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.AsMap;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bt;->A01:Lcom/facebook/ads/redexgen/X/2L;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Bq;->A01()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "key"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 31305
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Bt;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.AsMap;"
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Bt;->A08(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 31306
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Bt;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.AsMap;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bt;->A00:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 31307
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Bt;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.AsMap;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bt;->A00:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
