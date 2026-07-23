.class public final Lcom/facebook/ads/redexgen/X/iM;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/OQ;


# static fields
.field public static A06:[B

.field public static A07:[Ljava/lang/String;


# instance fields
.field public A00:Z

.field public final A01:Lcom/facebook/ads/redexgen/X/ik;

.field public final A02:Lcom/facebook/ads/redexgen/X/OE;

.field public final A03:Lcom/facebook/ads/redexgen/X/OL;

.field public final A04:Lcom/facebook/ads/redexgen/X/iI;

.field public final A05:Lcom/facebook/ads/redexgen/X/gi;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2946
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "hwQkg6wydYZbPmHd9ra1rendlmZDH9o"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "EZChF1CYxmcTUt5XULmCX0u1P"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "cTSi58RkvxQZRZutX5Kpp639urCcNivT"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ILotitRaBN9o4fzRERLTj8sSXBTWlTTb"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "JZvxvLc"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "wZ48NZZ1KfL4Szkg73ZSFlGgbHtYLjcz"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "R8pWvTFrbs0CFqCxyNRNjvJ5bjwX3"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "qzEf3MAjBvJJtqQXUiJPrqpPaexFktRV"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/iM;->A07:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/iM;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/iI;Lcom/facebook/ads/redexgen/X/OE;Lcom/facebook/ads/redexgen/X/ik;Lcom/facebook/ads/redexgen/X/OL;)V
    .locals 0

    .line 86549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86550
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/iM;->A05:Lcom/facebook/ads/redexgen/X/gi;

    .line 86551
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/iM;->A04:Lcom/facebook/ads/redexgen/X/iI;

    .line 86552
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/iM;->A02:Lcom/facebook/ads/redexgen/X/OE;

    .line 86553
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/iM;->A01:Lcom/facebook/ads/redexgen/X/ik;

    .line 86554
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/iM;->A03:Lcom/facebook/ads/redexgen/X/OL;

    .line 86555
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/iM;->A06:[B

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

    const/16 v0, 0xce

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/iM;->A06:[B

    return-void

    :array_0
    .array-data 1
        0x57t
        0x72t
        0x36t
        0x79t
        0x74t
        0x7ct
        0x73t
        0x75t
        0x62t
        0x36t
        0x7ft
        0x65t
        0x36t
        0x78t
        0x63t
        0x7at
        0x7at
        0x3t
        0x14t
        0xft
        0x5t
        0xdt
        0x4t
        0x1et
        0x4t
        0x19t
        0x15t
        0x13t
        0x0t
        0x12t
        0x1et
        0xat
        0x4t
        0x18t
        0x41t
        0x45t
        0x46t
        0x72t
        0x63t
        0x6et
        0x62t
        0x69t
        0x64t
        0x62t
        0x49t
        0x62t
        0x73t
        0x70t
        0x68t
        0x75t
        0x6ct
        0x5et
        0x59t
        0x43t
        0x48t
        0x52t
        0x45t
        0x45t
        0x58t
        0x45t
        0x48t
        0x54t
        0x58t
        0x53t
        0x52t
        0x48t
        0x5ct
        0x52t
        0x4et
        0x60t
        0x67t
        0x7dt
        0x76t
        0x7bt
        0x7ft
        0x76t
        0x7ft
        0x60t
        0x6dt
        0x6ct
        0x66t
        0x76t
        0x6dt
        0x7ct
        0x7bt
        0x68t
        0x7dt
        0x60t
        0x66t
        0x67t
        0x76t
        0x62t
        0x6ct
        0x70t
        0x43t
        0x40t
        0x41t
        0x48t
        0x50t
        0x46t
        0x41t
        0x59t
        0x4et
        0x43t
        0x46t
        0x4bt
        0x4et
        0x5bt
        0x46t
        0x40t
        0x41t
        0x50t
        0x5bt
        0x46t
        0x42t
        0x4at
        0x50t
        0x44t
        0x4at
        0x56t
        0x22t
        0xat
        0x1ct
        0x1ct
        0xet
        0x8t
        0xat
        0x55t
        0x4ft
        0x7ft
        0x5bt
        0x41t
        0x41t
        0x5bt
        0x5ct
        0x55t
        0x12t
        0x50t
        0x47t
        0x5ct
        0x56t
        0x5et
        0x57t
        0x12t
        0x54t
        0x5dt
        0x40t
        0x12t
        0x5ft
        0x57t
        0x41t
        0x41t
        0x53t
        0x55t
        0x57t
        0x9t
        0x2dt
        0x37t
        0x37t
        0x2dt
        0x2at
        0x23t
        0x64t
        0x26t
        0x31t
        0x2at
        0x20t
        0x28t
        0x21t
        0x64t
        0x22t
        0x2bt
        0x36t
        0x64t
        0x29t
        0x21t
        0x37t
        0x37t
        0x25t
        0x23t
        0x21t
        0x6at
        0x36t
        0x31t
        0x37t
        0x3at
        0x20t
        0x37t
        0x37t
        0x2at
        0x37t
        0x3at
        0x28t
        0x20t
        0x36t
        0x36t
        0x24t
        0x22t
        0x20t
        0x3at
        0x2et
        0x20t
        0x3ct
        0x5t
        0x14t
        0xdt
    .end array-data
.end method


# virtual methods
.method public final A5R(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .line 86556
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iM;->A04:Lcom/facebook/ads/redexgen/X/iI;

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/OX;->A03(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/iI;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final A5v()V
    .locals 3

    .line 86557
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/iM;->A03:Lcom/facebook/ads/redexgen/X/OL;

    const/16 v0, 0x7d2

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/OL;->A0F(ILandroid/os/Bundle;)Z

    .line 86558
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iM;->A03:Lcom/facebook/ads/redexgen/X/OL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OL;->A0C()V

    .line 86559
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iM;->A04:Lcom/facebook/ads/redexgen/X/iI;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/iI;->A02(Lcom/facebook/ads/Ad;)V

    .line 86560
    return-void
.end method

.method public final A8P()I
    .locals 1

    .line 86561
    const/16 v0, 0x7d0

    return v0
.end method

.method public final A9j(Landroid/os/Message;)V
    .locals 9

    .line 86562
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iM;->A04:Lcom/facebook/ads/redexgen/X/iI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iI;->A6k()Lcom/facebook/ads/Ad;

    move-result-object v3

    .line 86563
    .local v0, "ad":Lcom/facebook/ads/Ad;
    const/16 v2, 0xcb

    const/4 v1, 0x3

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iM;->A00(III)Ljava/lang/String;

    move-result-object v7

    if-nez v3, :cond_0

    .line 86564
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iM;->A05:Lcom/facebook/ads/redexgen/X/gi;

    .line 86565
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v4

    sget v3, Lcom/facebook/ads/redexgen/X/Td;->A0K:I

    const/4 v2, 0x0

    const/16 v1, 0x11

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iM;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/String;)V

    .line 86566
    invoke-interface {v4, v7, v3, v0}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    .line 86567
    return-void

    .line 86568
    :cond_0
    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x78

    const/16 v1, 0x9

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iM;->A00(III)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x11

    const/16 v1, 0x11

    const/4 v0, 0x3

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/iM;->A00(III)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    sparse-switch v6, :sswitch_data_0

    .line 86569
    .end local v2
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iM;->A04:Lcom/facebook/ads/redexgen/X/iI;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/iI;->A04:Lcom/facebook/ads/RewardedVideoAdListener;

    if-nez v0, :cond_3

    .line 86570
    return-void

    .line 86571
    :sswitch_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iM;->A02:Lcom/facebook/ads/redexgen/X/OE;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/OE;->AJm()V

    .line 86572
    goto :goto_0

    .line 86573
    :sswitch_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iM;->A04:Lcom/facebook/ads/redexgen/X/iI;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/iI;->A02(Lcom/facebook/ads/Ad;)V

    .line 86574
    goto :goto_0

    .line 86575
    :sswitch_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iM;->A02:Lcom/facebook/ads/redexgen/X/OE;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/OE;->AJW()V

    .line 86576
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 86577
    .local v2, "bundle":Landroid/os/Bundle;
    if-eqz v6, :cond_1

    .line 86578
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/iM;->A04:Lcom/facebook/ads/redexgen/X/iI;

    const/16 v2, 0x5e

    const/16 v1, 0x1a

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iM;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, v4, Lcom/facebook/ads/redexgen/X/iI;->A01:J

    .line 86579
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/iM;->A04:Lcom/facebook/ads/redexgen/X/iI;

    const/16 v2, 0x45

    const/16 v1, 0x19

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iM;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v4, Lcom/facebook/ads/redexgen/X/iI;->A00:I

    .line 86580
    :goto_1
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/iM;->A04:Lcom/facebook/ads/redexgen/X/iI;

    sget-object v1, Lcom/facebook/ads/redexgen/X/iM;->A07:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 86581
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iM;->A05:Lcom/facebook/ads/redexgen/X/gi;

    .line 86582
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v8

    sget v6, Lcom/facebook/ads/redexgen/X/Td;->A0V:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x81

    const/16 v1, 0x1a

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iM;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v0, v1, v4}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 86583
    invoke-interface {v8, v7, v6, v0}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/iM;->A07:[Ljava/lang/String;

    const-string v1, "nZDiJI4iz"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v4, v5}, Lcom/facebook/ads/redexgen/X/iI;->A02(Lcom/facebook/ads/Ad;)V

    .line 86584
    goto/16 :goto_0

    .line 86585
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_1

    .line 86586
    :goto_2
    return-void

    .line 86587
    :sswitch_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iM;->A04:Lcom/facebook/ads/redexgen/X/iI;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/iI;->A04:Lcom/facebook/ads/RewardedVideoAdListener;

    invoke-interface {v0}, Lcom/facebook/ads/RewardedVideoAdListener;->onRewardedVideoCompleted()V

    goto :goto_2

    .line 86588
    :sswitch_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iM;->A04:Lcom/facebook/ads/redexgen/X/iI;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/iI;->A04:Lcom/facebook/ads/RewardedVideoAdListener;

    instance-of v0, v0, Lcom/facebook/ads/S2SRewardedVideoAdListener;

    if-eqz v0, :cond_4

    .line 86589
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iM;->A04:Lcom/facebook/ads/redexgen/X/iI;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/iI;->A04:Lcom/facebook/ads/RewardedVideoAdListener;

    check-cast v0, Lcom/facebook/ads/S2SRewardedVideoAdListener;

    invoke-interface {v0}, Lcom/facebook/ads/S2SRewardedVideoAdListener;->onRewardServerFailed()V

    .line 86590
    :cond_4
    return-void

    .line 86591
    :sswitch_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iM;->A04:Lcom/facebook/ads/redexgen/X/iI;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/iI;->A04:Lcom/facebook/ads/RewardedVideoAdListener;

    instance-of v0, v0, Lcom/facebook/ads/S2SRewardedVideoAdListener;

    if-eqz v0, :cond_5

    .line 86592
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iM;->A04:Lcom/facebook/ads/redexgen/X/iI;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/iI;->A04:Lcom/facebook/ads/RewardedVideoAdListener;

    check-cast v0, Lcom/facebook/ads/S2SRewardedVideoAdListener;

    invoke-interface {v0}, Lcom/facebook/ads/S2SRewardedVideoAdListener;->onRewardServerSuccess()V

    .line 86593
    :cond_5
    return-void

    .line 86594
    :sswitch_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iM;->A04:Lcom/facebook/ads/redexgen/X/iI;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/iI;->A04:Lcom/facebook/ads/RewardedVideoAdListener;

    invoke-interface {v0}, Lcom/facebook/ads/RewardedVideoAdListener;->onRewardedVideoClosed()V

    .line 86595
    return-void

    .line 86596
    :sswitch_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iM;->A04:Lcom/facebook/ads/redexgen/X/iI;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/iI;->A04:Lcom/facebook/ads/RewardedVideoAdListener;

    instance-of v0, v0, Lcom/facebook/ads/RewardedVideoAdExtendedListener;

    if-eqz v0, :cond_6

    .line 86597
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iM;->A04:Lcom/facebook/ads/redexgen/X/iI;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/iI;->A04:Lcom/facebook/ads/RewardedVideoAdListener;

    check-cast v0, Lcom/facebook/ads/RewardedVideoAdExtendedListener;

    .line 86598
    invoke-interface {v0}, Lcom/facebook/ads/RewardedVideoAdExtendedListener;->onRewardedVideoActivityDestroyed()V

    .line 86599
    :cond_6
    return-void

    .line 86600
    :sswitch_8
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iM;->A04:Lcom/facebook/ads/redexgen/X/iI;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/iI;->A04:Lcom/facebook/ads/RewardedVideoAdListener;

    invoke-interface {v0, v3}, Lcom/facebook/ads/RewardedVideoAdListener;->onLoggingImpression(Lcom/facebook/ads/Ad;)V

    .line 86601
    return-void

    .line 86602
    :sswitch_9
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iM;->A04:Lcom/facebook/ads/redexgen/X/iI;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/iI;->A04:Lcom/facebook/ads/RewardedVideoAdListener;

    invoke-interface {v0, v3}, Lcom/facebook/ads/RewardedVideoAdListener;->onAdClicked(Lcom/facebook/ads/Ad;)V

    .line 86603
    return-void

    .line 86604
    :sswitch_a
    iget-boolean v4, p0, Lcom/facebook/ads/redexgen/X/iM;->A00:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/iM;->A07:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4d

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/iM;->A07:[Ljava/lang/String;

    const-string v1, "TwWthT4PMcqNyudS0vukG"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-nez v4, :cond_8

    .line 86605
    :goto_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iM;->A04:Lcom/facebook/ads/redexgen/X/iI;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/iI;->A04:Lcom/facebook/ads/RewardedVideoAdListener;

    invoke-interface {v0, v3}, Lcom/facebook/ads/RewardedVideoAdListener;->onAdLoaded(Lcom/facebook/ads/Ad;)V

    .line 86606
    :goto_4
    return-void

    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/iM;->A07:[Ljava/lang/String;

    const-string v1, "qK0IooEpc5XoMFwfzvHEQuTBU9uHuwow"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-nez v4, :cond_8

    goto :goto_3

    .line 86607
    :cond_8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/iM;->A00:Z

    goto :goto_4

    .line 86608
    .end local v2    # "bundle":Landroid/os/Bundle;
    :sswitch_b
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 86609
    .local v2, "errorBundle":Landroid/os/Bundle;
    if-eqz v4, :cond_a

    .line 86610
    const/16 v2, 0x33

    const/16 v1, 0x12

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iM;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 86611
    .local v1, "errorCode":I
    const/16 v2, 0xb6

    const/16 v1, 0x15

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iM;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 86612
    .local v3, "errorMessage":Ljava/lang/String;
    new-instance v1, Lcom/facebook/ads/AdError;

    invoke-direct {v1, v6, v4}, Lcom/facebook/ads/AdError;-><init>(ILjava/lang/String;)V

    .line 86613
    .local v4, "error":Lcom/facebook/ads/AdError;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iM;->A02:Lcom/facebook/ads/redexgen/X/OE;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/OE;->AJR(Lcom/facebook/ads/AdError;)V

    .line 86614
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iM;->A04:Lcom/facebook/ads/redexgen/X/iI;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/iI;->A04:Lcom/facebook/ads/RewardedVideoAdListener;

    if-eqz v0, :cond_9

    .line 86615
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iM;->A04:Lcom/facebook/ads/redexgen/X/iI;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/iI;->A04:Lcom/facebook/ads/RewardedVideoAdListener;

    invoke-interface {v0, v3, v1}, Lcom/facebook/ads/RewardedVideoAdListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    .line 86616
    :goto_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iM;->A04:Lcom/facebook/ads/redexgen/X/iI;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/iI;->A02(Lcom/facebook/ads/Ad;)V

    .line 86617
    return-void

    .line 86618
    :cond_9
    const/16 v2, 0x22

    const/16 v1, 0x11

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iM;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 86619
    :cond_a
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/iM;->A02:Lcom/facebook/ads/redexgen/X/OE;

    sget-object v0, Lcom/facebook/ads/redexgen/X/OD;->A04:Lcom/facebook/ads/redexgen/X/OD;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/OE;->AJM(Lcom/facebook/ads/redexgen/X/OD;)V

    .line 86620
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iM;->A05:Lcom/facebook/ads/redexgen/X/gi;

    .line 86621
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v6

    sget v4, Lcom/facebook/ads/redexgen/X/Td;->A0V:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x9b

    const/16 v1, 0x1b

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iM;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 86622
    invoke-interface {v6, v7, v4, v0}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    goto :goto_5

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_b
        0x834 -> :sswitch_2
        0x837 -> :sswitch_b
        0x83a -> :sswitch_1
        0x83e -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x834 -> :sswitch_a
        0x838 -> :sswitch_9
        0x839 -> :sswitch_8
        0x83a -> :sswitch_7
        0x83e -> :sswitch_6
        0xbb8 -> :sswitch_3
        0xbb9 -> :sswitch_5
        0xbba -> :sswitch_4
    .end sparse-switch
.end method

.method public final AJn(Z)V
    .locals 0

    .line 86623
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/iM;->A00:Z

    .line 86624
    return-void
.end method
