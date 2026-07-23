.class public final Lcom/google/android/gms/internal/ads/zzbgh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbgi;

.field private final zzb:[B

.field private zzc:I


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbgi;[B[B)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgh;->zza:Lcom/google/android/gms/internal/ads/zzbgi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbgh;->zzb:[B

    return-void
.end method

.method private final declared-synchronized zzd()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgh;->zza:Lcom/google/android/gms/internal/ads/zzbgi;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzbgi;->zzb:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbgi;->zza:Lcom/google/android/gms/internal/ads/zzbda;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbgh;->zzb:[B

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzbda;->zzh([B)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbgi;->zza:Lcom/google/android/gms/internal/ads/zzbda;

    const/4 v2, 0x0

    .line 2
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzbda;->zzi(I)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbgi;->zza:Lcom/google/android/gms/internal/ads/zzbda;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbgh;->zzc:I

    .line 3
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzbda;->zzj(I)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbgi;->zza:Lcom/google/android/gms/internal/ads/zzbda;

    const/4 v2, 0x0

    .line 4
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzbda;->zzg([I)V

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbgi;->zza:Lcom/google/android/gms/internal/ads/zzbda;

    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbda;->zzf()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :goto_0
    :try_start_1
    const-string v1, "Clearcut log failed"

    .line 6
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized zza()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbgg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbgg;-><init>(Lcom/google/android/gms/internal/ads/zzbgh;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbgh;->zza:Lcom/google/android/gms/internal/ads/zzbgi;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbgi;->zza()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
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

.method public final zzb(I)Lcom/google/android/gms/internal/ads/zzbgh;
    .locals 0

    .line 0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbgh;->zzc:I

    return-object p0
.end method

.method final synthetic zzc()V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgh;->zzd()V

    return-void
.end method
