.class public final Lcom/google/android/gms/internal/ads/zzcwu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Ljava/util/concurrent/Executor;

.field private final zzb:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzc:Lcom/google/common/util/concurrent/ListenableFuture;

.field private volatile zzd:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcwu;->zzd:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcwu;->zza:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcwu;->zzb:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcwu;->zzc:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzgzl;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcwo;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzcwo;-><init>(Lcom/google/android/gms/internal/ads/zzcwu;Lcom/google/android/gms/internal/ads/zzgzl;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcwu;->zza:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcwu;->zzc:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzgzo;->zzr(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgzl;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final zzb()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcwu;->zzd:Z

    return v0
.end method

.method final synthetic zzc(Lcom/google/android/gms/internal/ads/zzgzl;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzcwf;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    if-eqz p3, :cond_0

    .line 1
    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/ads/zzgzl;->zzb(Ljava/lang/Object;)V

    .line 2
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbjs;->zza:Lcom/google/android/gms/internal/ads/zzbio;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbio;->zze()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcwu;->zzb:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    invoke-static {p2, v0, v1, p3, p1}, Lcom/google/android/gms/internal/ads/zzgzo;->zzi(Lcom/google/common/util/concurrent/ListenableFuture;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzd()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcwu;->zzd:Z

    return-void
.end method

.method final synthetic zze(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzgzl;)V
    .locals 5

    if-eqz p1, :cond_2

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgzo;->zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcwq;

    invoke-direct {v2, p2}, Lcom/google/android/gms/internal/ads/zzcwq;-><init>(Lcom/google/android/gms/internal/ads/zzgzl;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcwu;->zza:Ljava/util/concurrent/Executor;

    const-class v4, Ljava/lang/Throwable;

    .line 5
    invoke-static {v0, v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzgzo;->zzh(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgyw;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcwr;

    invoke-direct {v2, p0, p2, v1}, Lcom/google/android/gms/internal/ads/zzcwr;-><init>(Lcom/google/android/gms/internal/ads/zzcwu;Lcom/google/android/gms/internal/ads/zzgzl;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 6
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzgzo;->zzj(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgyw;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcwp;

    .line 7
    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/internal/ads/zzcwp;-><init>(Lcom/google/android/gms/internal/ads/zzcwu;Lcom/google/android/gms/internal/ads/zzgzl;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcwu;->zza:Ljava/util/concurrent/Executor;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgzo;->zzr(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgzl;Ljava/util/concurrent/Executor;)V

    return-void

    .line 1
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcwu;->zza:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcwt;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzcwt;-><init>(Lcom/google/android/gms/internal/ads/zzgzl;)V

    .line 2
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method final synthetic zzf()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcei;->zzf:Lcom/google/android/gms/internal/ads/zzgzy;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcws;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcws;-><init>(Lcom/google/android/gms/internal/ads/zzcwu;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
