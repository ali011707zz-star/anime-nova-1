.class public final Lcom/google/ads/interactivemedia/v3/internal/zzts;
.super Lcom/google/ads/interactivemedia/v3/internal/zztu;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# direct methods
.method public static zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/google/ads/interactivemedia/v3/internal/zztw;->zza:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zztw;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/zztw;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static zzb()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zztw;->zza:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v0
.end method

.method public static zzc(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zztv;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/zztv;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static zzd(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzun;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzun;-><init>(Ljava/util/concurrent/Callable;)V

    .line 3
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static zze(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/ads/interactivemedia/v3/internal/zzpg;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 1
    sget v0, Lcom/google/ads/interactivemedia/v3/internal/zzsq;->$r8$clinit:I

    .line 2
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzsp;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzsp;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/ads/interactivemedia/v3/internal/zzpg;)V

    .line 3
    invoke-static {p3, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzuh;->zzc(Ljava/util/concurrent/Executor;Lcom/google/ads/interactivemedia/v3/internal/zzsr;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static zzf(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/ads/interactivemedia/v3/internal/zzte;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 1
    sget v0, Lcom/google/ads/interactivemedia/v3/internal/zzsx;->$r8$clinit:I

    .line 2
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzsv;

    invoke-direct {v0, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzsv;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/ads/interactivemedia/v3/internal/zzte;)V

    .line 3
    invoke-static {p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzuh;->zzc(Ljava/util/concurrent/Executor;Lcom/google/ads/interactivemedia/v3/internal/zzsr;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static zzg(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/ads/interactivemedia/v3/internal/zzpg;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 1
    sget v0, Lcom/google/ads/interactivemedia/v3/internal/zzsx;->$r8$clinit:I

    .line 2
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzsw;

    invoke-direct {v0, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzsw;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/ads/interactivemedia/v3/internal/zzpg;)V

    .line 3
    invoke-static {p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzuh;->zzc(Ljava/util/concurrent/Executor;Lcom/google/ads/interactivemedia/v3/internal/zzsr;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static varargs zzh([Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/ads/interactivemedia/v3/internal/zztr;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zztr;

    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzqu;->zzl([Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v2, p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zztr;-><init>(ZLcom/google/ads/interactivemedia/v3/internal/zzqu;[B)V

    return-object v0
.end method

.method public static zzi(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/ads/interactivemedia/v3/internal/zztp;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zztq;

    invoke-direct {v0, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zztq;-><init>(Ljava/util/concurrent/Future;Lcom/google/ads/interactivemedia/v3/internal/zztp;)V

    invoke-interface {p0, v0, p2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static zzj(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2
    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 4
    :goto_1
    throw p0

    :catch_0
    move v2, v1

    goto :goto_0

    .line 3
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    const-string p0, "Future was expected to be done: %s"

    .line 5
    invoke-static {p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzps;->zzc(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
