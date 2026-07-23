.class public final Lcom/google/android/gms/internal/ads/zzme;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Ljava/lang/Object;

.field private zzb:Landroid/os/Looper;

.field private zzc:Landroid/os/HandlerThread;

.field private zzd:I


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzme;->zza:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzme;->zzb:Landroid/os/Looper;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzme;->zzc:Landroid/os/HandlerThread;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzme;->zzd:I

    return-void
.end method


# virtual methods
.method public final zza()Landroid/os/Looper;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzme;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzme;->zzb:Landroid/os/Looper;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzme;->zzd:I

    const/4 v3, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzme;->zzc:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    move v3, v2

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzgrc;->zzi(Z)V

    new-instance v1, Landroid/os/HandlerThread;

    const-string v3, "ExoPlayer:Playback"

    const/16 v4, -0x10

    .line 2
    invoke-direct {v1, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzme;->zzc:Landroid/os/HandlerThread;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzme;->zzc:Landroid/os/HandlerThread;

    .line 4
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzme;->zzb:Landroid/os/Looper;

    :cond_1
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzme;->zzd:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzme;->zzd:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzme;->zzb:Landroid/os/Looper;

    .line 5
    monitor-exit v0

    return-object v1

    .line 6
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzb()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzme;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzme;->zzd:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgrc;->zzi(Z)V

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzme;->zzd:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzme;->zzd:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzme;->zzc:Landroid/os/HandlerThread;

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzme;->zzc:Landroid/os/HandlerThread;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzme;->zzb:Landroid/os/Looper;

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    .line 3
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
