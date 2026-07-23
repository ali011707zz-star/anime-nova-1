.class public abstract Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl$AdsRenderingSettingsData;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# annotations
.annotation runtime Lcom/google/ads/interactivemedia/v3/internal/zzpa;
    zza = Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AdsRenderingSettingsData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl$AdsRenderingSettingsData$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder(Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;)Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl$AdsRenderingSettingsData$Builder;
    .locals 3

    .line 1
    check-cast p0, Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData$Builder;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData$Builder;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl;->getBitrateKbps()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_AdsRenderingSettingsImpl_AdsRenderingSettingsData$Builder;->setBitrate(I)Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl$AdsRenderingSettingsData$Builder;

    .line 3
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl;->getDisableUi()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl$AdsRenderingSettingsData$Builder;->setDisableUi(Z)Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl$AdsRenderingSettingsData$Builder;

    .line 4
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl;->getEnablePreloading()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl$AdsRenderingSettingsData$Builder;->setEnablePreloading(Z)Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl$AdsRenderingSettingsData$Builder;

    .line 5
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl;->getFocusSkipButtonWhenAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl$AdsRenderingSettingsData$Builder;->setEnableFocusSkipButton(Z)Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl$AdsRenderingSettingsData$Builder;

    .line 6
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl;->getLoadVideoTimeout()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl$AdsRenderingSettingsData$Builder;->setLoadVideoTimeout(I)Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl$AdsRenderingSettingsData$Builder;

    .line 7
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl;->getMimeTypes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl$AdsRenderingSettingsData$Builder;->setMimeTypes(Ljava/util/List;)Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl$AdsRenderingSettingsData$Builder;

    .line 8
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl;->getPlayAdsAfterTime()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl$AdsRenderingSettingsData$Builder;->setPlayAdsAfterTime(D)Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl$AdsRenderingSettingsData$Builder;

    .line 9
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl;->getUiElements()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl$AdsRenderingSettingsData$Builder;->setUiElements(Ljava/util/Set;)Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl$AdsRenderingSettingsData$Builder;

    return-object v0
.end method


# virtual methods
.method public abstract bitrate()I
.end method

.method public abstract disableUi()Z
.end method

.method public abstract enableFocusSkipButton()Z
.end method

.method public abstract enablePreloading()Z
.end method

.method public abstract loadVideoTimeout()I
.end method

.method public abstract mimeTypes()Lcom/google/ads/interactivemedia/v3/internal/zzqu;
.end method

.method public abstract playAdsAfterTime()D
.end method

.method public abstract uiElements()Lcom/google/ads/interactivemedia/v3/internal/zzqz;
.end method
