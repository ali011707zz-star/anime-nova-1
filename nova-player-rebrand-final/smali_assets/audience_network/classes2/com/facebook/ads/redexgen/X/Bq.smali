.class public abstract Lcom/facebook/ads/redexgen/X/Bq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/q3;


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/ls;,
        Lcom/google/common/collect/AbstractMultimap$EntrySet;,
        Lcom/google/common/collect/AbstractMultimap$Entries;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/ads/redexgen/X/q3<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public transient A00:Ljava/util/Collection;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public transient A01:Ljava/util/Map;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public transient A02:Ljava/util/Set;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31202
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Bq;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract A00()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation
.end method

.method public A01()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 31203
    .local p1, "this":Lcom/facebook/ads/redexgen/X/Bq;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bq;->A02:Ljava/util/Set;

    .line 31204
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Bq;->A02()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Bq;->A02:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public abstract A02()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end method

.method public A03(Ljava/lang/Object;)Z
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
            "value"
        }
    .end annotation

    .line 31205
    .local p1, "this":Lcom/facebook/ads/redexgen/X/Bq;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Bq;->A4H()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 31206
    .local v1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31207
    const/4 v0, 0x1

    return v0

    .line 31208
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public abstract A0B()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end method

.method public abstract A0C()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation
.end method

.method public A4H()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 31209
    .local p1, "this":Lcom/facebook/ads/redexgen/X/Bq;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bq;->A01:Ljava/util/Map;

    .line 31210
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Bq;->A00()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Bq;->A01:Ljava/util/Map;

    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
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

    .line 31211
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Bq;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>;"
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/q8;->A01(Lcom/facebook/ads/redexgen/X/q3;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 31212
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Bq;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Bq;->A4H()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 31213
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Bq;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Bq;->A4H()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 31214
    .local p1, "this":Lcom/facebook/ads/redexgen/X/Bq;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bq;->A00:Ljava/util/Collection;

    .line 31215
    .local v0, "result":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Bq;->A0B()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Bq;->A00:Ljava/util/Collection;

    :cond_0
    return-object v0
.end method
