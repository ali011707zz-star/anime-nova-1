.class final Lcom/google/android/gms/ads/internal/util/client/zzm;
.super Lcom/google/android/gms/ads/internal/util/client/zzw;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"


# instance fields
.field private final zza:I

.field private final zzb:I

.field private final zzc:Z


# direct methods
.method constructor <init>(IIZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/client/zzw;-><init>()V

    iput p1, p0, Lcom/google/android/gms/ads/internal/util/client/zzm;->zza:I

    iput p2, p0, Lcom/google/android/gms/ads/internal/util/client/zzm;->zzb:I

    iput-boolean p3, p0, Lcom/google/android/gms/ads/internal/util/client/zzm;->zzc:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/ads/internal/util/client/zzw;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/android/gms/ads/internal/util/client/zzw;

    iget v1, p0, Lcom/google/android/gms/ads/internal/util/client/zzm;->zza:I

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/util/client/zzw;->zza()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/google/android/gms/ads/internal/util/client/zzm;->zzb:I

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/util/client/zzw;->zzb()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/util/client/zzm;->zzc:Z

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/util/client/zzw;->zzc()Z

    move-result p1

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 4

    .line 0
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/util/client/zzm;->zzc:Z

    if-eq v0, v1, :cond_0

    const/16 v0, 0x4d5

    goto :goto_0

    :cond_0
    const/16 v0, 0x4cf

    :goto_0
    iget v1, p0, Lcom/google/android/gms/ads/internal/util/client/zzm;->zza:I

    iget v2, p0, Lcom/google/android/gms/ads/internal/util/client/zzm;->zzb:I

    const v3, 0xf4243

    xor-int/2addr v1, v3

    mul-int/2addr v1, v3

    xor-int/2addr v1, v2

    mul-int/2addr v1, v3

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/android/gms/ads/internal/util/client/zzm;->zza:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/ads/internal/util/client/zzm;->zzb:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-boolean v4, p0, Lcom/google/android/gms/ads/internal/util/client/zzm;->zzc:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v1, v1, 0x3b

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1a

    add-int/2addr v1, v5

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "OfflineAdConfig{impressionPrerequisite="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", clickPrerequisite="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", notificationFlowEnabled="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/ads/internal/util/client/zzm;->zza:I

    return v0
.end method

.method public final zzb()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/ads/internal/util/client/zzm;->zzb:I

    return v0
.end method

.method public final zzc()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/util/client/zzm;->zzc:Z

    return v0
.end method
