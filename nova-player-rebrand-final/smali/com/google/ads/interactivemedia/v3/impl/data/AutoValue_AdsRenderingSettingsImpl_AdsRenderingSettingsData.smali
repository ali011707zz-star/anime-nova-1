.class final Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData;
.super Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl$AdsRenderingSettingsData;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData$Builder;
    }
.end annotation


# instance fields
.field private final bitrate:I

.field private final disableUi:Z

.field private final enableFocusSkipButton:Z

.field private final enablePreloading:Z

.field private final loadVideoTimeout:I

.field private final mimeTypes:Lcom/google/ads/interactivemedia/v3/internal/zzqu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/zzqu<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final playAdsAfterTime:D

.field private final uiElements:Lcom/google/ads/interactivemedia/v3/internal/zzqz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/zzqz<",
            "Lcom/google/ads/interactivemedia/v3/api/UiElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ILcom/google/ads/interactivemedia/v3/internal/zzqu;Lcom/google/ads/interactivemedia/v3/internal/zzqz;ZZDZI)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl$AdsRenderingSettingsData;-><init>()V

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData;->bitrate:I

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData;->mimeTypes:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData;->uiElements:Lcom/google/ads/interactivemedia/v3/internal/zzqz;

    iput-boolean p4, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData;->enablePreloading:Z

    iput-boolean p5, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData;->enableFocusSkipButton:Z

    iput-wide p6, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData;->playAdsAfterTime:D

    iput-boolean p8, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData;->disableUi:Z

    iput p9, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData;->loadVideoTimeout:I

    return-void
.end method

.method synthetic constructor <init>(ILcom/google/ads/interactivemedia/v3/internal/zzqu;Lcom/google/ads/interactivemedia/v3/internal/zzqz;ZZDZI[B)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p9}, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData;-><init>(ILcom/google/ads/interactivemedia/v3/internal/zzqu;Lcom/google/ads/interactivemedia/v3/internal/zzqz;ZZDZI)V

    return-void
.end method


# virtual methods
.method public bitrate()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData;->bitrate:I

    return v0
.end method

.method public disableUi()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData;->disableUi:Z

    return v0
.end method

.method public enableFocusSkipButton()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData;->enableFocusSkipButton:Z

    return v0
.end method

.method public enablePreloading()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData;->enablePreloading:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl$AdsRenderingSettingsData;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    check-cast p1, Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl$AdsRenderingSettingsData;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData;->bitrate:I

    .line 2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl$AdsRenderingSettingsData;->bitrate()I

    move-result v3

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData;->mimeTypes:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl$AdsRenderingSettingsData;->mimeTypes()Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl$AdsRenderingSettingsData;->mimeTypes()Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzqu;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData;->uiElements:Lcom/google/ads/interactivemedia/v3/internal/zzqz;

    if-nez v1, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl$AdsRenderingSettingsData;->uiElements()Lcom/google/ads/interactivemedia/v3/internal/zzqz;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl$AdsRenderingSettingsData;->uiElements()Lcom/google/ads/interactivemedia/v3/internal/zzqz;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzqz;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData;->enablePreloading:Z

    .line 5
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl$AdsRenderingSettingsData;->enablePreloading()Z

    move-result v3

    if-ne v1, v3, :cond_4

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData;->enableFocusSkipButton:Z

    .line 6
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl$AdsRenderingSettingsData;->enableFocusSkipButton()Z

    move-result v3

    if-ne v1, v3, :cond_4

    iget-wide v3, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData;->playAdsAfterTime:D

    .line 7
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl$AdsRenderingSettingsData;->playAdsAfterTime()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData;->disableUi:Z

    .line 8
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl$AdsRenderingSettingsData;->disableUi()Z

    move-result v3

    if-ne v1, v3, :cond_4

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData;->loadVideoTimeout:I

    .line 9
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl$AdsRenderingSettingsData;->loadVideoTimeout()I

    move-result p1

    if-ne v1, p1, :cond_4

    return v0

    :cond_4
    :goto_2
    return v2
