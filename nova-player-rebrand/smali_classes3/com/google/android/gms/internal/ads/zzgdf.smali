.class public final Lcom/google/android/gms/internal/ads/zzgdf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzika;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzika;

.field private final zzc:Ljava/util/concurrent/ExecutorService;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzika;

.field private zze:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzika;Lcom/google/android/gms/internal/ads/zzika;Ljava/util/concurrent/ExecutorService;Lcom/google/android/gms/internal/ads/zzika;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgdf;->zze:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgdf;->zza:Lcom/google/android/gms/internal/ads/zzika;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgdf;->zzb:Lcom/google/android/gms/internal/ads/zzika;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgdf;->zzc:Ljava/util/concurrent/ExecutorService;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzgdf;->zzd:Lcom/google/android/gms/internal/ads/zzika;

    return-void
.end method


# virtual methods
.method public final declared-synchronized zza()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgdf;->zze:Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgdf;->zzb:Lcom/google/android/gms/internal/ads/zzika;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzika;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    new-instance v1, Ljava/util/ArrayList;

    .line 2
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzgdd;

    .line 4
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzgdd;->zza()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgdf;->zzd:Lcom/google/android/gms/internal/ads/zzika;

    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzika;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgoe;

    .line 6
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgzo;->zzm(Ljava/lang/Iterable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgdf;->zzc:Ljava/util/concurrent/ExecutorService;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzgde;->zza:Lcom/google/android/gms/internal/ads/zzgde;

    invoke-static {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzgzo;->zzk(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgqt;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    const/4 v2, 0x2

    .line 7
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzgoe;->zze(ILcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzgdf;->zze:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgdf;->zza:Lcom/google/android/gms/internal/ads/zzika;

    .line 8
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzika;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgdd;

    .line 9
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzgdd;->zza()Lcom/google/common/util/concurrent/ListenableFuture;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgdf;->zze:Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 10
    monitor-exit p0

    return-object v0

    :cond_3
    const/4 v0, 0x0

    .line 11
    :try_start_2
    throw v0

    .line 10
    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzb()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgdf;->zze:Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :try_start_1
    throw v0

    :catchall_0
    move-exception v0

    .line 1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
