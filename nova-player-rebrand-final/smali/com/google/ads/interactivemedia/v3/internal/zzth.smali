.class final Lcom/google/ads/interactivemedia/v3/internal/zzth;
.super Lcom/google/ads/interactivemedia/v3/internal/zzsz;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field private zza:Lcom/google/ads/interactivemedia/v3/internal/zztg;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzqp;ZLjava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)V
    .locals 0

    const/4 p2, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzsz;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzqp;ZZ)V

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zztf;

    .line 2
    invoke-direct {p1, p0, p4, p3}, Lcom/google/ads/interactivemedia/v3/internal/zztf;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzth;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzth;->zza:Lcom/google/ads/interactivemedia/v3/internal/zztg;

    .line 3
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzsz;->zze()V

    return-void
.end method


# virtual methods
.method final zzf()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzth;->zza:Lcom/google/ads/interactivemedia/v3/internal/zztg;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zztg;->zze()V

    :cond_0
    return-void
.end method

.method protected final zzi()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzth;->zza:Lcom/google/ads/interactivemedia/v3/internal/zztg;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zztz;->zzh()V

    :cond_0
    return-void
.end method

.method final zzx(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzsz;->zzx(I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzth;->zza:Lcom/google/ads/interactivemedia/v3/internal/zztg;

    :cond_0
    return-void
.end method

.method final synthetic zzz(Lcom/google/ads/interactivemedia/v3/internal/zztg;)V
    .locals 0

    .line 0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzth;->zza:Lcom/google/ads/interactivemedia/v3/internal/zztg;

    return-void
.end method
