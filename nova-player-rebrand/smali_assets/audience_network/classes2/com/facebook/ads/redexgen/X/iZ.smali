.class public final Lcom/facebook/ads/redexgen/X/iZ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/OG;


# static fields
.field public static A09:[B

.field public static final A0A:Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:J

.field public A02:Lcom/facebook/ads/RewardedVideoAd;

.field public A03:Lcom/facebook/ads/redexgen/X/NQ;

.field public A04:Lcom/facebook/ads/redexgen/X/7a;

.field public A05:Z

.field public final A06:Lcom/facebook/ads/redexgen/X/gi;

.field public final A07:Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

.field public final A08:Lcom/facebook/ads/redexgen/X/iI;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 2950
    invoke-static {}, Lcom/facebook/ads/redexgen/X/iZ;->A0A()V

    const-class v0, Lcom/facebook/ads/redexgen/X/iZ;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/iZ;->A0A:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/iI;Lcom/facebook/ads/redexgen/X/OW;Ljava/lang/String;)V
    .locals 2

    .line 86972
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86973
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/iZ;->A05:Z

    .line 86974
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/iZ;->A00:J

    .line 86975
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/iZ;->A08:Lcom/facebook/ads/redexgen/X/iI;

    .line 86976
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/iI;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/iZ;->A06:Lcom/facebook/ads/redexgen/X/gi;

    .line 86977
    new-instance v0, Lcom/facebook/ads/redexgen/X/iF;

    invoke-direct {v0, p3, p2, p0, p1}, Lcom/facebook/ads/redexgen/X/iF;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/OW;Lcom/facebook/ads/redexgen/X/iZ;Lcom/facebook/ads/redexgen/X/iI;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/iZ;->A07:Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    .line 86978
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/iZ;)J
    .locals 1

    .line 86979
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/iZ;->A00:J

    return-wide v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/iZ;)J
    .locals 1

    .line 86980
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/iZ;->A01:J

    return-wide v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/iZ;)Lcom/facebook/ads/RewardedVideoAd;
    .locals 0

    .line 86981
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/iZ;->A02:Lcom/facebook/ads/RewardedVideoAd;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/iZ;Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/RewardedVideoAd;
    .locals 0

    .line 86982
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/iZ;->A02:Lcom/facebook/ads/RewardedVideoAd;

    return-object p1
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/iZ;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;
    .locals 0

    .line 86983
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/iZ;->A07:Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/iZ;)Lcom/facebook/ads/redexgen/X/NQ;
    .locals 0

    .line 86984
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/iZ;->A03:Lcom/facebook/ads/redexgen/X/NQ;

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/iZ;Lcom/facebook/ads/redexgen/X/NQ;)Lcom/facebook/ads/redexgen/X/NQ;
    .locals 0

    .line 86985
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/iZ;->A03:Lcom/facebook/ads/redexgen/X/NQ;

    return-object p1
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/iZ;)Lcom/facebook/ads/redexgen/X/7a;
    .locals 0

    .line 86986
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/iZ;->A04:Lcom/facebook/ads/redexgen/X/7a;

    return-object p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/iZ;)Lcom/facebook/ads/redexgen/X/iI;
    .locals 0

    .line 86987
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/iZ;->A08:Lcom/facebook/ads/redexgen/X/iI;

    return-object p0
.end method

