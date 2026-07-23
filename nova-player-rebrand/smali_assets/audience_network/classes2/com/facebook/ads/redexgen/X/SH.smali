.class public final Lcom/facebook/ads/redexgen/X/SH;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/RewardedVideoAdApi;
.implements Lcom/facebook/ads/internal/context/Repairable;


# static fields
.field public static A04:[B

.field public static A05:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/Ad;

.field public final A01:Lcom/facebook/ads/redexgen/X/iI;

.field public final A02:Lcom/facebook/ads/redexgen/X/7X;

.field public final A03:Lcom/facebook/ads/redexgen/X/gi;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1642
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "k8yEFjaDDmJNEMKVrce3vEWkKDhb9GrD"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "5HJZEEaowyWiZ6x5JcW91LnqKILZK9iv"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "JCdbC5zohUOjfclxz"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "cbOkRGwJ0he66t85Zev39Ck1DLyP"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "QnWh1EoQaEskbAIVlUx7Y0ywxM6b"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "GMmjAnpO"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "8CCIVLGxcMAoQXrfALv1hDyohO9DfryR"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "UYxyoZ6BjjTfNK3ar4eEie7WMpDsFwCV"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/SH;->A05:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/SH;->A01()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/Ad;)V
    .locals 5

    .line 63763
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63764
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/SH;->A00:Lcom/facebook/ads/Ad;

    .line 63765
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/gi;

    if-eqz v0, :cond_0

    .line 63766
    check-cast p1, Lcom/facebook/ads/redexgen/X/gi;

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SH;->A03:Lcom/facebook/ads/redexgen/X/gi;

    .line 63767
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SH;->A03:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->getId()Ljava/lang/String;

    move-result-object v4

    .line 63768
    .local v0, "adId":Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SH;->A03:Lcom/facebook/ads/redexgen/X/gi;

    .line 63769
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->REWARDED_VIDEO:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    .line 63770
    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p2}, Lcom/facebook/ads/redexgen/X/Lt;->A3T(Ljava/lang/String;Ljava/lang/String;)V

    .line 63771
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/SH;->A03:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/SH;->A00:Lcom/facebook/ads/Ad;

    new-instance v1, Lcom/facebook/ads/redexgen/X/ij;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/ij;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/iI;

    invoke-direct {v0, v3, p2, v2, v1}, Lcom/facebook/ads/redexgen/X/iI;-><init>(Lcom/facebook/ads/redexgen/X/gi;Ljava/lang/String;Lcom/facebook/ads/Ad;Lcom/facebook/ads/redexgen/X/U3;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SH;->A01:Lcom/facebook/ads/redexgen/X/iI;

    .line 63772
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SH;->A03:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/gi;->A0O(Lcom/facebook/ads/internal/context/Repairable;)V

    .line 63773
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SH;->A01:Lcom/facebook/ads/redexgen/X/iI;

    new-instance v0, Lcom/facebook/ads/redexgen/X/7X;

    invoke-direct {v0, v1, v4}, Lcom/facebook/ads/redexgen/X/7X;-><init>(Lcom/facebook/ads/redexgen/X/iI;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SH;->A02:Lcom/facebook/ads/redexgen/X/7X;

    .line 63774
    return-void

    .line 63775
    .end local v0    # "adId":Ljava/lang/String;
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    .line 63776
    .restart local v0    # "adId":Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/facebook/ads/redexgen/X/Rp;->A07(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SH;->A03:Lcom/facebook/ads/redexgen/X/gi;

    goto :goto_0
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/SH;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x9

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

    const/16 v0, 0x99

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/SH;->A04:[B

    return-void

    :array_0
    .array-data 1
        0x78t
        0x7ct
        0x79t
        0x79t
        0x2ct
        0x28t
        0x71t
        0x2dt
        0x1bt
        0x4at
        0x1at
        0x16t
        0x4at
        0x4ct
        0x1dt
        0x4bt
        0x66t
        0x30t
        0x32t
        0x61t
        0x35t
        0x61t
        0x30t
        0x37t
        0x20t
        0x75t
        0x22t
        0x71t
        0x25t
        0x2et
        0x2et
        0x22t
        0x34t
        0x13t
        0x9t
        0x18t
        0xft
        0x13t
        0x1ct
        0x11t
        0x5dt
        0x18t
        0xft
        0xft
        0x12t
        0xft
        0x53t
        0x77t
        0x69t
        0x5et
        0x4ct
        0x5at
        0x49t
        0x5ft
        0x5et
        0x5ft
        0x1bt
        0x4dt
        0x52t
        0x5ft
        0x5et
        0x54t
        0x1bt
        0x5at
        0x5ft
        0x1bt
        0x5ft
        0x5et
        0x48t
        0x4ft
        0x49t
        0x54t
        0x42t
        0x5et
        0x5ft
        0x3bt
        0xct
        0x1et
        0x8t
        0x1bt
        0xdt
        0xct
        0xdt
        0x49t
        0x1ft
        0x0t
        0xdt
        0xct
        0x6t
        0x49t
        0x8t
        0xdt
        0x49t
        0x5t
        0x6t
        0x8t
        0xdt
        0x49t
        0x1bt
        0xct
        0x18t
        0x1ct
        0xct
        0x1at
        0x1dt
        0xct
        0xdt
        0x21t
        0x16t
        0x4t
        0x12t
        0x1t
        0x17t
        0x16t
        0x17t
        0x53t
        0x5t
        0x1at
        0x17t
        0x16t
        0x1ct
        0x53t
        0x12t
        0x17t
        0x53t
        0x0t
        0x1bt
        0x1ct
        0x4t
        0x53t
        0x10t
        0x12t
        0x1ft
        0x1ft
        0x16t
        0x17t
        0x42t
        0x43t
        0x55t
        0x52t
        0x54t
        0x49t
        0x5ft
        0x49t
        0x4at
        0x44t
        0x41t
        0x64t
        0x41t
        0x16t
        0xdt
        0xat
        0x12t
    .end array-data
.end method


# virtual methods
.method public final A02()Lcom/facebook/ads/redexgen/X/SI;
    .locals 1

    .line 63777
    new-instance v0, Lcom/facebook/ads/redexgen/X/SI;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/SI;-><init>(Lcom/facebook/ads/redexgen/X/SH;)V

    return-object v0
.end method

.method public final A03()Lcom/facebook/ads/redexgen/X/SJ;
    .locals 1

    .line 63778
    new-instance v0, Lcom/facebook/ads/redexgen/X/SJ;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/SJ;-><init>()V

    return-object v0
.end method

.method public final A04()V
    .locals 1

    .line 63779
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SH;->A03:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A2M(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63780
    return-void

    .line 63781
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SH;->A02:Lcom/facebook/ads/redexgen/X/7X;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7X;->A08()V

    .line 63782
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SH;->A03:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3U()V

    .line 63783
    return-void
.end method

.method public final A05(Lcom/facebook/ads/RewardData;)V
    .locals 1

    .line 63784
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SH;->A02:Lcom/facebook/ads/redexgen/X/7X;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/7X;->A0G(Lcom/facebook/ads/RewardData;)V

    .line 63785
    return-void
.end method

.method public final A06(Lcom/facebook/ads/RewardedVideoAdListener;)V
    .locals 3

    .line 63786
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SH;->A01:Lcom/facebook/ads/redexgen/X/iI;

    iput-object p1, v0, Lcom/facebook/ads/redexgen/X/iI;->A04:Lcom/facebook/ads/RewardedVideoAdListener;

    .line 63787
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SH;->A03:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3M(Z)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/SH;->A05:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 63788
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/SH;->A05:[Ljava/lang/String;

    const-string v1, "1SRpemADNZd8xb9i9fuLSYNF0AwY2Tu2"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return-void
.end method

.method public final A07(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;Z)V
    .locals 4

    .line 63789
    if-nez p1, :cond_0

    .line 63790
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SH;->A03:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3Q()V

    .line 63791
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SH;->A02:Lcom/facebook/ads/redexgen/X/7X;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SH;->A00:Lcom/facebook/ads/Ad;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/7X;->A0F(Lcom/facebook/ads/Ad;Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;Z)V

    .line 63792
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SH;->A03:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3O()V

    .line 63793
    return-void

    .line 63794
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/SH;->A03:Lcom/facebook/ads/redexgen/X/gi;

    sget-object v1, Lcom/facebook/ads/redexgen/X/SH;->A05:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x48

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/SH;->A05:[Ljava/lang/String;

    const-string v1, "67CWYk6q7caxeYWX3cgidRuGJDEH"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "JzT9b8y5FiDfchRrDecE58hhFV9F"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3P()V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A08(Lcom/facebook/ads/RewardedVideoAd$RewardedVideoShowAdConfig;)Z
    .locals 2

    .line 63795
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SH;->A03:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3Z()V

    .line 63796
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SH;->A02:Lcom/facebook/ads/redexgen/X/7X;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SH;->A00:Lcom/facebook/ads/Ad;

    invoke-virtual {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/7X;->A0J(Lcom/facebook/ads/Ad;Lcom/facebook/ads/RewardedVideoAd$RewardedVideoShowAdConfig;)Z

    move-result v1

    .line 63797
    .local v0, "result":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SH;->A03:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Lt;->A3Y(Z)V

    .line 63798
    return v1
.end method

.method public final bridge synthetic buildLoadAdConfig()Lcom/facebook/ads/Ad$LoadConfigBuilder;
    .locals 1

    .line 63799
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SH;->A02()Lcom/facebook/ads/redexgen/X/SI;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildLoadAdConfig()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;
    .locals 1

    .line 63800
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SH;->A02()Lcom/facebook/ads/redexgen/X/SI;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildShowAdConfig()Lcom/facebook/ads/FullScreenAd$ShowConfigBuilder;
    .locals 1

    .line 63801
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SH;->A03()Lcom/facebook/ads/redexgen/X/SJ;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildShowAdConfig()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdShowConfigBuilder;
    .locals 1

    .line 63802
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SH;->A03()Lcom/facebook/ads/redexgen/X/SJ;

    move-result-object v0

    return-object v0
.end method

.method public final destroy()V
    .locals 5

    const/16 v2, 0x30

    const/16 v1, 0x1b

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SH;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SH;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x88

    const/4 v1, 0x7

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SH;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Vy;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63803
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SH;->A04()V

    .line 63804
    return-void
.end method

.method public final finalize()V
    .locals 1

    .line 63805
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SH;->A02:Lcom/facebook/ads/redexgen/X/7X;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ik;->A07()V

    .line 63806
    return-void
.end method

.method public final getPlacementId()Ljava/lang/String;
    .locals 1

    .line 63807
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SH;->A01:Lcom/facebook/ads/redexgen/X/iI;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/iI;->A0D:Ljava/lang/String;

    return-object v0
.end method

.method public final getVideoDuration()I
    .locals 1

    .line 63808
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SH;->A01:Lcom/facebook/ads/redexgen/X/iI;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/iI;->A00:I

    return v0
.end method

.method public final isAdInvalidated()Z
    .locals 2

    .line 63809
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SH;->A02:Lcom/facebook/ads/redexgen/X/7X;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7X;->A0H()Z

    move-result v1

    .line 63810
    .local v0, "isInvalidated":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SH;->A03:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Lt;->A5f(Z)V

    .line 63811
    return v1
.end method

.method public final isAdLoaded()Z
    .locals 1

    .line 63812
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SH;->A02:Lcom/facebook/ads/redexgen/X/7X;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7X;->A0I()Z

    move-result v0

    return v0
.end method

.method public final loadAd()V
    .locals 5

    const/16 v2, 0x4b

    const/16 v1, 0x20

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SH;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x18

    const/16 v1, 0x8

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SH;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x8f

    const/4 v1, 0x6

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SH;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Vy;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63813
    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v1, v0}, Lcom/facebook/ads/redexgen/X/SH;->A07(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;Z)V

    .line 63814
    return-void
.end method

.method public final loadAd(Lcom/facebook/ads/RewardedVideoAd$RewardedVideoLoadAdConfig;)V
    .locals 0

    .line 63815
    check-cast p1, Lcom/facebook/ads/redexgen/X/SI;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/SI;->A00()V

    .line 63816
    return-void
.end method

.method public final repair(Ljava/lang/Throwable;)V
    .locals 6

    .line 63817
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SH;->A01:Lcom/facebook/ads/redexgen/X/iI;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/iI;->A04:Lcom/facebook/ads/RewardedVideoAdListener;

    if-eqz v0, :cond_0

    .line 63818
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SH;->A01:Lcom/facebook/ads/redexgen/X/iI;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/iI;->A04:Lcom/facebook/ads/RewardedVideoAdListener;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/SH;->A00:Lcom/facebook/ads/Ad;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x20

    const/16 v1, 0x10

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SH;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SH;->A01:Lcom/facebook/ads/redexgen/X/iI;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/iI;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    .line 63819
    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/Xt;->A03(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v1, 0x7d1

    new-instance v0, Lcom/facebook/ads/AdError;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/AdError;-><init>(ILjava/lang/String;)V

    .line 63820
    invoke-interface {v4, v3, v0}, Lcom/facebook/ads/RewardedVideoAdListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    .line 63821
    :cond_0
    return-void
.end method

.method public final setExtraHints(Lcom/facebook/ads/ExtraHints;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 63822
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SH;->A01:Lcom/facebook/ads/redexgen/X/iI;

    invoke-virtual {p1}, Lcom/facebook/ads/ExtraHints;->getHints()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/iI;->A06:Ljava/lang/String;

    .line 63823
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SH;->A01:Lcom/facebook/ads/redexgen/X/iI;

    invoke-virtual {p1}, Lcom/facebook/ads/ExtraHints;->getMediationData()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/iI;->A07:Ljava/lang/String;

    .line 63824
    return-void
.end method

.method public final show()Z
    .locals 5

    const/16 v2, 0x6b

    const/16 v1, 0x1d

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SH;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x8

    const/16 v1, 0x8

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SH;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x95

    const/4 v1, 0x4

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SH;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Vy;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63825
    new-instance v1, Lcom/facebook/ads/redexgen/X/SJ;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/SJ;-><init>()V

    .line 63826
    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/SJ;->withAppOrientation(I)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdShowConfigBuilder;

    move-result-object v0

    .line 63827
    invoke-interface {v0}, Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdShowConfigBuilder;->build()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoShowAdConfig;

    move-result-object v0

    .line 63828
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/SH;->A08(Lcom/facebook/ads/RewardedVideoAd$RewardedVideoShowAdConfig;)Z

    move-result v0

    return v0
.end method

.method public final show(Lcom/facebook/ads/RewardedVideoAd$RewardedVideoShowAdConfig;)Z
    .locals 5

    const/16 v2, 0x6b

    const/16 v1, 0x1d

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SH;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x10

    const/16 v1, 0x8

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SH;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x95

    const/4 v1, 0x4

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SH;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Vy;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63829
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/SH;->A08(Lcom/facebook/ads/RewardedVideoAd$RewardedVideoShowAdConfig;)Z

    move-result v0

    return v0
.end method
