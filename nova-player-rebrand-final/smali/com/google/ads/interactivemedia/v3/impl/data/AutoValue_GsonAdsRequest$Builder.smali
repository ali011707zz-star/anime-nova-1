.class final Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/impl/data/GsonAdsRequest$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private adTagParameters:Lcom/google/ads/interactivemedia/v3/internal/zzqx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/zzqx<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private adTagUrl:Ljava/lang/String;

.field private adsResponse:Ljava/lang/String;

.field private apiKey:Ljava/lang/String;

.field private assetKey:Ljava/lang/String;

.field private authToken:Ljava/lang/String;

.field private companionSlots:Lcom/google/ads/interactivemedia/v3/internal/zzqx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/zzqx<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private consentSettings:Lcom/google/ads/interactivemedia/v3/internal/zzqx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/zzqx<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private contentDuration:Ljava/lang/Float;

.field private contentKeywords:Lcom/google/ads/interactivemedia/v3/internal/zzqu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/zzqu<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private contentSourceId:Ljava/lang/String;

.field private contentSourceUrl:Ljava/lang/String;

.field private contentTitle:Ljava/lang/String;

.field private contentUrl:Ljava/lang/String;

.field private customAssetKey:Ljava/lang/String;

.field private customUiOptions:Lcom/google/ads/interactivemedia/v3/impl/data/CustomUiOptionsData;

.field private daiIntegration:Ljava/lang/Integer;

.field private enableNonce:Ljava/lang/Boolean;

.field private env:Ljava/lang/String;

.field private format:Ljava/lang/String;

.field private identifierInfo:Lcom/google/ads/interactivemedia/v3/impl/data/IdentifierInfo;

.field private isAndroidTvAdsFramework:Ljava/lang/Boolean;

.field private isTv:Ljava/lang/Boolean;

.field private linearAdSlotHeight:Ljava/lang/Integer;

.field private linearAdSlotWidth:Ljava/lang/Integer;

.field private liveStreamEventId:Ljava/lang/String;

.field private liveStreamPrefetchSeconds:Ljava/lang/Float;

.field private marketAppInfo:Lcom/google/ads/interactivemedia/v3/impl/data/MarketAppInfo;

.field private msParameter:Ljava/lang/String;

.field private network:Ljava/lang/String;

.field private networkCode:Ljava/lang/String;

.field private oAuthToken:Ljava/lang/String;

.field private omidAdSessionsOnStartedOnly:Ljava/lang/Boolean;

.field private pauseAdSlot:Ljava/lang/String;

.field private pixelDensity:Ljava/lang/Double;

.field private platformSignals:Lcom/google/ads/interactivemedia/v3/internal/zzqx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/zzqx<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private preferredLinearOrientation:Ljava/lang/Integer;

.field private projectNumber:Ljava/lang/String;

.field private region:Ljava/lang/String;

.field private rubidiumApiVersion:I

.field private secureSignals:Lcom/google/ads/interactivemedia/v3/internal/zzqu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/zzqu<",
            "Lcom/google/ads/interactivemedia/v3/impl/data/SecureSignalsData;",
            ">;"
        }
    .end annotation
.end field

.field private set$0:B

.field private settings:Lcom/google/ads/interactivemedia/v3/impl/data/ImaSdkSettingsData;

.field private streamActivityMonitorId:Ljava/lang/String;

.field private supportsExternalNavigation:Ljava/lang/Boolean;

.field private supportsIconClickFallback:Ljava/lang/Boolean;

.field private supportsNativeClickSignals:Ljava/lang/Boolean;

.field private supportsNativeNetworking:Ljava/lang/Boolean;

.field private supportsNativeViewSignals:Ljava/lang/Boolean;

.field private supportsOmidJsManagedAppSessions:Ljava/lang/Boolean;

.field private supportsQuicksilver:Ljava/lang/Boolean;

.field private supportsResizing:Ljava/lang/Boolean;

.field private useQAStreamBaseUrl:Ljava/lang/Boolean;

.field private usesCustomVideoPlayback:Ljava/lang/Boolean;

.field private vastLoadTimeout:Ljava/lang/Float;

.field private videoContinuousPlay:Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$ContinuousPlayState;

