.class final Lcom/google/ads/interactivemedia/v3/impl/zzaw;
.super Lcom/google/ads/interactivemedia/v3/impl/zzal;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field private final zza:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

.field private final zzd:Lcom/google/ads/interactivemedia/v3/internal/zzpl;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzpl;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/zzqu;Lcom/google/ads/interactivemedia/v3/internal/zzpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/zzal;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzaw;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    if-eqz p2, :cond_1

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzaw;->zzb:Ljava/lang/String;

    if-eqz p3, :cond_0

    .line 2
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/zzaw;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/impl/zzaw;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    return-void

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null secureSignals"

    .line 2
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null spamMsParameter"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/ads/interactivemedia/v3/impl/zzal;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/impl/zzal;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzaw;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    .line 2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/zzal;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzaw;->zzb:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/zzal;->zzb()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzaw;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    .line 4
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/zzal;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzqu;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzaw;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    .line 5
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/zzal;->zzd()Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzaw;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzaw;->zzb:Ljava/lang/String;

    mul-int/2addr v0, v1

    .line 2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzaw;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    mul-int/2addr v0, v1

    .line 3
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzqu;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzaw;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    mul-int/2addr v0, v1

    .line 4
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzaw;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzaw;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/impl/zzaw;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/google/ads/interactivemedia/v3/impl/zzaw;->zzb:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x38

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v1, v8

    add-int/lit8 v1, v1, 0x10

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1a

    add-int/2addr v1, v5

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "RequestSignals{identifierInfoOptional="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", spamMsParameter="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", secureSignals="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", platformSignalsOptional="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zza()Lcom/google/ads/interactivemedia/v3/internal/zzpl;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzaw;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    return-object v0
.end method

.method final zzb()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzaw;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method final zzc()Lcom/google/ads/interactivemedia/v3/internal/zzqu;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzaw;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    return-object v0
.end method

.method final zzd()Lcom/google/ads/interactivemedia/v3/internal/zzpl;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzaw;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    return-object v0
.end method
