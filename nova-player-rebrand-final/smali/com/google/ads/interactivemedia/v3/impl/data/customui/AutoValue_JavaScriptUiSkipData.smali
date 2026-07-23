.class final Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiSkipData;
.super Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiSkipData;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field private final button:Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiButtonData;

.field private final countdown:Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiLabelData;


# virtual methods
.method public button()Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiButtonData;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiSkipData;->button:Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiButtonData;

    return-object v0
.end method

.method public countdown()Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiLabelData;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiSkipData;->countdown:Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiLabelData;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiSkipData;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiSkipData;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiSkipData;->button:Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiButtonData;

    .line 2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiSkipData;->button()Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiButtonData;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiSkipData;->countdown:Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiLabelData;

    .line 3
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiSkipData;->countdown()Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiLabelData;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiSkipData;->button:Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiButtonData;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiSkipData;->countdown:Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiLabelData;

    mul-int/2addr v0, v1

    .line 2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiSkipData;->countdown:Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiLabelData;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiSkipData;->button:Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiButtonData;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v2, v2, 0x28

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "JavaScriptUiSkipData{button="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", countdown="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
