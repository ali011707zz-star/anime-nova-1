.class abstract Lcom/google/android/gms/internal/ads/zzgyq;
.super Lcom/google/android/gms/internal/ads/zzgyu;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzgzw;


# instance fields
.field private zzb:Lcom/google/android/gms/internal/ads/zzgub;

.field private final zzc:Z

.field private final zzd:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgzw;

    const-class v1, Lcom/google/android/gms/internal/ads/zzgyq;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgzw;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgyq;->zza:Lcom/google/android/gms/internal/ads/zzgzw;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgub;ZZ)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgyu;-><init>(I)V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgyq;->zzb:Lcom/google/android/gms/internal/ads/zzgub;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzgyq;->zzc:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzgyq;->zzd:Z

    return-void
.end method

.method private final zzD(ILcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-interface {p2}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgyq;->zzb:Lcom/google/android/gms/internal/ads/zzgub;

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgyh;->cancel(Z)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgyq;->zzG(ILjava/util/concurrent/Future;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgyq;->zzH(Lcom/google/android/gms/internal/ads/zzgub;)V

    return-void

    :goto_1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgyq;->zzH(Lcom/google/android/gms/internal/ads/zzgub;)V

    .line 5
    throw p1
.end method

.method private final zzE(Ljava/lang/Throwable;)V
    .locals 1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgyq;->zzc:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgyh;->zzb(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyu;->zzB()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzgyq;->zzI(Ljava/util/Set;Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgyq;->zzF(Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_1
    :goto_0
    instance-of v0, p1, Ljava/lang/Error;

    if-eqz v0, :cond_2

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgyq;->zzF(Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method private static zzF(Ljava/lang/Throwable;)V
    .locals 7

    const/4 v0, 0x1

    .line 1
    instance-of v1, p0, Ljava/lang/Error;

    if-eq v0, v1, :cond_0

    const-string v0, "Got more than one input Future failure. Logging failures after the first"

    :goto_0
    move-object v5, v0

    goto :goto_1

    .line 2
    :cond_0
    const-string v0, "Input Future failed with Error"

    goto :goto_0

    .line 1
    :goto_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgyq;->zza:Lcom/google/android/gms/internal/ads/zzgzw;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgzw;->zza()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "com.google.common.util.concurrent.AggregateFuture"

    const-string v4, "log"

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final zzG(ILjava/util/concurrent/Future;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzhap;->zza(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgyq;->zzw(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 2
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgyq;->zzE(Ljava/lang/Throwable;)V

    return-void

    .line 3
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgyq;->zzE(Ljava/lang/Throwable;)V

    return-void
.end method

.method private final zzH(Lcom/google/android/gms/internal/ads/zzgub;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyu;->zzC()I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Less than 0 remaining futures"

    .line 2
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzgrc;->zzj(ZLjava/lang/Object;)V

    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgub;->zza()Lcom/google/android/gms/internal/ads/zzgwt;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 4
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzgyq;->zzG(ILjava/util/concurrent/Future;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgyu;->seenExceptionsField:Ljava/util/Set;

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyq;->zzx()V

    const/4 p1, 0x2

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgyq;->zzA(I)V

    :cond_3
    return-void
.end method

.method private static zzI(Ljava/util/Set;Ljava/lang/Throwable;)Z
    .locals 1

    :goto_0
    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method zzA(I)V
    .locals 0

    .line 0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgyq;->zzb:Lcom/google/android/gms/internal/ads/zzgub;

    return-void
.end method

.method protected final zzc()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgyq;->zzb:Lcom/google/android/gms/internal/ads/zzgub;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzgyq;->zzA(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyh;->isCancelled()Z

    move-result v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyh;->zzj()Z

    move-result v1

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgub;->zza()Lcom/google/android/gms/internal/ads/zzgwt;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    .line 5
    invoke-interface {v2, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected final zzd()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgyq;->zzb:Lcom/google/android/gms/internal/ads/zzgub;

    if-eqz v0, :cond_0

    const-string v1, "futures="

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2
    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzgyh;->zzd()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zze()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgyq;->zzb:Lcom/google/android/gms/internal/ads/zzgub;

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgyq;->zzb:Lcom/google/android/gms/internal/ads/zzgub;

    .line 2
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyq;->zzx()V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgyq;->zzc:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgyq;->zzb:Lcom/google/android/gms/internal/ads/zzgub;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgub;->zza()Lcom/google/android/gms/internal/ads/zzgwt;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/util/concurrent/ListenableFuture;

    add-int/lit8 v3, v1, 0x1

    .line 5
    invoke-interface {v2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6
    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgyq;->zzD(ILcom/google/common/util/concurrent/ListenableFuture;)V

    goto :goto_1

    :cond_1
    new-instance v4, Lcom/google/android/gms/internal/ads/zzgyp;

    invoke-direct {v4, p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgyp;-><init>(Lcom/google/android/gms/internal/ads/zzgyq;ILcom/google/common/util/concurrent/ListenableFuture;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgzd;->zza:Lcom/google/android/gms/internal/ads/zzgzd;

    .line 7
    invoke-interface {v2, v4, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :goto_1
    move v1, v3

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgyq;->zzb:Lcom/google/android/gms/internal/ads/zzgub;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzgyq;->zzd:Z

    const/4 v2, 0x1

    if-eq v2, v1, :cond_3

    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    move-object v1, v0

    :goto_2
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgyo;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/ads/zzgyo;-><init>(Lcom/google/android/gms/internal/ads/zzgyq;Lcom/google/android/gms/internal/ads/zzgub;)V

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgub;->zza()Lcom/google/android/gms/internal/ads/zzgwt;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 9
    invoke-interface {v3}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 11
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzgyq;->zzH(Lcom/google/android/gms/internal/ads/zzgub;)V

    goto :goto_3

    :cond_4
    sget-object v4, Lcom/google/android/gms/internal/ads/zzgzd;->zza:Lcom/google/android/gms/internal/ads/zzgzd;

    .line 10
    invoke-interface {v3, v2, v4}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_3

    :cond_5
    return-void
.end method

.method final zzf(Ljava/util/Set;)V
    .locals 1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyh;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyh;->zzl()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzgyq;->zzI(Ljava/util/Set;Ljava/lang/Throwable;)Z

    :cond_0
    return-void
.end method

.method abstract zzw(ILjava/lang/Object;)V
.end method

.method abstract zzx()V
.end method

.method final synthetic zzy(ILcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgyq;->zzD(ILcom/google/common/util/concurrent/ListenableFuture;)V

    return-void
.end method

.method final synthetic zzz(Lcom/google/android/gms/internal/ads/zzgub;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgyq;->zzH(Lcom/google/android/gms/internal/ads/zzgub;)V

    return-void
.end method
