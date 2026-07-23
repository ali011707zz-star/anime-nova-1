.class public abstract Lcom/google/ads/interactivemedia/v3/internal/zzsr;
.super Lcom/google/ads/interactivemedia/v3/internal/zzss;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/ads/interactivemedia/v3/internal/zzss<",
        "TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzss;-><init>()V

    return-void
.end method

.method private static zze(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;
    .locals 8

    .line 1
    instance-of v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zze;

    const-string v1, "get() did not throw CancellationException, despite reporting isCancelled() == true: "

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p0, Lcom/google/ads/interactivemedia/v3/internal/zzsr;

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzss;->valueField:Ljava/lang/Object;

    instance-of v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zza;

    if-eqz v0, :cond_1

    .line 2
    move-object v0, p0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zza;

    .line 3
    iget-boolean v1, v0, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zza;->zzc:Z

    if-eqz v1, :cond_1

    .line 4
    iget-object p0, v0, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zza;->zzd:Ljava/lang/Throwable;

    if-eqz p0, :cond_0

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zza;

    .line 5
    invoke-direct {v0, v2, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zza;-><init>(ZLjava/lang/Throwable;)V

    move-object p0, v0

    goto :goto_0

    .line 6
    :cond_0
    sget-object p0, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zza;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzsr$zza;

    :cond_1
    :goto_0
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_2
    instance-of v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzuo;

    if-eqz v0, :cond_4

    .line 7
    move-object v0, p0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzuo;

    .line 8
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzuo;->zzl()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 18
    :cond_3
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzc;

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzc;-><init>(Ljava/lang/Throwable;)V

    return-object p0

    .line 9
    :cond_4
    :goto_1
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    sget-boolean v3, Lcom/google/ads/interactivemedia/v3/internal/zzss;->zzg:Z

    xor-int/lit8 v3, v3, 0x1

    and-int/2addr v3, v0

    if-eqz v3, :cond_5

    .line 10
    sget-object p0, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zza;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzsr$zza;

    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 11
    :cond_5
    :try_start_0
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzsr;->zzf(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v0, :cond_6

    .line 12
    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zza;

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x54

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v2, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zza;-><init>(ZLjava/lang/Throwable;)V

    return-object v3

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v3

    goto :goto_3

    :cond_6
    if-nez v3, :cond_7

    sget-object p0, Lcom/google/ads/interactivemedia/v3/internal/zzss;->zze:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    return-object p0

    :cond_7
    return-object v3

    :catch_2
    move-exception p0

    .line 13
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzc;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzc;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    :goto_2
    if-nez v0, :cond_8

    .line 14
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzc;

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "get() threw CancellationException, despite reporting isCancelled() == false: "

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzc;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    .line 15
    :cond_8
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zza;

    invoke-direct {p0, v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zza;-><init>(ZLjava/lang/Throwable;)V

    return-object p0

    :goto_3
    if-eqz v0, :cond_9

    .line 16
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zza;

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v0, v2, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zza;-><init>(ZLjava/lang/Throwable;)V

    return-object v0

    .line 17
    :cond_9
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzc;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzc;-><init>(Ljava/lang/Throwable;)V

    return-object p0
.end method

.method private static zzf(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 1
    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 3
    :goto_1
    throw p0

    :catch_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static zzg(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    instance-of v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zza;

    if-nez v0, :cond_2

    .line 5
    instance-of v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzc;

    if-nez v0, :cond_1

    .line 8
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzss;->zze:Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0

    .line 6
    :cond_1
    check-cast p0, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzc;

    .line 7
    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzc;->zzb:Ljava/lang/Throwable;

    .line 8
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 1
    :cond_2
    check-cast p0, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zza;

    .line 2
    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zza;->zzd:Ljava/lang/Throwable;

    .line 3
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Task was cancelled."

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 5
    throw v0
.end method

.method static zzh(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    instance-of p0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzb;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic zzn(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzsr;->zze(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzo(Lcom/google/ads/interactivemedia/v3/internal/zzsr;Z)V
    .locals 0

    .line 0
    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzsr;->zzw(Lcom/google/ads/interactivemedia/v3/internal/zzsr;Z)V

    return-void
.end method

.method private static zzw(Lcom/google/ads/interactivemedia/v3/internal/zzsr;Z)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzss;->zzs()V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzsr;->zzi()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzsr;->zzc()V

    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzd;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzd;

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzss;->zzq(Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzd;)Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzd;

    move-result-object p0

    move-object v2, v0

    move-object v0, p0

    move-object p0, v2

    :goto_1
    if-eqz v0, :cond_1

    iget-object p1, v0, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzd;->next:Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzd;

    iput-object p0, v0, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzd;->next:Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzd;

    move-object p0, v0

    move-object v0, p1

    goto :goto_1

    :cond_1
    :goto_2
    if-eqz p0, :cond_4

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzd;->zzb:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzd;->next:Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzd;

    .line 5
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Runnable;

    instance-of v1, p1, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzb;

    if-eqz v1, :cond_2

    .line 6
    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzb;

    .line 7
    iget-object p0, p1, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzb;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzsr;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzss;->valueField:Ljava/lang/Object;

    if-ne v1, p1, :cond_3

    .line 8
    iget-object v1, p1, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzb;->zzb:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzsr;->zze(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v1

    .line 9
    invoke-static {p0, p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzss;->zzr(Lcom/google/ads/interactivemedia/v3/internal/zzss;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzd;->zzc:Ljava/util/concurrent/Executor;

    .line 10
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/Executor;

    invoke-static {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzsr;->zzy(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_3
    move-object p0, v0

    goto :goto_2

    :cond_4
    return-void
.end method

.method private final zzx(Ljava/lang/StringBuilder;)V
    .locals 3

    .line 1
    const-string v0, "]"

    :try_start_0
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzsr;->zzf(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "SUCCESS, result=["

    .line 2
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_0

    const-string v1, "null"

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2

    :cond_0
    if-ne v1, p0, :cond_1

    .line 8
    const-string v1, "this future"

    .line 4
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@"

    .line 6
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 10
    :goto_1
    const-string v1, "UNKNOWN, cause=["

    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " thrown from get()]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 11
    :catch_2
    const-string v0, "CANCELLED"

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 7
    :goto_2
    const-string v2, "FAILURE, cause=["

    .line 11
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static zzy(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 6

    .line 1
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object v5, v0

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzss;->zzf:Lcom/google/ads/interactivemedia/v3/internal/zzua;

    .line 2
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzua;->zza()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x39

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "RuntimeException while executing runnable "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " with executor "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v2, "com.google.common.util.concurrent.AbstractFuture"

    const-string v3, "executeListener"

    .line 3
    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 3

    .line 1
    const-string v0, "Runnable was null."

    invoke-static {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzpn;->zzf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Executor was null."

    .line 2
    invoke-static {p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzpn;->zzf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzsr;->isDone()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzss;->listenersField:Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzd;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzd;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzd;

    if-eq v0, v1, :cond_2

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzd;

    invoke-direct {v1, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzd;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_0
    iput-object v0, v1, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzd;->next:Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzd;

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzss;->zzp(Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzd;Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzd;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzss;->listenersField:Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzd;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzd;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzd;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_1
    return-void

    .line 5
    :cond_2
    :goto_0
    invoke-static {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzsr;->zzy(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public cancel(Z)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzss;->valueField:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzb;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    or-int/2addr v1, v4

    if-eqz v1, :cond_9

    sget-boolean v1, Lcom/google/ads/interactivemedia/v3/internal/zzss;->zzg:Z

    if-eqz v1, :cond_1

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zza;

    new-instance v4, Ljava/util/concurrent/CancellationException;

    const-string v5, "Future.cancel() was called."

    invoke-direct {v4, v5}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, p1, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zza;-><init>(ZLjava/lang/Throwable;)V

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_2

    .line 2
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zza;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzsr$zza;

    goto :goto_1

    .line 3
    :cond_2
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zza;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzsr$zza;

    .line 4
    :goto_1
    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    move-object v4, p0

    move v5, v2

    .line 5
    :cond_3
    :goto_3
    invoke-static {v4, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzss;->zzr(Lcom/google/ads/interactivemedia/v3/internal/zzss;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 6
    invoke-static {v4, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzsr;->zzw(Lcom/google/ads/interactivemedia/v3/internal/zzsr;Z)V

    instance-of v4, v0, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzb;

    if-eqz v4, :cond_7

    .line 7
    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzb;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzb;->zzb:Lcom/google/common/util/concurrent/ListenableFuture;

    instance-of v4, v0, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zze;

    if-eqz v4, :cond_6

    .line 8
    move-object v4, v0

    check-cast v4, Lcom/google/ads/interactivemedia/v3/internal/zzsr;

    iget-object v0, v4, Lcom/google/ads/interactivemedia/v3/internal/zzss;->valueField:Ljava/lang/Object;

    if-nez v0, :cond_4

    move v5, v3

    goto :goto_4

    :cond_4
    move v5, v2

    :goto_4
    instance-of v6, v0, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzb;

    or-int/2addr v5, v6

    if-eqz v5, :cond_5

    move v5, v3

    goto :goto_3

    :cond_5
    return v3

    .line 9
    :cond_6
    invoke-interface {v0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_7
    return v3

    :cond_8
    iget-object v0, v4, Lcom/google/ads/interactivemedia/v3/internal/zzss;->valueField:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzsr;->zzh(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    return v5

    :cond_9
    return v2
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzss;->zzu()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzss;->zzt(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isCancelled()Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzss;->valueField:Ljava/lang/Object;

    instance-of v0, v0, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zza;

    return v0
.end method

.method public isDone()Z
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzss;->valueField:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzsr;->zzh(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.common.util.concurrent."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/16 v1, 0x40

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzsr;->isCancelled()Z

    move-result v1

    const-string v2, "]"

    if-eqz v1, :cond_1

    const-string v1, "CANCELLED"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzsr;->isDone()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 25
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzsr;->zzx(Ljava/lang/StringBuilder;)V

    goto/16 :goto_5

    .line 9
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const-string v3, "PENDING"

    .line 10
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzss;->valueField:Ljava/lang/Object;

    instance-of v4, v3, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzb;

    const-string v5, "Exception thrown from implementation: "

    if-eqz v4, :cond_4

    const-string v4, ", setFuture=["

    .line 11
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    check-cast v3, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzb;

    iget-object v3, v3, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzb;->zzb:Lcom/google/common/util/concurrent/ListenableFuture;

    if-ne v3, p0, :cond_3

    :try_start_0
    const-string v3, "this future"

    .line 13
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :catchall_0
    move-exception v3

    goto :goto_1

    .line 14
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 15
    :goto_1
    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzui;->zzb(Ljava/lang/Throwable;)V

    .line 16
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 18
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzsr;->zzd()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzps;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v3

    .line 19
    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzui;->zzb(Ljava/lang/Throwable;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 20
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_3
    if-eqz v3, :cond_5

    .line 18
    const-string v4, ", info=["

    .line 21
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    :cond_5
    :goto_4
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzsr;->isDone()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzsr;->zzx(Ljava/lang/StringBuilder;)V

    .line 26
    :cond_6
    :goto_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected zza(Ljava/lang/Object;)Z
    .locals 1

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/zzss;->zze:Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzss;->zzr(Lcom/google/ads/interactivemedia/v3/internal/zzss;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2
    invoke-static {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzsr;->zzw(Lcom/google/ads/interactivemedia/v3/internal/zzsr;Z)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method protected zzb(Ljava/lang/Throwable;)Z
    .locals 1

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzc;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzc;-><init>(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzss;->zzr(Lcom/google/ads/interactivemedia/v3/internal/zzss;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3
    invoke-static {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzsr;->zzw(Lcom/google/ads/interactivemedia/v3/internal/zzsr;Z)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method protected zzc()V
    .locals 0

    .line 0
    return-void
.end method

.method protected zzd()Ljava/lang/String;
    .locals 4

    .line 1
    instance-of v0, p0, Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x15

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "remaining delay=["

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected zzi()V
    .locals 0

    .line 0
    return-void
.end method

.method protected final zzj()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzss;->valueField:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zza;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zza;

    iget-boolean v0, v0, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zza;->zzc:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final zzk(Lcom/google/common/util/concurrent/ListenableFuture;)Z
    .locals 4

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzss;->valueField:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzsr;->zze(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    invoke-static {p0, v3, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzss;->zzr(Lcom/google/ads/interactivemedia/v3/internal/zzss;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-static {p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzsr;->zzw(Lcom/google/ads/interactivemedia/v3/internal/zzsr;Z)V

    return v2

    :cond_0
    return v1

    :cond_1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzb;

    invoke-direct {v0, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzb;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzsr;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 5
    invoke-static {p0, v3, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzss;->zzr(Lcom/google/ads/interactivemedia/v3/internal/zzss;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :try_start_0
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/zzti;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzti;

    .line 6
    invoke-interface {p1, v0, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzc;

    invoke-direct {v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzc;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 8
    :catch_0
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzc;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzc;

    .line 9
    :goto_0
    invoke-static {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzss;->zzr(Lcom/google/ads/interactivemedia/v3/internal/zzss;Ljava/lang/Object;Ljava/lang/Object;)Z

    :goto_1
    return v2

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzss;->valueField:Ljava/lang/Object;

    :cond_3
    instance-of v2, v0, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zza;

    if-eqz v2, :cond_4

    .line 10
    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zza;

    iget-boolean v0, v0, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zza;->zzc:Z

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_4
    return v1
.end method

.method protected final zzl()Ljava/lang/Throwable;
    .locals 2

    .line 1
    instance-of v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zze;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzss;->valueField:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzc;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzc;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzc;->zzb:Ljava/lang/Throwable;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method final zzm(Ljava/util/concurrent/Future;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzsr;->isCancelled()Z

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzsr;->zzj()Z

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_1
    return-void
.end method
