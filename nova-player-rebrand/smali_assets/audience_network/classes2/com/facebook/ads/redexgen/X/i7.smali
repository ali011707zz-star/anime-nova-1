.class public final Lcom/facebook/ads/redexgen/X/i7;
.super Lcom/facebook/ads/redexgen/X/PF;
.source ""

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/ads/redexgen/X/PF<",
        "TK;TV;>;",
        "Ljava/util/Map<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/PC;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/PC<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 86276
    .local p0, "this":Lcom/facebook/ads/redexgen/X/i7;, "Lcom/facebook/ads/internal/androidx/support/v4/util/ArrayMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/PF;-><init>()V

    .line 86277
    return-void
.end method

.method private A00()Lcom/facebook/ads/redexgen/X/PC;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/ads/redexgen/X/PC<",
            "TK;TV;>;"
        }
    .end annotation

    .line 86278
    .local p0, "this":Lcom/facebook/ads/redexgen/X/i7;, "Lcom/facebook/ads/internal/androidx/support/v4/util/ArrayMap<TK;TV;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/i7;->A00:Lcom/facebook/ads/redexgen/X/PC;

    if-nez v0, :cond_0

    .line 86279
    new-instance v0, Lcom/facebook/ads/redexgen/X/i8;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/i8;-><init>(Lcom/facebook/ads/redexgen/X/i7;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/i7;->A00:Lcom/facebook/ads/redexgen/X/PC;

    .line 86280
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/i7;->A00:Lcom/facebook/ads/redexgen/X/PC;

    return-object v0
.end method


# virtual methods
.method public final entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 86281
    .local p0, "this":Lcom/facebook/ads/redexgen/X/i7;, "Lcom/facebook/ads/internal/androidx/support/v4/util/ArrayMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/i7;->A00()Lcom/facebook/ads/redexgen/X/PC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PC;->A08()Lcom/facebook/ads/redexgen/X/P8;

    move-result-object v0

    return-object v0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 86282
    .local p0, "this":Lcom/facebook/ads/redexgen/X/i7;, "Lcom/facebook/ads/internal/androidx/support/v4/util/ArrayMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/i7;->A00()Lcom/facebook/ads/redexgen/X/PC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PC;->A09()Lcom/facebook/ads/redexgen/X/P9;

    move-result-object v0

    return-object v0
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 86283
    .local p1, "this":Lcom/facebook/ads/redexgen/X/i7;, "Lcom/facebook/ads/internal/androidx/support/v4/util/ArrayMap<TK;TV;>;"
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    iget v1, p0, Lcom/facebook/ads/redexgen/X/PF;->A00:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/PF;->A0D(I)V

    .line 86284
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 86285
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/PF;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86286
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    goto :goto_0

    .line 86287
    :cond_0
    return-void
.end method

.method public final values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 86288
    .local p0, "this":Lcom/facebook/ads/redexgen/X/i7;, "Lcom/facebook/ads/internal/androidx/support/v4/util/ArrayMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/i7;->A00()Lcom/facebook/ads/redexgen/X/PC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PC;->A0A()Lcom/facebook/ads/redexgen/X/PB;

    move-result-object v0

    return-object v0
.end method
