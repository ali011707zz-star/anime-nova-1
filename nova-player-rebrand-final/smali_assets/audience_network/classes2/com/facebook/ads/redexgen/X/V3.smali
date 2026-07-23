.class public final Lcom/facebook/ads/redexgen/X/V3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/AudienceNetworkExportedActivityApi;


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final A00:Landroid/app/Activity;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1962
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "mk4JADweKGMdEipgs7lqzWCmp9MhwBVd"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "7Ny"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "iKbrrxCAW5LmmXQLv4pN0A2xOojW5LEh"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "hTGooAwgeIivj8mmjwzyxJz5o5QVTAJv"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "t2q"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "TYEvFDV2ICGQhAA5rVoFfbgoEst1cigG"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "6Z5Mtc9AK5a0redP3ZVrPDgigSlCVve8"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "dEPXAz2Hd7rZMNq86xusU7gw49uZCQrL"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/V3;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/V3;->A01()V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 68995
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68996
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/V3;->A00:Landroid/app/Activity;

    .line 68997
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/V3;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x41

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

    const/16 v0, 0x27

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/V3;->A01:[B

    return-void

    :array_0
    .array-data 1
        -0x11t
        -0xct
        -0x6t
        0x5t
        -0x8t
        -0x4t
        0x5t
        -0x19t
        -0xat
        -0xat
        0x5t
        -0xbt
        -0x8t
        -0x11t
        -0x15t
        -0xct
        -0x6t
        -0x19t
        -0x6t
        -0x11t
        -0xbt
        -0xct
        0x5t
        -0xft
        -0x15t
        -0x1t
        -0x2ct
        -0x2bt
        -0x2dt
        -0x20t
        -0x3et
        -0x3bt
        -0x20t
        -0x36t
        -0x3bt
        -0x20t
        -0x34t
        -0x3at
        -0x26t
    .end array-data
.end method

.method private A02(I)V
    .locals 1

    .line 68998
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V3;->A00:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 68999
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V3;->A00:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 69000
    return-void
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/V2;)Z
    .locals 4

    .line 69001
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V3;->A00:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    .line 69002
    .local v0, "callingPackage":Ljava/lang/String;
    if-eqz v1, :cond_0

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/V2;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 69003
    :cond_0
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/V3;->A02(I)V

    .line 69004
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/V2;->A00:Lcom/facebook/ads/redexgen/X/OG;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/id;

    if-eqz v0, :cond_1

    .line 69005
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/V2;->A00:Lcom/facebook/ads/redexgen/X/OG;

    check-cast v0, Lcom/facebook/ads/redexgen/X/id;

    .line 69006
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/id;->A0F()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    .line 69007
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    .line 69008
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->AHu()V

    .line 69009
    :cond_1
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/V2;->A00:Lcom/facebook/ads/redexgen/X/OG;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/iZ;

    if-eqz v0, :cond_2

    .line 69010
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/V2;->A00:Lcom/facebook/ads/redexgen/X/OG;

    check-cast v0, Lcom/facebook/ads/redexgen/X/iZ;

    .line 69011
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iZ;->A0H()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    .line 69012
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/V3;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4e

    if-eq v1, v0, :cond_3

    .line 69013
    sget-object v2, Lcom/facebook/ads/redexgen/X/V3;->A02:[Ljava/lang/String;

    const-string v1, "KnmB7vQIkrX7k7dgjGlnkXpo8slRCHvd"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "L31mVvLUBUTWDHfS0xNAbfc4Adshav9b"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/Lt;->AHu()V

    .line 69014
    :cond_2
    const/4 v0, 0x0

    return v0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 69015
    :cond_4
    const/4 v3, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/V3;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4e

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/V3;->A02:[Ljava/lang/String;

    const-string v1, "K8elIBMg7jYz2h1Vp3N7ST3gxgb7rcrL"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "atbN7xR2A34bPDsarDq1XfYhUcdmo37f"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return v3

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/V3;->A02:[Ljava/lang/String;

    const-string v1, "WL8DJ1n8qMW41xfoDndW3QEL4VTWFS4X"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "L472DFJOuggr64sYy3SVVGT8Lyt3cNtD"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return v3
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 69016
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/V3;->A00:Landroid/app/Activity;

    .line 69017
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Rp;->A05(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v5

    .line 69018
    .local v0, "exportedActivityContext":Lcom/facebook/ads/redexgen/X/gi;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V3;->A00:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69019
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->AHm()V

    .line 69020
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/V3;->A02(I)V

    .line 69021
    return-void

    .line 69022
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V3;->A00:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const/16 v2, 0x1a

    const/16 v1, 0xd

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/V3;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 69023
    .local v1, "adId":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 69024
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->AHq()V

    .line 69025
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/V3;->A02(I)V

    .line 69026
    return-void

    .line 69027
    :cond_1
    invoke-static {}, Lcom/facebook/ads/redexgen/X/X9;->A00()Lcom/facebook/ads/redexgen/X/X9;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/V3;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_8

    sget-object v2, Lcom/facebook/ads/redexgen/X/V3;->A02:[Ljava/lang/String;

    const-string v1, "lksFSMsleDiju0zPRojKCtBItYjbAveN"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/X9;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/V2;

    move-result-object v0

    .line 69028
    .local v2, "adRecord":Lcom/facebook/ads/redexgen/X/V2;
    if-eqz v0, :cond_2

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/V2;->A00:Lcom/facebook/ads/redexgen/X/OG;

    .line 69029
    .local v3, "ad":Lcom/facebook/ads/redexgen/X/OG;
    :goto_0
    const/4 v3, -0x1

    if-eqz v0, :cond_5

    instance-of v1, v4, Lcom/facebook/ads/redexgen/X/iZ;

    if-eqz v1, :cond_5

    .line 69030
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/V3;->A03(Lcom/facebook/ads/redexgen/X/V2;)Z

    move-result v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/V3;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/V3;->A02:[Ljava/lang/String;

    const-string v1, "e1bxVkSqO5M4Y9q0gpYlqAB3DYjxjVYF"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-nez v5, :cond_3

    .line 69031
    return-void

    .line 69032
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 69033
    :cond_3
    check-cast v4, Lcom/facebook/ads/redexgen/X/iZ;

    .line 69034
    .local v5, "internalRVAd":Lcom/facebook/ads/redexgen/X/iZ;
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/iZ;->A0G()Lcom/facebook/ads/redexgen/X/iI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iI;->A01()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V3;->A00:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/gi;->A0J(Landroid/app/Activity;)V

    .line 69035
    const-wide/16 v1, 0x0

    .line 69036
    .local v6, "previousAdViewTime":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V3;->A00:Landroid/app/Activity;

    .line 69037
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 69038
    const/4 v6, 0x0

    const/16 v5, 0x1a

    const/16 v0, 0x65

    invoke-static {v6, v5, v0}, Lcom/facebook/ads/redexgen/X/V3;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 69039
    .local p0, "appOrientation":I
    invoke-virtual {v4, v0, v1, v2}, Lcom/facebook/ads/redexgen/X/iZ;->A0M(IJ)Z

    .line 69040
    .end local v5    # "internalRVAd":Lcom/facebook/ads/redexgen/X/iZ;
    .end local v6    # "previousAdViewTime":J
    .end local p0    # "appOrientation":I
    goto :goto_1

    .line 69041
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 69042
    :cond_5
    if-eqz v0, :cond_7

    instance-of v1, v4, Lcom/facebook/ads/redexgen/X/id;

    if-eqz v1, :cond_7

    .line 69043
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/V3;->A03(Lcom/facebook/ads/redexgen/X/V2;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 69044
    return-void

    .line 69045
    :cond_6
    check-cast v4, Lcom/facebook/ads/redexgen/X/id;

    .line 69046
    .local v5, "internalIntAd":Lcom/facebook/ads/redexgen/X/id;
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/id;->A0E()Lcom/facebook/ads/redexgen/X/iY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iY;->A05()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V3;->A00:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/gi;->A0J(Landroid/app/Activity;)V

    .line 69047
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/id;->A0J()Z

    .line 69048
    .end local v5    # "internalIntAd":Lcom/facebook/ads/redexgen/X/id;
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V3;->A00:Landroid/app/Activity;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setResult(I)V

    .line 69049
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V3;->A00:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 69050
    return-void

    .line 69051
    :cond_7
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->AII()V

    .line 69052
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/V3;->A02(I)V

    .line 69053
    return-void

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
