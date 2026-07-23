.class public final Lcom/facebook/ads/redexgen/X/P9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/PC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Set<",
        "TK;>;"
    }
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/PC;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1525
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "edFq1RSzVbogperxRnGO2mwS9T0C3jXY"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "CE90aEI9KYNoN0DMFbwcn9PMt89CsnEy"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "tPPb"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "CijerYzHuYsgCporrbQrcy6DwpkaY1hX"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Nwp2N8bBhYR0nMsdl7Yct"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Yte1vUSgji4S3VNobeKxGdrgBkFaACT"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "hyxYDNsU9Fu2EdzaavUXH"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "kSbZdYOgqhrWj8RnTgPZsuZs4QqXHZoL"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/P9;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/PC;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 56847
    .local p0, "this":Lcom/facebook/ads/redexgen/X/P9;, "Lcom/facebook/ads/internal/androidx/support/v4/util/MapCollections<TK;TV;>.KeySet;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/P9;->A00:Lcom/facebook/ads/redexgen/X/PC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 56848
    .local p0, "this":Lcom/facebook/ads/redexgen/X/P9;, "Lcom/facebook/ads/internal/androidx/support/v4/util/MapCollections<TK;TV;>.KeySet;"
    .local p1, "object":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TK;>;)Z"
        }
    .end annotation

    .line 56849
    .local p0, "this":Lcom/facebook/ads/redexgen/X/P9;, "Lcom/facebook/ads/internal/androidx/support/v4/util/MapCollections<TK;TV;>.KeySet;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final clear()V
    .locals 1

    .line 56850
    .local p0, "this":Lcom/facebook/ads/redexgen/X/P9;, "Lcom/facebook/ads/internal/androidx/support/v4/util/MapCollections<TK;TV;>.KeySet;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P9;->A00:Lcom/facebook/ads/redexgen/X/PC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PC;->A0D()V

    .line 56851
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 56852
    .local p0, "this":Lcom/facebook/ads/redexgen/X/P9;, "Lcom/facebook/ads/internal/androidx/support/v4/util/MapCollections<TK;TV;>.KeySet;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P9;->A00:Lcom/facebook/ads/redexgen/X/PC;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/PC;->A05(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 56853
    .local p0, "this":Lcom/facebook/ads/redexgen/X/P9;, "Lcom/facebook/ads/internal/androidx/support/v4/util/MapCollections<TK;TV;>.KeySet;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P9;->A00:Lcom/facebook/ads/redexgen/X/PC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PC;->A07()Lcom/facebook/ads/redexgen/X/i7;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/PC;->A00(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 56854
    .local p0, "this":Lcom/facebook/ads/redexgen/X/P9;, "Lcom/facebook/ads/internal/androidx/support/v4/util/MapCollections<TK;TV;>.KeySet;"
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/PC;->A03(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 4

    .line 56855
    .local p0, "this":Lcom/facebook/ads/redexgen/X/P9;, "Lcom/facebook/ads/internal/androidx/support/v4/util/MapCollections<TK;TV;>.KeySet;"
    const/4 v3, 0x0

    .line 56856
    .local v0, "result":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P9;->A00:Lcom/facebook/ads/redexgen/X/PC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PC;->A04()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 56857
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P9;->A00:Lcom/facebook/ads/redexgen/X/PC;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/PC;->A0B(II)Ljava/lang/Object;

    move-result-object v0

    .line 56858
    .local v2, "obj":Ljava/lang/Object;
    if-nez v0, :cond_0

    :goto_1
    add-int/2addr v3, v1

    .line 56859
    .end local v2    # "obj":Ljava/lang/Object;
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 56860
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    .line 56861
    .end local v1    # "i":I
    :cond_1
    return v3
.end method

.method public final isEmpty()Z
    .locals 1

    .line 56862
    .local p0, "this":Lcom/facebook/ads/redexgen/X/P9;, "Lcom/facebook/ads/internal/androidx/support/v4/util/MapCollections<TK;TV;>.KeySet;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P9;->A00:Lcom/facebook/ads/redexgen/X/PC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PC;->A04()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 56863
    .local p0, "this":Lcom/facebook/ads/redexgen/X/P9;, "Lcom/facebook/ads/internal/androidx/support/v4/util/MapCollections<TK;TV;>.KeySet;"
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/P9;->A00:Lcom/facebook/ads/redexgen/X/PC;

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/P7;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/P7;-><init>(Lcom/facebook/ads/redexgen/X/PC;I)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 3

    .line 56864
    .local v2, "this":Lcom/facebook/ads/redexgen/X/P9;, "Lcom/facebook/ads/internal/androidx/support/v4/util/MapCollections<TK;TV;>.KeySet;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P9;->A00:Lcom/facebook/ads/redexgen/X/PC;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/PC;->A05(Ljava/lang/Object;)I

    move-result v1

    .line 56865
    .local v0, "index":I
    if-ltz v1, :cond_1

    .line 56866
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P9;->A00:Lcom/facebook/ads/redexgen/X/PC;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/PC;->A0E(I)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/P9;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    .line 56867
    sget-object v2, Lcom/facebook/ads/redexgen/X/P9;->A01:[Ljava/lang/String;

    const-string v1, "xtpBes5HGReh40nAQqVKY"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "hpfnMqiRo4gFf5SPN0UOy"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const/4 v0, 0x1

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 56868
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 56869
    .local p0, "this":Lcom/facebook/ads/redexgen/X/P9;, "Lcom/facebook/ads/internal/androidx/support/v4/util/MapCollections<TK;TV;>.KeySet;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P9;->A00:Lcom/facebook/ads/redexgen/X/PC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PC;->A07()Lcom/facebook/ads/redexgen/X/i7;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/PC;->A01(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 56870
    .local p0, "this":Lcom/facebook/ads/redexgen/X/P9;, "Lcom/facebook/ads/internal/androidx/support/v4/util/MapCollections<TK;TV;>.KeySet;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P9;->A00:Lcom/facebook/ads/redexgen/X/PC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PC;->A07()Lcom/facebook/ads/redexgen/X/i7;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/PC;->A02(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final size()I
    .locals 1

    .line 56871
    .local p0, "this":Lcom/facebook/ads/redexgen/X/P9;, "Lcom/facebook/ads/internal/androidx/support/v4/util/MapCollections<TK;TV;>.KeySet;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P9;->A00:Lcom/facebook/ads/redexgen/X/PC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PC;->A04()I

    move-result v0

    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 2

    .line 56872
    .local p0, "this":Lcom/facebook/ads/redexgen/X/P9;, "Lcom/facebook/ads/internal/androidx/support/v4/util/MapCollections<TK;TV;>.KeySet;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/P9;->A00:Lcom/facebook/ads/redexgen/X/PC;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PC;->A0G(I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 56873
    .local p0, "this":Lcom/facebook/ads/redexgen/X/P9;, "Lcom/facebook/ads/internal/androidx/support/v4/util/MapCollections<TK;TV;>.KeySet;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/P9;->A00:Lcom/facebook/ads/redexgen/X/PC;

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/PC;->A0H([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
