.class public final Lcom/google/android/gms/internal/ads/zzczw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdbf;
.implements Lcom/google/android/gms/internal/ads/zzdir;
.implements Lcom/google/android/gms/internal/ads/zzdgh;
.implements Lcom/google/android/gms/internal/ads/zzdbv;
.implements Lcom/google/android/gms/internal/ads/zzbde;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdbx;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzddy;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfir;

.field private final zzd:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zze:Ljava/util/concurrent/Executor;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzhah;

.field private zzg:Ljava/util/concurrent/ScheduledFuture;

.field private final zzh:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final zzi:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdbx;Lcom/google/android/gms/internal/ads/zzfir;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzddy;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhah;->zze()Lcom/google/android/gms/internal/ads/zzhah;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzczw;->zzf:Lcom/google/android/gms/internal/ads/zzhah;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzczw;->zzh:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzczw;->zza:Lcom/google/android/gms/internal/ads/zzdbx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzczw;->zzc:Lcom/google/android/gms/internal/ads/zzfir;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzczw;->zzd:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzczw;->zze:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzczw;->zzi:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzczw;->zzb:Lcom/google/android/gms/internal/ads/zzddy;

    return-void
.end method

.method private final zzl()Z
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczw;->zzi:Ljava/lang/String;

    const-string v1, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final zzd(Lcom/google/android/gms/internal/ads/zzcag;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final declared-synchronized zzdG()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczw;->zzc:Lcom/google/android/gms/internal/ads/zzfir;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfir;->zze:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczw;->zza:Lcom/google/android/gms/internal/ads/zzdbx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdbx;->zza()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczw;->zzf:Lcom/google/android/gms/internal/ads/zzhah;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgyh;->isDone()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzczw;->zzg:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    .line 3
    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 4
    :cond_2
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhah;->zza(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final zzdH()V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzdJ()V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzdj(Lcom/google/android/gms/internal/ads/zzbdd;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzmU:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzczw;->zzl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzbdd;->zzj:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzczw;->zzh:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzczw;->zzc:Lcom/google/android/gms/internal/ads/zzfir;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzfir;->zze:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const-string p1, "Full screen 1px impression occurred"

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzczw;->zza:Lcom/google/android/gms/internal/ads/zzdbx;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdbx;->zza()V

    :cond_0
    return-void
.end method

.method public final zzds()V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzdt()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczw;->zzc:Lcom/google/android/gms/internal/ads/zzfir;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzfir;->zze:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfir;->zzY:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzmU:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzczw;->zzl()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczw;->zza:Lcom/google/android/gms/internal/ads/zzdbx;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdbx;->zza()V

    return-void
.end method

.method public final zze()V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzf()V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzg()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczw;->zzc:Lcom/google/android/gms/internal/ads/zzfir;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzfir;->zze:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczw;->zzb:Lcom/google/android/gms/internal/ads/zzddy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzddy;->zza()V

    return-void

    .line 2
    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhe;->zzcc:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v1

    .line 2
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzfir;->zzY:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfir;->zzq:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczw;->zza:Lcom/google/android/gms/internal/ads/zzdbx;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdbx;->zza()V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzczw;->zzf:Lcom/google/android/gms/internal/ads/zzhah;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzczu;

    .line 5
    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzczu;-><init>(Lcom/google/android/gms/internal/ads/zzczw;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzczw;->zze:Ljava/util/concurrent/Executor;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgzo;->zzr(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgzl;Ljava/util/concurrent/Executor;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzczw;->zzd:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzczv;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzczv;-><init>(Lcom/google/android/gms/internal/ads/zzczw;)V

    int-to-long v3, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 6
    invoke-interface {v1, v2, v3, v4, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzczw;->zzg:Ljava/util/concurrent/ScheduledFuture;

    :cond_3
    :goto_0
    return-void
.end method

.method public final zzh()V
    .locals 0

    .line 0
    return-void
.end method

.method final synthetic zzi()V
    .locals 2

    .line 1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczw;->zzf:Lcom/google/android/gms/internal/ads/zzhah;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgyh;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhah;->zza(Ljava/lang/Object;)Z

    .line 3
    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzj(Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzczw;->zzf:Lcom/google/android/gms/internal/ads/zzhah;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgyh;->isDone()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczw;->zzg:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 2
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/Exception;

    .line 3
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzhah;->zzb(Ljava/lang/Throwable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method final synthetic zzk()Lcom/google/android/gms/internal/ads/zzdbx;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczw;->zza:Lcom/google/android/gms/internal/ads/zzdbx;

    return-object v0
.end method
