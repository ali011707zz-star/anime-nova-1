.class final Lcom/google/ads/interactivemedia/v3/internal/zzqg;
.super Lcom/google/ads/interactivemedia/v3/internal/zzqk;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzql;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzqk;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzql;)V

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 4
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqk;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzql;

    .line 5
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzqm;->zzb(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzql;->zzd(Ljava/lang/Object;I)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 6
    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/internal/zzql;->zza:[Ljava/lang/Object;

    aget-object v0, v2, v0

    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 4
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 5
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzqm;->zzb(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqk;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzql;

    .line 6
    invoke-virtual {v2, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzql;->zzd(Ljava/lang/Object;I)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 7
    iget-object v3, v2, Lcom/google/ads/interactivemedia/v3/internal/zzql;->zza:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-static {v3, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {v2, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzql;->zzi(II)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method final bridge synthetic zza(I)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzqd;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqk;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzql;

    invoke-direct {v0, v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzqd;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzql;I)V

    return-object v0
.end method
