.class final Lcom/google/ads/interactivemedia/v3/internal/zztf;
.super Lcom/google/ads/interactivemedia/v3/internal/zztg;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field final synthetic zza:Lcom/google/ads/interactivemedia/v3/internal/zzth;

.field private final zzc:Ljava/util/concurrent/Callable;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzth;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zztf;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzth;

    .line 2
    invoke-direct {p0, p1, p3}, Lcom/google/ads/interactivemedia/v3/internal/zztg;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzth;Ljava/util/concurrent/Executor;)V

    .line 3
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zztf;->zzc:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method final zza()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zztf;->zzc:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final zzb(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zztf;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzth;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzsr;->zza(Ljava/lang/Object;)Z

    return-void
.end method

.method final zzc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zztf;->zzc:Ljava/util/concurrent/Callable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
