.class public Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;
.super Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;
.source "FacebookRtbNativeAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd$NativeListener;,
        Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd$NativeAdMapperListener;,
        Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd$FacebookAdapterNativeAdImage;
    }
.end annotation


# instance fields
.field private final callback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

.field private mediaView:Lcom/facebook/ads/MediaView;

.field private final metaFactory:Lcom/google/ads/mediation/facebook/MetaFactory;

.field private nativeAdBase:Lcom/facebook/ads/NativeAdBase;

.field private nativeAdCallback:Lcom/google/android/gms/ads/mediation/MediationNativeAdCallback;


# direct methods
.method static bridge synthetic -$$Nest$fgetcallback(Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;)Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;->callback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnativeAdCallback(Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;)Lcom/google/android/gms/ads/mediation/MediationNativeAdCallback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;->nativeAdCallback:Lcom/google/android/gms/ads/mediation/MediationNativeAdCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputnativeAdCallback(Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;Lcom/google/android/gms/ads/mediation/MediationNativeAdCallback;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;->nativeAdCallback:Lcom/google/android/gms/ads/mediation/MediationNativeAdCallback;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;Lcom/google/ads/mediation/facebook/MetaFactory;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;->callback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    .line 75
    iput-object p2, p0, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;->metaFactory:Lcom/google/ads/mediation/facebook/MetaFactory;

    return-void
.end method

.method private containsRequiredFieldsForUnifiedNativeAd(Lcom/facebook/ads/NativeAdBase;)Z
    .locals 4

    .line 307
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAdBase;->getAdHeadline()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAdBase;->getAdBodyText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAdBase;->getAdIcon()Lcom/facebook/ads/NativeAdBase$Image;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAdBase;->getAdCallToAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 310
    :goto_0
    instance-of v3, p1, Lcom/facebook/ads/NativeBannerAd;

    if-eqz v3, :cond_1

    return v0

    :cond_1
    if-eqz v0, :cond_2

    .line 313
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAdBase;->getAdCoverImage()Lcom/facebook/ads/NativeAdBase$Image;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;->mediaView:Lcom/facebook/ads/MediaView;

    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v1
.end method


# virtual methods
.method public mapNativeAd(Landroid/content/Context;Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd$NativeAdMapperListener;)V
    .locals 3

    .line 203
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;->nativeAdBase:Lcom/facebook/ads/NativeAdBase;

    invoke-direct {p0, v0}, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;->containsRequiredFieldsForUnifiedNativeAd(Lcom/facebook/ads/NativeAdBase;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    new-instance p1, Lcom/google/android/gms/ads/AdError;

    const-string v0, "Ad from Meta Audience Network doesn\'t have all required assets."

    const-string v1, "com.google.ads.mediation.facebook"

    const/16 v2, 0x6c

    invoke-direct {p1, v2, v0, v1}, Lcom/google/android/gms/ads/AdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 206
    sget-object v0, Lcom/google/ads/mediation/facebook/FacebookMediationAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-interface {p2, p1}, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd$NativeAdMapperListener;->onMappingFailed(Lcom/google/android/gms/ads/AdError;)V

    return-void

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;->nativeAdBase:Lcom/facebook/ads/NativeAdBase;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->getAdHeadline()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setHeadline(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;->nativeAdBase:Lcom/facebook/ads/NativeAdBase;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->getAdCoverImage()Lcom/facebook/ads/NativeAdBase$Image;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 216
    new-instance v1, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd$FacebookAdapterNativeAdImage;

    iget-object v2, p0, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;->nativeAdBase:Lcom/facebook/ads/NativeAdBase;

    .line 217
    invoke-virtual {v2}, Lcom/facebook/ads/NativeAdBase;->getAdCoverImage()Lcom/facebook/ads/NativeAdBase$Image;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/NativeAdBase$Image;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd$FacebookAdapterNativeAdImage;-><init>(Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;Landroid/net/Uri;)V

    .line 216
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setImages(Ljava/util/List;)V

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;->nativeAdBase:Lcom/facebook/ads/NativeAdBase;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->getAdBodyText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setBody(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;->nativeAdBase:Lcom/facebook/ads/NativeAdBase;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->getPreloadedIconViewDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_3

    .line 222
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;->nativeAdBase:Lcom/facebook/ads/NativeAdBase;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->getAdIcon()Lcom/facebook/ads/NativeAdBase$Image;

    move-result-object v0

    if-nez v0, :cond_2

    .line 223
    new-instance v0, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd$FacebookAdapterNativeAdImage;

    invoke-direct {v0, p0}, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd$FacebookAdapterNativeAdImage;-><init>(Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setIcon(Lcom/google/android/gms/ads/formats/NativeAd$Image;)V

    goto :goto_0

    .line 225
    :cond_2
    new-instance v0, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd$FacebookAdapterNativeAdImage;

    iget-object v1, p0, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;->nativeAdBase:Lcom/facebook/ads/NativeAdBase;

    invoke-virtual {v1}, Lcom/facebook/ads/NativeAdBase;->getAdIcon()Lcom/facebook/ads/NativeAdBase$Image;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/NativeAdBase$Image;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd$FacebookAdapterNativeAdImage;-><init>(Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setIcon(Lcom/google/android/gms/ads/formats/NativeAd$Image;)V

    goto :goto_0

    .line 228
    :cond_3
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;->nativeAdBase:Lcom/facebook/ads/NativeAdBase;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->getPreloadedIconViewDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 229
    new-instance v1, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd$FacebookAdapterNativeAdImage;

    invoke-direct {v1, p0, v0}, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd$FacebookAdapterNativeAdImage;-><init>(Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;Landroid/graphics/drawable/Drawable;)V

    .line 230
    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setIcon(Lcom/google/android/gms/ads/formats/NativeAd$Image;)V

    .line 232
    :goto_0
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;->nativeAdBase:Lcom/facebook/ads/NativeAdBase;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->getAdCallToAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setCallToAction(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;->nativeAdBase:Lcom/facebook/ads/NativeAdBase;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->getAdvertiserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setAdvertiser(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;->mediaView:Lcom/facebook/ads/MediaView;

    new-instance v1, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd$1;

    invoke-direct {v1, p0}, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd$1;-><init>(Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/MediaView;->setListener(Lcom/facebook/ads/MediaViewListener;)V

    const/4 v0, 0x1

    .line 283
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setHasVideoContent(Z)V

    .line 284
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;->mediaView:Lcom/facebook/ads/MediaView;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setMediaView(Landroid/view/View;)V

    .line 287
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 288
    iget-object v1, p0, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;->nativeAdBase:Lcom/facebook/ads/NativeAdBase;

    invoke-virtual {v1}, Lcom/facebook/ads/NativeAdBase;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 289
    iget-object v1, p0, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;->nativeAdBase:Lcom/facebook/ads/NativeAdBase;

    .line 290
    invoke-virtual {v1}, Lcom/facebook/ads/NativeAdBase;->getAdSocialContext()Ljava/lang/String;

    move-result-object v1

    .line 289
    const-string v2, "social_context"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 291
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setExtras(Landroid/os/Bundle;)V

    .line 293
    new-instance v0, Lcom/facebook/ads/AdOptionsView;

    iget-object v1, p0, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;->nativeAdBase:Lcom/facebook/ads/NativeAdBase;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/facebook/ads/AdOptionsView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAdLayout;)V

    .line 294
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setAdChoicesContent(Landroid/view/View;)V

    .line 295
    invoke-interface {p2}, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd$NativeAdMapperListener;->onMappingSuccess()V

    return-void
.end method

.method public render(Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;)V
    .locals 5

    .line 79
    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->getServerParameters()Landroid/os/Bundle;

    move-result-object v0

    .line 80
    invoke-static {v0}, Lcom/google/ads/mediation/facebook/FacebookMediationAdapter;->getPlacementID(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "com.google.ads.mediation.facebook"

    if-eqz v1, :cond_0

    .line 82
    new-instance p1, Lcom/google/android/gms/ads/AdError;

    const/16 v0, 0x65

    const-string v1, "Failed to request ad. PlacementID is null or empty."

    invoke-direct {p1, v0, v1, v2}, Lcom/google/android/gms/ads/AdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 85
    sget-object v0, Lcom/google/ads/mediation/facebook/FacebookMediationAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;->callback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onFailure(Lcom/google/android/gms/ads/AdError;)V

    return-void

    .line 90
    :cond_0
    invoke-static {p1}, Lcom/google/ads/mediation/facebook/FacebookMediationAdapter;->setMixedAudience(Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;)V

    .line 91
    iget-object v1, p0, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;->metaFactory:Lcom/google/ads/mediation/facebook/MetaFactory;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/ads/mediation/facebook/MetaFactory;->createMediaView(Landroid/content/Context;)Lcom/facebook/ads/MediaView;

    move-result-object v1

    iput-object v1, p0, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;->mediaView:Lcom/facebook/ads/MediaView;

    .line 96
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->getBidResponse()Ljava/lang/String;

    move-result-object v3

    .line 95
    invoke-static {v1, v0, v3}, Lcom/facebook/ads/NativeAdBase;->fromBidPayload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/ads/NativeAdBase;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;->nativeAdBase:Lcom/facebook/ads/NativeAdBase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->getWatermark()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;->nativeAdBase:Lcom/facebook/ads/NativeAdBase;

    new-instance v1, Lcom/facebook/ads/ExtraHints$Builder;

    invoke-direct {v1}, Lcom/facebook/ads/ExtraHints$Builder;-><init>()V

    .line 107
    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->getWatermark()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/ads/ExtraHints$Builder;->mediationData(Ljava/lang/String;)Lcom/facebook/ads/ExtraHints$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/ExtraHints$Builder;->build()Lcom/facebook/ads/ExtraHints;

    move-result-object v1

    .line 106
    invoke-virtual {v0, v1}, Lcom/facebook/ads/NativeAdBase;->setExtraHints(Lcom/facebook/ads/ExtraHints;)V

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;->nativeAdBase:Lcom/facebook/ads/NativeAdBase;

    .line 112
    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->buildLoadAdConfig()Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    move-result-object v1

    new-instance v2, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd$NativeListener;

    .line 113
    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;->nativeAdBase:Lcom/facebook/ads/NativeAdBase;

    invoke-direct {v2, p0, v3, v4}, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd$NativeListener;-><init>(Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;)V

    invoke-interface {v1, v2}, Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/NativeAdListener;)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    move-result-object v1

    .line 114
    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->getBidResponse()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;->withBid(Ljava/lang/String;)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    move-result-object p1

    sget-object v1, Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;->ALL:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    .line 115
    invoke-interface {p1, v1}, Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;->withMediaCacheFlag(Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    move-result-object p1

    const/4 v1, -0x1

    .line 116
    invoke-interface {p1, v1, v1}, Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;->withPreloadedIconView(II)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    move-result-object p1

    .line 119
    invoke-interface {p1}, Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;->build()Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;

    move-result-object p1

    .line 110
    invoke-virtual {v0, p1}, Lcom/facebook/ads/NativeAdBase;->loadAd(Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;)V

    return-void

    :catch_0
    move-exception p1

    .line 98
    new-instance v0, Lcom/google/android/gms/ads/AdError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create native ad from bid payload: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x6d

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/gms/ads/AdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 100
    sget-object p1, Lcom/google/ads/mediation/facebook/FacebookMediationAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object p1, p0, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;->callback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onFailure(Lcom/google/android/gms/ads/AdError;)V

    return-void
.end method

.method public trackViews(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V
    .locals 3

    const/4 p3, 0x1

    .line 321
    invoke-virtual {p0, p3}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setOverrideClickHandling(Z)V

    .line 323
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 324
    const-string v1, "3003"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 326
    iget-object v1, p0, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;->nativeAdBase:Lcom/facebook/ads/NativeAdBase;

    instance-of v2, v1, Lcom/facebook/ads/NativeBannerAd;

    if-eqz v2, :cond_2

    if-nez p2, :cond_0

    .line 330
    sget-object p1, Lcom/google/ads/mediation/facebook/FacebookMediationAdapter;->TAG:Ljava/lang/String;

    const-string p2, "Missing or invalid native ad icon asset. Meta Audience Network impression recording might be impacted for this ad."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 335
    :cond_0
    instance-of v2, p2, Landroid/widget/ImageView;

    if-nez v2, :cond_1

    .line 338
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    new-array p2, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    .line 336
    const-string p1, "Native ad icon asset is rendered with an incompatible class type. Meta Audience Network impression recording might be impacted for this ad. Expected: ImageView, actual: %s."

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 339
    sget-object p2, Lcom/google/ads/mediation/facebook/FacebookMediationAdapter;->TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 343
    :cond_1
    check-cast v1, Lcom/facebook/ads/NativeBannerAd;

    .line 344
    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {v1, p1, p2, v0}, Lcom/facebook/ads/NativeBannerAd;->registerViewForInteraction(Landroid/view/View;Landroid/widget/ImageView;Ljava/util/List;)V

    return-void

    .line 345
    :cond_2
    instance-of p3, v1, Lcom/facebook/ads/NativeAd;

    if-eqz p3, :cond_4

    .line 346
    check-cast v1, Lcom/facebook/ads/NativeAd;

    .line 347
    instance-of p3, p2, Landroid/widget/ImageView;

    if-eqz p3, :cond_3

    .line 348
    iget-object p3, p0, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;->mediaView:Lcom/facebook/ads/MediaView;

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {v1, p1, p3, p2, v0}, Lcom/facebook/ads/NativeAd;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Landroid/widget/ImageView;Ljava/util/List;)V

    return-void

    .line 350
    :cond_3
    sget-object p2, Lcom/google/ads/mediation/facebook/FacebookMediationAdapter;->TAG:Ljava/lang/String;

    const-string p3, "Native icon asset is not of type ImageView. Calling registerViewForInteraction() without a reference to the icon view."

    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object p2, p0, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;->mediaView:Lcom/facebook/ads/MediaView;

    invoke-virtual {v1, p1, p2, v0}, Lcom/facebook/ads/NativeAd;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Ljava/util/List;)V

    return-void

    .line 355
    :cond_4
    sget-object p1, Lcom/google/ads/mediation/facebook/FacebookMediationAdapter;->TAG:Ljava/lang/String;

    const-string p2, "Native ad type is not of type NativeAd or NativeBannerAd. It is not currently supported by the Meta Audience Network Adapter. Meta Audience Network impression recording might be impacted for this ad."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public untrackView(Landroid/view/View;)V
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;->nativeAdBase:Lcom/facebook/ads/NativeAdBase;

    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->unregisterView()V

    .line 367
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->untrackView(Landroid/view/View;)V

    return-void
.end method
