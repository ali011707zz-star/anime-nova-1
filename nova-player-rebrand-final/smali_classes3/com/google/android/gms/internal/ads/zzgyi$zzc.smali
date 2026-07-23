.class final Lcom/google/android/gms/internal/ads/zzgyi$zzc;
.super Lcom/google/android/gms/internal/ads/zzgyi$zza;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# direct methods
.method synthetic constructor <init>([B)V
    .locals 0

    .line 0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgyi$zza;-><init>([B)V

    return-void
.end method


# virtual methods
.method final zza(Lcom/google/android/gms/internal/ads/zzgyi$zze;Ljava/lang/Thread;)V
    .locals 0

    .line 0
    iput-object p2, p1, Lcom/google/android/gms/internal/ads/zzgyi$zze;->thread:Ljava/lang/Thread;

    return-void
.end method

.method final zzb(Lcom/google/android/gms/internal/ads/zzgyi$zze;Lcom/google/android/gms/internal/ads/zzgyi$zze;)V
    .locals 0

    .line 0
    iput-object p2, p1, Lcom/google/android/gms/internal/ads/zzgyi$zze;->next:Lcom/google/android/gms/internal/ads/zzgyi$zze;

    return-void
.end method

.method final zzc(Lcom/google/android/gms/internal/ads/zzgyi;Lcom/google/android/gms/internal/ads/zzgyi$zze;Lcom/google/android/gms/internal/ads/zzgyi$zze;)Z
    .locals 1

    .line 1
    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzgyi;->waitersField:Lcom/google/android/gms/internal/ads/zzgyi$zze;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, Lcom/google/android/gms/internal/ads/zzgyi;->waitersField:Lcom/google/android/gms/internal/ads/zzgyi$zze;

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

.method final zzd(Lcom/google/android/gms/internal/ads/zzgyi;Lcom/google/android/gms/internal/ads/zzgyh$zzd;Lcom/google/android/gms/internal/ads/zzgyh$zzd;)Z
    .locals 1

    .line 1
    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzgyi;->listenersField:Lcom/google/android/gms/internal/ads/zzgyh$zzd;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, Lcom/google/android/gms/internal/ads/zzgyi;->listenersField:Lcom/google/android/gms/internal/ads/zzgyh$zzd;

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

.method final zze(Lcom/google/android/gms/internal/ads/zzgyi;Lcom/google/android/gms/internal/ads/zzgyi$zze;)Lcom/google/android/gms/internal/ads/zzgyi$zze;
    .locals 1

    .line 1
    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzgyi;->waitersField:Lcom/google/android/gms/internal/ads/zzgyi$zze;

    if-eq v0, p2, :cond_0

    iput-object p2, p1, Lcom/google/android/gms/internal/ads/zzgyi;->waitersField:Lcom/google/android/gms/internal/ads/zzgyi$zze;

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

.method final zzf(Lcom/google/android/gms/internal/ads/zzgyi;Lcom/google/android/gms/internal/ads/zzgyh$zzd;)Lcom/google/android/gms/internal/ads/zzgyh$zzd;
    .locals 1

    .line 1
    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzgyi;->listenersField:Lcom/google/android/gms/internal/ads/zzgyh$zzd;

    if-eq v0, p2, :cond_0

    iput-object p2, p1, Lcom/google/android/gms/internal/ads/zzgyi;->listenersField:Lcom/google/android/gms/internal/ads/zzgyh$zzd;

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

.method final zzg(Lcom/google/android/gms/internal/ads/zzgyi;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzgyi;->valueField:Ljava/lang/Object;

    if-ne v0, p2, :cond_0

    .line 3
    iput-object p3, p1, Lcom/google/android/gms/internal/ads/zzgyi;->valueField:Ljava/lang/Object;

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
