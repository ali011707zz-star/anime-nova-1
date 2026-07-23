.class public final Lcom/google/android/gms/internal/ads/zzpq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzpq;


# instance fields
.field public final zzb:Ljava/lang/String;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzpp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzpq;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzpq;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzpq;

    const-string v1, "preload"

    .line 2
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzpq;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzpq;->zza:Lcom/google/android/gms/internal/ads/zzpq;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzb:Ljava/lang/String;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1f

    if-lt p1, v0, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzpp;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzpp;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzc:Lcom/google/android/gms/internal/ads/zzpp;

    return-void
.end method


# virtual methods
.method public final declared-synchronized zza()Landroid/media/metrics/LogSessionId;
    .locals 1

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzc:Lcom/google/android/gms/internal/ads/zzpp;

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzpp;->zza:Landroid/media/metrics/LogSessionId;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :try_start_1
    throw v0

    .line 1
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzb(Landroid/media/metrics/LogSessionId;)V
    .locals 3

    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzc:Lcom/google/android/gms/internal/ads/zzpp;

    if-eqz v0, :cond_0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzpp;->zza:Landroid/media/metrics/LogSessionId;

    .line 2
    invoke-static {}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$$ExternalSyntheticApiModelOutline0;->m()Landroid/media/metrics/LogSessionId;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$$ExternalSyntheticApiModelOutline1;->m(Landroid/media/metrics/LogSessionId;Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgrc;->zzi(Z)V

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzpp;->zza:Landroid/media/metrics/LogSessionId;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :try_start_1
    throw p1

    .line 2
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
