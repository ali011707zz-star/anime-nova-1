.class public final Lcom/facebook/ads/redexgen/X/SF;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/RewardedInterstitialAd$RewardedInterstitialAdLoadConfigBuilder;
.implements Lcom/facebook/ads/RewardedInterstitialAd$RewardedInterstitialLoadAdConfig;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/SE;
    }
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/SI;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/SI;)V
    .locals 2

    .line 63738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63739
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SF;->A00:Lcom/facebook/ads/redexgen/X/SI;

    .line 63740
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SF;->A00:Lcom/facebook/ads/redexgen/X/SI;

    sget-object v0, Lcom/facebook/ads/AdExperienceType;->AD_EXPERIENCE_TYPE_REWARDED_INTERSTITIAL:Lcom/facebook/ads/AdExperienceType;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/SI;->withAdExperience(Lcom/facebook/ads/AdExperienceType;)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    .line 63741
    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 1

    .line 63742
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A00:Lcom/facebook/ads/redexgen/X/SI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SI;->A00()V

    .line 63743
    return-void
.end method

.method public final bridge synthetic build()Lcom/facebook/ads/Ad$LoadAdConfig;
    .locals 1

    .line 63744
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SF;->build()Lcom/facebook/ads/RewardedInterstitialAd$RewardedInterstitialLoadAdConfig;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/facebook/ads/RewardedInterstitialAd$RewardedInterstitialLoadAdConfig;
    .locals 0

    .line 63745
    return-object p0
.end method

.method public final withAdListener(Lcom/facebook/ads/RewardedInterstitialAdListener;)Lcom/facebook/ads/RewardedInterstitialAd$RewardedInterstitialAdLoadConfigBuilder;
    .locals 2

    .line 63746
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SF;->A00:Lcom/facebook/ads/redexgen/X/SI;

    new-instance v0, Lcom/facebook/ads/redexgen/X/SE;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/SE;-><init>(Lcom/facebook/ads/RewardedInterstitialAdListener;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/SI;->withAdListener(Lcom/facebook/ads/RewardedVideoAdListener;)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    .line 63747
    return-object p0
.end method

.method public final bridge synthetic withBid(Ljava/lang/String;)Lcom/facebook/ads/Ad$LoadConfigBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 63748
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/SF;->withBid(Ljava/lang/String;)Lcom/facebook/ads/RewardedInterstitialAd$RewardedInterstitialAdLoadConfigBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final withBid(Ljava/lang/String;)Lcom/facebook/ads/RewardedInterstitialAd$RewardedInterstitialAdLoadConfigBuilder;
    .locals 1

    .line 63749
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A00:Lcom/facebook/ads/redexgen/X/SI;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/SI;->withBid(Ljava/lang/String;)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    .line 63750
    return-object p0
.end method

.method public final withFailOnCacheFailureEnabled(Z)Lcom/facebook/ads/RewardedInterstitialAd$RewardedInterstitialAdLoadConfigBuilder;
    .locals 1

    .line 63751
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A00:Lcom/facebook/ads/redexgen/X/SI;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/SI;->withFailOnCacheFailureEnabled(Z)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    .line 63752
    return-object p0
.end method

.method public final withRewardData(Lcom/facebook/ads/RewardData;)Lcom/facebook/ads/RewardedInterstitialAd$RewardedInterstitialAdLoadConfigBuilder;
    .locals 1

    .line 63753
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A00:Lcom/facebook/ads/redexgen/X/SI;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/SI;->withRewardData(Lcom/facebook/ads/RewardData;)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    .line 63754
    return-object p0
.end method
