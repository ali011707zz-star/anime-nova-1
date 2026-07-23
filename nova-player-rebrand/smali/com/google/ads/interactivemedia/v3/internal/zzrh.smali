.class public final Lcom/google/ads/interactivemedia/v3/internal/zzrh;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# direct methods
.method public static zza(I)Ljava/util/HashMap;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzrh;->zzb(I)I

    move-result p0

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(I)V

    return-object v0
.end method

.method static zzb(I)I
    .locals 4

    const/4 v0, 0x3

    if-ge p0, v0, :cond_0

    .line 1
    const-string v0, "expectedSize"

    invoke-static {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzpz;->zzb(ILjava/lang/String;)I

    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    if-ge p0, v0, :cond_1

    int-to-double v0, p0

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    div-double/2addr v0, v2

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p0, v0

    return p0

    :cond_1
    const p0, 0x7fffffff

    return p0
.end method

.method static zzc(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
