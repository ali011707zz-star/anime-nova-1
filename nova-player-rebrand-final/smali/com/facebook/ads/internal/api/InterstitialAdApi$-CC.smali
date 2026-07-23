.class public abstract synthetic Lcom/facebook/ads/internal/api/InterstitialAdApi$-CC;
.super Ljava/lang/Object;
.source "InterstitialAdApi.java"


# direct methods
.method public static bridge synthetic $default$buildLoadAdConfig(Lcom/facebook/ads/internal/api/InterstitialAdApi;)Lcom/facebook/ads/Ad$LoadConfigBuilder;
    .locals 0

    .line 17
    invoke-interface {p0}, Lcom/facebook/ads/internal/api/InterstitialAdApi;->buildLoadAdConfig()Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic $default$buildShowAdConfig(Lcom/facebook/ads/internal/api/InterstitialAdApi;)Lcom/facebook/ads/FullScreenAd$ShowConfigBuilder;
    .locals 0

    .line 17
    invoke-interface {p0}, Lcom/facebook/ads/internal/api/InterstitialAdApi;->buildShowAdConfig()Lcom/facebook/ads/InterstitialAd$InterstitialAdShowConfigBuilder;

    move-result-object p0

    return-object p0
.end method
