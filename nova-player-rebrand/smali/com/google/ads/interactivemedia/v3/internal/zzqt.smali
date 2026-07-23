.class final Lcom/google/ads/interactivemedia/v3/internal/zzqt;
.super Lcom/google/ads/interactivemedia/v3/internal/zzqu;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field final transient zza:I

.field final transient zzb:I

.field final synthetic zzc:Lcom/google/ads/interactivemedia/v3/internal/zzqu;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzqu;II)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqt;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzqu;-><init>()V

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqt;->zza:I

    iput p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqt;->zzb:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqt;->zzb:I

    const-string v1, "index"

    invoke-static {p1, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzpn;->zzg(IILjava/lang/String;)I

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqt;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqt;->zza:I

    add-int/2addr p1, v1

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqt;->zzb:I

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzqu;->zzi(II)Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    move-result-object p1

    return-object p1
.end method

.method final zzb()[Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqt;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzqp;->zzb()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final zzc()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqt;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzqp;->zzc()I

    move-result v0

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqt;->zza:I

    add-int/2addr v0, v1

    return v0
.end method

.method final zzd()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqt;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzqp;->zzc()I

    move-result v0

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqt;->zza:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqt;->zzb:I

    add-int/2addr v0, v1

    return v0
.end method

.method final zzf()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public final zzi(II)Lcom/google/ads/interactivemedia/v3/internal/zzqu;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqt;->zzb:I

    invoke-static {p1, p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzpn;->zzi(III)V

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqt;->zza:I

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqt;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    add-int/2addr p1, v0

    add-int/2addr p2, v0

    .line 2
    invoke-virtual {v1, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzqu;->zzi(II)Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    move-result-object p1

    return-object p1
.end method
