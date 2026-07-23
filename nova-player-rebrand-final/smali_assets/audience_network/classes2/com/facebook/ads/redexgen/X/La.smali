.class public final Lcom/facebook/ads/redexgen/X/La;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public A00:Z

.field public A01:Z

.field public final A02:Lcom/facebook/ads/redexgen/X/LU;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/LU<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/LU;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/LU<",
            "TT;>;)V"
        }
    .end annotation

    .line 50484
    .local p0, "this":Lcom/facebook/ads/redexgen/X/La;, "Lcom/facebook/ads/cache/config/CacheRequestConfig<TT;>;"
    .local p1, "responseAdapter":Lcom/facebook/ads/redexgen/X/LU;, "Lcom/facebook/ads/cache/api/ResponseAdapter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50485
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/La;->A02:Lcom/facebook/ads/redexgen/X/LU;

    .line 50486
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/La;->A01:Z

    .line 50487
    return-void
.end method


# virtual methods
.method public final A00()Lcom/facebook/ads/redexgen/X/LU;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/ads/redexgen/X/LU<",
            "TT;>;"
        }
    .end annotation

    .line 50488
    .local p0, "this":Lcom/facebook/ads/redexgen/X/La;, "Lcom/facebook/ads/cache/config/CacheRequestConfig<TT;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/La;->A02:Lcom/facebook/ads/redexgen/X/LU;

    return-object v0
.end method

.method public final A01(Z)V
    .locals 0

    .line 50489
    .local p0, "this":Lcom/facebook/ads/redexgen/X/La;, "Lcom/facebook/ads/cache/config/CacheRequestConfig<TT;>;"
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/La;->A00:Z

    .line 50490
    return-void
.end method

.method public final A02(Z)V
    .locals 0

    .line 50491
    .local p0, "this":Lcom/facebook/ads/redexgen/X/La;, "Lcom/facebook/ads/cache/config/CacheRequestConfig<TT;>;"
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/La;->A01:Z

    .line 50492
    return-void
.end method

.method public final A03()Z
    .locals 1

    .line 50493
    .local p0, "this":Lcom/facebook/ads/redexgen/X/La;, "Lcom/facebook/ads/cache/config/CacheRequestConfig<TT;>;"
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/La;->A00:Z

    return v0
.end method

.method public final A04()Z
    .locals 1

    .line 50494
    .local p0, "this":Lcom/facebook/ads/redexgen/X/La;, "Lcom/facebook/ads/cache/config/CacheRequestConfig<TT;>;"
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/La;->A01:Z

    return v0
.end method
