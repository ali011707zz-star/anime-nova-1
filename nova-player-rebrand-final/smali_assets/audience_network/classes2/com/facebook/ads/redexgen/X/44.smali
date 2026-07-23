.class public final Lcom/facebook/ads/redexgen/X/44;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 165
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "EztRdnRdnxII2dimpNbIGIFL"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "yBPkb8rrKyWAtXIO8vHrmMLgNIFMukmC"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ruf61JzVv"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "IfWYroKwc"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "5HPqTBNR8piE8Sks8fUTmtRJQLpo0nUy"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "FxyxfNH4TJBWtje7DU0sksr0G0lHlrNk"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "mC"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "vPIo9e1233jy8mUAOhcfZhe0yZqmz6aB"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/44;->A00:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/23;Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/ads/redexgen/X/24;",
            ">(",
            "Lcom/facebook/ads/redexgen/X/23<",
            "TT;>;",
            "Landroid/util/SparseArray<",
            "Landroid/os/Bundle;",
            ">;)",
            "Landroid/util/SparseArray<",
            "TT;>;"
        }
    .end annotation

    .line 11152
    .local p0, "creator":Lcom/facebook/ads/redexgen/X/23;, "Lcom/facebook/ads/androidx/media3/common/Bundleable$Creator<TT;>;"
    .local p1, "bundleSparseArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Bundle;>;"
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 11153
    .local v0, "result":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    const/4 v2, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 11154
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-interface {p0, v0}, Lcom/facebook/ads/redexgen/X/23;->A6f(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/24;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 11155
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11156
    .end local v1    # "i":I
    :cond_0
    return-object v3
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/23;Ljava/util/List;)Lcom/facebook/ads/redexgen/X/BP;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/ads/redexgen/X/24;",
            ">(",
            "Lcom/facebook/ads/redexgen/X/23<",
            "TT;>;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/BP<",
            "TT;>;"
        }
    .end annotation

    .line 11157
    .local v4, "creator":Lcom/facebook/ads/redexgen/X/23;, "Lcom/facebook/ads/androidx/media3/common/Bundleable$Creator<TT;>;"
    .local v5, "bundleList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-static {}, Lcom/facebook/ads/redexgen/X/BP;->A01()Lcom/facebook/ads/redexgen/X/2K;

    move-result-object v5

    .line 11158
    .local v0, "builder":Lcom/facebook/ads/redexgen/X/2K;, "Lcom/google/common/collect/ImmutableList$Builder<TT;>;"
    const/4 v4, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/44;->A00:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/44;->A00:[Ljava/lang/String;

    const-string v1, "WptazREDdEStXNqRDkkRjPq2B5lfZI6H"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ge v4, v3, :cond_0

    .line 11159
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 11160
    .local v2, "bundle":Landroid/os/Bundle;
    invoke-interface {p0, v0}, Lcom/facebook/ads/redexgen/X/23;->A6f(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/24;

    move-result-object v0

    .line 11161
    .local v3, "bundleable":Lcom/facebook/ads/redexgen/X/24;, "TT;"
    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/2K;->A04(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/2K;

    .line 11162
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v3    # "bundleable":Lcom/facebook/ads/redexgen/X/24;, "TT;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 11163
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/2K;->A05()Lcom/facebook/ads/redexgen/X/BP;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A02(Landroid/os/Bundle;)V
    .locals 1

    .line 11164
    if-eqz p0, :cond_0

    .line 11165
    const-class v0, Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 11166
    :cond_0
    return-void
.end method