.method public static A09(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/iZ;->A09:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0xe

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0A()V
    .locals 1

    const/16 v0, 0x70

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/iZ;->A09:[B

    return-void

    :array_0
    .array-data 1
        0x74t
        -0x5ft
        0x53t
        -0x6ct
        -0x69t
        0x53t
        -0x61t
        -0x5et
        -0x6ct
        -0x69t
        0x53t
        -0x64t
        -0x5at
        0x53t
        -0x6ct
        -0x61t
        -0x5bt
        -0x68t
        -0x6ct
        -0x69t
        -0x54t
        0x53t
        -0x64t
        -0x5ft
        0x53t
        -0x5dt
        -0x5bt
        -0x5et
        -0x66t
        -0x5bt
        -0x68t
        -0x5at
        -0x5at
        0x61t
        0x53t
        -0x74t
        -0x5et
        -0x58t
        0x53t
        -0x5at
        -0x65t
        -0x5et
        -0x58t
        -0x61t
        -0x69t
        0x53t
        -0x56t
        -0x6ct
        -0x64t
        -0x59t
        0x53t
        -0x67t
        -0x5et
        -0x5bt
        0x53t
        -0x6ct
        -0x69t
        0x7ft
        -0x5et
        -0x6ct
        -0x69t
        -0x68t
        -0x69t
        0x5bt
        0x5ct
        0x53t
        -0x59t
        -0x5et
        0x53t
        -0x6bt
        -0x68t
        0x53t
        -0x6at
        -0x6ct
        -0x61t
        -0x61t
        -0x68t
        -0x69t
        -0x3ct
        -0xft
        -0xft
        -0x12t
        -0xft
        -0x61t
        -0x15t
        -0x12t
        -0x20t
        -0x1dt
        -0x18t
        -0x13t
        -0x1at
        -0x61t
        -0xft
        -0x1ct
        -0xat
        -0x20t
        -0xft
        -0x1dt
        -0x1ct
        -0x1dt
        -0x61t
        -0xbt
        -0x18t
        -0x1dt
        -0x1ct
        -0x12t
        -0x61t
        -0x20t
        -0x1dt
        -0x13t
        -0x4t
        -0xbt
    .end array-data
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/iZ;Z)V
    .locals 0

    .line 86988
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/iZ;->A0D(Z)V

    return-void
.end method

.method private A0C(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;Z)V
    .locals 9

    .line 86989
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/iZ;->A05:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iZ;->A04:Lcom/facebook/ads/redexgen/X/7a;

    if-eqz v0, :cond_0

    .line 86990
    sget-object v3, Lcom/facebook/ads/redexgen/X/iZ;->A0A:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v1, 0x4e

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iZ;->A09(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86991
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/iZ;->A0D(Z)V

    .line 86992
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/iZ;->A05:Z

    .line 86993
    new-instance v2, Lcom/facebook/ads/redexgen/X/O7;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iZ;->A08:Lcom/facebook/ads/redexgen/X/iI;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/iI;->A0D:Ljava/lang/String;

    sget-object v4, Lcom/facebook/ads/redexgen/X/Vq;->A07:Lcom/facebook/ads/redexgen/X/Vq;

    sget-object v5, Lcom/facebook/ads/internal/protocol/AdPlacementType;->REWARDED_VIDEO:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    sget-object v6, Lcom/facebook/ads/redexgen/X/Vp;->A08:Lcom/facebook/ads/redexgen/X/Vp;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iZ;->A08:Lcom/facebook/ads/redexgen/X/iI;

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/iI;->A0C:Lcom/facebook/ads/redexgen/X/U3;

    const/4 v7, 0x1

    invoke-direct/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/O7;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Vq;Lcom/facebook/ads/internal/protocol/AdPlacementType;Lcom/facebook/ads/redexgen/X/Vp;ILcom/facebook/ads/redexgen/X/U3;)V

    .line 86994
    .local v0, "adControllerConfig":Lcom/facebook/ads/redexgen/X/O7;
    invoke-virtual {v2, p3}, Lcom/facebook/ads/redexgen/X/O7;->A08(Z)V

    .line 86995
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iZ;->A06:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A2g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86996
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/iZ;->A06:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iZ;->A08:Lcom/facebook/ads/redexgen/X/iI;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/iI;->A06:Ljava/lang/String;

    .line 86997
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/XC;->A02(Lcom/facebook/ads/redexgen/X/gi;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86998
    .local v1, "extraHints":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 86999
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iZ;->A08:Lcom/facebook/ads/redexgen/X/iI;

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/iI;->A06:Ljava/lang/String;

    .line 87000
    .end local v1    # "extraHints":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iZ;->A08:Lcom/facebook/ads/redexgen/X/iI;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/iI;->A06:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/O7;->A06(Ljava/lang/String;)V

    .line 87001
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iZ;->A08:Lcom/facebook/ads/redexgen/X/iI;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/iI;->A07:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/O7;->A07(Ljava/lang/String;)V

    .line 87002
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iZ;->A08:Lcom/facebook/ads/redexgen/X/iI;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/iI;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v0, Lcom/facebook/ads/redexgen/X/7a;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/7a;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/O7;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/iZ;->A04:Lcom/facebook/ads/redexgen/X/7a;

    .line 87003
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/iZ;->A04:Lcom/facebook/ads/redexgen/X/7a;

    new-instance v0, Lcom/facebook/ads/redexgen/X/ib;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ib;-><init>(Lcom/facebook/ads/redexgen/X/iZ;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/j0;->A0S(Lcom/facebook/ads/redexgen/X/N2;)V

    .line 87004
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iZ;->A04:Lcom/facebook/ads/redexgen/X/7a;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/j0;->A0X(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;)V

    .line 87005
    return-void
.end method

.method private A0D(Z)V
    .locals 2

    .line 87006
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iZ;->A04:Lcom/facebook/ads/redexgen/X/7a;

    if-eqz v0, :cond_0

    .line 87007
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/iZ;->A04:Lcom/facebook/ads/redexgen/X/7a;

    new-instance v0, Lcom/facebook/ads/redexgen/X/ia;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ia;-><init>(Lcom/facebook/ads/redexgen/X/iZ;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/j0;->A0S(Lcom/facebook/ads/redexgen/X/N2;)V

    .line 87008
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iZ;->A04:Lcom/facebook/ads/redexgen/X/7a;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/j0;->A0Y(Z)V

    .line 87009
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iZ;->A04:Lcom/facebook/ads/redexgen/X/7a;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/j0;->A0K()V

    .line 87010
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/iZ;->A04:Lcom/facebook/ads/redexgen/X/7a;

    .line 87011
    :cond_0
    return-void
.end method

.method public static synthetic A0E(Lcom/facebook/ads/redexgen/X/iZ;Z)Z
    .locals 0

    .line 87012
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/iZ;->A05:Z

    return p1
.end method


# virtual methods
.method public final A0F()J
    .locals 2

    .line 87013
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iZ;->A04:Lcom/facebook/ads/redexgen/X/7a;

    if-eqz v0, :cond_0

    .line 87014
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iZ;->A04:Lcom/facebook/ads/redexgen/X/7a;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/j0;->A0G()J

    move-result-wide v0

    return-wide v0

    .line 87015
    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final A0G()Lcom/facebook/ads/redexgen/X/iI;
    .locals 1

    .line 87016
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iZ;->A08:Lcom/facebook/ads/redexgen/X/iI;

    return-object v0
.end method

.method public final A0H()Lcom/facebook/ads/redexgen/X/gi;
    .locals 1

    .line 87017
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iZ;->A06:Lcom/facebook/ads/redexgen/X/gi;

    return-object v0
.end method

.method public final A0I(Lcom/facebook/ads/RewardData;)V
    .locals 1

    .line 87018
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iZ;->A08:Lcom/facebook/ads/redexgen/X/iI;

    iput-object p1, v0, Lcom/facebook/ads/redexgen/X/iI;->A03:Lcom/facebook/ads/RewardData;

    .line 87019
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/iZ;->A05:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iZ;->A04:Lcom/facebook/ads/redexgen/X/7a;

    if-eqz v0, :cond_0

    .line 87020
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iZ;->A04:Lcom/facebook/ads/redexgen/X/7a;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/7a;->A0a(Lcom/facebook/ads/RewardData;)V

    .line 87021
    :cond_0
    return-void
.end method

.method public final A0J(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;Z)V
    .locals 7

    .line 87022
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/iZ;->A00:J

    .line 87023
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/iZ;->A0C(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;Z)V

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87024
    :catch_0
    move-exception v6

    .line 87025
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/facebook/ads/redexgen/X/iZ;->A0A:Ljava/lang/String;

    const/16 v2, 0x4e

    const/16 v1, 0x1f

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iZ;->A09(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87026
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iZ;->A08:Lcom/facebook/ads/redexgen/X/iI;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/iI;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    .line 87027
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/Td;->A0b:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v3, v6}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/Throwable;)V

    .line 87028
    const/16 v2, 0x6d

    const/4 v1, 0x3

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iZ;->A09(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    .line 87029
    const/16 v0, 0x7d4

    invoke-static {v0}, Lcom/facebook/ads/AdError;->internalError(I)Lcom/facebook/ads/AdError;

    move-result-object v5

    .line 87030
    .local v1, "error":Lcom/facebook/ads/AdError;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iZ;->A08:Lcom/facebook/ads/redexgen/X/iI;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/iI;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    .line 87031
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v4

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/iZ;->A00:J

    .line 87032
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Y1;->A01(J)J

    move-result-wide v2

    invoke-virtual {v5}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v1

    invoke-virtual {v5}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    .line 87033
    invoke-interface {v4, v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3N(JILjava/lang/String;)V

    .line 87034
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/iZ;->A07:Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iZ;->A08:Lcom/facebook/ads/redexgen/X/iI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iI;->A6k()Lcom/facebook/ads/Ad;

    move-result-object v0

    invoke-interface {v1, v0, v5}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    .line 87035
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "error":Lcom/facebook/ads/AdError;
    :goto_0
    return-void
.end method

.method public final A0K()Z
    .locals 1

    .line 87036
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iZ;->A04:Lcom/facebook/ads/redexgen/X/7a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iZ;->A04:Lcom/facebook/ads/redexgen/X/7a;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/j0;->A0Z()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0L()Z
    .locals 1

    .line 87037
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/iZ;->A05:Z

    return v0
.end method

.method public final A0M(IJ)Z
    .locals 4

    .line 87038
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/iZ;->A05:Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 87039
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/iZ;->A07:Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iZ;->A08:Lcom/facebook/ads/redexgen/X/iI;

    .line 87040
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iI;->A6k()Lcom/facebook/ads/Ad;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/AdError;->SHOW_CALLED_BEFORE_LOAD_ERROR:Lcom/facebook/ads/AdError;

    .line 87041
    invoke-interface {v3, v1, v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    .line 87042
    return v2

    .line 87043
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iZ;->A04:Lcom/facebook/ads/redexgen/X/7a;

    if-eqz v0, :cond_1

    .line 87044
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/iZ;->A01:J

    .line 87045
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iZ;->A04:Lcom/facebook/ads/redexgen/X/7a;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/j0;->A08:Lcom/facebook/ads/redexgen/X/O7;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/O7;->A02(I)V

    .line 87046
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iZ;->A04:Lcom/facebook/ads/redexgen/X/7a;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/j0;->A08:Lcom/facebook/ads/redexgen/X/O7;

    invoke-virtual {v0, p2, p3}, Lcom/facebook/ads/redexgen/X/O7;->A03(J)V

    .line 87047
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iZ;->A04:Lcom/facebook/ads/redexgen/X/7a;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/j0;->A0M()V

    .line 87048
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/iZ;->A05:Z

    .line 87049
    const/4 v0, 0x1

    return v0

    .line 87050
    :cond_1
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/iZ;->A05:Z

    .line 87051
    return v2
.end method

.method public final destroy()V
    .locals 1

    .line 87052
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/iZ;->A0D(Z)V

    .line 87053
    return-void
.end method
