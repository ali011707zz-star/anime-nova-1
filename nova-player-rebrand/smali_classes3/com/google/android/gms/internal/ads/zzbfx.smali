.class final Lcom/google/android/gms/internal/ads/zzbfx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbfp;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzcen;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzbfz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbfz;Lcom/google/android/gms/internal/ads/zzbfp;Lcom/google/android/gms/internal/ads/zzcen;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbfx;->zza:Lcom/google/android/gms/internal/ads/zzbfp;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbfx;->zzb:Lcom/google/android/gms/internal/ads/zzcen;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfx;->zzc:Lcom/google/android/gms/internal/ads/zzbfz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 5

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfx;->zzc:Lcom/google/android/gms/internal/ads/zzbfz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbfz;->zzf()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbfz;->zzd()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 1
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbfz;->zze(Z)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbfz;->zzc()Lcom/google/android/gms/internal/ads/zzbfo;

    move-result-object p1

    if-nez p1, :cond_1

    .line 2
    monitor-exit v0

    return-void

    .line 3
    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzcei;->zza:Lcom/google/android/gms/internal/ads/zzgzy;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbfx;->zza:Lcom/google/android/gms/internal/ads/zzbfp;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbfx;->zzb:Lcom/google/android/gms/internal/ads/zzcen;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzbfw;

    invoke-direct {v4, p0, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbfw;-><init>(Lcom/google/android/gms/internal/ads/zzbfx;Lcom/google/android/gms/internal/ads/zzbfo;Lcom/google/android/gms/internal/ads/zzbfp;Lcom/google/android/gms/internal/ads/zzcen;)V

    .line 4
    invoke-interface {v1, v4}, Lcom/google/android/gms/internal/ads/zzgzy;->zza(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbfv;

    invoke-direct {v1, v3, p1}, Lcom/google/android/gms/internal/ads/zzbfv;-><init>(Lcom/google/android/gms/internal/ads/zzcen;Ljava/util/concurrent/Future;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzcei;->zzg:Lcom/google/android/gms/internal/ads/zzgzy;

    .line 5
    invoke-virtual {v3, v1, p1}, Lcom/google/android/gms/internal/ads/zzcen;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 6
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onConnectionSuspended(I)V
    .locals 0

    .line 0
    return-void
.end method
