.class public final Lcom/google/android/gms/internal/ads/zzees;
.super Lcom/google/android/gms/internal/ads/zzeeq;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zzg:Landroid/content/Context;

.field private final zzh:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzeeq;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzees;->zzg:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzees;->zzh:Ljava/util/concurrent/Executor;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzs()Lcom/google/android/gms/ads/internal/util/zzbq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/ads/internal/util/zzbq;->zza()Landroid/os/Looper;

    move-result-object p2

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbyw;

    invoke-direct {v0, p1, p2, p0, p0}, Lcom/google/android/gms/internal/ads/zzbyw;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeeq;->zzf:Lcom/google/android/gms/internal/ads/zzbyw;

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeeq;->zzb:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzeeq;->zzd:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzeeq;->zzd:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeeq;->zzf:Lcom/google/android/gms/internal/ads/zzbyw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbyw;->zzp()Lcom/google/android/gms/internal/ads/zzbzh;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeeq;->zze:Lcom/google/android/gms/internal/ads/zzbzu;

    .line 2
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbhe;->zzou:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v3

    .line 2
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/google/android/gms/internal/ads/zzeep;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzeeq;->zza:Lcom/google/android/gms/internal/ads/zzcen;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzeeq;->zze:Lcom/google/android/gms/internal/ads/zzbzu;

    .line 5
    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzeep;-><init>(Lcom/google/android/gms/internal/ads/zzcen;Lcom/google/android/gms/internal/ads/zzbzu;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 10
    :cond_0
    new-instance v3, Lcom/google/android/gms/internal/ads/zzeeo;

    .line 4
    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzeeo;-><init>(Lcom/google/android/gms/internal/ads/zzeeq;)V

    .line 6
    :goto_0
    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbzh;->zzf(Lcom/google/android/gms/internal/ads/zzbzu;Lcom/google/android/gms/internal/ads/zzbzl;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 7
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcdu;

    move-result-object v2

    const-string v3, "RemoteSignalsClientTask.onConnected"

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzcdu;->zzg(Ljava/lang/Throwable;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeeq;->zza:Lcom/google/android/gms/internal/ads/zzcen;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzeff;

    .line 8
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzeff;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzcen;->zzd(Ljava/lang/Throwable;)Z

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 10
    :catch_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeeq;->zza:Lcom/google/android/gms/internal/ads/zzcen;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzeff;

    .line 9
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzeff;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzcen;->zzd(Ljava/lang/Throwable;)Z

    .line 10
    :cond_1
    :goto_2
    monitor-exit p1

    return-void

    :goto_3
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzbzu;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeeq;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzeeq;->zzc:Z

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeeq;->zza:Lcom/google/android/gms/internal/ads/zzcen;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzeeq;->zzc:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeeq;->zze:Lcom/google/android/gms/internal/ads/zzbzu;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeeq;->zzf:Lcom/google/android/gms/internal/ads/zzbyw;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->checkAvailabilityAndConnect()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeeq;->zza:Lcom/google/android/gms/internal/ads/zzcen;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeer;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzeer;-><init>(Lcom/google/android/gms/internal/ads/zzees;)V

    .line 3
    sget-object v2, Lcom/google/android/gms/internal/ads/zzcei;->zzg:Lcom/google/android/gms/internal/ads/zzgzy;

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzcen;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzees;->zzg:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzees;->zzh:Ljava/util/concurrent/Executor;

    .line 4
    invoke-static {v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzeeq;->zzc(Landroid/content/Context;Lcom/google/common/util/concurrent/ListenableFuture;Ljava/util/concurrent/Executor;)V

    .line 5
    monitor-exit v0

    return-object p1

    .line 6
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
