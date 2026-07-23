.class public final Lcom/facebook/ads/redexgen/X/SD;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/RewardedInterstitialAdApi;
.implements Lcom/facebook/ads/internal/context/Repairable;


# static fields
.field public static A01:[B


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/SH;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/SD;->A01()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/RewardedInterstitialAd;)V
    .locals 1

    .line 63683
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63684
    new-instance v0, Lcom/facebook/ads/redexgen/X/SH;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/SH;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/Ad;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SD;->A00:Lcom/facebook/ads/redexgen/X/SH;

    .line 63685
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/SD;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x42

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x9e

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/SD;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x50t
        0x50t
        0x1t
        0x54t
        0x52t
        0x5bt
        0x5bt
        0x2t
        0x36t
        0x34t
        0x61t
        0x60t
        0x64t
        0x60t
        0x37t
        0x60t
        0x6ct
        0x6at
        0x3bt
        0x38t
        0x3ct
        0x69t
        0x38t
        0x3ft
        0xet
        0x5dt
        0x5dt
        0xct
        0xat
        0x58t
        0x8t
        0xbt
        0x40t
        0x77t
        0x65t
        0x73t
        0x60t
        0x76t
        0x77t
        0x76t
        0x32t
        0x7bt
        0x7ct
        0x66t
        0x77t
        0x60t
        0x61t
        0x66t
        0x7bt
        0x66t
        0x7bt
        0x73t
        0x7et
        0x32t
        0x73t
        0x76t
        0x32t
        0x76t
        0x77t
        0x61t
        0x66t
        0x60t
        0x7dt
        0x6bt
        0x77t
        0x76t
        0x1et
        0x29t
        0x3bt
        0x2dt
        0x3et
        0x28t
        0x29t
        0x28t
        0x6ct
        0x25t
        0x22t
        0x38t
        0x29t
        0x3et
        0x3ft
        0x38t
        0x25t
        0x38t
        0x25t
        0x2dt
        0x20t
        0x6ct
        0x2dt
        0x28t
        0x6ct
        0x20t
        0x23t
        0x2dt
        0x28t
        0x6ct
        0x3et
        0x29t
        0x3dt
        0x39t
        0x29t
        0x3ft
        0x38t
        0x29t
        0x28t
        0x7at
        0x4dt
        0x5ft
        0x49t
        0x5at
        0x4ct
        0x4dt
        0x4ct
        0x8t
        0x41t
        0x46t
        0x5ct
        0x4dt
        0x5at
        0x5bt
        0x5ct
        0x41t
        0x5ct
        0x41t
        0x49t
        0x44t
        0x8t
        0x49t
        0x4ct
        0x8t
        0x5bt
        0x40t
        0x47t
        0x5ft
        0x8t
        0x4bt
        0x49t
        0x44t
        0x44t
        0x4dt
        0x4ct
        0x7et
        0x7ft
        0x69t
        0x6et
        0x68t
        0x75t
        0x63t
        0x1ft
        0x1ct
        0x12t
        0x17t
        0x32t
        0x17t
        0x29t
        0x32t
        0x35t
        0x2dt
    .end array-data
.end method


# virtual methods
.method public final bridge synthetic buildLoadAdConfig()Lcom/facebook/ads/Ad$LoadConfigBuilder;
    .locals 1

    .line 63686
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SD;->buildLoadAdConfig()Lcom/facebook/ads/RewardedInterstitialAd$RewardedInterstitialAdLoadConfigBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final buildLoadAdConfig()Lcom/facebook/ads/RewardedInterstitialAd$RewardedInterstitialAdLoadConfigBuilder;
    .locals 2

    .line 63687
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SD;->A00:Lcom/facebook/ads/redexgen/X/SH;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SH;->A02()Lcom/facebook/ads/redexgen/X/SI;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/SF;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/SF;-><init>(Lcom/facebook/ads/redexgen/X/SI;)V

    return-object v0
.end method

.method public final bridge synthetic buildShowAdConfig()Lcom/facebook/ads/FullScreenAd$ShowConfigBuilder;
    .locals 1

    .line 63688
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SD;->buildShowAdConfig()Lcom/facebook/ads/RewardedInterstitialAd$RewardedInterstitialAdShowConfigBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final buildShowAdConfig()Lcom/facebook/ads/RewardedInterstitialAd$RewardedInterstitialAdShowConfigBuilder;
    .locals 2

    .line 63689
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SD;->A00:Lcom/facebook/ads/redexgen/X/SH;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SH;->A03()Lcom/facebook/ads/redexgen/X/SJ;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/SG;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/SG;-><init>(Lcom/facebook/ads/redexgen/X/SJ;)V

    return-object v0
