.class final Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ResizeAndPositionVideoMsgData;
.super Lcom/google/ads/interactivemedia/v3/impl/data/ResizeAndPositionVideoMsgData;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field private final height:Ljava/lang/Integer;

.field private final width:Ljava/lang/Integer;

.field private final x:Ljava/lang/Integer;

.field private final y:Ljava/lang/Integer;


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/ads/interactivemedia/v3/impl/data/ResizeAndPositionVideoMsgData;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/impl/data/ResizeAndPositionVideoMsgData;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ResizeAndPositionVideoMsgData;->x:Ljava/lang/Integer;

    .line 2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/ResizeAndPositionVideoMsgData;->x()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ResizeAndPositionVideoMsgData;->y:Ljava/lang/Integer;

    .line 3
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/ResizeAndPositionVideoMsgData;->y()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ResizeAndPositionVideoMsgData;->width:Ljava/lang/Integer;

    .line 4
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/ResizeAndPositionVideoMsgData;->width()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ResizeAndPositionVideoMsgData;->height:Ljava/lang/Integer;

    .line 5
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/ResizeAndPositionVideoMsgData;->height()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ResizeAndPositionVideoMsgData;->x:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ResizeAndPositionVideoMsgData;->y:Ljava/lang/Integer;

    mul-int/2addr v0, v1

    .line 2
    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ResizeAndPositionVideoMsgData;->width:Ljava/lang/Integer;

    mul-int/2addr v0, v1

    .line 3
    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ResizeAndPositionVideoMsgData;->height:Ljava/lang/Integer;

    mul-int/2addr v0, v1

    .line 4
    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public height()Ljava/lang/Integer;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ResizeAndPositionVideoMsgData;->height:Ljava/lang/Integer;

    return-object v0
.end method

.method public width()Ljava/lang/Integer;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ResizeAndPositionVideoMsgData;->width:Ljava/lang/Integer;

    return-object v0
.end method

.method public x()Ljava/lang/Integer;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ResizeAndPositionVideoMsgData;->x:Ljava/lang/Integer;

    return-object v0
.end method

.method public y()Ljava/lang/Integer;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ResizeAndPositionVideoMsgData;->y:Ljava/lang/Integer;

    return-object v0
.end method
