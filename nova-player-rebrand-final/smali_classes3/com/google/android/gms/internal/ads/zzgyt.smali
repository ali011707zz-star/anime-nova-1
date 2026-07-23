.class final Lcom/google/android/gms/internal/ads/zzgyt;
.super Lcom/google/android/gms/internal/ads/zzgyr;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# direct methods
.method synthetic constructor <init>([B)V
    .locals 0

    .line 0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgyr;-><init>([B)V

    return-void
.end method


# virtual methods
.method final zza(Lcom/google/android/gms/internal/ads/zzgyu;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    .line 1
    monitor-enter p1

    :try_start_0
    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzgyu;->seenExceptionsField:Ljava/util/Set;

    if-nez p2, :cond_0

    iput-object p3, p1, Lcom/google/android/gms/internal/ads/zzgyu;->seenExceptionsField:Ljava/util/Set;

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method final zzb(Lcom/google/android/gms/internal/ads/zzgyu;)I
    .locals 1

    .line 1
    monitor-enter p1

    :try_start_0
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzgyu;->remainingField:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/google/android/gms/internal/ads/zzgyu;->remainingField:I

    monitor-exit p1

    return v0

    :catchall_0
    move-exception v0

    .line 2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