.end method

.method public final destroy()V
    .locals 5

    const/16 v2, 0x20

    const/16 v1, 0x22

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SD;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x18

    const/16 v1, 0x8

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SD;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x8d

    const/4 v1, 0x7

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SD;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Vy;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63690
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SD;->A00:Lcom/facebook/ads/redexgen/X/SH;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SH;->A04()V

    .line 63691
    return-void
.end method

.method public final finalize()V
    .locals 1

    .line 63692
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SD;->A00:Lcom/facebook/ads/redexgen/X/SH;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SH;->finalize()V

    .line 63693
    return-void
.end method

.method public final getPlacementId()Ljava/lang/String;
    .locals 1

    .line 63694
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SD;->A00:Lcom/facebook/ads/redexgen/X/SH;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SH;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getVideoDuration()I
    .locals 1

    .line 63695
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SD;->A00:Lcom/facebook/ads/redexgen/X/SH;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SH;->getVideoDuration()I

    move-result v0

    return v0
.end method

.method public final isAdInvalidated()Z
    .locals 1

    .line 63696
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SD;->A00:Lcom/facebook/ads/redexgen/X/SH;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SH;->isAdInvalidated()Z

    move-result v0

    return v0
.end method

.method public final isAdLoaded()Z
    .locals 1

    .line 63697
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SD;->A00:Lcom/facebook/ads/redexgen/X/SH;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SH;->isAdLoaded()Z

    move-result v0

    return v0
.end method

.method public final loadAd()V
    .locals 5

    const/16 v2, 0x42

    const/16 v1, 0x27

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SD;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x10

    const/16 v1, 0x8

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SD;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x94

    const/4 v1, 0x6

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SD;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Vy;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63698
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/SD;->A00:Lcom/facebook/ads/redexgen/X/SH;

    sget-object v2, Lcom/facebook/ads/AdExperienceType;->AD_EXPERIENCE_TYPE_REWARDED_INTERSTITIAL:Lcom/facebook/ads/AdExperienceType;

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {v3, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/SH;->A07(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;Z)V

    .line 63699
    return-void
.end method

.method public final loadAd(Lcom/facebook/ads/RewardedInterstitialAd$RewardedInterstitialLoadAdConfig;)V
    .locals 0

    .line 63700
    check-cast p1, Lcom/facebook/ads/redexgen/X/SF;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/SF;->A00()V

    .line 63701
    return-void
.end method

.method public final repair(Ljava/lang/Throwable;)V
    .locals 1

    .line 63702
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SD;->A00:Lcom/facebook/ads/redexgen/X/SH;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/SH;->repair(Ljava/lang/Throwable;)V

    .line 63703
    return-void
.end method

.method public final setExtraHints(Lcom/facebook/ads/ExtraHints;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 63704
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SD;->A00:Lcom/facebook/ads/redexgen/X/SH;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/SH;->setExtraHints(Lcom/facebook/ads/ExtraHints;)V

    .line 63705
    return-void
.end method

.method public final show()Z
    .locals 5

    const/16 v2, 0x69

    const/16 v1, 0x24

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SD;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SD;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x9a

    const/4 v1, 0x4

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SD;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Vy;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63706
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/SD;->A00:Lcom/facebook/ads/redexgen/X/SH;

    new-instance v1, Lcom/facebook/ads/redexgen/X/SJ;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/SJ;-><init>()V

    .line 63707
    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/SJ;->withAppOrientation(I)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdShowConfigBuilder;

    move-result-object v0

    .line 63708
    invoke-interface {v0}, Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdShowConfigBuilder;->build()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoShowAdConfig;

    move-result-object v0

    .line 63709
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/SH;->A08(Lcom/facebook/ads/RewardedVideoAd$RewardedVideoShowAdConfig;)Z

    move-result v0

    return v0
.end method

.method public final show(Lcom/facebook/ads/RewardedInterstitialAd$RewardedInterstitialShowAdConfig;)Z
    .locals 5

    const/16 v2, 0x69

    const/16 v1, 0x24

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SD;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x8

    const/16 v1, 0x8

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SD;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x9a

    const/4 v1, 0x4

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SD;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Vy;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63710
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SD;->A00:Lcom/facebook/ads/redexgen/X/SH;

    check-cast p1, Lcom/facebook/ads/redexgen/X/SG;

    .line 63711
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/SG;->A00()Lcom/facebook/ads/redexgen/X/SJ;

    move-result-object v0

    .line 63712
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/SH;->A08(Lcom/facebook/ads/RewardedVideoAd$RewardedVideoShowAdConfig;)Z

    move-result v0

    return v0
.end method
