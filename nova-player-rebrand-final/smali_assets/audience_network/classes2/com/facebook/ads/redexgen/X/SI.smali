.class public final Lcom/facebook/ads/redexgen/X/SI;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;
.implements Lcom/facebook/ads/RewardedVideoAd$RewardedVideoLoadAdConfig;


# instance fields
.field public A00:Lcom/facebook/ads/AdExperienceType;

.field public A01:Lcom/facebook/ads/redexgen/X/SH;

.field public A02:Ljava/lang/String;

.field public A03:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/SH;)V
    .locals 0

    .line 63830
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63831
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SI;->A01:Lcom/facebook/ads/redexgen/X/SH;

    .line 63832
    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 4

    .line 63833
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/SI;->A01:Lcom/facebook/ads/redexgen/X/SH;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/SI;->A02:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SI;->A00:Lcom/facebook/ads/AdExperienceType;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SI;->A03:Z

    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SH;->A07(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;Z)V

    .line 63834
    return-void
.end method

.method public final bridge synthetic build()Lcom/facebook/ads/Ad$LoadAdConfig;
    .locals 1

    .line 63835
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SI;->build()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoLoadAdConfig;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoLoadAdConfig;
    .locals 0

    .line 63836
    return-object p0
.end method

.method public final withAdExperience(Lcom/facebook/ads/AdExperienceType;)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;
    .locals 0

    .line 63837
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SI;->A00:Lcom/facebook/ads/AdExperienceType;

    .line 63838
    return-object p0
.end method

.method public final withAdListener(Lcom/facebook/ads/RewardedVideoAdListener;)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;
    .locals 1

    .line 63839
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SI;->A01:Lcom/facebook/ads/redexgen/X/SH;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/SH;->A06(Lcom/facebook/ads/RewardedVideoAdListener;)V

    .line 63840
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

    .line 63841
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/SI;->withBid(Ljava/lang/String;)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final withBid(Ljava/lang/String;)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;
    .locals 0

    .line 63842
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SI;->A02:Ljava/lang/String;

    .line 63843
    return-object p0
.end method

.method public final withFailOnCacheFailureEnabled(Z)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;
    .locals 0

    .line 63844
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/SI;->A03:Z

    .line 63845
    return-object p0
.end method

.method public final withRewardData(Lcom/facebook/ads/RewardData;)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;
    .locals 1

    .line 63846
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SI;->A01:Lcom/facebook/ads/redexgen/X/SH;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/SH;->A05(Lcom/facebook/ads/RewardData;)V

    .line 63847
    return-object p0
.end method
