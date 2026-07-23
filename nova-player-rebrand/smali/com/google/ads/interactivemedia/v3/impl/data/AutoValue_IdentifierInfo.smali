.class final Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_IdentifierInfo;
.super Lcom/google/ads/interactivemedia/v3/impl/data/IdentifierInfo;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field private final adsIdentityToken:Ljava/lang/String;

.field private final appSetId:Ljava/lang/String;

.field private final appSetIdScope:I

.field private final deviceId:Ljava/lang/String;

.field private final idType:Ljava/lang/String;

.field private final isLimitedAdTracking:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/IdentifierInfo;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_IdentifierInfo;->deviceId:Ljava/lang/String;

    if-eqz p2, :cond_2

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_IdentifierInfo;->idType:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_IdentifierInfo;->isLimitedAdTracking:Z

    if-eqz p4, :cond_1

    .line 2
    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_IdentifierInfo;->appSetId:Ljava/lang/String;

    iput p5, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_IdentifierInfo;->appSetIdScope:I

    if-eqz p6, :cond_0

    .line 3
    iput-object p6, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_IdentifierInfo;->adsIdentityToken:Ljava/lang/String;

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null adsIdentityToken"

    .line 3
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null appSetId"

    .line 2
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null idType"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public adsIdentityToken()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_IdentifierInfo;->adsIdentityToken:Ljava/lang/String;

    return-object v0
.end method

.method public appSetId()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_IdentifierInfo;->appSetId:Ljava/lang/String;

    return-object v0
.end method

.method public appSetIdScope()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_IdentifierInfo;->appSetIdScope:I

    return v0
.end method

.method public deviceId()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_IdentifierInfo;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/ads/interactivemedia/v3/impl/data/IdentifierInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lcom/google/ads/interactivemedia/v3/impl/data/IdentifierInfo;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_IdentifierInfo;->deviceId:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/IdentifierInfo;->deviceId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/IdentifierInfo;->deviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_IdentifierInfo;->idType:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/IdentifierInfo;->idType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_IdentifierInfo;->isLimitedAdTracking:Z

    .line 4
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/IdentifierInfo;->isLimitedAdTracking()Z

    move-result v3

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_IdentifierInfo;->appSetId:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/IdentifierInfo;->appSetId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_IdentifierInfo;->appSetIdScope:I

    .line 6
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/IdentifierInfo;->appSetIdScope()I

    move-result v3

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_IdentifierInfo;->adsIdentityToken:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/IdentifierInfo;->adsIdentityToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_IdentifierInfo;->deviceId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_IdentifierInfo;->idType:Ljava/lang/String;

    const v2, 0xf4243

    xor-int/2addr v0, v2

    mul-int/2addr v0, v2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    const/4 v1, 0x1

    iget-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_IdentifierInfo;->isLimitedAdTracking:Z

    if-eq v1, v3, :cond_1

    const/16 v1, 0x4d5

    goto :goto_1

    :cond_1
    const/16 v1, 0x4cf

    :goto_1
    mul-int/2addr v0, v2

    xor-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_IdentifierInfo;->appSetId:Ljava/lang/String;

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_IdentifierInfo;->appSetIdScope:I

    xor-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_IdentifierInfo;->adsIdentityToken:Ljava/lang/String;

    .line 4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public idType()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_IdentifierInfo;->idType:Ljava/lang/String;

    return-object v0
.end method

.method public isLimitedAdTracking()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_IdentifierInfo;->isLimitedAdTracking:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_IdentifierInfo;->deviceId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_IdentifierInfo;->idType:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-boolean v4, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_IdentifierInfo;->isLimitedAdTracking:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_IdentifierInfo;->appSetId:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    iget v8, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_IdentifierInfo;->appSetIdScope:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    iget-object v10, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_IdentifierInfo;->adsIdentityToken:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v1, v1, 0x21

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x16

    add-int/2addr v1, v5

    add-int/lit8 v1, v1, 0xb

    add-int/2addr v1, v7

    add-int/lit8 v1, v1, 0x10

    add-int/2addr v1, v9

    add-int/lit8 v1, v1, 0x13

    add-int/2addr v1, v11

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "IdentifierInfo{deviceId="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", idType="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isLimitedAdTracking="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", appSetId="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", appSetIdScope="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", adsIdentityToken="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
