.class public final Lcom/facebook/ads/redexgen/X/LT;
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
.field public final A00:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final A01:Ljava/lang/Throwable;

.field public final A02:Z


# direct methods
.method public constructor <init>(ZLjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTT;)V"
        }
    .end annotation

    .line 50315
    .local p0, "this":Lcom/facebook/ads/redexgen/X/LT;, "Lcom/facebook/ads/cache/api/CacheResponse<TT;>;"
    .local p2, "result":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50316
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/LT;->A02:Z

    .line 50317
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/LT;->A00:Ljava/lang/Object;

    .line 50318
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LT;->A01:Ljava/lang/Throwable;

    .line 50319
    return-void
.end method

.method public constructor <init>(ZLjava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTT;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 50320
    .local p0, "this":Lcom/facebook/ads/redexgen/X/LT;, "Lcom/facebook/ads/cache/api/CacheResponse<TT;>;"
    .local p2, "result":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50321
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/LT;->A02:Z

    .line 50322
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/LT;->A00:Ljava/lang/Object;

    .line 50323
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/LT;->A01:Ljava/lang/Throwable;

    .line 50324
    return-void
.end method


# virtual methods
.method public final A00()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 50325
    .local p0, "this":Lcom/facebook/ads/redexgen/X/LT;, "Lcom/facebook/ads/cache/api/CacheResponse<TT;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LT;->A00:Ljava/lang/Object;

    return-object v0
.end method

.method public final A01()Z
    .locals 1

    .line 50326
    .local p0, "this":Lcom/facebook/ads/redexgen/X/LT;, "Lcom/facebook/ads/cache/api/CacheResponse<TT;>;"
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/LT;->A02:Z

    return v0
.end method
