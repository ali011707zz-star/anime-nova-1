.class final Lcom/google/ads/interactivemedia/v3/internal/zzum;
.super Lcom/google/ads/interactivemedia/v3/internal/zztz;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field final synthetic zza:Lcom/google/ads/interactivemedia/v3/internal/zzun;

.field private final zzb:Ljava/util/concurrent/Callable;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzun;Ljava/util/concurrent/Callable;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzum;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzun;

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zztz;-><init>()V

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzum;->zzb:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method final zza()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzum;->zzb:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final zzc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzum;->zzb:Ljava/util/concurrent/Callable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zzd()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzum;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzun;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzsr;->isDone()Z

    move-result v0

    return v0
.end method

.method final zzf(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzum;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzun;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzsr;->zza(Ljava/lang/Object;)Z

    return-void
.end method

.method final zzg(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzum;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzun;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzsr;->zzb(Ljava/lang/Throwable;)Z

    return-void
.end method
