.class public final Lcom/facebook/ads/redexgen/X/Rt;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;
.implements Lcom/facebook/ads/InterstitialAd$InterstitialLoadAdConfig;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Rs;

.field public A01:Ljava/lang/String;

.field public A02:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Rs;)V
    .locals 0

    .line 63217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63218
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Rt;->A00:Lcom/facebook/ads/redexgen/X/Rs;

    .line 63219
    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 3

    .line 63220
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rt;->A02:Ljava/util/EnumSet;

    if-nez v0, :cond_0

    .line 63221
    sget-object v0, Lcom/facebook/ads/CacheFlag;->ALL:Ljava/util/EnumSet;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rt;->A02:Ljava/util/EnumSet;

    .line 63222
    :cond_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Rt;->A00:Lcom/facebook/ads/redexgen/X/Rs;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rt;->A02:Ljava/util/EnumSet;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rt;->A01:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rs;->A05(Ljava/util/EnumSet;Ljava/lang/String;)V

    .line 63223
    return-void
.end method

.method public final bridge synthetic build()Lcom/facebook/ads/Ad$LoadAdConfig;
    .locals 1

    .line 63224
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rt;->build()Lcom/facebook/ads/InterstitialAd$InterstitialLoadAdConfig;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/facebook/ads/InterstitialAd$InterstitialLoadAdConfig;
    .locals 0

    .line 63225
    return-object p0
.end method

.method public final withAdListener(Lcom/facebook/ads/InterstitialAdListener;)Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;
    .locals 1

    .line 63226
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rt;->A00:Lcom/facebook/ads/redexgen/X/Rs;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Rs;->A02(Lcom/facebook/ads/InterstitialAdListener;)V

    .line 63227
    instance-of v0, p1, Lcom/facebook/ads/InterstitialAdExtendedListener;

    if-eqz v0, :cond_0

    .line 63228
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rt;->A00:Lcom/facebook/ads/redexgen/X/Rs;

    check-cast p1, Lcom/facebook/ads/InterstitialAdExtendedListener;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Rs;->A04(Lcom/facebook/ads/RewardedAdListener;)V

    .line 63229
    :cond_0
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

    .line 63230
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Rt;->withBid(Ljava/lang/String;)Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final withBid(Ljava/lang/String;)Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;
    .locals 0

    .line 63231
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Rt;->A01:Ljava/lang/String;

    .line 63232
    return-object p0
.end method

.method public final withCacheFlags(Ljava/util/EnumSet;)Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;)",
            "Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;"
        }
    .end annotation

    .line 63233
    .local p1, "cacheFlags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/ads/CacheFlag;>;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Rt;->A02:Ljava/util/EnumSet;

    .line 63234
    return-object p0
.end method

.method public final withRewardData(Lcom/facebook/ads/RewardData;)Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;
    .locals 1

    .line 63235
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rt;->A00:Lcom/facebook/ads/redexgen/X/Rs;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Rs;->A03(Lcom/facebook/ads/RewardData;)V

    .line 63236
    return-object p0
.end method

.method public final withRewardedAdListener(Lcom/facebook/ads/RewardedAdListener;)Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;
    .locals 1

    .line 63237
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rt;->A00:Lcom/facebook/ads/redexgen/X/Rs;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Rs;->A04(Lcom/facebook/ads/RewardedAdListener;)V

    .line 63238
    return-object p0
.end method
