.class final Lcom/google/ads/interactivemedia/v3/internal/zzqs;
.super Lcom/google/ads/interactivemedia/v3/internal/zzqu;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field private final transient zza:Lcom/google/ads/interactivemedia/v3/internal/zzqu;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzqu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzqu;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqs;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    return-void
.end method

.method private final zzo(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqs;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqs;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzqu;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqs;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    const-string v2, "index"

    .line 2
    invoke-static {p1, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzpn;->zzg(IILjava/lang/String;)I

    .line 3
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzqs;->zzo(I)I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqs;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzqu;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzqs;->zzo(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqs;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzqu;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzqs;->zzo(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqs;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzqu;->zzi(II)Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    move-result-object p1

    return-object p1
.end method

.method final zzf()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqs;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzqp;->zzf()Z

    move-result v0

    return v0
.end method

.method public final zzh()Lcom/google/ads/interactivemedia/v3/internal/zzqu;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqs;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    return-object v0
.end method

.method public final zzi(II)Lcom/google/ads/interactivemedia/v3/internal/zzqu;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqs;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    .line 2
    invoke-static {p1, p2, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzpn;->zzi(III)V

    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    sub-int/2addr v1, p2

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result p2

    sub-int/2addr p2, p1

    .line 4
    invoke-virtual {v0, v1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzqu;->zzi(II)Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzqu;->zzh()Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    move-result-object p1

    return-object p1
.end method
