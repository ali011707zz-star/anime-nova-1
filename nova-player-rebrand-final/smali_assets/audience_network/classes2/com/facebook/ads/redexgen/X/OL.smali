.class public final Lcom/facebook/ads/redexgen/X/OL;
.super Landroid/os/Handler;
.source ""


# static fields
.field public static A0A:[B

.field public static A0B:[Ljava/lang/String;


# instance fields
.field public A00:Landroid/os/Messenger;

.field public A01:Z

.field public A02:Z

.field public final A03:Landroid/content/ServiceConnection;

.field public final A04:Landroid/os/Handler;

.field public final A05:Landroid/os/Messenger;

.field public final A06:Lcom/facebook/ads/redexgen/X/ik;

.field public final A07:Lcom/facebook/ads/redexgen/X/gi;

.field public final A08:Lcom/facebook/ads/redexgen/X/ge;

.field public final A09:Lcom/facebook/ads/redexgen/X/Wc;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1477
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "XpTFDRYls00C"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "vck7ifrHAA2V1iiiFUM31a68qMrbz65A"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "7kp6PJRyhpiDK2W7qsF8Tl5UxrhGPWlx"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "kdOcXot4hr7W5LaxQbiu9WGktsRnBt7r"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "NVDD45FTbKQ7iY36httqcibFke2pUkbB"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Eok23iuk6Oafvplk2kJb6Rczje1W7ylG"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "EhR8LI8Shp7o1jykQx"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "UYPguptf9M8vyKCeT3Zah9qOVZaP16c1"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/OL;->A0B:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/OL;->A07()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/ik;)V
    .locals 2

    .line 55467
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 55468
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/OL;->A04:Landroid/os/Handler;

    .line 55469
    new-instance v0, Lcom/facebook/ads/redexgen/X/OK;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/OK;-><init>(Lcom/facebook/ads/redexgen/X/OL;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/OL;->A03:Landroid/content/ServiceConnection;

    .line 55470
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/OL;->A07:Lcom/facebook/ads/redexgen/X/gi;

    .line 55471
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/T8;->A02()Lcom/facebook/ads/redexgen/X/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/OL;->A08:Lcom/facebook/ads/redexgen/X/ge;

    .line 55472
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/OL;->A05:Landroid/os/Messenger;

    .line 55473
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/OL;->A06:Lcom/facebook/ads/redexgen/X/ik;

    .line 55474
    new-instance v0, Lcom/facebook/ads/redexgen/X/iQ;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/iQ;-><init>(Lcom/facebook/ads/redexgen/X/OL;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/OL;->A09:Lcom/facebook/ads/redexgen/X/Wc;

    .line 55475
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/OL;)Landroid/os/Handler;
    .locals 0

    .line 55476
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/OL;->A04:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/OL;)Lcom/facebook/ads/redexgen/X/ik;
    .locals 0

    .line 55477
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/OL;->A06:Lcom/facebook/ads/redexgen/X/ik;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/OL;)Lcom/facebook/ads/redexgen/X/gi;
    .locals 0

    .line 55478
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/OL;->A07:Lcom/facebook/ads/redexgen/X/gi;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/OL;)Lcom/facebook/ads/redexgen/X/Wc;
    .locals 0

    .line 55479
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/OL;->A09:Lcom/facebook/ads/redexgen/X/Wc;

    return-object p0
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/OL;->A0A:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x56

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A05()V
    .locals 1

    .line 55480
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/OL;->A01:Z

    if-eqz v0, :cond_0

    .line 55481
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/OL;->A0C()V

    .line 55482
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/OL;->A00:Landroid/os/Messenger;

    .line 55483
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OL;->A06:Lcom/facebook/ads/redexgen/X/ik;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ik;->A09()V

    .line 55484
    return-void
.end method

