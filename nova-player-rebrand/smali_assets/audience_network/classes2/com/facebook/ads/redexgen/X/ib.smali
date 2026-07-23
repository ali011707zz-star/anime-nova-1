.class public final Lcom/facebook/ads/redexgen/X/ib;
.super Lcom/facebook/ads/redexgen/X/N2;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/iZ;->A0C(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/iZ;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/ib;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/iZ;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 87055
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ib;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/N2;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/ib;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x2b

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

    const/16 v0, 0x15

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/ib;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x9t
        0x18t
        0x1t
        0x24t
        0x28t
        0x29t
        0x33t
        0x35t
        0x28t
        0x2bt
        0x2bt
        0x22t
        0x35t
        0x67t
        0x2et
        0x34t
        0x67t
        0x29t
        0x32t
        0x2bt
        0x2bt
    .end array-data
.end method


# virtual methods
.method public final A06()V
    .locals 1

    .line 87056
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ib;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/iZ;->A04(Lcom/facebook/ads/redexgen/X/iZ;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onRewardServerFailed()V

    .line 87057
    return-void
.end method

.method public final A07()V
    .locals 1

    .line 87058
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ib;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/iZ;->A04(Lcom/facebook/ads/redexgen/X/iZ;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onRewardServerSuccess()V

    .line 87059
    return-void
.end method

.method public final A08()V
    .locals 1

    .line 87060
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ib;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/iZ;->A02(Lcom/facebook/ads/redexgen/X/iZ;)Lcom/facebook/ads/RewardedVideoAd;

    move-result-object v0

    if-nez v0, :cond_0

    .line 87061
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ib;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/iZ;->A04(Lcom/facebook/ads/redexgen/X/iZ;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onRewardedVideoCompleted()V

    .line 87062
    :cond_0
    return-void
.end method

.method public final A09()V
    .locals 1

    .line 87063
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ib;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/iZ;->A02(Lcom/facebook/ads/redexgen/X/iZ;)Lcom/facebook/ads/RewardedVideoAd;

    move-result-object v0

    if-nez v0, :cond_0

    .line 87064
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ib;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/iZ;->A04(Lcom/facebook/ads/redexgen/X/iZ;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onRewardedVideoActivityDestroyed()V

    .line 87065
    :cond_0
    return-void
.end method

.method public final A0A()V
    .locals 5

    .line 87066
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ib;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/iZ;->A02(Lcom/facebook/ads/redexgen/X/iZ;)Lcom/facebook/ads/RewardedVideoAd;

    move-result-object v0

    if-nez v0, :cond_0

    .line 87067
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ib;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/iZ;->A04(Lcom/facebook/ads/redexgen/X/iZ;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onRewardedVideoClosed()V

    .line 87068
    .end local v0
    :goto_0
    return-void

    .line 87069
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ib;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    .line 87070
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/iZ;->A02(Lcom/facebook/ads/redexgen/X/iZ;)Lcom/facebook/ads/RewardedVideoAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/RewardedVideoAd;->buildShowAdConfig()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdShowConfigBuilder;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/SJ;

    .line 87071
    .local v0, "configBuilder":Lcom/facebook/ads/redexgen/X/SJ;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ib;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/iZ;->A01(Lcom/facebook/ads/redexgen/X/iZ;)J

    move-result-wide v0

    sub-long/2addr v2, v0

    invoke-virtual {v4, v2, v3}, Lcom/facebook/ads/redexgen/X/SJ;->A02(J)Lcom/facebook/ads/redexgen/X/SJ;

    .line 87072
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ib;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/iZ;->A02(Lcom/facebook/ads/redexgen/X/iZ;)Lcom/facebook/ads/RewardedVideoAd;

    move-result-object v1

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/SJ;->build()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoShowAdConfig;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/RewardedVideoAd;->show(Lcom/facebook/ads/RewardedVideoAd$RewardedVideoShowAdConfig;)Z

    goto :goto_0
.end method

.method public final A0C()V
    .locals 2

    .line 87073
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ib;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/iZ;->A06:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3K()V

    .line 87074
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ib;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/iZ;->A04(Lcom/facebook/ads/redexgen/X/iZ;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ib;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/iZ;->A08(Lcom/facebook/ads/redexgen/X/iZ;)Lcom/facebook/ads/redexgen/X/iI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iI;->A6k()Lcom/facebook/ads/Ad;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onAdClicked(Lcom/facebook/ads/Ad;)V

    .line 87075
    return-void
.end method

.method public final A0D()V
    .locals 2

    .line 87076
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ib;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/iZ;->A04(Lcom/facebook/ads/redexgen/X/iZ;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ib;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/iZ;->A08(Lcom/facebook/ads/redexgen/X/iZ;)Lcom/facebook/ads/redexgen/X/iI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iI;->A6k()Lcom/facebook/ads/Ad;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onLoggingImpression(Lcom/facebook/ads/Ad;)V

    .line 87077
    return-void
.end method

.method public final A0F(Lcom/facebook/ads/redexgen/X/N1;)V
    .locals 6

    .line 87078
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ib;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/iZ;->A07(Lcom/facebook/ads/redexgen/X/iZ;)Lcom/facebook/ads/redexgen/X/7a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 87079
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ib;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/iZ;->A06:Lcom/facebook/ads/redexgen/X/gi;

    .line 87080
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/Td;->A0N:I

    const/4 v2, 0x3

    const/16 v1, 0x12

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ib;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/String;)V

    .line 87081
    const/4 v2, 0x0

    const/4 v1, 0x3

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ib;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    .line 87082
    return-void

    .line 87083
    :cond_0
    check-cast p1, Lcom/facebook/ads/redexgen/X/jh;

    .line 87084
    .local v0, "rvAdapter":Lcom/facebook/ads/redexgen/X/jh;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ib;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/iZ;->A08(Lcom/facebook/ads/redexgen/X/iZ;)Lcom/facebook/ads/redexgen/X/iI;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/iI;->A03:Lcom/facebook/ads/RewardData;

    if-eqz v0, :cond_1

    .line 87085
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ib;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/iZ;->A08(Lcom/facebook/ads/redexgen/X/iZ;)Lcom/facebook/ads/redexgen/X/iI;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/iI;->A03:Lcom/facebook/ads/RewardData;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/jh;->A02(Lcom/facebook/ads/RewardData;)V

    .line 87086
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ib;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/iZ;->A08(Lcom/facebook/ads/redexgen/X/iZ;)Lcom/facebook/ads/redexgen/X/iI;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/jh;->A0H()I

    move-result v0

    iput v0, v1, Lcom/facebook/ads/redexgen/X/iI;->A00:I

    .line 87087
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ib;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/iZ;->A0E(Lcom/facebook/ads/redexgen/X/iZ;Z)Z

    .line 87088
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ib;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ib;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/iZ;->A07(Lcom/facebook/ads/redexgen/X/iZ;)Lcom/facebook/ads/redexgen/X/7a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/j0;->A0I()Lcom/facebook/ads/redexgen/X/NQ;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/iZ;->A06(Lcom/facebook/ads/redexgen/X/iZ;Lcom/facebook/ads/redexgen/X/NQ;)Lcom/facebook/ads/redexgen/X/NQ;

    .line 87089
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ib;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/iZ;->A05(Lcom/facebook/ads/redexgen/X/iZ;)Lcom/facebook/ads/redexgen/X/NQ;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 87090
    const/4 v3, 0x0

    .line 87091
    .local v1, "iGsChainAdsFrequency":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ib;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/iZ;->A05(Lcom/facebook/ads/redexgen/X/iZ;)Lcom/facebook/ads/redexgen/X/NQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 87092
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ib;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    .line 87093
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/iZ;->A05(Lcom/facebook/ads/redexgen/X/iZ;)Lcom/facebook/ads/redexgen/X/NQ;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A26()I

    move-result v3

    .line 87094
    :cond_2
    if-lez v3, :cond_3

    .line 87095
    new-instance v5, Lcom/facebook/ads/redexgen/X/XC;

    invoke-direct {v5}, Lcom/facebook/ads/redexgen/X/XC;-><init>()V

    .line 87096
    .local v3, "chainer":Lcom/facebook/ads/redexgen/X/XC;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ib;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/iZ;->A06:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ib;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    .line 87097
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/iZ;->A08(Lcom/facebook/ads/redexgen/X/iZ;)Lcom/facebook/ads/redexgen/X/iI;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/iI;->A06:Ljava/lang/String;

    .line 87098
    invoke-virtual {v5, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/XC;->A09(Lcom/facebook/ads/redexgen/X/gi;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 87099
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ib;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/iZ;->A06:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v5, v0, v2}, Lcom/facebook/ads/redexgen/X/XC;->A08(Lcom/facebook/ads/redexgen/X/gi;Z)V

    .line 87100
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/ib;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ib;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/iZ;->A06:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ib;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    .line 87101
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/iZ;->A08(Lcom/facebook/ads/redexgen/X/iZ;)Lcom/facebook/ads/redexgen/X/iI;

    move-result-object v0

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/iI;->A0D:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ib;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    .line 87102
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/iZ;->A08(Lcom/facebook/ads/redexgen/X/iZ;)Lcom/facebook/ads/redexgen/X/iI;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/iI;->A06:Ljava/lang/String;

    .line 87103
    invoke-virtual {v5, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/XC;->A07(Lcom/facebook/ads/redexgen/X/gi;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/ads/RewardedVideoAd;

    move-result-object v0

    .line 87104
    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/iZ;->A03(Lcom/facebook/ads/redexgen/X/iZ;Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/RewardedVideoAd;

    .line 87105
    .end local v1    # "iGsChainAdsFrequency":I
    .end local v3    # "chainer":Lcom/facebook/ads/redexgen/X/XC;
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ib;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/iZ;->A02(Lcom/facebook/ads/redexgen/X/iZ;)Lcom/facebook/ads/RewardedVideoAd;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 87106
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ib;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/iZ;->A05(Lcom/facebook/ads/redexgen/X/iZ;)Lcom/facebook/ads/redexgen/X/NQ;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/jd;->A2J(Z)V

    .line 87107
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ib;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    .line 87108
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/iZ;->A02(Lcom/facebook/ads/redexgen/X/iZ;)Lcom/facebook/ads/RewardedVideoAd;

    move-result-object v0

    .line 87109
    invoke-virtual {v0}, Lcom/facebook/ads/RewardedVideoAd;->buildLoadAdConfig()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    move-result-object v0

    .line 87110
    invoke-interface {v0, v2}, Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;->withFailOnCacheFailureEnabled(Z)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ib;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    .line 87111
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/iZ;->A05(Lcom/facebook/ads/redexgen/X/iZ;)Lcom/facebook/ads/redexgen/X/NQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A0s()Lcom/facebook/ads/RewardData;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;->withRewardData(Lcom/facebook/ads/RewardData;)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ib;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    .line 87112
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/iZ;->A08(Lcom/facebook/ads/redexgen/X/iZ;)Lcom/facebook/ads/redexgen/X/iI;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/iI;->A02:Lcom/facebook/ads/AdExperienceType;

    invoke-interface {v1, v0}, Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;->withAdExperience(Lcom/facebook/ads/AdExperienceType;)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/OI;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/OI;-><init>(Lcom/facebook/ads/redexgen/X/ib;)V

    .line 87113
    invoke-interface {v1, v0}, Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/RewardedVideoAdListener;)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    move-result-object v0

    .line 87114
    invoke-interface {v0}, Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;->build()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoLoadAdConfig;

    move-result-object v1

    .line 87115
    .local v1, "loadAdConfig":Lcom/facebook/ads/RewardedVideoAd$RewardedVideoLoadAdConfig;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ib;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/iZ;->A02(Lcom/facebook/ads/redexgen/X/iZ;)Lcom/facebook/ads/RewardedVideoAd;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/RewardedVideoAd;->loadAd(Lcom/facebook/ads/RewardedVideoAd$RewardedVideoLoadAdConfig;)V

    .line 87116
    .end local v1    # "loadAdConfig":Lcom/facebook/ads/RewardedVideoAd$RewardedVideoLoadAdConfig;
    :goto_1
    return-void

    .line 87117
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ib;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/iZ;->A04(Lcom/facebook/ads/redexgen/X/iZ;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ib;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/iZ;->A08(Lcom/facebook/ads/redexgen/X/iZ;)Lcom/facebook/ads/redexgen/X/iI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iI;->A6k()Lcom/facebook/ads/Ad;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onAdLoaded(Lcom/facebook/ads/Ad;)V

    goto :goto_1

    .line 87118
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ib;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/iZ;->A06:Lcom/facebook/ads/redexgen/X/gi;

    const/4 v0, 0x0

    invoke-virtual {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/XC;->A08(Lcom/facebook/ads/redexgen/X/gi;Z)V

    goto :goto_0
.end method

.method public final A0G(Lcom/facebook/ads/redexgen/X/Vm;)V
    .locals 5

    .line 87119
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ib;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/iZ;->A0B(Lcom/facebook/ads/redexgen/X/iZ;Z)V

    .line 87120
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ib;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/iZ;->A08(Lcom/facebook/ads/redexgen/X/iZ;)Lcom/facebook/ads/redexgen/X/iI;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/iI;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    .line 87121
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ib;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    .line 87122
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/iZ;->A00(Lcom/facebook/ads/redexgen/X/iZ;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Y1;->A01(J)J

    move-result-wide v2

    .line 87123
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Vm;->A03()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v1

    .line 87124
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Vm;->A04()Ljava/lang/String;

    move-result-object v0

    .line 87125
    invoke-interface {v4, v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3N(JILjava/lang/String;)V

    .line 87126
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ib;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/iZ;->A04(Lcom/facebook/ads/redexgen/X/iZ;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ib;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    .line 87127
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/iZ;->A08(Lcom/facebook/ads/redexgen/X/iZ;)Lcom/facebook/ads/redexgen/X/iI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iI;->A6k()Lcom/facebook/ads/Ad;

    move-result-object v1

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/XE;->A00(Lcom/facebook/ads/redexgen/X/Vm;)Lcom/facebook/ads/AdError;

    move-result-object v0

    .line 87128
    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    .line 87129
    return-void
.end method
