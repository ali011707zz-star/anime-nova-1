.class public final Lcom/facebook/ads/redexgen/X/OI;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/RewardedVideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/ib;->A0F(Lcom/facebook/ads/redexgen/X/N1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/ib;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ib;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 55434
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/OI;->A00:Lcom/facebook/ads/redexgen/X/ib;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 0

    .line 55435
    return-void
.end method

.method public final onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 2

    .line 55436
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OI;->A00:Lcom/facebook/ads/redexgen/X/ib;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ib;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/iZ;->A04(Lcom/facebook/ads/redexgen/X/iZ;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OI;->A00:Lcom/facebook/ads/redexgen/X/ib;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ib;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    .line 55437
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/iZ;->A08(Lcom/facebook/ads/redexgen/X/iZ;)Lcom/facebook/ads/redexgen/X/iI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iI;->A6k()Lcom/facebook/ads/Ad;

    move-result-object v0

    .line 55438
    invoke-interface {v1, v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onAdLoaded(Lcom/facebook/ads/Ad;)V

    .line 55439
    return-void
.end method

.method public final onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 2

    .line 55440
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OI;->A00:Lcom/facebook/ads/redexgen/X/ib;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/ib;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/iZ;->A03(Lcom/facebook/ads/redexgen/X/iZ;Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/RewardedVideoAd;

    .line 55441
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OI;->A00:Lcom/facebook/ads/redexgen/X/ib;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ib;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/iZ;->A05(Lcom/facebook/ads/redexgen/X/iZ;)Lcom/facebook/ads/redexgen/X/NQ;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/jd;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/jd;->A2J(Z)V

    .line 55442
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OI;->A00:Lcom/facebook/ads/redexgen/X/ib;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ib;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/iZ;->A04(Lcom/facebook/ads/redexgen/X/iZ;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OI;->A00:Lcom/facebook/ads/redexgen/X/ib;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ib;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    .line 55443
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/iZ;->A08(Lcom/facebook/ads/redexgen/X/iZ;)Lcom/facebook/ads/redexgen/X/iI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iI;->A6k()Lcom/facebook/ads/Ad;

    move-result-object v0

    .line 55444
    invoke-interface {v1, v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onAdLoaded(Lcom/facebook/ads/Ad;)V

    .line 55445
    return-void
.end method

.method public final onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .locals 0

    .line 55446
    return-void
.end method

.method public final onRewardedVideoClosed()V
    .locals 1

    .line 55447
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OI;->A00:Lcom/facebook/ads/redexgen/X/ib;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ib;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/iZ;->A04(Lcom/facebook/ads/redexgen/X/iZ;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onRewardedVideoClosed()V

    .line 55448
    return-void
.end method

.method public final onRewardedVideoCompleted()V
    .locals 1

    .line 55449
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OI;->A00:Lcom/facebook/ads/redexgen/X/ib;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ib;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/iZ;->A04(Lcom/facebook/ads/redexgen/X/iZ;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onRewardedVideoCompleted()V

    .line 55450
    return-void
.end method
