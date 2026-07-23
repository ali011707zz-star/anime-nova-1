.class public Lcom/google/ads/interactivemedia/v3/internal/zztk;
.super Lcom/google/ads/interactivemedia/v3/internal/zztt;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zztt;-><init>()V

    return-void
.end method

.method public static zzw(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/ads/interactivemedia/v3/internal/zztk;
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zztk;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/ads/interactivemedia/v3/internal/zztk;

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zztl;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/zztl;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-object v0
.end method
