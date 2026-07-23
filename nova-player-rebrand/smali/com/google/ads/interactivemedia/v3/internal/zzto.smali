.class public abstract Lcom/google/ads/interactivemedia/v3/internal/zzto;
.super Lcom/google/ads/interactivemedia/v3/internal/zztm;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zztm;-><init>()V

    return-void
.end method


# virtual methods
.method public final addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzto;->zzc()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method protected bridge synthetic zzb()Ljava/util/concurrent/Future;
    .locals 1

    .line 0
    const/4 v0, 0x0

    throw v0
.end method

.method protected abstract zzc()Lcom/google/common/util/concurrent/ListenableFuture;
.end method
