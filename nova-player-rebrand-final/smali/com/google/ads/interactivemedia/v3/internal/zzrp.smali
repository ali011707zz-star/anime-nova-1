.class final Lcom/google/ads/interactivemedia/v3/internal/zzrp;
.super Lcom/google/ads/interactivemedia/v3/internal/zzqz;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field private final transient zza:Lcom/google/ads/interactivemedia/v3/internal/zzqx;

.field private final transient zzb:Lcom/google/ads/interactivemedia/v3/internal/zzqu;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzqx;Lcom/google/ads/interactivemedia/v3/internal/zzqu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzqz;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrp;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzqx;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrp;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrp;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzqx;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzqx;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrp;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzqu;->zzn(I)Lcom/google/ads/interactivemedia/v3/internal/zzsb;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrp;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzqx;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public final zza()Lcom/google/ads/interactivemedia/v3/internal/zzsa;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrp;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzqu;->zzn(I)Lcom/google/ads/interactivemedia/v3/internal/zzsb;

    move-result-object v0

    return-object v0
.end method

.method public final zze()Lcom/google/ads/interactivemedia/v3/internal/zzqu;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrp;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    return-object v0
.end method

.method final zzf()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method final zzg([Ljava/lang/Object;I)I
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrp;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzqp;->zzg([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method
