.class public final Lcom/facebook/ads/redexgen/X/Rs;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/InterstitialAdApi;
.implements Lcom/facebook/ads/internal/context/Repairable;


# static fields
.field public static A04:[B


# instance fields
.field public final A00:Lcom/facebook/ads/InterstitialAd;

.field public final A01:Lcom/facebook/ads/redexgen/X/iY;

.field public final A02:Lcom/facebook/ads/redexgen/X/7Y;

.field public final A03:Lcom/facebook/ads/redexgen/X/gi;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Rs;->A01()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/InterstitialAd;)V
    .locals 3

    .line 63151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63152
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Rs;->A00:Lcom/facebook/ads/InterstitialAd;

    .line 63153
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/gi;

    if-eqz v0, :cond_0

    .line 63154
    check-cast p1, Lcom/facebook/ads/redexgen/X/gi;

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Rs;->A03:Lcom/facebook/ads/redexgen/X/gi;

    .line 63155
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rs;->A03:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->getId()Ljava/lang/String;

    move-result-object v2

    .line 63156
    .local v0, "adId":Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rs;->A03:Lcom/facebook/ads/redexgen/X/gi;

    .line 63157
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->INTERSTITIAL:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    .line 63158
    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p2}, Lcom/facebook/ads/redexgen/X/Lt;->A3T(Ljava/lang/String;Ljava/lang/String;)V

    .line 63159
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rs;->A03:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v0, Lcom/facebook/ads/redexgen/X/iY;

    invoke-direct {v0, v1, p3, p2}, Lcom/facebook/ads/redexgen/X/iY;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/InterstitialAd;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rs;->A01:Lcom/facebook/ads/redexgen/X/iY;

    .line 63160
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rs;->A03:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/gi;->A0O(Lcom/facebook/ads/internal/context/Repairable;)V

    .line 63161
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rs;->A01:Lcom/facebook/ads/redexgen/X/iY;

    new-instance v0, Lcom/facebook/ads/redexgen/X/7Y;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/7Y;-><init>(Lcom/facebook/ads/redexgen/X/iY;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rs;->A02:Lcom/facebook/ads/redexgen/X/7Y;

    .line 63162
    return-void

    .line 63163
    .end local v0    # "adId":Ljava/lang/String;
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 63164
    .restart local v0    # "adId":Ljava/lang/String;
    invoke-static {p1, v2}, Lcom/facebook/ads/redexgen/X/Rp;->A06(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rs;->A03:Lcom/facebook/ads/redexgen/X/gi;

    goto :goto_0
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Rs;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x7a

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

    const/16 v0, 0x8d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Rs;->A04:[B

    return-void

    :array_0
    .array-data 1
        -0x40t
        -0x40t
        -0xbt
        -0x10t
        -0x10t
        -0x3ft
        -0x3ft
        -0x3dt
        -0x1dt
        -0x1bt
        -0x1bt
        0x15t
        -0x1dt
        -0x15t
        -0x19t
        -0x1bt
        -0x26t
        -0x27t
        -0x2bt
        -0x24t
        -0x29t
        -0x29t
        0x6t
        0x8t
        0x2t
        0x27t
        0x2dt
        0x1et
        0x2bt
        0x27t
        0x1at
        0x25t
        -0x27t
        0x1et
        0x2bt
        0x2bt
        0x28t
        0x2bt
        -0x19t
        -0x3dt
        0x2ct
        0x51t
        0x57t
        0x48t
        0x55t
        0x56t
        0x57t
        0x4ct
        0x57t
        0x4ct
        0x44t
        0x4ft
        0x3t
        0x44t
        0x47t
        0x3t
        0x47t
        0x48t
        0x56t
        0x57t
        0x55t
        0x52t
        0x5ct
        0x48t
        0x47t
        0x32t
        0x57t
        0x5dt
        0x4et
        0x5bt
        0x5ct
        0x5dt
        0x52t
        0x5dt
        0x52t
        0x4at
        0x55t
        0x9t
        0x4at
        0x4dt
        0x9t
        0x55t
        0x58t
        0x4at
        0x4dt
        0x9t
        0x5bt
        0x4et
        0x5at
        0x5et
        0x4et
        0x5ct
        0x5dt
        0x4et
        0x4dt
        0x27t
        0x4ct
        0x52t
        0x43t
        0x50t
        0x51t
        0x52t
        0x47t
        0x52t
        0x47t
        0x3ft
        0x4at
        -0x2t
        0x3ft
        0x42t
        -0x2t
        0x51t
        0x46t
        0x4dt
        0x55t
        -0x2t
        0x41t
        0x3ft
        0x4at
        0x4at
        0x43t
        0x42t
        -0xdt
        -0xct
        0x2t
        0x3t
        0x1t
        -0x2t
        0x8t
        0x58t
        0x63t
        0x40t
        0x63t
        0x55t
        0x58t
        0x35t
        0x58t
        -0x8t
        -0x13t
        -0xct
        -0x4t
    .end array-data
.end method


# virtual methods
.method public final A02(Lcom/facebook/ads/InterstitialAdListener;)V
    .locals 2

    .line 63165
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rs;->A03:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3M(Z)V

    .line 63166
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rs;->A01:Lcom/facebook/ads/redexgen/X/iY;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/iY;->A0E(Lcom/facebook/ads/InterstitialAdListener;)V

    .line 63167
    return-void

    .line 63168
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A03(Lcom/facebook/ads/RewardData;)V
    .locals 1

    .line 63169
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rs;->A02:Lcom/facebook/ads/redexgen/X/7Y;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/7Y;->A0F(Lcom/facebook/ads/RewardData;)V

    .line 63170
    return-void
.end method

.method public final A04(Lcom/facebook/ads/RewardedAdListener;)V
    .locals 1

    .line 63171
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rs;->A01:Lcom/facebook/ads/redexgen/X/iY;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/iY;->A0G(Lcom/facebook/ads/RewardedAdListener;)V

    .line 63172
    return-void
.end method

.method public final A05(Ljava/util/EnumSet;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .local v4, "cacheFlags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/ads/CacheFlag;>;"
    const/16 v2, 0x41

    const/16 v1, 0x1e

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rs;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x10

    const/16 v1, 0x8

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rs;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x81

    const/16 v1, 0x8

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rs;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Vy;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63173
    if-nez p2, :cond_0

    .line 63174
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rs;->A03:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3Q()V

    .line 63175
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rs;->A02:Lcom/facebook/ads/redexgen/X/7Y;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rs;->A00:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/7Y;->A0E(Lcom/facebook/ads/InterstitialAd;Ljava/util/EnumSet;Ljava/lang/String;)V

    .line 63176
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rs;->A03:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3O()V

    .line 63177
    return-void

    .line 63178
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rs;->A03:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3P()V

    goto :goto_0
.end method

.method public final bridge synthetic buildLoadAdConfig()Lcom/facebook/ads/Ad$LoadConfigBuilder;
    .locals 1

    .line 63179
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rs;->buildLoadAdConfig()Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final buildLoadAdConfig()Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;
    .locals 1

    .line 63180
    new-instance v0, Lcom/facebook/ads/redexgen/X/Rt;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Rt;-><init>(Lcom/facebook/ads/redexgen/X/Rs;)V

    return-object v0
.end method

.method public final bridge synthetic buildShowAdConfig()Lcom/facebook/ads/FullScreenAd$ShowConfigBuilder;
    .locals 1

    .line 63181
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rs;->buildShowAdConfig()Lcom/facebook/ads/InterstitialAd$InterstitialAdShowConfigBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final buildShowAdConfig()Lcom/facebook/ads/InterstitialAd$InterstitialAdShowConfigBuilder;
    .locals 1

    .line 63182
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ru;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Ru;-><init>()V

    return-object v0
.end method

.method public final destroy()V
    .locals 5

    const/16 v2, 0x28

    const/16 v1, 0x19

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rs;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rs;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x7a

    const/4 v1, 0x7

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rs;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Vy;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63183
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rs;->A03:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A2M(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63184
    return-void

    .line 63185
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rs;->A02:Lcom/facebook/ads/redexgen/X/7Y;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7Y;->A08()V

    .line 63186
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rs;->A03:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3U()V

    .line 63187
    return-void
.end method

.method public final finalize()V
    .locals 1

    .line 63188
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rs;->A02:Lcom/facebook/ads/redexgen/X/7Y;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ik;->A07()V

    .line 63189
    return-void
.end method

.method public final getPlacementId()Ljava/lang/String;
    .locals 1

    .line 63190
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rs;->A01:Lcom/facebook/ads/redexgen/X/iY;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iY;->A0A()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isAdInvalidated()Z
    .locals 2

    .line 63191
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rs;->A02:Lcom/facebook/ads/redexgen/X/7Y;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7Y;->A0G()Z

    move-result v1

    .line 63192
    .local v0, "isInvalidated":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rs;->A03:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Lt;->A5f(Z)V

    .line 63193
    return v1
.end method

.method public final isAdLoaded()Z
    .locals 1

    .line 63194
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rs;->A02:Lcom/facebook/ads/redexgen/X/7Y;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7Y;->A0H()Z

    move-result v0

    return v0
.end method

.method public final loadAd()V
    .locals 2

    .line 63195
    sget-object v1, Lcom/facebook/ads/CacheFlag;->ALL:Ljava/util/EnumSet;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Rs;->A05(Ljava/util/EnumSet;Ljava/lang/String;)V

    .line 63196
    return-void
.end method

.method public final loadAd(Lcom/facebook/ads/InterstitialAd$InterstitialLoadAdConfig;)V
    .locals 0

    .line 63197
    check-cast p1, Lcom/facebook/ads/redexgen/X/Rt;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Rt;->A00()V

    .line 63198
    return-void
.end method

.method public final repair(Ljava/lang/Throwable;)V
    .locals 6

    .line 63199
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rs;->A01:Lcom/facebook/ads/redexgen/X/iY;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iY;->A02()Lcom/facebook/ads/InterstitialAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63200
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rs;->A01:Lcom/facebook/ads/redexgen/X/iY;

    .line 63201
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iY;->A02()Lcom/facebook/ads/InterstitialAdListener;

    move-result-object v5

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Rs;->A00:Lcom/facebook/ads/InterstitialAd;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x18

    const/16 v1, 0x10

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rs;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rs;->A03:Lcom/facebook/ads/redexgen/X/gi;

    .line 63202
    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/Xt;->A03(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v1, 0x7d1

    new-instance v0, Lcom/facebook/ads/AdError;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/AdError;-><init>(ILjava/lang/String;)V

    .line 63203
    invoke-interface {v5, v4, v0}, Lcom/facebook/ads/InterstitialAdListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    .line 63204
    :cond_0
    return-void
.end method

.method public final setExtraHints(Lcom/facebook/ads/ExtraHints;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 63205
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rs;->A01:Lcom/facebook/ads/redexgen/X/iY;

    invoke-virtual {p1}, Lcom/facebook/ads/ExtraHints;->getHints()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/iY;->A0I(Ljava/lang/String;)V

    .line 63206
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rs;->A01:Lcom/facebook/ads/redexgen/X/iY;

    invoke-virtual {p1}, Lcom/facebook/ads/ExtraHints;->getMediationData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/iY;->A0J(Ljava/lang/String;)V

    .line 63207
    return-void
.end method

.method public final show()Z
    .locals 5

    const/16 v2, 0x5f

    const/16 v1, 0x1b

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rs;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x8

    const/16 v1, 0x8

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rs;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x89

    const/4 v1, 0x4

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rs;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Vy;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63208
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rs;->A03:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3Z()V

    .line 63209
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Rs;->A02:Lcom/facebook/ads/redexgen/X/7Y;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rs;->A00:Lcom/facebook/ads/InterstitialAd;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ru;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Ru;-><init>()V

    .line 63210
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7Y;->A0I(Lcom/facebook/ads/InterstitialAd;Lcom/facebook/ads/InterstitialAd$InterstitialShowAdConfig;)Z

    move-result v1

    .line 63211
    .local v0, "result":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rs;->A03:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Lt;->A3Y(Z)V

    .line 63212
    return v1
.end method

.method public final show(Lcom/facebook/ads/InterstitialAd$InterstitialShowAdConfig;)Z
    .locals 2

    .line 63213
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rs;->A03:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3Z()V

    .line 63214
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rs;->A02:Lcom/facebook/ads/redexgen/X/7Y;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rs;->A00:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/7Y;->A0I(Lcom/facebook/ads/InterstitialAd;Lcom/facebook/ads/InterstitialAd$InterstitialShowAdConfig;)Z

    move-result v1

    .line 63215
    .local v0, "result":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rs;->A03:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Lt;->A3Y(Z)V

    .line 63216
    return v1
.end method