.end method

.method public hashCode()I
    .locals 9

    .line 3
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData;->mimeTypes:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzqu;->hashCode()I

    move-result v0

    .line 3
    :goto_0
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData;->bitrate:I

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData;->uiElements:Lcom/google/ads/interactivemedia/v3/internal/zzqz;

    if-nez v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzqz;->hashCode()I

    move-result v1

    :goto_1
    const v3, 0xf4243

    xor-int/2addr v2, v3

    mul-int/2addr v2, v3

    xor-int/2addr v0, v2

    .line 3
    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData;->enablePreloading:Z

    const/16 v4, 0x4cf

    const/16 v5, 0x4d5

    const/4 v6, 0x1

    if-eq v6, v2, :cond_2

    move v2, v5

    goto :goto_2

    :cond_2
    move v2, v4

    :goto_2
    mul-int/2addr v0, v3

    xor-int/2addr v0, v1

    mul-int/2addr v0, v3

    xor-int/2addr v0, v2

    mul-int/2addr v0, v3

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData;->enableFocusSkipButton:Z

    if-eq v6, v1, :cond_3

    move v1, v5

    goto :goto_3

    :cond_3
    move v1, v4

    :goto_3
    xor-int/2addr v0, v1

    mul-int/2addr v0, v3

    iget-wide v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData;->playAdsAfterTime:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    const/16 v7, 0x20

    ushr-long/2addr v1, v7

    iget-wide v7, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData;->playAdsAfterTime:D

    invoke-static {v7, v8}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v7

    xor-long/2addr v1, v7

    long-to-int v1, v1

    xor-int/2addr v0, v1

    mul-int/2addr v0, v3

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData;->disableUi:Z

    if-eq v6, v1, :cond_4

    move v4, v5

    :cond_4
    xor-int/2addr v0, v4

    mul-int/2addr v0, v3

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData;->loadVideoTimeout:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public loadVideoTimeout()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData;->loadVideoTimeout:I

    return v0
.end method

.method public mimeTypes()Lcom/google/ads/interactivemedia/v3/internal/zzqu;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData;->mimeTypes:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    return-object v0
.end method

.method public playAdsAfterTime()D
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData;->playAdsAfterTime:D

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData;->uiElements:Lcom/google/ads/interactivemedia/v3/internal/zzqz;

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData;->mimeTypes:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget v3, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData;->bitrate:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    iget-boolean v7, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData;->enablePreloading:Z

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    iget-boolean v9, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData;->enableFocusSkipButton:Z

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    iget-wide v11, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData;->playAdsAfterTime:D

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    iget-boolean v14, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData;->disableUi:Z

    invoke-static {v14}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    move/from16 v16, v4

    iget v4, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData;->loadVideoTimeout:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v16, v16, 0x2d

    add-int v16, v16, v5

    add-int/lit8 v16, v16, 0xd

    add-int v16, v16, v6

    add-int/lit8 v16, v16, 0x13

    add-int v16, v16, v8

    add-int/lit8 v16, v16, 0x18

    add-int v16, v16, v10

    add-int/lit8 v16, v16, 0x13

    add-int v16, v16, v13

    add-int/lit8 v16, v16, 0xc

    add-int v16, v16, v15

    add-int/lit8 v16, v16, 0x13

    add-int v16, v16, v17

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v6, v16, 0x1

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "AdsRenderingSettingsData{bitrate="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mimeTypes="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", uiElements="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", enablePreloading="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", enableFocusSkipButton="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", playAdsAfterTime="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", disableUi="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", loadVideoTimeout="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public uiElements()Lcom/google/ads/interactivemedia/v3/internal/zzqz;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData;->uiElements:Lcom/google/ads/interactivemedia/v3/internal/zzqz;

    return-object v0
.end method
