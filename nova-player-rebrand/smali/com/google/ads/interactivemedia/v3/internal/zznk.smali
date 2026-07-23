.class final Lcom/google/ads/interactivemedia/v3/internal/zznk;
.super Lcom/google/ads/interactivemedia/v3/internal/zznh;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Z

.field private final zzc:Z

.field private final zzd:J

.field private final zze:J


# direct methods
.method synthetic constructor <init>(Ljava/lang/String;ZZZJZJ[B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zznh;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zznk;->zza:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zznk;->zzb:Z

    iput-boolean p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zznk;->zzc:Z

    iput-wide p5, p0, Lcom/google/ads/interactivemedia/v3/internal/zznk;->zzd:J

    iput-wide p8, p0, Lcom/google/ads/interactivemedia/v3/internal/zznk;->zze:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/ads/interactivemedia/v3/internal/zznh;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zznh;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zznk;->zza:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zznh;->zza()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zznk;->zzb:Z

    .line 3
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zznh;->zzb()Z

    move-result v3

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zznk;->zzc:Z

    .line 4
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zznh;->zzc()Z

    move-result v3

    if-ne v1, v3, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zznh;->zzd()Z

    iget-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zznk;->zzd:J

    .line 6
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zznh;->zze()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zznh;->zzf()Z

    iget-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zznk;->zze:J

    .line 8
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zznh;->zzg()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-nez p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zznk;->zza:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zznk;->zzb:Z

    const/16 v3, 0x4cf

    const/16 v4, 0x4d5

    const/4 v5, 0x1

    if-eq v5, v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    mul-int/2addr v0, v1

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zznk;->zzc:Z

    if-eq v5, v2, :cond_1

    move v3, v4

    :cond_1
    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    xor-int/2addr v0, v4

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zznk;->zzd:J

    long-to-int v2, v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    xor-int/2addr v0, v4

    mul-int/2addr v0, v1

    iget-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zznk;->zze:J

    long-to-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 13

    .line 1
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zznk;->zzb:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zznk;->zzc:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/internal/zznk;->zzd:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iget-wide v7, p0, Lcom/google/ads/interactivemedia/v3/internal/zznk;->zze:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/google/ads/interactivemedia/v3/internal/zznk;->zza:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, 0x38

    add-int/2addr v12, v1

    add-int/lit8 v12, v12, 0x20

    add-int/2addr v12, v3

    add-int/lit8 v12, v12, 0x39

    add-int/2addr v12, v6

    add-int/lit8 v12, v12, 0x3d

    add-int/2addr v12, v9

    add-int/lit8 v12, v12, 0x1

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "AdShield2Options{clientVersion="

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", shouldGetAdvertisingId="

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isGooglePlayServicesAvailable="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", enableQuerySignalsTimeout=false, querySignalsTimeoutMs="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", enableQuerySignalsCache=false, querySignalsCacheTtlSeconds="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zznk;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public final zzb()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zznk;->zzb:Z

    return v0
.end method

.method public final zzc()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zznk;->zzc:Z

    return v0
.end method

.method public final zzd()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public final zze()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zznk;->zzd:J

    return-wide v0
.end method

.method public final zzf()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzg()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zznk;->zze:J

    return-wide v0
.end method
