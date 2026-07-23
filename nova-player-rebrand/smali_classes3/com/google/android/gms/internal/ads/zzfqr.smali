.class public final Lcom/google/android/gms/internal/ads/zzfqr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field final zza:Ljava/util/Map;

.field final zzb:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final zzc:I

.field private final zzd:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private zze:Ljava/util/concurrent/ScheduledFuture;

.field private final zzf:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzfrf;

.field private final zzh:Lcom/google/android/gms/common/util/Clock;


# direct methods
.method public constructor <init>(ILjava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzfrf;Lcom/google/android/gms/common/util/Clock;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqr;->zzd:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqr;->zza:Ljava/util/Map;

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfqr;->zzc:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfqr;->zzf:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfqr;->zzg:Lcom/google/android/gms/internal/ads/zzfrf;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfqr;->zzh:Lcom/google/android/gms/common/util/Clock;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    invoke-direct {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfqr;->zzb:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private static zzl(Ljava/lang/String;Lcom/google/android/gms/ads/AdFormat;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x2

    .line 1
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const-string p0, "%s:%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final zzm(Lcom/google/android/gms/internal/ads/zzfsa;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfsa;->zzo()Lcom/google/android/gms/ads/AdFormat;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfqr;->zza:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfsa;->zzn()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzfqr;->zzl(Ljava/lang/String;Lcom/google/android/gms/ads/AdFormat;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    monitor-exit v2

    return v1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 5
    :cond_1
    monitor-exit v2

    const/4 p1, 0x0

    return p1

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private final zzn()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqr;->zza:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfsa;

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfsa;->zzp()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfsa;->zzq()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    goto :goto_0

    .line 4
    :cond_1
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private final declared-synchronized zzo(J)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqr;->zzb:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqr;->zzf:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfqn;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzfqn;-><init>(Lcom/google/android/gms/internal/ads/zzfqr;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    invoke-interface {v0, v1, p1, p2, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfqr;->zze:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfqr;->zzf:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfqm;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzfqm;-><init>(Lcom/google/android/gms/internal/ads/zzfqr;)V

    .line 3
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private final declared-synchronized zzp()V
    .locals 14

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqr;->zzd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqr;->zze:Ljava/util/concurrent/ScheduledFuture;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfqr;->zzf()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfqr;->zzc:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfqr;->zzn()Z

    move-result v1

    if-nez v1, :cond_1

    .line 28
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfqr;->zzr()V

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    .line 29
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfqr;->zza:Ljava/util/Map;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    :try_start_2
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzguf;->zzq(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object v2

    .line 4
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5
    :try_start_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move v6, v3

    :goto_0
    if-ge v6, v1, :cond_5

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 6
    check-cast v7, Lcom/google/android/gms/internal/ads/zzfsa;

    .line 7
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzfsa;->zzq()Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzfsa;->zzp()I

    move-result v8

    iget-object v9, v7, Lcom/google/android/gms/internal/ads/zzfsa;->zze:Lcom/google/android/gms/ads/internal/client/zzft;

    .line 9
    iget v9, v9, Lcom/google/android/gms/ads/internal/client/zzft;->zzd:I

    int-to-double v10, v8

    int-to-double v8, v9

    div-double/2addr v10, v8

    cmpg-double v8, v10, v4

    if-gez v8, :cond_3

    move-wide v4, v10

    :cond_3
    if-gez v8, :cond_4

    move-object v0, v7

    :cond_4
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    if-eqz v0, :cond_6

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfsa;->zze()V

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfsa;->zzp()I

    move-result v1

    if-lez v1, :cond_6

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfqr;->zzg:Lcom/google/android/gms/internal/ads/zzfrf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfqr;->zzh:Lcom/google/android/gms/common/util/Clock;

    .line 12
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfsa;->zzn()Ljava/lang/String;

    move-result-object v7

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfsa;->zze:Lcom/google/android/gms/ads/internal/client/zzft;

    .line 13
    iget-object v8, v1, Lcom/google/android/gms/ads/internal/client/zzft;->zza:Ljava/lang/String;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfsa;->zzo()Lcom/google/android/gms/ads/AdFormat;

    move-result-object v9

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfsa;->zze:Lcom/google/android/gms/ads/internal/client/zzft;

    .line 15
    iget v10, v1, Lcom/google/android/gms/ads/internal/client/zzft;->zzd:I

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfsa;->zzp()I

    move-result v11

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfqr;->zzf()I

    move-result v12

    iget v13, p0, Lcom/google/android/gms/internal/ads/zzfqr;->zzc:I

    .line 18
    invoke-virtual/range {v4 .. v13}, Lcom/google/android/gms/internal/ads/zzfrf;->zzq(JLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/AdFormat;IIII)V

    .line 19
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfqr;->zzf()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfqr;->zzc:I

    if-lt v0, v1, :cond_7

    .line 20
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfqr;->zzr()V

    .line 21
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfqr;->zzf()I

    move-result v0

    if-lt v0, v1, :cond_9

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfqr;->zzn()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_3

    .line 28
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqr;->zzb:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    .line 22
    :cond_9
    :goto_3
    :try_start_4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfqr;->zzn()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqr;->zzf:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfqp;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzfqp;-><init>(Lcom/google/android/gms/internal/ads/zzfqr;)V

    .line 23
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :cond_a
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqr;->zzf:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfqo;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzfqo;-><init>(Lcom/google/android/gms/internal/ads/zzfqr;)V

    .line 24
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbhe;->zzV:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 25
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v2

    .line 26
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 27
    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqr;->zze:Ljava/util/concurrent/ScheduledFuture;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    .line 4
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0

    .line 27
    :goto_4
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0
.end method

.method private final declared-synchronized zzq()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqr;->zzd:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfqr;->zzp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private final zzr()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqr;->zza:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqr;->zzg:Lcom/google/android/gms/internal/ads/zzfrf;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfqr;->zzh:Lcom/google/android/gms/common/util/Clock;

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzfqr;->zzc:I

    .line 3
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    .line 4
    invoke-virtual {v0, v4, v5, v3, v1}, Lcom/google/android/gms/internal/ads/zzfrf;->zzs(JII)V

    return-void

    :catchall_0
    move-exception v1

    .line 2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private final zzs(Lcom/google/android/gms/internal/ads/zzfsa;I)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqr;->zzh:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfsa;->zzn()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfsa;->zze:Lcom/google/android/gms/ads/internal/client/zzft;

    .line 2
    iget-object v5, v0, Lcom/google/android/gms/ads/internal/client/zzft;->zza:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfsa;->zzo()Lcom/google/android/gms/ads/AdFormat;

    move-result-object v6

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfsa;->zze:Lcom/google/android/gms/ads/internal/client/zzft;

    .line 4
    iget v7, v0, Lcom/google/android/gms/ads/internal/client/zzft;->zzd:I

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfsa;->zzp()I

    move-result v8

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfqr;->zzf()I

    move-result v10

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfqr;->zzg:Lcom/google/android/gms/internal/ads/zzfrf;

    iget v11, p0, Lcom/google/android/gms/internal/ads/zzfqr;->zzc:I

    move v9, p2

    .line 7
    invoke-virtual/range {v1 .. v11}, Lcom/google/android/gms/internal/ads/zzfrf;->zzr(JLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/AdFormat;IIIII)V

    return-void
.end method

.method private final declared-synchronized zzt(Lcom/google/android/gms/internal/ads/zzfsa;)Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqr;->zzd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfsa;->zzp()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfsa;->zzq()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfsa;->zze()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 1
    :cond_1
    :goto_0
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private static final zzu(Lcom/google/android/gms/internal/ads/zzfsa;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfsa;->zzp()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfsa;->zzt()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 p0, 0x0

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfsa;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfsa;->zzp()I

    move-result v0

    const/4 v1, 0x1

    if-gtz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfsa;->zzt()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzfqr;->zzc(Lcom/google/android/gms/internal/ads/zzfsa;I)V

    return-void
.end method

.method public final declared-synchronized zzb(Lcom/google/android/gms/internal/ads/zzfsa;)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfqr;->zzm(Lcom/google/android/gms/internal/ads/zzfsa;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfsa;->zzy()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_4

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfsa;->zzp()I

    move-result v2

    const/4 v3, 0x1

    if-gtz v2, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfsa;->zzt()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/zzfqr;->zzs(Lcom/google/android/gms/internal/ads/zzfsa;I)V

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfqr;->zzd:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfqr;->zze:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p1, :cond_3

    const/4 v2, 0x0

    .line 6
    invoke-interface {p1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_3
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfqr;->zze:Ljava/util/concurrent/ScheduledFuture;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfqr;->zzb:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfqr;->zzf:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfqq;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzfqq;-><init>(Lcom/google/android/gms/internal/ads/zzfqr;)V

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 8
    invoke-interface {p1, v2, v0, v1, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfqr;->zze:Ljava/util/concurrent/ScheduledFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 9
    :cond_4
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfqr;->zza(Lcom/google/android/gms/internal/ads/zzfsa;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzfsa;I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfqr;->zzm(Lcom/google/android/gms/internal/ads/zzfsa;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-lez p2, :cond_1

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfqr;->zzs(Lcom/google/android/gms/internal/ads/zzfsa;I)V

    .line 3
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfqr;->zzt(Lcom/google/android/gms/internal/ads/zzfsa;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbhe;->zzU:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfqr;->zzo(J)V

    return-void

    :cond_2
    const-wide/16 p1, 0x0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfqr;->zzo(J)V

    return-void
.end method

.method public final zzd(Ljava/lang/String;Lcom/google/android/gms/ads/AdFormat;Lcom/google/android/gms/internal/ads/zzfsa;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqr;->zza:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzfqr;->zzl(Ljava/lang/String;Lcom/google/android/gms/ads/AdFormat;)Ljava/lang/String;

    move-result-object p1

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 3
    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzfqr;->zzt(Lcom/google/android/gms/internal/ads/zzfsa;)Z

    .line 5
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbhe;->zzU:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfqr;->zzo(J)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 7
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zze(Ljava/lang/String;Lcom/google/android/gms/ads/AdFormat;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqr;->zza:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzfqr;->zzl(Ljava/lang/String;Lcom/google/android/gms/ads/AdFormat;)Ljava/lang/String;

    move-result-object p1

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfsa;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfqr;->zzu(Lcom/google/android/gms/internal/ads/zzfsa;)I

    move-result p2

    if-lez p2, :cond_1

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfqr;->zzs(Lcom/google/android/gms/internal/ads/zzfsa;I)V

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfsa;->zzp()I

    move-result p2

    if-gtz p2, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfsa;->zzt()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    const-wide/16 p1, 0x0

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfqr;->zzo(J)V

    return-void

    :catchall_0
    move-exception p1

    .line 3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method final zzf()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqr;->zza:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzfsa;

    .line 2
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzfqr;->zzu(Lcom/google/android/gms/internal/ads/zzfsa;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 3
    :cond_0
    monitor-exit v0

    return v2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final synthetic zzg()V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfqr;->zzq()V

    return-void
.end method

.method final synthetic zzh()V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfqr;->zzp()V

    return-void
.end method

.method final synthetic zzi()V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfqr;->zzp()V

    return-void
.end method

.method final synthetic zzj()V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfqr;->zzp()V

    return-void
.end method

.method final synthetic zzk()V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfqr;->zzp()V

    return-void
.end method
