.class final Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_CompanionData;
.super Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field private final clickThroughUrl:Ljava/lang/String;

.field private final companionScaleTolerance:D

.field private final size:Ljava/lang/String;

.field private final src:Ljava/lang/String;

.field private final type:Lcom/google/ads/interactivemedia/v3/impl/data/AdViewData$Type;


# virtual methods
.method public clickThroughUrl()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_CompanionData;->clickThroughUrl:Ljava/lang/String;

    return-object v0
.end method

.method public companionScaleTolerance()D
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_CompanionData;->companionScaleTolerance:D

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_CompanionData;->size:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;->size()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_CompanionData;->src:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;->src()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_CompanionData;->clickThroughUrl:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;->clickThroughUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_CompanionData;->type:Lcom/google/ads/interactivemedia/v3/impl/data/AdViewData$Type;

    .line 5
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;->type()Lcom/google/ads/interactivemedia/v3/impl/data/AdViewData$Type;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v3, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_CompanionData;->companionScaleTolerance:D

    .line 6
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;->companionScaleTolerance()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-nez p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_CompanionData;->size:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_CompanionData;->src:Ljava/lang/String;

    mul-int/2addr v0, v1

    .line 2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_CompanionData;->clickThroughUrl:Ljava/lang/String;

    mul-int/2addr v0, v1

    .line 3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_CompanionData;->type:Lcom/google/ads/interactivemedia/v3/impl/data/AdViewData$Type;

    mul-int/2addr v0, v1

    .line 4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_CompanionData;->companionScaleTolerance:D

    .line 5
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_CompanionData;->companionScaleTolerance:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    xor-long/2addr v2, v4

    mul-int/2addr v0, v1

    long-to-int v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method public size()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_CompanionData;->size:Ljava/lang/String;

    return-object v0
.end method

.method public src()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_CompanionData;->src:Ljava/lang/String;

    return-object v0
.end method

.method public type()Lcom/google/ads/interactivemedia/v3/impl/data/AdViewData$Type;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_CompanionData;->type:Lcom/google/ads/interactivemedia/v3/impl/data/AdViewData$Type;

    return-object v0
.end method
