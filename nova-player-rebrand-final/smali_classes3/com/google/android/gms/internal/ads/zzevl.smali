.class public final Lcom/google/android/gms/internal/ads/zzevl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfax;


# instance fields
.field private final zza:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zzb:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zzc:Lcom/google/android/gms/common/util/Clock;

.field private final zzd:Ljava/util/concurrent/Executor;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfax;

.field private final zzf:J

.field private final zzg:Lcom/google/android/gms/internal/ads/zzdxz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfax;JLcom/google/android/gms/common/util/Clock;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzdxz;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzevl;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzevl;->zzc:Lcom/google/android/gms/common/util/Clock;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzevl;->zze:Lcom/google/android/gms/internal/ads/zzfax;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzevl;->zzf:J

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzevl;->zzd:Ljava/util/concurrent/Executor;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzevl;->zzg:Lcom/google/android/gms/internal/ads/zzdxz;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzevl;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 8

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zznk:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzevl;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzevi;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzevi;->zza()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzevl;->zze:Lcom/google/android/gms/internal/ads/zzfax;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzevl;->zzf:J

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzevl;->zzc:Lcom/google/android/gms/common/util/Clock;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzevi;

    .line 5
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzfax;->zza()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzevi;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;JLcom/google/android/gms/common/util/Clock;)V

    .line 6
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_1
    move-object v1, v5

    goto/16 :goto_0

    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zznj:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzevl;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    .line 9
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 10
    sget-object v1, Lcom/google/android/gms/internal/ads/zzcei;->zzd:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzevk;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzevk;-><init>(Lcom/google/android/gms/internal/ads/zzevl;)V

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzevl;->zzf:J

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v5, v3

    .line 11
    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_3
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzevl;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 12
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzevi;

    if-nez v1, :cond_4

    new-instance v1, Lcom/google/android/gms/internal/ads/zzevi;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzevl;->zze:Lcom/google/android/gms/internal/ads/zzfax;

    .line 13
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzfax;->zza()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzevl;->zzf:J

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzevl;->zzc:Lcom/google/android/gms/common/util/Clock;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzevi;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;JLcom/google/android/gms/common/util/Clock;)V

    .line 14
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzevi;->zza:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 15
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 16
    :cond_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzevl;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzevi;->zza()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzevi;->zza:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzevl;->zze:Lcom/google/android/gms/internal/ads/zzfax;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzevl;->zzf:J

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzevl;->zzc:Lcom/google/android/gms/common/util/Clock;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzevi;

    .line 18
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzfax;->zza()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v6

    invoke-direct {v5, v6, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzevi;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;JLcom/google/android/gms/common/util/Clock;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzevl;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 19
    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbhe;->zznl:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 20
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v2

    .line 21
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbhe;->zznm:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 22
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v2

    .line 23
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzevl;->zzg:Lcom/google/android/gms/internal/ads/zzdxz;

    .line 24
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdxz;->zza()Lcom/google/android/gms/internal/ads/zzdxy;

    move-result-object v2

    const-string v3, "action"

    const-string v4, "scs"

    .line 25
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzdxy;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdxy;

    .line 26
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzfax;->zzb()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "sid"

    .line 27
    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzdxy;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdxy;

    .line 28
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdxy;->zzd()V

    :cond_6
    return-object v0

    .line 6
    :cond_7
    :goto_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzevi;->zza:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v0

    .line 16
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final zzb()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzevl;->zze:Lcom/google/android/gms/internal/ads/zzfax;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzfax;->zzb()I

    move-result v0

    return v0
.end method

.method final synthetic zzc()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzevj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzevj;-><init>(Lcom/google/android/gms/internal/ads/zzevl;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzevl;->zzd:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method final synthetic zzd()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzevl;->zze:Lcom/google/android/gms/internal/ads/zzfax;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzevi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzfax;->zza()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzevl;->zzf:J

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzevl;->zzc:Lcom/google/android/gms/common/util/Clock;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzevi;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;JLcom/google/android/gms/common/util/Clock;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzevl;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
