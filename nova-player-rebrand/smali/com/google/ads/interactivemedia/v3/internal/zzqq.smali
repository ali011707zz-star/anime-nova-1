.class public final Lcom/google/ads/interactivemedia/v3/internal/zzqq;
.super Lcom/google/ads/interactivemedia/v3/internal/zzqn;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzqn;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzqq;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqn;->zza:[Ljava/lang/Object;

    array-length v0, v0

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqn;->zzb:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzqo;->zza(II)I

    move-result v1

    if-gt v1, v0, :cond_0

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqn;->zzc:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqn;->zza:[Ljava/lang/Object;

    .line 2
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqn;->zza:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqn;->zzc:Z

    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqn;->zza:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqn;->zzb:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqn;->zzb:I

    .line 3
    aput-object p1, v0, v1

    return-object p0
.end method

.method public final zzc()Lcom/google/ads/interactivemedia/v3/internal/zzqu;
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqn;->zzc:Z

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqn;->zza:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqn;->zzb:I

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzqu;->zzm([Ljava/lang/Object;I)Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    move-result-object v0

    return-object v0
.end method
