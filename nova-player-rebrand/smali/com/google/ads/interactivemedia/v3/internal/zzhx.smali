.class final Lcom/google/ads/interactivemedia/v3/internal/zzhx;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field final synthetic zza:Lcom/google/ads/interactivemedia/v3/internal/zzhy;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzhy;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhx;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzhy;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1

    .line 1
    const-class p1, Lcom/google/ads/interactivemedia/v3/internal/zzhy;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhx;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzhy;

    invoke-virtual {v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzhy;->zzd(Landroid/net/NetworkCapabilities;)V

    .line 2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 2

    .line 1
    const-class p1, Lcom/google/ads/interactivemedia/v3/internal/zzhy;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhx;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzhy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzhy;->zzd(Landroid/net/NetworkCapabilities;)V

    .line 2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
