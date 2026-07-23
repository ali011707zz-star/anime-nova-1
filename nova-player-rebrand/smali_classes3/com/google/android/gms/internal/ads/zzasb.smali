.class public final Lcom/google/android/gms/internal/ads/zzasb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final zzb:Ljava/util/Set;

.field private final zzc:Ljava/util/concurrent/PriorityBlockingQueue;

.field private final zzd:Ljava/util/concurrent/PriorityBlockingQueue;

.field private final zze:Lcom/google/android/gms/internal/ads/zzari;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzarr;

.field private final zzg:[Lcom/google/android/gms/internal/ads/zzars;

.field private zzh:Lcom/google/android/gms/internal/ads/zzark;

.field private final zzi:Ljava/util/List;

.field private final zzj:Ljava/util/List;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzarp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzari;Lcom/google/android/gms/internal/ads/zzarr;I)V
    .locals 2

    .line 1
    new-instance p3, Lcom/google/android/gms/internal/ads/zzarp;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p3, v0}, Lcom/google/android/gms/internal/ads/zzarp;-><init>(Landroid/os/Handler;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzasb;->zza:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/HashSet;

    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzasb;->zzb:Ljava/util/Set;

    .line 4
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzasb;->zzc:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    .line 5
    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzasb;->zzd:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzasb;->zzi:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzasb;->zzj:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzasb;->zze:Lcom/google/android/gms/internal/ads/zzari;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzasb;->zzf:Lcom/google/android/gms/internal/ads/zzarr;

    const/4 p1, 0x4

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzars;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzasb;->zzg:[Lcom/google/android/gms/internal/ads/zzars;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzasb;->zzk:Lcom/google/android/gms/internal/ads/zzarp;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasb;->zzh:Lcom/google/android/gms/internal/ads/zzark;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzark;->zza()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasb;->zzg:[Lcom/google/android/gms/internal/ads/zzars;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_2

    aget-object v3, v0, v2

    if-eqz v3, :cond_1

    .line 2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzars;->zza()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzasb;->zzc:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzasb;->zzd:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzasb;->zze:Lcom/google/android/gms/internal/ads/zzari;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzasb;->zzk:Lcom/google/android/gms/internal/ads/zzarp;

    .line 3
    new-instance v7, Lcom/google/android/gms/internal/ads/zzark;

    invoke-direct {v7, v2, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzark;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/ads/zzari;Lcom/google/android/gms/internal/ads/zzarp;)V

    iput-object v7, p0, Lcom/google/android/gms/internal/ads/zzasb;->zzh:Lcom/google/android/gms/internal/ads/zzark;

    .line 4
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    :goto_1
    if-ge v1, v3, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzasb;->zzf:Lcom/google/android/gms/internal/ads/zzarr;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzars;

    .line 5
    invoke-direct {v7, v4, v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzars;-><init>(Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/ads/zzarr;Lcom/google/android/gms/internal/ads/zzari;Lcom/google/android/gms/internal/ads/zzarp;)V

    aput-object v7, v0, v1

    .line 6
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzary;)Lcom/google/android/gms/internal/ads/zzary;
    .locals 1

    .line 1
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzary;->zzf(Lcom/google/android/gms/internal/ads/zzasb;)Lcom/google/android/gms/internal/ads/zzary;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasb;->zzb:Ljava/util/Set;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasb;->zza:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzary;->zzg(I)Lcom/google/android/gms/internal/ads/zzary;

    const-string v0, "add-to-queue"

    .line 6
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzary;->zzc(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzasb;->zzd(Lcom/google/android/gms/internal/ads/zzary;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasb;->zzc:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 8
    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    return-object p1

    :catchall_0
    move-exception p1

    .line 3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method final zzc(Lcom/google/android/gms/internal/ads/zzary;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasb;->zzb:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasb;->zzi:Ljava/util/List;

    monitor-enter v1

    .line 3
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x5

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzasb;->zzd(Lcom/google/android/gms/internal/ads/zzary;I)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 3
    :cond_0
    :try_start_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 4
    throw p1

    .line 5
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method final zzd(Lcom/google/android/gms/internal/ads/zzary;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzasb;->zzj:Ljava/util/List;

    monitor-enter p1

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    goto :goto_0

    .line 1
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p2, 0x0

    .line 2
    throw p2

    .line 3
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
