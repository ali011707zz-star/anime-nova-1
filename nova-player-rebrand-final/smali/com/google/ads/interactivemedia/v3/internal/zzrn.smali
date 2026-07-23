.class final Lcom/google/ads/interactivemedia/v3/internal/zzrn;
.super Lcom/google/ads/interactivemedia/v3/internal/zzqu;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field final synthetic zza:Lcom/google/ads/interactivemedia/v3/internal/zzro;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzro;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrn;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzro;

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzqu;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrn;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzro;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzro;->zzn()I

    move-result v1

    const-string v2, "index"

    invoke-static {p1, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzpn;->zzg(IILjava/lang/String;)I

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzro;->zzh()[Ljava/lang/Object;

    move-result-object v1

    add-int/2addr p1, p1

    .line 2
    aget-object v1, v1, p1

    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzro;->zzh()[Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    .line 3
    aget-object p1, v0, p1

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    .line 4
    invoke-direct {v0, v1, p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrn;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzro;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzro;->zzn()I

    move-result v0

    return v0
.end method

.method public final zzf()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method
