.class public abstract Lcom/google/android/gms/internal/ads/zzhaf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# direct methods
.method public static zza()Ljava/util/concurrent/Executor;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgzd;->zza:Lcom/google/android/gms/internal/ads/zzgzd;

    return-object v0
.end method

.method public static zzb(Ljava/util/concurrent/ExecutorService;)Lcom/google/android/gms/internal/ads/zzgzy;
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzgzy;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzgzy;

    return-object p0

    .line 2
    :cond_0
    instance-of v0, p0, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhae;

    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzhae;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhaa;

    .line 4
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzhaa;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method

.method public static zzc(Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzgzz;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhae;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzhae;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v0
.end method

.method static zzd(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzgyh;)Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgzd;->zza:Lcom/google/android/gms/internal/ads/zzgzd;

    if-ne p0, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhab;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzhab;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzgyh;)V

    return-object v0
.end method

.method static synthetic zze(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzgyh;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhaf;->zzf(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzgyh;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic zzf(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzgyh;Ljava/lang/Runnable;)V
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
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzgyh;->zzb(Ljava/lang/Throwable;)Z

    return-void
.end method
