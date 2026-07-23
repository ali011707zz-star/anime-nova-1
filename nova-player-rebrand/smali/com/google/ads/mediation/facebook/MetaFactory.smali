.class public Lcom/google/ads/mediation/facebook/MetaFactory;
.super Ljava/lang/Object;
.source "MetaFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAppOpenAd(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/ads/InterstitialAd;
    .locals 1

    .line 13
    new-instance v0, Lcom/facebook/ads/InterstitialAd;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/InterstitialAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public createInterstitialAd(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/ads/InterstitialAd;
    .locals 1

    .line 17
    new-instance v0, Lcom/facebook/ads/InterstitialAd;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/InterstitialAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public createMediaView(Landroid/content/Context;)Lcom/facebook/ads/MediaView;
    .locals 1

    .line 30
    new-instance v0, Lcom/facebook/ads/MediaView;

    invoke-direct {v0, p1}, Lcom/facebook/ads/MediaView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public createMetaAdView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/ads/AdView;
    .locals 1

    .line 26
    new-instance v0, Lcom/facebook/ads/AdView;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createRewardedAd(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/ads/RewardedVideoAd;
    .locals 1

    .line 21
    new-instance v0, Lcom/facebook/ads/RewardedVideoAd;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/RewardedVideoAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method
