.class public Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl$AdsRenderingSettingsData;
    }
.end annotation


# instance fields
.field private bitrate:I

.field private disableUi:Z

.field private enableCustomTabs:Z

.field private enableFocusSkipButton:Z

.field private enablePreloading:Z

.field private loadVideoTimeout:I

.field private mimeTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private playAdsAfterTime:D

.field private uiElements:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/ads/interactivemedia/v3/api/UiElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl;->bitrate:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl;->mimeTypes:Ljava/util/List;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl;->enableFocusSkipButton:Z

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    iput-wide v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl;->playAdsAfterTime:D

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl;->disableUi:Z

    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl;->enableCustomTabs:Z

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl;->loadVideoTimeout:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v5, 0x0

    .line 1
    new-array v6, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zzc(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;Z[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getBitrateKbps()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl;->bitrate:I

    return v0
.end method

.method public getDisableUi()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl;->disableUi:Z

    return v0
.end method

.method public getEnableCustomTabs()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl;->enableCustomTabs:Z

    return v0
.end method

.method public getEnablePreloading()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl;->enablePreloading:Z

    return v0
.end method

.method public getFocusSkipButtonWhenAvailable()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl;->enableFocusSkipButton:Z

    return v0
.end method

.method public getLoadVideoTimeout()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl;->loadVideoTimeout:I

    return v0
.end method

.method public getMimeTypes()Ljava/util/List;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl;->mimeTypes:Ljava/util/List;

    return-object v0
.end method

.method public getPlayAdsAfterTime()D
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl;->playAdsAfterTime:D

    return-wide v0
.end method

.method public getUiElements()Ljava/util/Set;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl;->uiElements:Ljava/util/Set;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    .line 1
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzagj;->zzb(Ljava/lang/Object;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setBitrateKbps(I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl;->bitrate:I

    return-void
.end method

.method public setEnablePreloading(Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl;->enablePreloading:Z

    return-void
.end method

.method public setFocusSkipButtonWhenAvailable(Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl;->enableFocusSkipButton:Z

    return-void
.end method

.method public setLoadVideoTimeout(I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl;->loadVideoTimeout:I

    return-void
.end method

.method public setMimeTypes(Ljava/util/List;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl;->mimeTypes:Ljava/util/List;

    return-void
.end method

.method public setPlayAdsAfterTime(D)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl;->playAdsAfterTime:D

    return-void
.end method

.method public setUiElements(Ljava/util/Set;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl;->uiElements:Ljava/util/Set;

    return-void
.end method
