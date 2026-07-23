.class public Lcom/google/ads/mediation/facebook/FacebookMediationAdapter;
.super Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;
.source "FacebookMediationAdapter.java"


# static fields
.field public static final ERROR_ADVIEW_CONSTRUCTOR_EXCEPTION:I = 0x6f

.field public static final ERROR_BANNER_SIZE_MISMATCH:I = 0x66

.field public static final ERROR_CREATE_NATIVE_AD_FROM_BID_PAYLOAD:I = 0x6d

.field public static final ERROR_DOMAIN:Ljava/lang/String; = "com.google.ads.mediation.facebook"

.field public static final ERROR_FACEBOOK_INITIALIZATION:I = 0x68

.field public static final ERROR_FAILED_TO_PRESENT_AD:I = 0x6e

.field public static final ERROR_INVALID_SERVER_PARAMETERS:I = 0x65

.field public static final ERROR_MAPPING_NATIVE_ASSETS:I = 0x6c

.field public static final ERROR_NULL_CONTEXT:I = 0x6b

.field public static final ERROR_REQUIRES_ACTIVITY_CONTEXT:I = 0x67

.field public static final ERROR_REQUIRES_UNIFIED_NATIVE_ADS:I = 0x69

.field public static final ERROR_WRONG_NATIVE_TYPE:I = 0x6a

.field public static final FACEBOOK_SDK_ERROR_DOMAIN:Ljava/lang/String; = "com.facebook.ads"

.field public static final KEY_ID:Ljava/lang/String; = "id"

.field public static final KEY_SOCIAL_CONTEXT_ASSET:Ljava/lang/String; = "social_context"

.field public static final PLACEMENT_PARAMETER:Ljava/lang/String; = "pubid"

.field public static final RTB_PLACEMENT_PARAMETER:Ljava/lang/String; = "placement_id"

.field public static final TAG:Ljava/lang/String; = "FacebookMediationAdapter"


# instance fields
.field private banner:Lcom/google/ads/mediation/facebook/rtb/FacebookRtbBannerAd;

.field private interstitial:Lcom/google/ads/mediation/facebook/rtb/FacebookRtbInterstitialAd;

.field private final metaFactory:Lcom/google/ads/mediation/facebook/MetaFactory;

.field private nativeAd:Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;

.field private rewardedAd:Lcom/google/ads/mediation/facebook/FacebookRewardedAd;

.field private rewardedInterstitialAd:Lcom/google/ads/mediation/facebook/FacebookRewardedInterstitialAd;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 161
    invoke-direct {p0}, Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;-><init>()V

    .line 162
    new-instance v0, Lcom/google/ads/mediation/facebook/MetaFactory;

    invoke-direct {v0}, Lcom/google/ads/mediation/facebook/MetaFactory;-><init>()V

    iput-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookMediationAdapter;->metaFactory:Lcom/google/ads/mediation/facebook/MetaFactory;

    return-void
.end method

