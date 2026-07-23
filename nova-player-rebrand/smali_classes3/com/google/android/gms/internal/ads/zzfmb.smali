.class public final Lcom/google/android/gms/internal/ads/zzfmb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzflt;

.field private final zzb:Lcom/google/common/util/concurrent/ListenableFuture;

.field private zzc:Z

.field private zzd:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfkz;Lcom/google/android/gms/internal/ads/zzfls;Lcom/google/android/gms/internal/ads/zzflt;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfmb;->zzc:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfmb;->zzd:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfmb;->zza:Lcom/google/android/gms/internal/ads/zzflt;

    invoke-interface {p2, p3}, Lcom/google/android/gms/internal/ads/zzfls;->zza(Lcom/google/android/gms/internal/ads/zzflt;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfma;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzfma;-><init>(Lcom/google/android/gms/internal/ads/zzfmb;Lcom/google/android/gms/internal/ads/zzfls;Lcom/google/android/gms/internal/ads/zzfkz;Lcom/google/android/gms/internal/ads/zzflt;)V

    .line 2
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzflt;->zza()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 3
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgzo;->zzj(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgyw;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfly;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/ads/zzfly;-><init>(Lcom/google/android/gms/internal/ads/zzfmb;Lcom/google/android/gms/internal/ads/zzfls;)V

    .line 4
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzflt;->zza()Ljava/util/concurrent/Executor;

    move-result-object p2

    const-class p3, Ljava/lang/Exception;

    .line 5
    invoke-static {p1, p3, v0, p2}, Lcom/google/android/gms/internal/ads/zzgzo;->zzh(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgyw;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfmb;->zzb:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method


# virtual methods
.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzgzl;)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfmb;->zza:Lcom/google/android/gms/internal/ads/zzflt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfmb;->zzb:Lcom/google/common/util/concurrent/ListenableFuture;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzflz;->zza:Lcom/google/android/gms/internal/ads/zzflz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzflt;->zza()Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 2
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgzo;->zzj(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgyw;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzflt;->zza()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzgzo;->zzr(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgzl;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzb(Lcom/google/android/gms/internal/ads/zzflt;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfmb;->zzd:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfmb;->zzc:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfmb;->zza:Lcom/google/android/gms/internal/ads/zzflt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzflt;->zzb()Lcom/google/android/gms/internal/ads/zzflj;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzflt;->zzb()Lcom/google/android/gms/internal/ads/zzflj;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzflt;->zzb()Lcom/google/android/gms/internal/ads/zzflj;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzflt;->zzb()Lcom/google/android/gms/internal/ads/zzflj;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfmb;->zzc:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfmb;->zzb:Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 1
    :cond_1
    :goto_0
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method final synthetic zzc(Lcom/google/android/gms/internal/ads/zzfls;Lcom/google/android/gms/internal/ads/zzfkz;Lcom/google/android/gms/internal/ads/zzflt;Lcom/google/android/gms/internal/ads/zzfli;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 1
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfmb;->zzd:Z

    invoke-interface {p1, p4}, Lcom/google/android/gms/internal/ads/zzfls;->zzb(Lcom/google/android/gms/internal/ads/zzfli;)V

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfmb;->zzc:Z

    if-nez p1, :cond_0

    .line 3
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzflt;->zzb()Lcom/google/android/gms/internal/ads/zzflj;

    move-result-object p1

    invoke-interface {p2, p1, p4}, Lcom/google/android/gms/internal/ads/zzfkz;->zzb(Lcom/google/android/gms/internal/ads/zzflj;Lcom/google/android/gms/internal/ads/zzfli;)Z

    const/4 p1, 0x0

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgzo;->zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzflr;

    invoke-direct {p1, p4, p3}, Lcom/google/android/gms/internal/ads/zzflr;-><init>(Lcom/google/android/gms/internal/ads/zzfli;Lcom/google/android/gms/internal/ads/zzflt;)V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgzo;->zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    monitor-exit p0

    return-object p1

    .line 5
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method final synthetic zzd(Lcom/google/android/gms/internal/ads/zzfls;Ljava/lang/Exception;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    .line 1
    monitor-enter p0

    const/4 p1, 0x1

    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfmb;->zzd:Z

    throw p2

    :catchall_0
    move-exception p1

    .line 2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
