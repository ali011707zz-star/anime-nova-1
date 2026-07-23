.class final Lcom/google/android/gms/internal/ads/zzbfj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbfl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbfl;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfj;->zza:Lcom/google/android/gms/internal/ads/zzbfl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfj;->zza:Lcom/google/android/gms/internal/ads/zzbfl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbfl;->zzh()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbfl;->zzi()Lcom/google/android/gms/internal/ads/zzbfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbfl;->zzi()Lcom/google/android/gms/internal/ads/zzbfo;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbfo;->zzq()Lcom/google/android/gms/internal/ads/zzbfr;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbfl;->zzk(Lcom/google/android/gms/internal/ads/zzbfr;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 7
    :try_start_1
    const-string v1, "Unable to obtain a cache service instance."

    .line 3
    sget v2, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    .line 4
    invoke-static {v1, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfj;->zza:Lcom/google/android/gms/internal/ads/zzbfl;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbfl;->zzg()V

    .line 2
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfj;->zza:Lcom/google/android/gms/internal/ads/zzbfl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbfl;->zzh()Ljava/lang/Object;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 7
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final onConnectionSuspended(I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfj;->zza:Lcom/google/android/gms/internal/ads/zzbfl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbfl;->zzh()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbfl;->zzk(Lcom/google/android/gms/internal/ads/zzbfr;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbfl;->zzh()Ljava/lang/Object;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