.method public static getAdError(Lcom/facebook/ads/AdError;)Lcom/google/android/gms/ads/AdError;
    .locals 3

    .line 172
    new-instance v0, Lcom/google/android/gms/ads/AdError;

    invoke-virtual {p0}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object p0

    const-string v2, "com.facebook.ads"

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/gms/ads/AdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getPlacementID(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    .line 307
    const-string v0, "placement_id"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 310
    const-string v0, "pubid"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public static setMixedAudience(Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;)V
    .locals 2

    .line 320
    invoke-virtual {p0}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->taggedForChildDirectedTreatment()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    .line 322
    invoke-virtual {p0}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->taggedForUnderAgeTreatment()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 325
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->taggedForChildDirectedTreatment()I

    move-result v0

    if-eqz v0, :cond_2

    .line 327
    invoke-virtual {p0}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->taggedForUnderAgeTreatment()I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 329
    invoke-static {p0}, Lcom/facebook/ads/AdSettings;->setMixedAudience(Z)V

    return-void

    .line 324
    :cond_3
    :goto_1
    invoke-static {v1}, Lcom/facebook/ads/AdSettings;->setMixedAudience(Z)V

    return-void
.end method


# virtual methods
.method public collectSignals(Lcom/google/android/gms/ads/mediation/rtb/RtbSignalData;Lcom/google/android/gms/ads/mediation/rtb/SignalCallbacks;)V
    .locals 0

    .line 244
    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/rtb/RtbSignalData;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/ads/BidderTokenProvider;->getBidderToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 245
    invoke-interface {p2, p1}, Lcom/google/android/gms/ads/mediation/rtb/SignalCallbacks;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public getSDKVersionInfo()Lcom/google/android/gms/ads/VersionInfo;
    .locals 6

    .line 197
    invoke-static {}, Lcom/google/ads/mediation/facebook/FacebookSdkWrapper;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    .line 198
    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 200
    array-length v2, v1

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lt v2, v3, :cond_0

    .line 201
    aget-object v0, v1, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 202
    aget-object v2, v1, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    .line 203
    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 204
    new-instance v3, Lcom/google/android/gms/ads/VersionInfo;

    invoke-direct {v3, v0, v2, v1}, Lcom/google/android/gms/ads/VersionInfo;-><init>(III)V

    return-object v3

    .line 207
    :cond_0
    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v5

    const-string v0, "Unexpected SDK version format: %s.Returning 0.0.0 for SDK version."

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 209
    sget-object v1, Lcom/google/ads/mediation/facebook/FacebookMediationAdapter;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    new-instance v0, Lcom/google/android/gms/ads/VersionInfo;

    invoke-direct {v0, v5, v5, v5}, Lcom/google/android/gms/ads/VersionInfo;-><init>(III)V

    return-object v0
.end method

.method public getVersionInfo()Lcom/google/android/gms/ads/VersionInfo;
    .locals 6

    .line 178
    invoke-static {}, Lcom/google/ads/mediation/facebook/FacebookAdapterUtils;->getAdapterVersion()Ljava/lang/String;

    move-result-object v0

    .line 179
    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 181
    array-length v2, v1

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lt v2, v3, :cond_0

    .line 182
    aget-object v0, v1, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 183
    aget-object v2, v1, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    .line 184
    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    const/4 v4, 0x3

    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v3, v1

    .line 185
    new-instance v1, Lcom/google/android/gms/ads/VersionInfo;

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/ads/VersionInfo;-><init>(III)V

    return-object v1

    .line 188
    :cond_0
    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v5

    const-string v0, "Unexpected adapter version format: %s.Returning 0.0.0 for adapter version."

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 190
    sget-object v1, Lcom/google/ads/mediation/facebook/FacebookMediationAdapter;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    new-instance v0, Lcom/google/android/gms/ads/VersionInfo;

    invoke-direct {v0, v5, v5, v5}, Lcom/google/android/gms/ads/VersionInfo;-><init>(III)V

    return-object v0
.end method

.method public initialize(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/mediation/MediationConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 219
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/mediation/MediationConfiguration;

    .line 220
    invoke-virtual {v1}, Lcom/google/android/gms/ads/mediation/MediationConfiguration;->getServerParameters()Landroid/os/Bundle;

    move-result-object v1

    .line 222
    invoke-static {v1}, Lcom/google/ads/mediation/facebook/FacebookMediationAdapter;->getPlacementID(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 223
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 224
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 228
    :cond_1
    invoke-static {}, Lcom/google/ads/mediation/facebook/FacebookInitializer;->getInstance()Lcom/google/ads/mediation/facebook/FacebookInitializer;

    move-result-object p3

    new-instance v1, Lcom/google/ads/mediation/facebook/FacebookMediationAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/google/ads/mediation/facebook/FacebookMediationAdapter$1;-><init>(Lcom/google/ads/mediation/facebook/FacebookMediationAdapter;Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;)V

    invoke-virtual {p3, p1, v0, v1}, Lcom/google/ads/mediation/facebook/FacebookInitializer;->initialize(Landroid/content/Context;Ljava/util/ArrayList;Lcom/google/ads/mediation/facebook/FacebookInitializer$Listener;)V

    return-void
.end method

.method public loadRtbAppOpenAd(Lcom/google/android/gms/ads/mediation/MediationAppOpenAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/ads/mediation/MediationAppOpenAdConfiguration;",
            "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;",
            ")V"
        }
    .end annotation

    .line 252
    new-instance v0, Lcom/google/ads/mediation/facebook/rtb/MetaRtbAppOpenAd;

    iget-object v1, p0, Lcom/google/ads/mediation/facebook/FacebookMediationAdapter;->metaFactory:Lcom/google/ads/mediation/facebook/MetaFactory;

    invoke-direct {v0, p2, v1}, Lcom/google/ads/mediation/facebook/rtb/MetaRtbAppOpenAd;-><init>(Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;Lcom/google/ads/mediation/facebook/MetaFactory;)V

    .line 253
    invoke-virtual {v0, p1}, Lcom/google/ads/mediation/facebook/rtb/MetaRtbAppOpenAd;->loadAd(Lcom/google/android/gms/ads/mediation/MediationAppOpenAdConfiguration;)V

    return-void
.end method

.method public loadRtbBannerAd(Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;",
            "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;",
            ")V"
        }
    .end annotation

    .line 260
    new-instance v0, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbBannerAd;

    iget-object v1, p0, Lcom/google/ads/mediation/facebook/FacebookMediationAdapter;->metaFactory:Lcom/google/ads/mediation/facebook/MetaFactory;

    invoke-direct {v0, p2, v1}, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbBannerAd;-><init>(Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;Lcom/google/ads/mediation/facebook/MetaFactory;)V

    iput-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookMediationAdapter;->banner:Lcom/google/ads/mediation/facebook/rtb/FacebookRtbBannerAd;

    .line 261
    invoke-virtual {v0, p1}, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbBannerAd;->render(Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;)V

    return-void
.end method

.method public loadRtbInterstitialAd(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;",
            "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;",
            ")V"
        }
    .end annotation

    .line 268
    new-instance v0, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbInterstitialAd;

    iget-object v1, p0, Lcom/google/ads/mediation/facebook/FacebookMediationAdapter;->metaFactory:Lcom/google/ads/mediation/facebook/MetaFactory;

    invoke-direct {v0, p2, v1}, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbInterstitialAd;-><init>(Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;Lcom/google/ads/mediation/facebook/MetaFactory;)V

    iput-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookMediationAdapter;->interstitial:Lcom/google/ads/mediation/facebook/rtb/FacebookRtbInterstitialAd;

    .line 269
    invoke-virtual {v0, p1}, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbInterstitialAd;->render(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;)V

    return-void
.end method

.method public loadRtbNativeAd(Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;",
            "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;",
            ")V"
        }
    .end annotation

    .line 285
    new-instance v0, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;

    iget-object v1, p0, Lcom/google/ads/mediation/facebook/FacebookMediationAdapter;->metaFactory:Lcom/google/ads/mediation/facebook/MetaFactory;

    invoke-direct {v0, p2, v1}, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;-><init>(Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;Lcom/google/ads/mediation/facebook/MetaFactory;)V

    iput-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookMediationAdapter;->nativeAd:Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;

    .line 286
    invoke-virtual {v0, p1}, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;->render(Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;)V

    return-void
.end method

.method public loadRtbRewardedAd(Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;",
            "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;",
            ")V"
        }
    .end annotation

    .line 277
    new-instance v0, Lcom/google/ads/mediation/facebook/FacebookRewardedAd;

    iget-object v1, p0, Lcom/google/ads/mediation/facebook/FacebookMediationAdapter;->metaFactory:Lcom/google/ads/mediation/facebook/MetaFactory;

    invoke-direct {v0, p2, v1}, Lcom/google/ads/mediation/facebook/FacebookRewardedAd;-><init>(Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;Lcom/google/ads/mediation/facebook/MetaFactory;)V

    iput-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookMediationAdapter;->rewardedAd:Lcom/google/ads/mediation/facebook/FacebookRewardedAd;

    .line 278
    invoke-virtual {v0, p1}, Lcom/google/ads/mediation/facebook/FacebookRewardedAd;->render(Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;)V

    return-void
.end method

.method public loadRtbRewardedInterstitialAd(Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;",
            "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;",
            ")V"
        }
    .end annotation

    .line 295
    new-instance v0, Lcom/google/ads/mediation/facebook/FacebookRewardedInterstitialAd;

    iget-object v1, p0, Lcom/google/ads/mediation/facebook/FacebookMediationAdapter;->metaFactory:Lcom/google/ads/mediation/facebook/MetaFactory;

    invoke-direct {v0, p2, v1}, Lcom/google/ads/mediation/facebook/FacebookRewardedInterstitialAd;-><init>(Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;Lcom/google/ads/mediation/facebook/MetaFactory;)V

    iput-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookMediationAdapter;->rewardedInterstitialAd:Lcom/google/ads/mediation/facebook/FacebookRewardedInterstitialAd;

    .line 297
    invoke-virtual {v0, p1}, Lcom/google/ads/mediation/facebook/FacebookRewardedAd;->render(Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;)V

    return-void
.end method
