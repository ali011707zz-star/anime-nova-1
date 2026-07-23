.class abstract Lcom/google/ads/interactivemedia/v3/internal/zztg;
.super Lcom/google/ads/interactivemedia/v3/internal/zztz;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field private final zza:Ljava/util/concurrent/Executor;

.field final synthetic zzb:Lcom/google/ads/interactivemedia/v3/internal/zzth;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzth;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zztg;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzth;

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zztz;-><init>()V

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zztg;->zza:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method abstract zzb(Ljava/lang/Object;)V
.end method

.method final zzd()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zztg;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzth;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzsr;->isDone()Z

    move-result v0

    return v0
.end method

.method final zze()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zztg;->zza:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zztg;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzth;

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzsr;->zzb(Ljava/lang/Throwable;)Z

    return-void
.end method

.method final zzf(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zztg;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzth;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzth;->zzz(Lcom/google/ads/interactivemedia/v3/internal/zztg;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zztg;->zzb(Ljava/lang/Object;)V

    return-void
.end method

.method final zzg(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zztg;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzth;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzth;->zzz(Lcom/google/ads/interactivemedia/v3/internal/zztg;)V

    .line 2
    instance-of v1, p1, Ljava/util/concurrent/ExecutionException;

    if-eqz v1, :cond_0

    .line 3
    check-cast p1, Ljava/util/concurrent/ExecutionException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzsr;->zzb(Ljava/lang/Throwable;)Z

    return-void

    .line 4
    :cond_0
    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v1, :cond_1

    const/4 p1, 0x0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzsr;->cancel(Z)Z

    return-void

    .line 6
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzsr;->zzb(Ljava/lang/Throwable;)Z

    return-void
.end method
