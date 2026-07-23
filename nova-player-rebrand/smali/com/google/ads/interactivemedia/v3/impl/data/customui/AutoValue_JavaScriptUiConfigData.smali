.class final Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiConfigData;
.super Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiConfigData;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field private final adTitle:Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiLinkData;

.field private final attribution:Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiLabelData;

.field private final authorIcon:Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiIconData;

.field private final authorName:Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiLinkData;

.field private final callToAction:Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiButtonData;

.field private final icons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiVastIconData;",
            ">;"
        }
    .end annotation
.end field

.field private final skip:Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiSkipData;

.field private final videoOverlay:Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiElementData;


# virtual methods
.method public adTitle()Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiLinkData;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiConfigData;->adTitle:Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiLinkData;

    return-object v0
.end method

.method public attribution()Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiLabelData;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiConfigData;->attribution:Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiLabelData;

    return-object v0
.end method

.method public authorIcon()Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiIconData;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiConfigData;->authorIcon:Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiIconData;

    return-object v0
.end method

.method public authorName()Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiLinkData;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiConfigData;->authorName:Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiLinkData;

    return-object v0
.end method

.method public callToAction()Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiButtonData;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiConfigData;->callToAction:Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiButtonData;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiConfigData;

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    check-cast p1, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiConfigData;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiConfigData;->videoOverlay:Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiElementData;

    if-nez v1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiConfigData;->videoOverlay()Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiElementData;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiConfigData;->videoOverlay()Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiElementData;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :goto_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiConfigData;->callToAction:Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiButtonData;

    if-nez v1, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiConfigData;->callToAction()Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiButtonData;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiConfigData;->callToAction()Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiButtonData;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :goto_1
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiConfigData;->attribution:Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiLabelData;

    if-nez v1, :cond_3

    .line 4
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiConfigData;->attribution()Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiLabelData;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiConfigData;->attribution()Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiLabelData;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :goto_2
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiConfigData;->skip:Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiSkipData;

    if-nez v1, :cond_4

    .line 5
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiConfigData;->skip()Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiSkipData;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiConfigData;->skip()Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiSkipData;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :goto_3
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiConfigData;->icons:Ljava/util/List;

    if-nez v1, :cond_5

    .line 6
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiConfigData;->icons()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiConfigData;->icons()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :goto_4
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiConfigData;->adTitle:Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiLinkData;

    if-nez v1, :cond_6

    .line 7
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiConfigData;->adTitle()Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiLinkData;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_5

    :cond_6
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiConfigData;->adTitle()Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiLinkData;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :goto_5
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiConfigData;->authorIcon:Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiIconData;

    if-nez v1, :cond_7

    .line 8
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiConfigData;->authorIcon()Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiIconData;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_6

    :cond_7
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiConfigData;->authorIcon()Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiIconData;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :goto_6
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiConfigData;->authorName:Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiLinkData;

    if-nez v1, :cond_8

    .line 9
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiConfigData;->authorName()Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiLinkData;

    move-result-object p1

    if-nez p1, :cond_a

    goto :goto_7

    :cond_8
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiConfigData;->authorName()Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiLinkData;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_8

    :cond_9
    :goto_7
    return v0

    :cond_a
    :goto_8
    return v2
.end method

.method public hashCode()I
    .locals 5

    .line 8
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiConfigData;->videoOverlay:Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiElementData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 8
    :goto_0
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiConfigData;->callToAction:Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiButtonData;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    .line 2
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    const v3, 0xf4243

    xor-int/2addr v0, v3

    .line 8
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiConfigData;->attribution:Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiLabelData;

    if-nez v4, :cond_2

    move v4, v1

    goto :goto_2

    .line 3
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_2
    mul-int/2addr v0, v3

    xor-int/2addr v0, v2

    mul-int/2addr v0, v3

    xor-int/2addr v0, v4

    mul-int/2addr v0, v3

    .line 8
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiConfigData;->skip:Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiSkipData;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    .line 4
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    xor-int/2addr v0, v2

    mul-int/2addr v0, v3

    .line 8
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiConfigData;->icons:Ljava/util/List;

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_4

    .line 5
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4
    xor-int/2addr v0, v2

    mul-int/2addr v0, v3

    .line 8
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiConfigData;->adTitle:Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiLinkData;

    if-nez v2, :cond_5

    move v2, v1

    goto :goto_5

    .line 6
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_5
    xor-int/2addr v0, v2

    mul-int/2addr v0, v3

    .line 8
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiConfigData;->authorIcon:Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiIconData;

    if-nez v2, :cond_6

    move v2, v1

    goto :goto_6

    .line 7
    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_6
    xor-int/2addr v0, v2

    mul-int/2addr v0, v3

    .line 8
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiConfigData;->authorName:Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiLinkData;

    if-nez v2, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_7
    xor-int/2addr v0, v1

    return v0
.end method

.method public icons()Ljava/util/List;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiConfigData;->icons:Ljava/util/List;

    return-object v0
.end method

.method public skip()Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiSkipData;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiConfigData;->skip:Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiSkipData;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiConfigData;->authorName:Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiLinkData;

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiConfigData;->authorIcon:Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiIconData;

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiConfigData;->adTitle:Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiLinkData;

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiConfigData;->icons:Ljava/util/List;

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiConfigData;->skip:Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiSkipData;

    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiConfigData;->attribution:Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiLabelData;

    iget-object v7, v0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiConfigData;->callToAction:Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiButtonData;

    iget-object v8, v0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiConfigData;->videoOverlay:Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiElementData;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v9, v9, 0x33

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, 0xe

    add-int/2addr v9, v11

    add-int/lit8 v9, v9, 0x7

    add-int/2addr v9, v12

    add-int/lit8 v9, v9, 0x8

    add-int/2addr v9, v13

    add-int/lit8 v9, v9, 0xa

    add-int/2addr v9, v14

    add-int/lit8 v9, v9, 0xd

    add-int/2addr v9, v15

    add-int/lit8 v9, v9, 0xd

    add-int v9, v9, v16

    new-instance v10, Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "JavaScriptUiConfigData{videoOverlay="

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", callToAction="

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", attribution="

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", skip="

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", icons="

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", adTitle="

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", authorIcon="

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", authorName="

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public videoOverlay()Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiElementData;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiConfigData;->videoOverlay:Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiElementData;

    return-object v0
.end method