.field private videoEnvironment:Lcom/google/ads/interactivemedia/v3/impl/data/VideoEnvironmentData;

.field private videoId:Ljava/lang/String;

.field private videoPlayActivation:Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$AutoPlayState;

.field private videoPlayMuted:Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$MutePlayState;

.field private videoStitcherSessionOptions:Lcom/google/ads/interactivemedia/v3/internal/zzqx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/zzqx<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private vodConfigId:Ljava/lang/String;

.field private wrappedCompanionsEnabled:Ljava/lang/Boolean;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adTagParameters(Ljava/util/Map;)Lcom/google/ads/interactivemedia/v3/impl/data/GsonAdsRequest$Builder;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzqx;->zzd(Ljava/util/Map;)Lcom/google/ads/interactivemedia/v3/internal/zzqx;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->adTagParameters:Lcom/google/ads/interactivemedia/v3/internal/zzqx;

    return-object p0
.end method

.method public adTagUrl(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/GsonAdsRequest$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->adTagUrl:Ljava/lang/String;

    return-object p0
.end method

.method public adsResponse(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/GsonAdsRequest$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->adsResponse:Ljava/lang/String;

    return-object p0
.end method

.method public apiKey(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/GsonAdsRequest$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->apiKey:Ljava/lang/String;

    return-object p0
.end method

.method public assetKey(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/GsonAdsRequest$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->assetKey:Ljava/lang/String;

    return-object p0
.end method

.method public authToken(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/GsonAdsRequest$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->authToken:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/google/ads/interactivemedia/v3/impl/data/GsonAdsRequest;
    .locals 67

    move-object/from16 v0, p0

    .line 1
    iget-byte v1, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->set$0:B

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    new-instance v3, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest;

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->adTagParameters:Lcom/google/ads/interactivemedia/v3/internal/zzqx;

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->adTagUrl:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->adsResponse:Ljava/lang/String;

    iget-object v7, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->apiKey:Ljava/lang/String;

    iget-object v8, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->assetKey:Ljava/lang/String;

    iget-object v9, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->authToken:Ljava/lang/String;

    iget-object v10, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->companionSlots:Lcom/google/ads/interactivemedia/v3/internal/zzqx;

    iget-object v11, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->contentDuration:Ljava/lang/Float;

    iget-object v12, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->contentKeywords:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    iget-object v13, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->contentSourceUrl:Ljava/lang/String;

    iget-object v14, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->contentTitle:Ljava/lang/String;

    iget-object v15, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->contentUrl:Ljava/lang/String;

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->contentSourceId:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->consentSettings:Lcom/google/ads/interactivemedia/v3/internal/zzqx;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->customAssetKey:Ljava/lang/String;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->daiIntegration:Ljava/lang/Integer;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->enableNonce:Ljava/lang/Boolean;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->env:Ljava/lang/String;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->secureSignals:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->format:Ljava/lang/String;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->identifierInfo:Lcom/google/ads/interactivemedia/v3/impl/data/IdentifierInfo;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->isTv:Ljava/lang/Boolean;

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->isAndroidTvAdsFramework:Ljava/lang/Boolean;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->pauseAdSlot:Ljava/lang/String;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->wrappedCompanionsEnabled:Ljava/lang/Boolean;

    move-object/from16 v28, v1

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->linearAdSlotWidth:Ljava/lang/Integer;

    move-object/from16 v29, v1

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->linearAdSlotHeight:Ljava/lang/Integer;

    move-object/from16 v30, v1

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->liveStreamEventId:Ljava/lang/String;

    move-object/from16 v31, v1

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->liveStreamPrefetchSeconds:Ljava/lang/Float;

    move-object/from16 v32, v1

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->marketAppInfo:Lcom/google/ads/interactivemedia/v3/impl/data/MarketAppInfo;

    move-object/from16 v33, v1

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->msParameter:Ljava/lang/String;

    move-object/from16 v34, v1

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->network:Ljava/lang/String;

    move-object/from16 v35, v1

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->videoEnvironment:Lcom/google/ads/interactivemedia/v3/impl/data/VideoEnvironmentData;

    move-object/from16 v36, v1

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->networkCode:Ljava/lang/String;

    move-object/from16 v37, v1

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->oAuthToken:Ljava/lang/String;

    move-object/from16 v38, v1

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->omidAdSessionsOnStartedOnly:Ljava/lang/Boolean;

    move-object/from16 v39, v1

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->pixelDensity:Ljava/lang/Double;

    move-object/from16 v40, v1

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->platformSignals:Lcom/google/ads/interactivemedia/v3/internal/zzqx;

    move-object/from16 v41, v1

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->preferredLinearOrientation:Ljava/lang/Integer;

    move-object/from16 v42, v1

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->projectNumber:Ljava/lang/String;

    move-object/from16 v43, v1

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->region:Ljava/lang/String;

    move-object/from16 v44, v1

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->settings:Lcom/google/ads/interactivemedia/v3/impl/data/ImaSdkSettingsData;

    move-object/from16 v45, v1

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->supportsExternalNavigation:Ljava/lang/Boolean;

    move-object/from16 v46, v1

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->supportsIconClickFallback:Ljava/lang/Boolean;

    move-object/from16 v47, v1

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->supportsNativeClickSignals:Ljava/lang/Boolean;

    move-object/from16 v48, v1

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->supportsNativeNetworking:Ljava/lang/Boolean;

    move-object/from16 v49, v1

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->supportsNativeViewSignals:Ljava/lang/Boolean;

    move-object/from16 v50, v1

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->supportsOmidJsManagedAppSessions:Ljava/lang/Boolean;

    move-object/from16 v51, v1

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->streamActivityMonitorId:Ljava/lang/String;

    move-object/from16 v52, v1

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->supportsQuicksilver:Ljava/lang/Boolean;

    move-object/from16 v53, v1

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->supportsResizing:Ljava/lang/Boolean;

    move-object/from16 v54, v1

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->useQAStreamBaseUrl:Ljava/lang/Boolean;

    move-object/from16 v55, v1

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->usesCustomVideoPlayback:Ljava/lang/Boolean;

    move-object/from16 v56, v1

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->vastLoadTimeout:Ljava/lang/Float;

    move-object/from16 v57, v1

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->videoId:Ljava/lang/String;

    move-object/from16 v58, v1

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->videoPlayActivation:Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$AutoPlayState;

    move-object/from16 v59, v1

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->videoContinuousPlay:Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$ContinuousPlayState;

    move-object/from16 v60, v1

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->videoPlayMuted:Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$MutePlayState;

    move-object/from16 v61, v1

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->videoStitcherSessionOptions:Lcom/google/ads/interactivemedia/v3/internal/zzqx;

    move-object/from16 v62, v1

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->vodConfigId:Ljava/lang/String;

    move-object/from16 v63, v1

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->customUiOptions:Lcom/google/ads/interactivemedia/v3/impl/data/CustomUiOptionsData;

    move-object/from16 v64, v1

    iget v1, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->rubidiumApiVersion:I

    const/16 v66, 0x0

    move/from16 v65, v1

    move-object/from16 v17, v2

    invoke-direct/range {v3 .. v66}, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzqx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/zzqx;Ljava/lang/Float;Lcom/google/ads/interactivemedia/v3/internal/zzqu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/zzqx;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/zzqu;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/data/IdentifierInfo;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Float;Lcom/google/ads/interactivemedia/v3/impl/data/MarketAppInfo;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/data/VideoEnvironmentData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Double;Lcom/google/ads/interactivemedia/v3/internal/zzqx;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/data/ImaSdkSettingsData;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Float;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$AutoPlayState;Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$ContinuousPlayState;Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$MutePlayState;Lcom/google/ads/interactivemedia/v3/internal/zzqx;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/data/CustomUiOptionsData;I[B)V

    return-object v3

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties: rubidiumApiVersion"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public companionSlots(Ljava/util/Map;)Lcom/google/ads/interactivemedia/v3/impl/data/GsonAdsRequest$Builder;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzqx;->zzd(Ljava/util/Map;)Lcom/google/ads/interactivemedia/v3/internal/zzqx;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->companionSlots:Lcom/google/ads/interactivemedia/v3/internal/zzqx;

    return-object p0
.end method

.method public consentSettings(Ljava/util/Map;)Lcom/google/ads/interactivemedia/v3/impl/data/GsonAdsRequest$Builder;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzqx;->zzd(Ljava/util/Map;)Lcom/google/ads/interactivemedia/v3/internal/zzqx;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->consentSettings:Lcom/google/ads/interactivemedia/v3/internal/zzqx;

    return-object p0
.end method

.method public contentDuration(Ljava/lang/Float;)Lcom/google/ads/interactivemedia/v3/impl/data/GsonAdsRequest$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->contentDuration:Ljava/lang/Float;

    return-object p0
.end method

.method public contentKeywords(Ljava/util/List;)Lcom/google/ads/interactivemedia/v3/impl/data/GsonAdsRequest$Builder;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzqu;->zzk(Ljava/util/Collection;)Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->contentKeywords:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    return-object p0
.end method

.method public contentSourceId(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/GsonAdsRequest$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->contentSourceId:Ljava/lang/String;

    return-object p0
.end method

.method public contentSourceUrl(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/GsonAdsRequest$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->contentSourceUrl:Ljava/lang/String;

    return-object p0
.end method

.method public contentTitle(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/GsonAdsRequest$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->contentTitle:Ljava/lang/String;

    return-object p0
.end method

.method public contentUrl(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/GsonAdsRequest$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->contentUrl:Ljava/lang/String;

    return-object p0
.end method

.method public customAssetKey(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/GsonAdsRequest$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->customAssetKey:Ljava/lang/String;

    return-object p0
.end method

.method public customUiOptions(Lcom/google/ads/interactivemedia/v3/impl/data/CustomUiOptionsData;)Lcom/google/ads/interactivemedia/v3/impl/data/GsonAdsRequest$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->customUiOptions:Lcom/google/ads/interactivemedia/v3/impl/data/CustomUiOptionsData;

    return-object p0
.end method

.method public daiIntegration(Ljava/lang/Integer;)Lcom/google/ads/interactivemedia/v3/impl/data/GsonAdsRequest$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->daiIntegration:Ljava/lang/Integer;

    return-object p0
.end method

.method public enableNonce(Ljava/lang/Boolean;)Lcom/google/ads/interactivemedia/v3/impl/data/GsonAdsRequest$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->enableNonce:Ljava/lang/Boolean;

    return-object p0
.end method

.method public env(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/GsonAdsRequest$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->env:Ljava/lang/String;

    return-object p0
.end method

.method public format(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/GsonAdsRequest$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->format:Ljava/lang/String;

    return-object p0
.end method

.method public identifierInfo(Lcom/google/ads/interactivemedia/v3/impl/data/IdentifierInfo;)Lcom/google/ads/interactivemedia/v3/impl/data/GsonAdsRequest$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->identifierInfo:Lcom/google/ads/interactivemedia/v3/impl/data/IdentifierInfo;

    return-object p0
.end method

.method public isAndroidTvAdsFramework(Ljava/lang/Boolean;)Lcom/google/ads/interactivemedia/v3/impl/data/GsonAdsRequest$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->isAndroidTvAdsFramework:Ljava/lang/Boolean;

    return-object p0
.end method

.method public isTv(Ljava/lang/Boolean;)Lcom/google/ads/interactivemedia/v3/impl/data/GsonAdsRequest$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->isTv:Ljava/lang/Boolean;

    return-object p0
.end method

.method public linearAdSlotHeight(Ljava/lang/Integer;)Lcom/google/ads/interactivemedia/v3/impl/data/GsonAdsRequest$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->linearAdSlotHeight:Ljava/lang/Integer;

    return-object p0
.end method

.method public linearAdSlotWidth(Ljava/lang/Integer;)Lcom/google/ads/interactivemedia/v3/impl/data/GsonAdsRequest$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->linearAdSlotWidth:Ljava/lang/Integer;

    return-object p0
.end method

.method public liveStreamEventId(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/GsonAdsRequest$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->liveStreamEventId:Ljava/lang/String;

    return-object p0
.end method

.method public liveStreamPrefetchSeconds(Ljava/lang/Float;)Lcom/google/ads/interactivemedia/v3/impl/data/GsonAdsRequest$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->liveStreamPrefetchSeconds:Ljava/lang/Float;

    return-object p0
.end method

.method public marketAppInfo(Lcom/google/ads/interactivemedia/v3/impl/data/MarketAppInfo;)Lcom/google/ads/interactivemedia/v3/impl/data/GsonAdsRequest$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->marketAppInfo:Lcom/google/ads/interactivemedia/v3/impl/data/MarketAppInfo;

    return-object p0
.end method

.method public msParameter(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/GsonAdsRequest$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->msParameter:Ljava/lang/String;

    return-object p0
.end method

.method public network(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/GsonAdsRequest$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->network:Ljava/lang/String;

    return-object p0
.end method

.method public networkCode(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/GsonAdsRequest$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->networkCode:Ljava/lang/String;

    return-object p0
.end method

.method public oAuthToken(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/GsonAdsRequest$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->oAuthToken:Ljava/lang/String;

    return-object p0
.end method

.method public omidAdSessionsOnStartedOnly(Ljava/lang/Boolean;)Lcom/google/ads/interactivemedia/v3/impl/data/GsonAdsRequest$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->omidAdSessionsOnStartedOnly:Ljava/lang/Boolean;

    return-object p0
.end method

.method public pauseAdSlot(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/GsonAdsRequest$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->pauseAdSlot:Ljava/lang/String;

    return-object p0
.end method

.method public pixelDensity(Ljava/lang/Double;)Lcom/google/ads/interactivemedia/v3/impl/data/GsonAdsRequest$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->pixelDensity:Ljava/lang/Double;

    return-object p0
.end method

.method public platformSignals(Ljava/util/Map;)Lcom/google/ads/interactivemedia/v3/impl/data/GsonAdsRequest$Builder;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzqx;->zzd(Ljava/util/Map;)Lcom/google/ads/interactivemedia/v3/internal/zzqx;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->platformSignals:Lcom/google/ads/interactivemedia/v3/internal/zzqx;

    return-object p0
.end method

.method public preferredLinearOrientation(Ljava/lang/Integer;)Lcom/google/ads/interactivemedia/v3/impl/data/GsonAdsRequest$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->preferredLinearOrientation:Ljava/lang/Integer;

    return-object p0
.end method

.method public projectNumber(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/GsonAdsRequest$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->projectNumber:Ljava/lang/String;

    return-object p0
.end method

.method public region(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/GsonAdsRequest$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->region:Ljava/lang/String;

    return-object p0
.end method

.method public rubidiumApiVersion(I)Lcom/google/ads/interactivemedia/v3/impl/data/GsonAdsRequest$Builder;
    .locals 0

    .line 0
    iput p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->rubidiumApiVersion:I

    iget-byte p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->set$0:B

    or-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->set$0:B

    return-object p0
.end method

.method public secureSignals(Ljava/util/List;)Lcom/google/ads/interactivemedia/v3/impl/data/GsonAdsRequest$Builder;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzqu;->zzk(Ljava/util/Collection;)Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->secureSignals:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    return-object p0
.end method

.method public settings(Lcom/google/ads/interactivemedia/v3/impl/data/ImaSdkSettingsData;)Lcom/google/ads/interactivemedia/v3/impl/data/GsonAdsRequest$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->settings:Lcom/google/ads/interactivemedia/v3/impl/data/ImaSdkSettingsData;

    return-object p0
.end method

.method public streamActivityMonitorId(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/GsonAdsRequest$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->streamActivityMonitorId:Ljava/lang/String;

    return-object p0
.end method

.method public supportsExternalNavigation(Ljava/lang/Boolean;)Lcom/google/ads/interactivemedia/v3/impl/data/GsonAdsRequest$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->supportsExternalNavigation:Ljava/lang/Boolean;

    return-object p0
.end method

.method public supportsIconClickFallback(Ljava/lang/Boolean;)Lcom/google/ads/interactivemedia/v3/impl/data/GsonAdsRequest$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->supportsIconClickFallback:Ljava/lang/Boolean;

    return-object p0
.end method

.method public supportsNativeClickSignals(Ljava/lang/Boolean;)Lcom/google/ads/interactivemedia/v3/impl/data/GsonAdsRequest$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->supportsNativeClickSignals:Ljava/lang/Boolean;

    return-object p0
.end method

.method public supportsNativeNetworking(Ljava/lang/Boolean;)Lcom/google/ads/interactivemedia/v3/impl/data/GsonAdsRequest$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->supportsNativeNetworking:Ljava/lang/Boolean;

    return-object p0
.end method

.method public supportsNativeViewSignals(Ljava/lang/Boolean;)Lcom/google/ads/interactivemedia/v3/impl/data/GsonAdsRequest$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->supportsNativeViewSignals:Ljava/lang/Boolean;

    return-object p0
.end method

.method public supportsOmidJsManagedAppSessions(Ljava/lang/Boolean;)Lcom/google/ads/interactivemedia/v3/impl/data/GsonAdsRequest$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->supportsOmidJsManagedAppSessions:Ljava/lang/Boolean;

    return-object p0
.end method

.method public supportsQuicksilver(Ljava/lang/Boolean;)Lcom/google/ads/interactivemedia/v3/impl/data/GsonAdsRequest$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->supportsQuicksilver:Ljava/lang/Boolean;

    return-object p0
.end method

.method public supportsResizing(Ljava/lang/Boolean;)Lcom/google/ads/interactivemedia/v3/impl/data/GsonAdsRequest$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->supportsResizing:Ljava/lang/Boolean;

    return-object p0
.end method

.method public useQAStreamBaseUrl(Ljava/lang/Boolean;)Lcom/google/ads/interactivemedia/v3/impl/data/GsonAdsRequest$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->useQAStreamBaseUrl:Ljava/lang/Boolean;

    return-object p0
.end method

.method public usesCustomVideoPlayback(Ljava/lang/Boolean;)Lcom/google/ads/interactivemedia/v3/impl/data/GsonAdsRequest$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->usesCustomVideoPlayback:Ljava/lang/Boolean;

    return-object p0
.end method

.method public vastLoadTimeout(Ljava/lang/Float;)Lcom/google/ads/interactivemedia/v3/impl/data/GsonAdsRequest$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->vastLoadTimeout:Ljava/lang/Float;

    return-object p0
.end method

.method public videoContinuousPlay(Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$ContinuousPlayState;)Lcom/google/ads/interactivemedia/v3/impl/data/GsonAdsRequest$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->videoContinuousPlay:Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$ContinuousPlayState;

    return-object p0
.end method

.method public videoEnvironment(Lcom/google/ads/interactivemedia/v3/impl/data/VideoEnvironmentData;)Lcom/google/ads/interactivemedia/v3/impl/data/GsonAdsRequest$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->videoEnvironment:Lcom/google/ads/interactivemedia/v3/impl/data/VideoEnvironmentData;

    return-object p0
.end method

.method public videoId(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/GsonAdsRequest$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->videoId:Ljava/lang/String;

    return-object p0
.end method

.method public videoPlayActivation(Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$AutoPlayState;)Lcom/google/ads/interactivemedia/v3/impl/data/GsonAdsRequest$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->videoPlayActivation:Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$AutoPlayState;

    return-object p0
.end method

.method public videoPlayMuted(Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$MutePlayState;)Lcom/google/ads/interactivemedia/v3/impl/data/GsonAdsRequest$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->videoPlayMuted:Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$MutePlayState;

    return-object p0
.end method

.method public videoStitcherSessionOptions(Ljava/util/Map;)Lcom/google/ads/interactivemedia/v3/impl/data/GsonAdsRequest$Builder;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzqx;->zzd(Ljava/util/Map;)Lcom/google/ads/interactivemedia/v3/internal/zzqx;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->videoStitcherSessionOptions:Lcom/google/ads/interactivemedia/v3/internal/zzqx;

    return-object p0
.end method

.method public vodConfigId(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/GsonAdsRequest$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->vodConfigId:Ljava/lang/String;

    return-object p0
.end method

.method public wrappedCompanionsEnabled(Ljava/lang/Boolean;)Lcom/google/ads/interactivemedia/v3/impl/data/GsonAdsRequest$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GsonAdsRequest$Builder;->wrappedCompanionsEnabled:Ljava/lang/Boolean;

    return-object p0
.end method
