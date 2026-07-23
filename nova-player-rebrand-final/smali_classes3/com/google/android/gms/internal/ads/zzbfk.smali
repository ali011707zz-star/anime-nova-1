.class final Lcom/google/android/gms/internal/ads/zzbfk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbfl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbfl;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfk;->zza:Lcom/google/android/gms/internal/ads/zzbfl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfk;->zza:Lcom/google/android/gms/internal/ads/zzbfl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbfl;->zzh()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbfl;->zzk(Lcom/google/android/gms/internal/ads/zzbfr;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbfl;->zzi()Lcom/google/android/gms/internal/ads/zzbfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbfl;->zzj(Lcom/google/android/gms/internal/ads/zzbfo;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbfl;->zzh()Ljava/lang/Object;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 5
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
