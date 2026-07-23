.class final Lcom/google/ads/interactivemedia/v3/internal/zzrb;
.super Lcom/google/ads/interactivemedia/v3/internal/zzqy;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field final synthetic zza:Lcom/google/ads/interactivemedia/v3/internal/zzrc;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzrc;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrb;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzrc;

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzqy;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzqp;->zze()Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzqu;->zzn(I)Lcom/google/ads/interactivemedia/v3/internal/zzsb;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Lcom/google/ads/interactivemedia/v3/internal/zzsa;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzqp;->zze()Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzqu;->zzn(I)Lcom/google/ads/interactivemedia/v3/internal/zzsb;

    move-result-object v0

    return-object v0
.end method

.method final zzh()Lcom/google/ads/interactivemedia/v3/internal/zzqx;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrb;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzrc;

    return-object v0
.end method

.method final zzm()Lcom/google/ads/interactivemedia/v3/internal/zzqu;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzra;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzra;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzrb;)V

    return-object v0
.end method
