.class abstract Lcom/google/ads/interactivemedia/v3/internal/zzsz;
.super Lcom/google/ads/interactivemedia/v3/internal/zztd;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field private zza:Lcom/google/ads/interactivemedia/v3/internal/zzqp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzua;

    const-class v1, Lcom/google/ads/interactivemedia/v3/internal/zzsz;

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzua;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzqp;ZZ)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/google/ads/interactivemedia/v3/internal/zztd;-><init>(I)V

    .line 2
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsz;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzqp;

    return-void
.end method

.method private final zzz(Lcom/google/ads/interactivemedia/v3/internal/zzqp;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zztd;->zzy()I

    move-result p1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Less than 0 remaining futures"

    .line 2
    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzpn;->zze(ZLjava/lang/Object;)V

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zztd;->seenExceptionsField:Ljava/util/Set;

    .line 3
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzsz;->zzf()V

    const/4 p1, 0x2

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzsz;->zzx(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected final zzc()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsz;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzqp;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzsz;->zzx(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzsr;->isCancelled()Z

    move-result v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzsr;->zzj()Z

    move-result v1

    .line 4
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzqp;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzsa;

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
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsz;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzqp;

    if-eqz v0, :cond_0

    const-string v1, "futures="

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2
    :cond_0
    invoke-super {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzsr;->zzd()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zze()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsz;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzqp;

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsz;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzqp;

    .line 2
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzsz;->zzf()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsz;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzqp;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zzsy;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzsy;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzsz;Lcom/google/ads/interactivemedia/v3/internal/zzqp;)V

    .line 4
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzqp;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzsa;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 5
    invoke-interface {v3}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7
    invoke-direct {p0, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzsz;->zzz(Lcom/google/ads/interactivemedia/v3/internal/zzqp;)V

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/google/ads/interactivemedia/v3/internal/zzti;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzti;

    .line 6
    invoke-interface {v3, v1, v4}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method abstract zzf()V
.end method

.method final synthetic zzw(Lcom/google/ads/interactivemedia/v3/internal/zzqp;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzsz;->zzz(Lcom/google/ads/interactivemedia/v3/internal/zzqp;)V

    return-void
.end method

.method zzx(I)V
    .locals 0

    .line 0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsz;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzqp;

    return-void
.end method
