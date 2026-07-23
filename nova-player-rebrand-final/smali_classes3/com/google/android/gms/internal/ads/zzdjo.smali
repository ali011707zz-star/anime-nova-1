.class public final Lcom/google/android/gms/internal/ads/zzdjo;
.super Lcom/google/android/gms/internal/ads/zzdhd;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdhd;-><init>(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized zza()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdjn;->zza:Lcom/google/android/gms/internal/ads/zzdjn;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdhd;->zzs(Lcom/google/android/gms/internal/ads/zzdhc;)V
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