.method private A06()V
    .locals 6

    .line 55485
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/OL;->A00:Landroid/os/Messenger;

    .line 55486
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/OL;->A0C()V

    .line 55487
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OL;->A06:Lcom/facebook/ads/redexgen/X/ik;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ik;->A03()Lcom/facebook/ads/redexgen/X/OE;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/OE;->A6p()Lcom/facebook/ads/redexgen/X/OD;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/OD;->A06:Lcom/facebook/ads/redexgen/X/OD;

    const/16 v3, 0xa

    if-ne v1, v0, :cond_1

    .line 55488
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OL;->A07:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->AHx()V

    .line 55489
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/OL;->A06:Lcom/facebook/ads/redexgen/X/ik;

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->INTERNAL_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-virtual {v1, v3, v0, v4}, Lcom/facebook/ads/redexgen/X/ik;->A0B(ILcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    .line 55490
    :cond_0
    :goto_0
    return-void

    .line 55491
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OL;->A06:Lcom/facebook/ads/redexgen/X/ik;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ik;->A03()Lcom/facebook/ads/redexgen/X/OE;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/OE;->A6q()Lcom/facebook/ads/redexgen/X/OD;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/OD;->A07:Lcom/facebook/ads/redexgen/X/OD;

    if-ne v1, v0, :cond_5

    .line 55492
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OL;->A07:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Us;->A08(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 55493
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OL;->A07:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->AHn()V

    .line 55494
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OL;->A06:Lcom/facebook/ads/redexgen/X/ik;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/7Y;

    if-eqz v0, :cond_2

    .line 55495
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/OL;->A06:Lcom/facebook/ads/redexgen/X/ik;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OL;->A06:Lcom/facebook/ads/redexgen/X/ik;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ik;->A04()Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0x3fe

    invoke-virtual {v2, v0, v1, v4}, Lcom/facebook/ads/redexgen/X/ik;->AEs(ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 55496
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OL;->A06:Lcom/facebook/ads/redexgen/X/ik;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/7X;

    if-eqz v0, :cond_0

    .line 55497
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/OL;->A06:Lcom/facebook/ads/redexgen/X/ik;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OL;->A06:Lcom/facebook/ads/redexgen/X/ik;

    .line 55498
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ik;->A04()Ljava/lang/String;

    move-result-object v1

    .line 55499
    const/16 v0, 0xbb8

    invoke-virtual {v2, v0, v1, v4}, Lcom/facebook/ads/redexgen/X/ik;->AEs(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 55500
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OL;->A06:Lcom/facebook/ads/redexgen/X/ik;

    check-cast v0, Lcom/facebook/ads/redexgen/X/7X;

    .line 55501
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7X;->A0E()Lcom/facebook/ads/redexgen/X/iI;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/iI;->A03:Lcom/facebook/ads/RewardData;

    .line 55502
    .local v1, "rewardData":Lcom/facebook/ads/RewardData;
    if-eqz v0, :cond_3

    .line 55503
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/OL;->A06:Lcom/facebook/ads/redexgen/X/ik;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OL;->A06:Lcom/facebook/ads/redexgen/X/ik;

    .line 55504
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ik;->A04()Ljava/lang/String;

    move-result-object v1

    .line 55505
    const/16 v0, 0xbba

    invoke-virtual {v2, v0, v1, v4}, Lcom/facebook/ads/redexgen/X/ik;->AEs(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 55506
    :cond_3
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/OL;->A06:Lcom/facebook/ads/redexgen/X/ik;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OL;->A06:Lcom/facebook/ads/redexgen/X/ik;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ik;->A04()Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0x83e

    invoke-virtual {v2, v0, v1, v4}, Lcom/facebook/ads/redexgen/X/ik;->AEs(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 55507
    .end local v1    # "rewardData":Lcom/facebook/ads/RewardData;
    goto :goto_0

    .line 55508
    :cond_4
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/OL;->A07:Lcom/facebook/ads/redexgen/X/gi;

    sget-object v2, Lcom/facebook/ads/redexgen/X/OL;->A0B:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/OL;->A0B:[Ljava/lang/String;

    const-string v1, "cr4Q9HMWLwUnqKkNe0JHYa6bJM3GW5OO"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "PiN7IKeRutrD0cCtifS7cTLBqsuq3alq"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->AHx()V

    .line 55509
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/OL;->A06:Lcom/facebook/ads/redexgen/X/ik;

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->INTERNAL_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-virtual {v1, v3, v0, v4}, Lcom/facebook/ads/redexgen/X/ik;->A0B(ILcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 55510
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OL;->A06:Lcom/facebook/ads/redexgen/X/ik;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ik;->A03()Lcom/facebook/ads/redexgen/X/OE;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/OE;->A6p()Lcom/facebook/ads/redexgen/X/OD;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/OD;->A05:Lcom/facebook/ads/redexgen/X/OD;

    if-ne v1, v0, :cond_0

    .line 55511
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OL;->A07:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Us;->A0C(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 55512
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OL;->A07:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->AI4()V

    .line 55513
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OL;->A06:Lcom/facebook/ads/redexgen/X/ik;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ik;->A03()Lcom/facebook/ads/redexgen/X/OE;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/OE;->AAw()V

    .line 55514
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/OL;->A06:Lcom/facebook/ads/redexgen/X/ik;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ik;->A0D(Z)V

    .line 55515
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OL;->A06:Lcom/facebook/ads/redexgen/X/ik;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ik;->A09()V

    goto/16 :goto_0

    .line 55516
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OL;->A07:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->AI3()V

    .line 55517
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OL;->A06:Lcom/facebook/ads/redexgen/X/ik;

    .line 55518
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ik;->A03()Lcom/facebook/ads/redexgen/X/OE;

    move-result-object v4

    const/16 v3, 0x7d8

    const/16 v2, 0x1f

    const/16 v1, 0x15

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OL;->A04(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/AdError;

    invoke-direct {v0, v3, v1}, Lcom/facebook/ads/AdError;-><init>(ILjava/lang/String;)V

    .line 55519
    invoke-interface {v4, v0}, Lcom/facebook/ads/redexgen/X/OE;->AJR(Lcom/facebook/ads/AdError;)V

    goto/16 :goto_0

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A07()V
    .locals 1

    const/16 v0, 0x49

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/OL;->A0A:[B

    return-void

    :array_0
    .array-data 1
        -0x1et
        -0x11t
        -0x19t
        -0x25t
        -0x3ft
        -0x40t
        -0x3bt
        -0x35t
        -0x2at
        -0x37t
        -0x33t
        -0x2at
        -0x48t
        -0x39t
        -0x39t
        -0x2at
        -0x3at
        -0x37t
        -0x40t
        -0x44t
        -0x3bt
        -0x35t
        -0x48t
        -0x35t
        -0x40t
        -0x3at
        -0x3bt
        -0x2at
        -0x3et
        -0x44t
        -0x30t
        -0x36t
        -0x23t
        -0x1bt
        -0x19t
        -0x14t
        -0x23t
        -0x68t
        -0x15t
        -0x23t
        -0x16t
        -0x12t
        -0x1ft
        -0x25t
        -0x23t
        -0x68t
        -0x23t
        -0x16t
        -0x16t
        -0x19t
        -0x16t
        -0x5at
        -0x54t
        -0x53t
        -0x55t
        -0x48t
        -0x66t
        -0x63t
        -0x48t
        -0x5et
        -0x63t
        -0x48t
        -0x5ct
        -0x62t
        -0x4et
        0x47t
        0x3at
        0x36t
        0x48t
        0x25t
        0x4at
        0x41t
        0x36t
    .end array-data
.end method

.method private A08(Landroid/os/Messenger;ILandroid/os/Bundle;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55520
    const/4 v0, 0x0

    invoke-static {v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v5

    .line 55521
    .local v0, "msg":Landroid/os/Message;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OL;->A05:Landroid/os/Messenger;

    iput-object v0, v5, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 55522
    if-eqz p3, :cond_0

    .line 55523
    invoke-virtual {v5, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 55524
    :cond_0
    invoke-virtual {v5}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OL;->A06:Lcom/facebook/ads/redexgen/X/ik;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ik;->A04()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x34

    const/16 v1, 0xd

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OL;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55525
    invoke-virtual {p1, v5}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 55526
    return-void
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/OL;)V
    .locals 0

    .line 55527
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/OL;->A05()V

    return-void
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/OL;)V
    .locals 0

    .line 55528
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/OL;->A06()V

    return-void
.end method

.method public static A0B(Lcom/facebook/ads/redexgen/X/gi;Ljava/lang/String;)V
    .locals 1

    .line 55529
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Lt;->AHr(Ljava/lang/String;)V

    .line 55530
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/gi;->A0G()Lcom/facebook/ads/redexgen/X/T5;

    move-result-object p0

    .line 55531
    .local v0, "adModel":Lcom/facebook/ads/redexgen/X/T5;
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/T5;->A6o()Lcom/facebook/ads/AdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/T5;->A6k()Lcom/facebook/ads/Ad;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55532
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/T5;->A6o()Lcom/facebook/ads/AdListener;

    move-result-object p1

    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/T5;->A6k()Lcom/facebook/ads/Ad;

    move-result-object p0

    sget-object v0, Lcom/facebook/ads/AdError;->AD_PRESENTATION_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {p1, p0, v0}, Lcom/facebook/ads/AdListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    .line 55533
    :cond_0
    return-void
.end method


# virtual methods
.method public final A0C()V
    .locals 2

    .line 55534
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/OL;->A01:Z

    if-eqz v0, :cond_0

    .line 55535
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OL;->A07:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->AIG()V

    .line 55536
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/OL;->A01:Z

    .line 55537
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/OL;->A08:Lcom/facebook/ads/redexgen/X/ge;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OL;->A03:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ge;->unbindService(Landroid/content/ServiceConnection;)V

    .line 55538
    :cond_0
    return-void
.end method

.method public final A0D(Lcom/facebook/ads/redexgen/X/gi;I)V
    .locals 5

    .line 55539
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OL;->A07:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->AIE()V

    .line 55540
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Wu;->A05(Lcom/facebook/ads/redexgen/X/gi;)Lcom/facebook/ads/internal/util/activity/AdActivityIntent;

    move-result-object v4

    .line 55541
    .local v0, "intent":Lcom/facebook/ads/internal/util/activity/AdActivityIntent;
    const/16 v2, 0x41

    const/16 v1, 0x8

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OL;->A04(III)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/WK;->A0F:Lcom/facebook/ads/redexgen/X/WK;

    invoke-virtual {v4, v1, v0}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 55542
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OL;->A06:Lcom/facebook/ads/redexgen/X/ik;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ik;->A04()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x34

    const/16 v1, 0xd

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OL;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55543
    const/4 v2, 0x5

    const/16 v1, 0x1a

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OL;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, p2}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 55544
    :try_start_0
    invoke-static {p1, v4}, Lcom/facebook/ads/redexgen/X/Wu;->A00(Lcom/facebook/ads/redexgen/X/gi;Landroid/content/Intent;)I

    move-result v1

    .line 55545
    .local v1, "usedContext":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OL;->A07:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Lt;->AIF(I)V

    goto :goto_0
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/Ws; {:try_start_0 .. :try_end_0} :catch_0

    .line 55546
    :catch_0
    move-exception v3

    .line 55547
    .local v1, "e":Lcom/facebook/ads/redexgen/X/Ws;
    const/4 v2, 0x0

    const/4 v1, 0x5

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OL;->A04(III)Ljava/lang/String;

    move-result-object v1

    .line 55548
    .local v2, "errorMessage":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Ws;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 55549
    .local v3, "cause":Ljava/lang/Throwable;
    if-eqz v2, :cond_0

    .line 55550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 55551
    :cond_0
    invoke-static {p1, v1}, Lcom/facebook/ads/redexgen/X/OL;->A0B(Lcom/facebook/ads/redexgen/X/gi;Ljava/lang/String;)V

    .line 55552
    .end local v1    # "e":Lcom/facebook/ads/redexgen/X/Ws;
    .end local v2    # "errorMessage":Ljava/lang/String;
    .end local v3    # "cause":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public final A0E(Z)V
    .locals 4

    .line 55553
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/OL;->A08:Lcom/facebook/ads/redexgen/X/ge;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OL;->A03:Landroid/content/ServiceConnection;

    invoke-static {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/OM;->A04(Lcom/facebook/ads/redexgen/X/ge;ZLandroid/content/ServiceConnection;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/OL;->A01:Z

    .line 55554
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/OL;->A01:Z

    if-eqz v0, :cond_1

    .line 55555
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OL;->A07:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->AHt()V

    .line 55556
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OL;->A00:Landroid/os/Messenger;

    if-nez v0, :cond_0

    .line 55557
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/OL;->A04:Landroid/os/Handler;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/OL;->A09:Lcom/facebook/ads/redexgen/X/Wc;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OL;->A08:Lcom/facebook/ads/redexgen/X/ge;

    .line 55558
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Us;->A00(Landroid/content/Context;)I

    move-result v0

    int-to-long v0, v0

    .line 55559
    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 55560
    :cond_0
    :goto_0
    return-void

    .line 55561
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OL;->A07:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->AI1()V

    .line 55562
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/OL;->A02:Z

    .line 55563
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OL;->A06:Lcom/facebook/ads/redexgen/X/ik;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ik;->A09()V

    goto :goto_0
.end method

.method public final A0F(ILandroid/os/Bundle;)Z
    .locals 2

    .line 55564
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OL;->A00:Landroid/os/Messenger;

    .line 55565
    .local v0, "service":Landroid/os/Messenger;
    if-eqz v0, :cond_0

    .line 55566
    invoke-direct {p0, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/OL;->A08(Landroid/os/Messenger;ILandroid/os/Bundle;)V

    .line 55567
    const/4 v0, 0x1

    return v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55568
    :catch_0
    move-exception v1

    .line 55569
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/OL;->A0C()V

    .line 55570
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OL;->A07:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Lt;->AHw(Landroid/os/RemoteException;)V

    .line 55571
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WU;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v2, p0

    .line 55572
    .local v0, "this":Lcom/facebook/ads/redexgen/X/OL;
    .local p0, "msg":Landroid/os/Message;
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x3

    if-ne v1, v0, :cond_1

    .line 55573
    return-void

    .line 55574
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x14

    if-eq v0, v3, :cond_2

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x1e

    if-eq v1, v0, :cond_2

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x28

    if-ne v1, v0, :cond_4

    .line 55575
    .end local v1
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_3

    .line 55576
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/OL;->A07:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->AIB()V

    .line 55577
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/OL;->A08:Lcom/facebook/ads/redexgen/X/ge;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Us;->A07(Landroid/content/Context;)V

    .line 55578
    :goto_0
    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/OL;->A05()V

    goto :goto_1

    .line 55579
    :cond_3
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/OL;->A07:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->AIA()V

    goto :goto_0

    .line 55580
    :goto_1
    return-void

    .line 55581
    :cond_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const/16 v3, 0x34

    const/16 v1, 0xd

    const/4 v0, 0x3

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/OL;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55582
    .local v1, "adId":Ljava/lang/String;
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/OL;->A06:Lcom/facebook/ads/redexgen/X/ik;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ik;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 55583
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/OL;->A07:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->AIH()V

    .line 55584
    return-void

    .line 55585
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/OL;
    :cond_5
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x7d1

    if-eq v1, v0, :cond_6

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3f3

    if-ne v1, v0, :cond_7

    .line 55586
    :cond_6
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/OL;->A08:Lcom/facebook/ads/redexgen/X/ge;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/OM;->A02(Lcom/facebook/ads/redexgen/X/ge;Landroid/os/Message;)V

    .line 55587
    return-void

    .line 55588
    :cond_7
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/OL;->A07:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v1

    iget v0, p1, Landroid/os/Message;->what:I

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Lt;->AI2(I)V

    .line 55589
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/OL;->A06:Lcom/facebook/ads/redexgen/X/ik;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/ik;->A0C(Landroid/os/Message;)V

    .line 55590
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v0

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/WU;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
