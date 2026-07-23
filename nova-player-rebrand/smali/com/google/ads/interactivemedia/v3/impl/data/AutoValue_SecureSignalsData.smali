.class final Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_SecureSignalsData;
.super Lcom/google/ads/interactivemedia/v3/impl/data/SecureSignalsData;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field private final adapterVersion:Lcom/google/ads/interactivemedia/v3/impl/data/SecureSignalsVersionData;

.field private final isPublisherCreated:Ljava/lang/Boolean;

.field private final name:Ljava/lang/String;

.field private final sdkVersion:Lcom/google/ads/interactivemedia/v3/impl/data/SecureSignalsVersionData;

.field private final signals:Ljava/lang/String;


# virtual methods
.method public adapterVersion()Lcom/google/ads/interactivemedia/v3/impl/data/SecureSignalsVersionData;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_SecureSignalsData;->adapterVersion:Lcom/google/ads/interactivemedia/v3/impl/data/SecureSignalsVersionData;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/ads/interactivemedia/v3/impl/data/SecureSignalsData;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    check-cast p1, Lcom/google/ads/interactivemedia/v3/impl/data/SecureSignalsData;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_SecureSignalsData;->adapterVersion:Lcom/google/ads/interactivemedia/v3/impl/data/SecureSignalsVersionData;

    if-nez v1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/SecureSignalsData;->adapterVersion()Lcom/google/ads/interactivemedia/v3/impl/data/SecureSignalsVersionData;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/SecureSignalsData;->adapterVersion()Lcom/google/ads/interactivemedia/v3/impl/data/SecureSignalsVersionData;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_SecureSignalsData;->sdkVersion:Lcom/google/ads/interactivemedia/v3/impl/data/SecureSignalsVersionData;

    if-nez v1, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/SecureSignalsData;->sdkVersion()Lcom/google/ads/interactivemedia/v3/impl/data/SecureSignalsVersionData;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/SecureSignalsData;->sdkVersion()Lcom/google/ads/interactivemedia/v3/impl/data/SecureSignalsVersionData;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_SecureSignalsData;->name:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/SecureSignalsData;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_SecureSignalsData;->signals:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/SecureSignalsData;->signals()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_SecureSignalsData;->isPublisherCreated:Ljava/lang/Boolean;

    .line 6
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/SecureSignalsData;->isPublisherCreated()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v0

    :cond_4
    :goto_2
    return v2
.end method

.method public hashCode()I
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_SecureSignalsData;->adapterVersion:Lcom/google/ads/interactivemedia/v3/impl/data/SecureSignalsVersionData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_SecureSignalsData;->sdkVersion:Lcom/google/ads/interactivemedia/v3/impl/data/SecureSignalsVersionData;

    if-nez v2, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    const v2, 0xf4243

    xor-int/2addr v0, v2

    .line 3
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_SecureSignalsData;->name:Ljava/lang/String;

    mul-int/2addr v0, v2

    xor-int/2addr v0, v1

    mul-int/2addr v0, v2

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_SecureSignalsData;->signals:Ljava/lang/String;

    mul-int/2addr v0, v2

    .line 4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_SecureSignalsData;->isPublisherCreated:Ljava/lang/Boolean;

    mul-int/2addr v0, v2

    .line 5
    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isPublisherCreated()Ljava/lang/Boolean;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_SecureSignalsData;->isPublisherCreated:Ljava/lang/Boolean;

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_SecureSignalsData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public sdkVersion()Lcom/google/ads/interactivemedia/v3/impl/data/SecureSignalsVersionData;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_SecureSignalsData;->sdkVersion:Lcom/google/ads/interactivemedia/v3/impl/data/SecureSignalsVersionData;

    return-object v0
.end method

.method public signals()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_SecureSignalsData;->signals:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_SecureSignalsData;->sdkVersion:Lcom/google/ads/interactivemedia/v3/impl/data/SecureSignalsVersionData;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_SecureSignalsData;->adapterVersion:Lcom/google/ads/interactivemedia/v3/impl/data/SecureSignalsVersionData;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_SecureSignalsData;->name:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_SecureSignalsData;->signals:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    iget-object v8, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_SecureSignalsData;->isPublisherCreated:Ljava/lang/Boolean;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v2, v2, 0x2e

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x7

    add-int/2addr v2, v5

    add-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v7

    add-int/lit8 v2, v2, 0x15

    add-int/2addr v2, v9

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "SecureSignalsData{adapterVersion="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sdkVersion="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", name="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", signals="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isPublisherCreated="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
