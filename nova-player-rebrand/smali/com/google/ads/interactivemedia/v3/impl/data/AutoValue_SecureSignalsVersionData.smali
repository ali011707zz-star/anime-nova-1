.class final Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_SecureSignalsVersionData;
.super Lcom/google/ads/interactivemedia/v3/impl/data/SecureSignalsVersionData;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field private final major:I

.field private final micro:I

.field private final minor:I


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/ads/interactivemedia/v3/impl/data/SecureSignalsVersionData;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/impl/data/SecureSignalsVersionData;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_SecureSignalsVersionData;->major:I

    .line 2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/SecureSignalsVersionData;->major()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_SecureSignalsVersionData;->minor:I

    .line 3
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/SecureSignalsVersionData;->minor()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_SecureSignalsVersionData;->micro:I

    .line 4
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/SecureSignalsVersionData;->micro()I

    move-result p1

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public hashCode()I
    .locals 3

    .line 0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_SecureSignalsVersionData;->major:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_SecureSignalsVersionData;->minor:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_SecureSignalsVersionData;->micro:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public major()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_SecureSignalsVersionData;->major:I

    return v0
.end method

.method public micro()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_SecureSignalsVersionData;->micro:I

    return v0
.end method

.method public minor()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_SecureSignalsVersionData;->minor:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_SecureSignalsVersionData;->major:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_SecureSignalsVersionData;->minor:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_SecureSignalsVersionData;->micro:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v1, v1, 0x27

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v5

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "SecureSignalsVersionData{major="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", minor="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", micro="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
