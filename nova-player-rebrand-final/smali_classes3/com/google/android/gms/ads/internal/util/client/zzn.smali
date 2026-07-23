.class final Lcom/google/android/gms/ads/internal/util/client/zzn;
.super Lcom/google/android/gms/ads/internal/util/client/zzx;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"


# instance fields
.field private final zza:I

.field private final zzb:I

.field private final zzc:D

.field private final zzd:Z


# direct methods
.method constructor <init>(IIDZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/client/zzx;-><init>()V

    iput p1, p0, Lcom/google/android/gms/ads/internal/util/client/zzn;->zza:I

    iput p2, p0, Lcom/google/android/gms/ads/internal/util/client/zzn;->zzb:I

    iput-wide p3, p0, Lcom/google/android/gms/ads/internal/util/client/zzn;->zzc:D

    iput-boolean p5, p0, Lcom/google/android/gms/ads/internal/util/client/zzn;->zzd:Z

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
    instance-of v1, p1, Lcom/google/android/gms/ads/internal/util/client/zzx;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/android/gms/ads/internal/util/client/zzx;

    iget v1, p0, Lcom/google/android/gms/ads/internal/util/client/zzn;->zza:I

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/util/client/zzx;->zza()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/google/android/gms/ads/internal/util/client/zzn;->zzb:I

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/util/client/zzx;->zzb()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-wide v3, p0, Lcom/google/android/gms/ads/internal/util/client/zzn;->zzc:D

    .line 4
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/util/client/zzx;->zzc()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/util/client/zzn;->zzd:Z

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/util/client/zzx;->zzd()Z

    move-result p1

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/ads/internal/util/client/zzn;->zzc:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    xor-long/2addr v0, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/google/android/gms/ads/internal/util/client/zzn;->zzd:Z

    if-eq v2, v3, :cond_0

    const/16 v2, 0x4d5

    goto :goto_0

    :cond_0
    const/16 v2, 0x4cf

    :goto_0
    iget v3, p0, Lcom/google/android/gms/ads/internal/util/client/zzn;->zza:I

    iget v4, p0, Lcom/google/android/gms/ads/internal/util/client/zzn;->zzb:I

    long-to-int v0, v0

    const v1, 0xf4243

    xor-int/2addr v3, v1

    mul-int/2addr v3, v1

    xor-int/2addr v3, v4

    mul-int/2addr v3, v1

    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    xor-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    .line 1
    iget v0, p0, Lcom/google/android/gms/ads/internal/util/client/zzn;->zza:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/ads/internal/util/client/zzn;->zzb:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-wide v4, p0, Lcom/google/android/gms/ads/internal/util/client/zzn;->zzc:D

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iget-boolean v7, p0, Lcom/google/android/gms/ads/internal/util/client/zzn;->zzd:Z

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v1, v1, 0x2c

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x14

    add-int/2addr v1, v6

    add-int/lit8 v1, v1, 0x19

    add-int/2addr v1, v8

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "PingStrategy{maxAttempts="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", initialBackoffMs="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", backoffMultiplier="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", bufferAfterMaxAttempts="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/ads/internal/util/client/zzn;->zza:I

    return v0
.end method

.method public final zzb()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/ads/internal/util/client/zzn;->zzb:I

    return v0
.end method

.method public final zzc()D
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/ads/internal/util/client/zzn;->zzc:D

    return-wide v0
.end method

.method public final zzd()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/util/client/zzn;->zzd:Z

    return v0
.end method
