.class final Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiVastIconData;
.super Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiVastIconData;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field private final clickUrl:Ljava/lang/String;

.field private final clickable:Z

.field private final fallbackImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiFallbackImageData;",
            ">;"
        }
    .end annotation
.end field

.field private final id:Ljava/lang/String;

.field private final image:Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiImageData;

.field private final program:Ljava/lang/String;

.field private final required:Z

.field private final xPosition:Ljava/lang/String;

.field private final yPosition:Ljava/lang/String;


# virtual methods
.method public clickUrl()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiVastIconData;->clickUrl:Ljava/lang/String;

    return-object v0
.end method

.method public clickable()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiVastIconData;->clickable:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiVastIconData;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    check-cast p1, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiVastIconData;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiVastIconData;->id:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiVastIconData;->id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiVastIconData;->program:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiVastIconData;->program()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiVastIconData;->required:Z

    .line 4
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiVastIconData;->required()Z

    move-result v3

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiVastIconData;->clickUrl:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiVastIconData;->clickUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiVastIconData;->clickable:Z

    .line 6
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiVastIconData;->clickable()Z

    move-result v3

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiVastIconData;->image:Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiImageData;

    .line 7
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiVastIconData;->image()Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiImageData;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiVastIconData;->fallbackImages:Ljava/util/List;

    .line 8
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiVastIconData;->fallbackImages()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiVastIconData;->xPosition:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiVastIconData;->xPosition()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiVastIconData;->xPosition()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiVastIconData;->yPosition:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 10
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiVastIconData;->yPosition()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiVastIconData;->yPosition()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    return v0

    :cond_4
    :goto_2
    return v2
.end method

.method public fallbackImages()Ljava/util/List;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiVastIconData;->fallbackImages:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiVastIconData;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiVastIconData;->program:Ljava/lang/String;

    mul-int/2addr v0, v1

    .line 2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiVastIconData;->required:Z

    const/16 v3, 0x4cf

    const/16 v4, 0x4d5

    const/4 v5, 0x1

    if-eq v5, v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    mul-int/2addr v0, v1

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiVastIconData;->clickUrl:Ljava/lang/String;

    .line 3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiVastIconData;->clickable:Z

    if-eq v5, v2, :cond_1

    move v3, v4

    :cond_1
    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiVastIconData;->image:Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiImageData;

    .line 4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiVastIconData;->fallbackImages:Ljava/util/List;

    .line 5
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiVastIconData;->xPosition:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    mul-int/2addr v0, v1

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 5
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiVastIconData;->yPosition:Ljava/lang/String;

    if-nez v1, :cond_3

    goto :goto_2

    .line 7
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    xor-int/2addr v0, v3

    return v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiVastIconData;->id:Ljava/lang/String;

    return-object v0
.end method

.method public image()Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiImageData;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiVastIconData;->image:Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiImageData;

    return-object v0
.end method

.method public program()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiVastIconData;->program:Ljava/lang/String;

    return-object v0
.end method

.method public required()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiVastIconData;->required:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 19

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiVastIconData;->fallbackImages:Ljava/util/List;

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiVastIconData;->image:Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiImageData;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiVastIconData;->id:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiVastIconData;->program:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iget-boolean v7, v0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiVastIconData;->required:Z

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    iget-object v9, v0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiVastIconData;->clickUrl:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    iget-boolean v11, v0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiVastIconData;->clickable:Z

    invoke-static {v11}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v14

    iget-object v15, v0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiVastIconData;->xPosition:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v17, v4

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiVastIconData;->yPosition:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v17, v17, 0x26

    add-int v17, v17, v6

    add-int/lit8 v17, v17, 0xb

    add-int v17, v17, v8

    add-int/lit8 v17, v17, 0xb

    add-int v17, v17, v10

    add-int/lit8 v17, v17, 0xc

    add-int v17, v17, v12

    add-int/lit8 v17, v17, 0x8

    add-int v17, v17, v13

    add-int/lit8 v17, v17, 0x11

    add-int v17, v17, v14

    add-int/lit8 v17, v17, 0xc

    add-int v17, v17, v16

    add-int/lit8 v17, v17, 0xc

    add-int v17, v17, v18

    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v8, v17, 0x1

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "JavaScriptUiVastIconData{id="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", program="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", required="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", clickUrl="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", clickable="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", image="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", fallbackImages="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", xPosition="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", yPosition="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public xPosition()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiVastIconData;->xPosition:Ljava/lang/String;

    return-object v0
.end method

.method public yPosition()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/AutoValue_JavaScriptUiVastIconData;->yPosition:Ljava/lang/String;

    return-object v0
.end method
