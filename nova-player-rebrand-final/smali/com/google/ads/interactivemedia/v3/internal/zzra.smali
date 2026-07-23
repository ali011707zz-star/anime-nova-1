.class final Lcom/google/ads/interactivemedia/v3/internal/zzra;
.super Lcom/google/ads/interactivemedia/v3/internal/zzqu;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field final synthetic zza:Lcom/google/ads/interactivemedia/v3/internal/zzrb;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzrb;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzra;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzrb;

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzqu;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzra;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzrb;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/zzrb;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzrc;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzrc;->zzq()Lcom/google/ads/interactivemedia/v3/internal/zzrt;

    move-result-object v2

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/internal/zzrt;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzrc;->zzr()Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzra;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzrb;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/zzrb;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzrc;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzrc;->size()I

    move-result v0

    return v0
.end method

.method final zzf()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method
