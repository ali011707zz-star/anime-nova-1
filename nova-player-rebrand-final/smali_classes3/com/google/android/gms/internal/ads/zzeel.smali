.class public final Lcom/google/android/gms/internal/ads/zzeel;
.super Lcom/google/android/gms/internal/ads/zzeeq;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zzg:Landroid/content/Context;

.field private final zzh:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzeek;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzeek;Lcom/google/android/gms/internal/ads/zzbyx;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzeeq;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeel;->zzg:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeel;->zzh:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeel;->zzi:Lcom/google/android/gms/internal/ads/zzeek;

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeeq;->zzb:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzeeq;->zzd:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzeeq;->zzd:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeeq;->zzf:Lcom/google/android/gms/internal/ads/zzbyw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbyw;->zzp()Lcom/google/android/gms/internal/ads/zzbzh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeel;->zzh:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    .line 2
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbzh;->zzi(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeel;->zzi:Lcom/google/android/gms/internal/ads/zzeek;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzeek;->zza()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 5
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeel;->zzi:Lcom/google/android/gms/internal/ads/zzeek;

    .line 4
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzeek;->zzb(Landroid/os/RemoteException;)V

    .line 5
    :cond_0
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzeeq;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 2
    new-instance v0, Landroid/os/RemoteException;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Connection failed: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeel;->zzi:Lcom/google/android/gms/internal/ads/zzeek;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzeek;->zzb(Landroid/os/RemoteException;)V

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 3

    .line 1
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string v0, "Cannot connect to remote service, fallback to local instance."

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzd(Ljava/lang/String;)V

    .line 3
    new-instance v0, Landroid/os/RemoteException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x21

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Connection suspended with cause: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeel;->zzi:Lcom/google/android/gms/internal/ads/zzeek;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzeek;->zzb(Landroid/os/RemoteException;)V

    return-void
.end method

.method public final zza()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeeq;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzeeq;->zzc:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzeeq;->zzc:Z

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzs()Lcom/google/android/gms/ads/internal/util/zzbq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/util/zzbq;->zza()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeel;->zzg:Landroid/content/Context;

    .line 3
    new-instance v3, Lcom/google/android/gms/internal/ads/zzbyw;

    invoke-direct {v3, v2, v1, p0, p0}, Lcom/google/android/gms/internal/ads/zzbyw;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;)V

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzeeq;->zzf:Lcom/google/android/gms/internal/ads/zzbyw;

    .line 4
    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/BaseGmsClient;->checkAvailabilityAndConnect()V

    .line 5
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
