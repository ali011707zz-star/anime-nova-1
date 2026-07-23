.class public final Lcom/facebook/ads/redexgen/X/SG;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/RewardedInterstitialAd$RewardedInterstitialAdShowConfigBuilder;
.implements Lcom/facebook/ads/RewardedInterstitialAd$RewardedInterstitialShowAdConfig;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/SJ;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/SJ;)V
    .locals 0

    .line 63755
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63756
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SG;->A00:Lcom/facebook/ads/redexgen/X/SJ;

    .line 63757
    return-void
.end method


# virtual methods
.method public final A00()Lcom/facebook/ads/redexgen/X/SJ;
    .locals 1

    .line 63758
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A00:Lcom/facebook/ads/redexgen/X/SJ;

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/facebook/ads/FullScreenAd$ShowAdConfig;
    .locals 1

    .line 63759
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SG;->build()Lcom/facebook/ads/RewardedInterstitialAd$RewardedInterstitialShowAdConfig;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/facebook/ads/RewardedInterstitialAd$RewardedInterstitialShowAdConfig;
    .locals 0

    .line 63760
    return-object p0
.end method

.method public final withAppOrientation(I)Lcom/facebook/ads/RewardedInterstitialAd$RewardedInterstitialAdShowConfigBuilder;
    .locals 1

    .line 63761
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A00:Lcom/facebook/ads/redexgen/X/SJ;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/SJ;->withAppOrientation(I)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdShowConfigBuilder;

    .line 63762
    return-object p0
.end method
