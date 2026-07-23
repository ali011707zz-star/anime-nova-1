.class public abstract Lcom/facebook/ads/redexgen/X/lm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/2L;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static A05:[Ljava/lang/String;


# instance fields
.field public A00:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public A01:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public A02:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final A03:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation
.end field

.field public final synthetic A04:Lcom/facebook/ads/redexgen/X/2L;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3205
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "yj7R8PNFUN0fUwX4ptDHVgb9mciI6y8S"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "w28O54ZRsma9hL5SDt3wymltcx69iHvf"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "YcrQeuLRolqkQfaDcqM9IKWqy1ikOF9U"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "DKWy1m0QH6rgUafvBHDUPpGtl2BaSlV6"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "o1aBNcvHQhMY4jdZXZXshBAdWZXBL6DV"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "37Z8EQ1QZKWXRGLFu1IhCyfwxu1s5rVt"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "AbJFenTKTViZI"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "TvP3YStRcjl"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/lm;->A05:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/2L;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 94927
    .local v0, "this":Lcom/facebook/ads/redexgen/X/lm;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.Itr<TT;>;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/lm;->A04:Lcom/facebook/ads/redexgen/X/2L;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94928
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/2L;->A07(Lcom/facebook/ads/redexgen/X/2L;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lm;->A03:Ljava/util/Iterator;

    .line 94929
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lm;->A00:Ljava/lang/Object;

    .line 94930
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lm;->A01:Ljava/util/Collection;

    .line 94931
    invoke-static {}, Lcom/facebook/ads/redexgen/X/p9;->A02()Lcom/facebook/ads/redexgen/X/p7;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lm;->A02:Ljava/util/Iterator;

    .line 94932
    return-void
.end method


# virtual methods
.method public abstract A00(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TT;"
        }
    .end annotation
.end method

.method public final hasNext()Z
    .locals 4

    .line 94933
    .local v1, "this":Lcom/facebook/ads/redexgen/X/lm;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.Itr<TT;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lm;->A03:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lm;->A02:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/lm;->A05:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x15

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/lm;->A05:[Ljava/lang/String;

    const-string v1, "pECQkiKXDW2sGX88ia3JmL5aCpMJahaX"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "40BbvxkWBVb1JaKod9nJScM88XX6buwm"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 4
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 94934
    .local v2, "this":Lcom/facebook/ads/redexgen/X/lm;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.Itr<TT;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lm;->A02:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94935
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lm;->A03:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 94936
    .local v0, "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lm;->A00:Ljava/lang/Object;

    .line 94937
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lm;->A01:Ljava/util/Collection;

    .line 94938
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lm;->A01:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/lm;->A05:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x15

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/lm;->A05:[Ljava/lang/String;

    const-string v1, "8KgPjQMUi9vsfEA6OvWHRw30OGi5ygpx"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "pWw8h70m8FKHbc1TiSoELMLej3it9wyW"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/lm;->A02:Ljava/util/Iterator;

    .line 94939
    .end local v0    # "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;"
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lm;->A00:Ljava/lang/Object;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/qF;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lm;->A02:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/lm;->A00(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 1

    .line 94940
    .local p0, "this":Lcom/facebook/ads/redexgen/X/lm;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.Itr<TT;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lm;->A02:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 94941
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lm;->A01:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94942
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lm;->A03:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 94943
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lm;->A04:Lcom/facebook/ads/redexgen/X/2L;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2L;->A01(Lcom/facebook/ads/redexgen/X/2L;)I

    .line 94944
    return-void
.end method
