.class final Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData$Builder;
.super Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl$AdsRenderingSettingsData$Builder;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private bitrate:I

.field private disableUi:Z

.field private enableFocusSkipButton:Z

.field private enablePreloading:Z

.field private loadVideoTimeout:I

.field private mimeTypes:Lcom/google/ads/interactivemedia/v3/internal/zzqu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/zzqu<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private playAdsAfterTime:D

.field private set$0:B

.field private uiElements:Lcom/google/ads/interactivemedia/v3/internal/zzqz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/zzqz<",
            "Lcom/google/ads/interactivemedia/v3/api/UiElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl$AdsRenderingSettingsData$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl$AdsRenderingSettingsData;
    .locals 13

    .line 1
    iget-byte v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData$Builder;->set$0:B

    const/16 v1, 0x3f

    if-eq v0, v1, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-byte v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData$Builder;->set$0:B

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    const-string v1, " bitrate"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-byte v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData$Builder;->set$0:B

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const-string v1, " enablePreloading"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-byte v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData$Builder;->set$0:B

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_2

    const-string v1, " enableFocusSkipButton"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-byte v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData$Builder;->set$0:B

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_3

    const-string v1, " playAdsAfterTime"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-byte v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData$Builder;->set$0:B

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_4

    const-string v1, " disableUi"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-byte v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData$Builder;->set$0:B

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_5

    const-string v1, " loadVideoTimeout"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData;

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData$Builder;->bitrate:I

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData$Builder;->mimeTypes:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData$Builder;->uiElements:Lcom/google/ads/interactivemedia/v3/internal/zzqz;

    iget-boolean v6, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData$Builder;->enablePreloading:Z

    iget-boolean v7, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData$Builder;->enableFocusSkipButton:Z

    iget-wide v8, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData$Builder;->playAdsAfterTime:D

    iget-boolean v10, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData$Builder;->disableUi:Z

    iget v11, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData$Builder;->loadVideoTimeout:I

    const/4 v12, 0x0

    invoke-direct/range {v2 .. v12}, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData;-><init>(ILcom/google/ads/interactivemedia/v3/internal/zzqu;Lcom/google/ads/interactivemedia/v3/internal/zzqz;ZZDZI[B)V

    return-object v2
.end method

.method setBitrate(I)Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl$AdsRenderingSettingsData$Builder;
    .locals 0

    .line 0
    iput p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData$Builder;->bitrate:I

    iget-byte p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData$Builder;->set$0:B

    or-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData$Builder;->set$0:B

    return-object p0
.end method

.method setDisableUi(Z)Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl$AdsRenderingSettingsData$Builder;
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData$Builder;->disableUi:Z

    iget-byte p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData$Builder;->set$0:B

    or-int/lit8 p1, p1, 0x10

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData$Builder;->set$0:B

    return-object p0
.end method

.method setEnableFocusSkipButton(Z)Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl$AdsRenderingSettingsData$Builder;
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData$Builder;->enableFocusSkipButton:Z

    iget-byte p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData$Builder;->set$0:B

    or-int/lit8 p1, p1, 0x4

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData$Builder;->set$0:B

    return-object p0
.end method

.method setEnablePreloading(Z)Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl$AdsRenderingSettingsData$Builder;
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData$Builder;->enablePreloading:Z

    iget-byte p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData$Builder;->set$0:B

    or-int/lit8 p1, p1, 0x2

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData$Builder;->set$0:B

    return-object p0
.end method

.method setLoadVideoTimeout(I)Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl$AdsRenderingSettingsData$Builder;
    .locals 0

    .line 0
    iput p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData$Builder;->loadVideoTimeout:I

    iget-byte p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData$Builder;->set$0:B

    or-int/lit8 p1, p1, 0x20

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData$Builder;->set$0:B

    return-object p0
.end method

.method setMimeTypes(Ljava/util/List;)Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl$AdsRenderingSettingsData$Builder;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzqu;->zzk(Ljava/util/Collection;)Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData$Builder;->mimeTypes:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    return-object p0
.end method

.method setPlayAdsAfterTime(D)Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl$AdsRenderingSettingsData$Builder;
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData$Builder;->playAdsAfterTime:D

    iget-byte p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData$Builder;->set$0:B

    or-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData$Builder;->set$0:B

    return-object p0
.end method

.method setUiElements(Ljava/util/Set;)Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl$AdsRenderingSettingsData$Builder;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzqz;->zzl(Ljava/util/Collection;)Lcom/google/ads/interactivemedia/v3/internal/zzqz;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData$Builder;->uiElements:Lcom/google/ads/interactivemedia/v3/internal/zzqz;

    return-object p0
.end method
