.class public abstract Lcom/facebook/ads/redexgen/X/PC;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/P8;,
        Lcom/facebook/ads/redexgen/X/P9;,
        Lcom/facebook/ads/redexgen/X/PB;,
        Lcom/facebook/ads/redexgen/X/PA;,
        Lcom/facebook/ads/redexgen/X/P7;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static A03:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/P8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/PC<",
            "TK;TV;>.EntrySet;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public A01:Lcom/facebook/ads/redexgen/X/P9;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/PC<",
            "TK;TV;>.KeySet;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public A02:Lcom/facebook/ads/redexgen/X/PB;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/PC<",
            "TK;TV;>.ValuesCollection;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1528
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "1zdW1KODsFltmNuWmrotTBJZ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "RgZO4eFyMPRXq"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "TNHX835HuEpqCwzJlYfwEUi8GaEU5NHd"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "eVTb3p4k2JpJ0D4m3J9D4ZVPKPKe0wis"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "2WztFDsRGhQaALYpxh067UM8"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "jcxZvazs935Xr"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "SKBAj5hBfWgpr40k574HTlm5xQmSLGYw"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "jjH4wggc1wpWWLxRj5DmyzPuqk4QCdce"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/PC;->A03:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 56959
    .local p0, "this":Lcom/facebook/ads/redexgen/X/PC;, "Lcom/facebook/ads/internal/androidx/support/v4/util/MapCollections<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Ljava/util/Map;Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 56960
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local v3, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 56961
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56962
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/PC;->A03:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/PC;->A03:[Ljava/lang/String;

    const-string v1, "cUAXgIbWxWmXM8IdimkoIKbOqppmM6Vz"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "Ax9eiVneWoZpIcbsPIrW3KpgweGiIvpy"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-nez v3, :cond_0

    .line 56963
    const/4 v0, 0x0

    return v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 56964
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static A01(Ljava/util/Map;Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 56965
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local v4, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v4

    .line 56966
    .local v0, "oldSize":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 56967
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56968
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/PC;->A03:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x77

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/PC;->A03:[Ljava/lang/String;

    const-string v1, "E45UHwgrMTIMwaLYI7blxmvG7mW9Qs1w"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "z9os9R0vn0p5TampC1nMxoZk5TfunpzS"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-interface {p0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 56969
    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-eq v4, v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static A02(Ljava/util/Map;Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 56970
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local v4, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v4

    .line 56971
    .local v0, "oldSize":I
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 56972
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TK;>;"
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56973
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/PC;->A03:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/PC;->A03:[Ljava/lang/String;

    const-string v1, "5v4gpohEe9mjCzRiIQv41Zeqn5qom46c"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "O6DgVsMjSRRAXWI9cjkKRDle2DCyXpBO"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-nez v3, :cond_0

    .line 56974
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 56975
    :cond_2
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-eq v4, v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static A03(Ljava/util/Set;Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 56976
    .local v5, "set":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    const/4 v5, 0x1

    if-ne p0, p1, :cond_0

    .line 56977
    return v5

    .line 56978
    :cond_0
    instance-of v4, p1, Ljava/util/Set;

    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/PC;->A03:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/PC;->A03:[Ljava/lang/String;

    const-string v1, "EyqH2KYHB8yq5zU8TINZ2CMR"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "l4DYdurHJXrazQVJZIOfW52E"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v4, :cond_3

    .line 56979
    check-cast p1, Ljava/util/Set;

    .line 56980
    .local v1, "s":Ljava/util/Set;, "Ljava/util/Set<*>;"
    :try_start_0
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v1, v0, :cond_2

    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    return v5
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56981
    .local v0, "ignored":Ljava/lang/ClassCastException;
    :catch_0
    return v3

    .line 56982
    .end local v0    # "ignored":Ljava/lang/ClassCastException;
    .local v0, "ignored":Ljava/lang/NullPointerException;
    :catch_1
    return v3

    .line 56983
    .end local v0    # "ignored":Ljava/lang/NullPointerException;
    .end local v1    # "s":Ljava/util/Set;, "Ljava/util/Set<*>;"
    :cond_3
    return v3
.end method


# virtual methods
.method public abstract A04()I
.end method

.method public abstract A05(Ljava/lang/Object;)I
.end method

.method public abstract A06(Ljava/lang/Object;)I
.end method

.method public abstract A07()Lcom/facebook/ads/redexgen/X/i7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public final A08()Lcom/facebook/ads/redexgen/X/P8;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 56984
    .local v1, "this":Lcom/facebook/ads/redexgen/X/PC;, "Lcom/facebook/ads/internal/androidx/support/v4/util/MapCollections<TK;TV;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PC;->A00:Lcom/facebook/ads/redexgen/X/P8;

    if-nez v0, :cond_0

    .line 56985
    new-instance v0, Lcom/facebook/ads/redexgen/X/P8;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/P8;-><init>(Lcom/facebook/ads/redexgen/X/PC;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PC;->A00:Lcom/facebook/ads/redexgen/X/P8;

    .line 56986
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/PC;->A00:Lcom/facebook/ads/redexgen/X/P8;

    sget-object v2, Lcom/facebook/ads/redexgen/X/PC;->A03:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/PC;->A03:[Ljava/lang/String;

    const-string v1, "P6bvb6eoffQLg6Q5qx1NG9tFVzgAZtCe"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-object v3

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A09()Lcom/facebook/ads/redexgen/X/P9;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 56987
    .local p0, "this":Lcom/facebook/ads/redexgen/X/PC;, "Lcom/facebook/ads/internal/androidx/support/v4/util/MapCollections<TK;TV;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PC;->A01:Lcom/facebook/ads/redexgen/X/P9;

    if-nez v0, :cond_0

    .line 56988
    new-instance v0, Lcom/facebook/ads/redexgen/X/P9;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/P9;-><init>(Lcom/facebook/ads/redexgen/X/PC;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PC;->A01:Lcom/facebook/ads/redexgen/X/P9;

    .line 56989
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PC;->A01:Lcom/facebook/ads/redexgen/X/P9;

    return-object v0
.end method

.method public final A0A()Lcom/facebook/ads/redexgen/X/PB;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 56990
    .local p0, "this":Lcom/facebook/ads/redexgen/X/PC;, "Lcom/facebook/ads/internal/androidx/support/v4/util/MapCollections<TK;TV;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PC;->A02:Lcom/facebook/ads/redexgen/X/PB;

    if-nez v0, :cond_0

    .line 56991
    new-instance v0, Lcom/facebook/ads/redexgen/X/PB;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/PB;-><init>(Lcom/facebook/ads/redexgen/X/PC;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PC;->A02:Lcom/facebook/ads/redexgen/X/PB;

    .line 56992
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PC;->A02:Lcom/facebook/ads/redexgen/X/PB;

    return-object v0
.end method

.method public abstract A0B(II)Ljava/lang/Object;
.end method

.method public abstract A0C(ILjava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation
.end method

.method public abstract A0D()V
.end method

.method public abstract A0E(I)V
.end method

.method public abstract A0F(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation
.end method

.method public final A0G(I)[Ljava/lang/Object;
    .locals 4

    .line 56993
    .local p0, "this":Lcom/facebook/ads/redexgen/X/PC;, "Lcom/facebook/ads/internal/androidx/support/v4/util/MapCollections<TK;TV;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/PC;->A04()I

    move-result v3

    .line 56994
    .local v0, "N":I
    new-array v2, v3, [Ljava/lang/Object;

    .line 56995
    .local v1, "result":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 56996
    invoke-virtual {p0, v1, p1}, Lcom/facebook/ads/redexgen/X/PC;->A0B(II)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v1

    .line 56997
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56998
    .end local v2    # "i":I
    :cond_0
    return-object v2
.end method

.method public final A0H([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .line 56999
    .local p0, "this":Lcom/facebook/ads/redexgen/X/PC;, "Lcom/facebook/ads/internal/androidx/support/v4/util/MapCollections<TK;TV;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/PC;->A04()I

    move-result v2

    .line 57000
    .local v0, "N":I
    array-length v0, p1

    if-ge v0, v2, :cond_0

    .line 57001
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    .line 57002
    .local v1, "newArray":[Ljava/lang/Object;, "[TT;"
    .end local v1    # "newArray":[Ljava/lang/Object;, "[TT;"
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 57003
    invoke-virtual {p0, v1, p2}, Lcom/facebook/ads/redexgen/X/PC;->A0B(II)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p1, v1

    .line 57004
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57005
    .end local v1    # "i":I
    :cond_1
    array-length v0, p1

    if-le v0, v2, :cond_2

    .line 57006
    const/4 v0, 0x0

    aput-object v0, p1, v2

    .line 57007
    :cond_2
    return-object p1
.end method
