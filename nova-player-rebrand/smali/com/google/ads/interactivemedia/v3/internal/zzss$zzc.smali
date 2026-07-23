.class final Lcom/google/ads/interactivemedia/v3/internal/zzss$zzc;
.super Lcom/google/ads/interactivemedia/v3/internal/zzss$zza;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    throw v0
.end method

.method synthetic constructor <init>([B)V
    .locals 0

    .line 0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzss$zza;-><init>([B)V

    return-void
.end method


# virtual methods
.method final zza(Lcom/google/ads/interactivemedia/v3/internal/zzss$zze;Ljava/lang/Thread;)V
    .locals 0

    .line 0
    iput-object p2, p1, Lcom/google/ads/interactivemedia/v3/internal/zzss$zze;->thread:Ljava/lang/Thread;

    return-void
.end method

.method final zzb(Lcom/google/ads/interactivemedia/v3/internal/zzss$zze;Lcom/google/ads/interactivemedia/v3/internal/zzss$zze;)V
    .locals 0

    .line 0
    iput-object p2, p1, Lcom/google/ads/interactivemedia/v3/internal/zzss$zze;->next:Lcom/google/ads/interactivemedia/v3/internal/zzss$zze;

    return-void
.end method

.method final zzc(Lcom/google/ads/interactivemedia/v3/internal/zzss;Lcom/google/ads/interactivemedia/v3/internal/zzss$zze;Lcom/google/ads/interactivemedia/v3/internal/zzss$zze;)Z
    .locals 1

    .line 1
    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/zzss;->waitersField:Lcom/google/ads/interactivemedia/v3/internal/zzss$zze;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, Lcom/google/ads/interactivemedia/v3/internal/zzss;->waitersField:Lcom/google/ads/interactivemedia/v3/internal/zzss$zze;

    monitor-exit p1

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p2

    goto :goto_0

    .line 2
    :cond_0
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    .line 3
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method final zzd(Lcom/google/ads/interactivemedia/v3/internal/zzss;Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzd;Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzd;)Z
    .locals 1

    .line 1
    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/zzss;->listenersField:Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzd;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, Lcom/google/ads/interactivemedia/v3/internal/zzss;->listenersField:Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzd;

    monitor-exit p1

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p2

    goto :goto_0

    .line 2
    :cond_0
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    .line 3
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method final zze(Lcom/google/ads/interactivemedia/v3/internal/zzss;Lcom/google/ads/interactivemedia/v3/internal/zzss$zze;)Lcom/google/ads/interactivemedia/v3/internal/zzss$zze;
    .locals 1

    .line 1
    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/zzss;->waitersField:Lcom/google/ads/interactivemedia/v3/internal/zzss$zze;

    if-eq v0, p2, :cond_0

    iput-object p2, p1, Lcom/google/ads/interactivemedia/v3/internal/zzss;->waitersField:Lcom/google/ads/interactivemedia/v3/internal/zzss$zze;

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    return-object v0

    .line 2
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method final zzf(Lcom/google/ads/interactivemedia/v3/internal/zzss;Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzd;)Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzd;
    .locals 1

    .line 1
    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/zzss;->listenersField:Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzd;

    if-eq v0, p2, :cond_0

    iput-object p2, p1, Lcom/google/ads/interactivemedia/v3/internal/zzss;->listenersField:Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzd;

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    return-object v0

    .line 2
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method final zzg(Lcom/google/ads/interactivemedia/v3/internal/zzss;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/zzss;->valueField:Ljava/lang/Object;

    if-ne v0, p2, :cond_0

    .line 3
    iput-object p3, p1, Lcom/google/ads/interactivemedia/v3/internal/zzss;->valueField:Ljava/lang/Object;

    .line 4
    monitor-exit p1

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p2

    goto :goto_0

    .line 5
    :cond_0
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    .line 6
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
