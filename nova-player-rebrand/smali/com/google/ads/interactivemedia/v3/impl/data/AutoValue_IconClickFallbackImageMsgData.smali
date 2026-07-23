.class final Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_IconClickFallbackImageMsgData;
.super Lcom/google/ads/interactivemedia/v3/impl/data/IconClickFallbackImageMsgData;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field private final alternateText:Ljava/lang/String;

.field private final creativeType:Ljava/lang/String;

.field private final height:I

.field private final imageUrl:Ljava/lang/String;

.field private final width:I


# virtual methods
.method public alternateText()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_IconClickFallbackImageMsgData;->alternateText:Ljava/lang/String;

    return-object v0
.end method

.method public creativeType()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_IconClickFallbackImageMsgData;->creativeType:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/ads/interactivemedia/v3/impl/data/IconClickFallbackImageMsgData;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/impl/data/IconClickFallbackImageMsgData;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_IconClickFallbackImageMsgData;->width:I

    .line 2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/IconClickFallbackImageMsgData;->width()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_IconClickFallbackImageMsgData;->height:I

    .line 3
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/IconClickFallbackImageMsgData;->height()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_IconClickFallbackImageMsgData;->imageUrl:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/IconClickFallbackImageMsgData;->imageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_IconClickFallbackImageMsgData;->alternateText:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/IconClickFallbackImageMsgData;->alternateText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_IconClickFallbackImageMsgData;->creativeType:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/IconClickFallbackImageMsgData;->creativeType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_IconClickFallbackImageMsgData;->width:I

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_IconClickFallbackImageMsgData;->imageUrl:Ljava/lang/String;

    const v2, 0xf4243

    xor-int/2addr v0, v2

    mul-int/2addr v0, v2

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_IconClickFallbackImageMsgData;->height:I

    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_IconClickFallbackImageMsgData;->alternateText:Ljava/lang/String;

    mul-int/2addr v0, v2

    .line 2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_IconClickFallbackImageMsgData;->creativeType:Ljava/lang/String;

    mul-int/2addr v0, v2

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public height()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_IconClickFallbackImageMsgData;->height:I

    return v0
.end method

.method public imageUrl()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_IconClickFallbackImageMsgData;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public width()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_IconClickFallbackImageMsgData;->width:I

    return v0
.end method
