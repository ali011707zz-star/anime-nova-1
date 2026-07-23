.class public final Lcom/facebook/ads/redexgen/X/SE;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/RewardedVideoAdExtendedListener;
.implements Lcom/facebook/ads/S2SRewardedVideoAdListener;
.implements Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/SF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListenerAdaptor"
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/RewardedInterstitialAdListener;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/RewardedInterstitialAdListener;)V
    .locals 0

    .line 63713
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63714
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SE;->A00:Lcom/facebook/ads/RewardedInterstitialAdListener;

    .line 63715
    return-void
.end method


# virtual methods
.method public final onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 1

    .line 63716
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SE;->A00:Lcom/facebook/ads/RewardedInterstitialAdListener;

    invoke-interface {v0, p1}, Lcom/facebook/ads/RewardedInterstitialAdListener;->onAdClicked(Lcom/facebook/ads/Ad;)V

    .line 63717
    return-void
.end method

.method public final onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 1

    .line 63718
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SE;->A00:Lcom/facebook/ads/RewardedInterstitialAdListener;

    invoke-interface {v0, p1}, Lcom/facebook/ads/RewardedInterstitialAdListener;->onAdLoaded(Lcom/facebook/ads/Ad;)V

    .line 63719
    return-void
.end method

.method public final onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 1

    .line 63720
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SE;->A00:Lcom/facebook/ads/RewardedInterstitialAdListener;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/RewardedInterstitialAdListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    .line 63721
    return-void
.end method

.method public final onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .locals 1

    .line 63722
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SE;->A00:Lcom/facebook/ads/RewardedInterstitialAdListener;

    invoke-interface {v0, p1}, Lcom/facebook/ads/RewardedInterstitialAdListener;->onLoggingImpression(Lcom/facebook/ads/Ad;)V

    .line 63723
    return-void
.end method

.method public final onRewardServerFailed()V
    .locals 1

    .line 63724
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SE;->A00:Lcom/facebook/ads/RewardedInterstitialAdListener;

    instance-of v0, v0, Lcom/facebook/ads/S2SRewardedInterstitialAdListener;

    if-eqz v0, :cond_0

    .line 63725
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SE;->A00:Lcom/facebook/ads/RewardedInterstitialAdListener;

    check-cast v0, Lcom/facebook/ads/S2SRewardedInterstitialAdListener;

    invoke-interface {v0}, Lcom/facebook/ads/S2SRewardedInterstitialAdListener;->onRewardServerFailed()V

    .line 63726
    :cond_0
    return-void
.end method

.method public final onRewardServerSuccess()V
    .locals 1

    .line 63727
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SE;->A00:Lcom/facebook/ads/RewardedInterstitialAdListener;

    instance-of v0, v0, Lcom/facebook/ads/S2SRewardedInterstitialAdListener;

    if-eqz v0, :cond_0

    .line 63728
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SE;->A00:Lcom/facebook/ads/RewardedInterstitialAdListener;

    check-cast v0, Lcom/facebook/ads/S2SRewardedInterstitialAdListener;

    invoke-interface {v0}, Lcom/facebook/ads/S2SRewardedInterstitialAdListener;->onRewardServerSuccess()V

    .line 63729
    :cond_0
    return-void
.end method

.method public final onRewardedVideoActivityDestroyed()V
    .locals 1

    .line 63730
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SE;->A00:Lcom/facebook/ads/RewardedInterstitialAdListener;

    instance-of v0, v0, Lcom/facebook/ads/RewardedInterstitialAdExtendedListener;

    if-eqz v0, :cond_0

    .line 63731
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SE;->A00:Lcom/facebook/ads/RewardedInterstitialAdListener;

    check-cast v0, Lcom/facebook/ads/RewardedInterstitialAdExtendedListener;

    .line 63732
    invoke-interface {v0}, Lcom/facebook/ads/RewardedInterstitialAdExtendedListener;->onRewardedInterstitialActivityDestroyed()V

    .line 63733
    :cond_0
    return-void
.end method

.method public final onRewardedVideoClosed()V
    .locals 1

    .line 63734
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SE;->A00:Lcom/facebook/ads/RewardedInterstitialAdListener;

    invoke-interface {v0}, Lcom/facebook/ads/RewardedInterstitialAdListener;->onRewardedInterstitialClosed()V

    .line 63735
    return-void
.end method

.method public final onRewardedVideoCompleted()V
    .locals 1

    .line 63736
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SE;->A00:Lcom/facebook/ads/RewardedInterstitialAdListener;

    invoke-interface {v0}, Lcom/facebook/ads/RewardedInterstitialAdListener;->onRewardedInterstitialCompleted()V

    .line 63737
    return-void
.end method
