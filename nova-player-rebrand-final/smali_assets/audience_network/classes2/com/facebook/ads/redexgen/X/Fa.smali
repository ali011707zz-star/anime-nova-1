.class public abstract synthetic Lcom/facebook/ads/redexgen/X/Fa;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static A00(Ljava/util/concurrent/Executor;Lcom/facebook/ads/redexgen/X/49;)Lcom/facebook/ads/redexgen/X/n6;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/concurrent/Executor;",
            ">(TT;",
            "Lcom/facebook/ads/redexgen/X/49<",
            "TT;>;)",
            "Lcom/facebook/ads/redexgen/X/Fb;"
        }
    .end annotation

    .line 35943
    .local p0, "executor":Ljava/util/concurrent/Executor;, "TT;"
    .local p1, "releaseCallback":Lcom/facebook/ads/redexgen/X/49;, "Lcom/facebook/ads/androidx/media3/common/util/Consumer<TT;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/n6;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/n6;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/ads/redexgen/X/49;)V

    return-object v0
.end method
