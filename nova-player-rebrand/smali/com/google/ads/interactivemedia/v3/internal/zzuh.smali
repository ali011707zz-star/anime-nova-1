.class public final Lcom/google/ads/interactivemedia/v3/internal/zzuh;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# direct methods
.method public static zza()Ljava/util/concurrent/Executor;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzti;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzti;

    return-object v0
.end method

.method public static zzb(Ljava/util/concurrent/ExecutorService;)Lcom/google/ads/interactivemedia/v3/internal/zzub;
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzub;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/ads/interactivemedia/v3/internal/zzub;

    return-object p0

    .line 2
    :cond_0
    instance-of v0, p0, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzug;

    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzug;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzuc;

    .line 4
    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzuc;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method

.method static zzc(Ljava/util/concurrent/Executor;Lcom/google/ads/interactivemedia/v3/internal/zzsr;)Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzti;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzti;

    if-ne p0, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzud;

    invoke-direct {v0, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzud;-><init>(Ljava/util/concurrent/Executor;Lcom/google/ads/interactivemedia/v3/internal/zzsr;)V

    return-object v0
.end method

.method static synthetic zzd(Ljava/util/concurrent/Executor;Lcom/google/ads/interactivemedia/v3/internal/zzsr;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzuh;->zze(Ljava/util/concurrent/Executor;Lcom/google/ads/interactivemedia/v3/internal/zzsr;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic zze(Ljava/util/concurrent/Executor;Lcom/google/ads/interactivemedia/v3/internal/zzsr;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-interface {p0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzsr;->zzb(Ljava/lang/Throwable;)Z

    return-void
.end method
