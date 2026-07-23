.class public final Lcom/google/android/gms/internal/ads/zzbfz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzbfo;

.field private zzb:Z

.field private final zzc:Landroid/content/Context;

.field private final zzd:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfz;->zzd:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfz;->zzc:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method final zza(Lcom/google/android/gms/internal/ads/zzbfp;)Ljava/util/concurrent/Future;
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbft;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbft;-><init>(Lcom/google/android/gms/internal/ads/zzbfz;)V

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbfx;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbfx;-><init>(Lcom/google/android/gms/internal/ads/zzbfz;Lcom/google/android/gms/internal/ads/zzbfp;Lcom/google/android/gms/internal/ads/zzcen;)V

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbfy;

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/internal/ads/zzbfy;-><init>(Lcom/google/android/gms/internal/ads/zzbfz;Lcom/google/android/gms/internal/ads/zzcen;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbfz;->zzd:Ljava/lang/Object;

    monitor-enter v2

    .line 4
    :try_start_0
    new-instance v3, Lcom/google/android/gms/internal/ads/zzbfo;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbfz;->zzc:Landroid/content/Context;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzs()Lcom/google/android/gms/ads/internal/util/zzbq;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/ads/internal/util/zzbq;->zza()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v4, v5, v1, p1}, Lcom/google/android/gms/internal/ads/zzbfo;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;)V

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzbfz;->zza:Lcom/google/android/gms/internal/ads/zzbfo;

    .line 6
    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/BaseGmsClient;->checkAvailabilityAndConnect()V

    .line 7
    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method final synthetic zzb()V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfz;->zzd:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfz;->zza:Lcom/google/android/gms/internal/ads/zzbfo;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->disconnect()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfz;->zza:Lcom/google/android/gms/internal/ads/zzbfo;

    .line 2
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    .line 3
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final synthetic zzc()Lcom/google/android/gms/internal/ads/zzbfo;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfz;->zza:Lcom/google/android/gms/internal/ads/zzbfo;

    return-object v0
.end method

.method final synthetic zzd()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbfz;->zzb:Z

    return v0
.end method

.method final synthetic zze(Z)V
    .locals 0

    .line 0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbfz;->zzb:Z

    return-void
.end method

.method final synthetic zzf()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfz;->zzd:Ljava/lang/Object;

    return-object v0
.end method
