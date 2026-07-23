.class public final Lcom/google/ads/interactivemedia/v3/internal/zzoq;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field final synthetic zza:Lcom/google/ads/interactivemedia/v3/internal/zzor;

.field private final zzb:[B

.field private zzc:I

.field private zzd:I


# direct methods
.method synthetic constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzor;[B[B)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzoq;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzoq;->zzb:[B

    return-void
.end method


# virtual methods
.method public final declared-synchronized zza()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzoq;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzor;

    iget-boolean v1, v0, Lcom/google/ads/interactivemedia/v3/internal/zzor;->zzb:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/zzor;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzou;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzoq;->zzb:[B

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzou;->zzg([B)V

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzoq;->zzc:I

    .line 2
    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzou;->zzh(I)V

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzoq;->zzd:I

    .line 3
    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzou;->zzi(I)V

    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzou;->zzf([I)V

    .line 5
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzou;->zze()V
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
    const-string v1, "GASS"

    const-string v2, "Clearcut log failed"

    .line 6
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
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

.method public final zzb(I)Lcom/google/ads/interactivemedia/v3/internal/zzoq;
    .locals 0

    .line 0
    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzoq;->zzc:I

    return-object p0
.end method

.method public final zzc(I)Lcom/google/ads/interactivemedia/v3/internal/zzoq;
    .locals 0

    .line 0
    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzoq;->zzd:I

    return-object p0
.end method
