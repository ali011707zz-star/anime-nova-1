.class public final Lcom/facebook/ads/redexgen/X/iP;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/U3;


# static fields
.field public static A03:[B


# instance fields
.field public final A00:Landroid/os/Bundle;

.field public final A01:Ljava/lang/String;

.field public final A02:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/iP;->A01()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 86632
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86633
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/iP;->A01:Ljava/lang/String;

    .line 86634
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/iP;->A02:Ljava/lang/String;

    .line 86635
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/iP;->A00:Landroid/os/Bundle;

    .line 86636
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/iP;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0xb

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

    const/16 v0, 0xcb

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/iP;->A03:[B

    return-void

    :array_0
    .array-data 1
        0x53t
        0x5et
        0x5et
        0x5dt
        0x4et
        0x54t
        0x49t
        0x41t
        0x5dt
        0x58t
        0x52t
        0x58t
        0x45t
        0x4et
        0x45t
        0x54t
        0x42t
        0x45t
        0x4et
        0x5ct
        0x5et
        0x55t
        0x54t
        0x4et
        0x5at
        0x54t
        0x48t
        0x43t
        0x4et
        0x4et
        0x4dt
        0x5et
        0x48t
        0x52t
        0x5et
        0x54t
        0x4ft
        0x48t
        0x55t
        0x58t
        0xct
        0x1t
        0x1t
        0x2t
        0x11t
        0x3t
        0x7t
        0x16t
        0xbt
        0xat
        0x11t
        0xft
        0x1bt
        0xat
        0x7t
        0xbt
        0x0t
        0xdt
        0xbt
        0x11t
        0x5t
        0xbt
        0x17t
        0x20t
        0x25t
        0x30t
        0x25t
        0x3bt
        0x34t
        0x36t
        0x2bt
        0x27t
        0x21t
        0x37t
        0x37t
        0x2dt
        0x2at
        0x23t
        0x3bt
        0x2bt
        0x34t
        0x30t
        0x2dt
        0x2bt
        0x2at
        0x37t
        0x3bt
        0x27t
        0x2bt
        0x31t
        0x2at
        0x30t
        0x36t
        0x3dt
        0x3bt
        0x2ft
        0x21t
        0x3dt
        0x36t
        0x33t
        0x26t
        0x33t
        0x2dt
        0x22t
        0x20t
        0x3dt
        0x31t
        0x37t
        0x21t
        0x21t
        0x3bt
        0x3ct
        0x35t
        0x2dt
        0x3dt
        0x22t
        0x26t
        0x3bt
        0x3dt
        0x3ct
        0x21t
        0x2dt
        0x39t
        0x37t
        0x2bt
        0x7t
        0x2t
        0x17t
        0x2t
        0x1ct
        0x13t
        0x11t
        0xct
        0x0t
        0x6t
        0x10t
        0x10t
        0xat
        0xdt
        0x4t
        0x1ct
        0xct
        0x13t
        0x17t
        0xat
        0xct
        0xdt
        0x10t
        0x1ct
        0x10t
        0x17t
        0x2t
        0x17t
        0x6t
        0x1ct
        0x8t
        0x6t
        0x1at
        0x5et
        0x59t
        0x5ft
        0x52t
        0x4ct
        0x49t
        0x52t
        0x59t
        0x48t
        0x5et
        0x59t
        0x52t
        0x59t
        0x54t
        0x5dt
        0x48t
        0x52t
        0x46t
        0x48t
        0x54t
        0x54t
        0x53t
        0x55t
        0x58t
        0x4at
        0x42t
        0x43t
        0x4et
        0x46t
        0x53t
        0x4et
        0x48t
        0x49t
        0x58t
        0x54t
        0x42t
        0x55t
        0x51t
        0x4et
        0x44t
        0x42t
        0x58t
        0x4ct
        0x42t
        0x5et
    .end array-data
.end method


# virtual methods
.method public final A79()Ljava/lang/String;
    .locals 1

    .line 86637
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iP;->A01:Ljava/lang/String;

    return-object v0
.end method

.method public final A7N()Ljava/lang/String;
    .locals 1

    .line 86638
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iP;->A02:Ljava/lang/String;

    return-object v0
.end method

.method public final A7m(Lcom/facebook/ads/redexgen/X/T8;)Lcom/facebook/ads/redexgen/X/TM;
    .locals 7

    .line 86639
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/iP;->A00:Landroid/os/Bundle;

    .line 86640
    const/16 v2, 0x62

    const/16 v1, 0x1b

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iP;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 86641
    .local v0, "options":[Ljava/lang/String;
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/iP;->A00:Landroid/os/Bundle;

    .line 86642
    const/16 v2, 0x3f

    const/16 v1, 0x23

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iP;->A00(III)Ljava/lang/String;

    move-result-object v0

    const/4 v5, -0x1

    invoke-virtual {v3, v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 86643
    .local v1, "country":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 86644
    const/4 v4, 0x0

    .line 86645
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/iP;->A00:Landroid/os/Bundle;

    .line 86646
    const/16 v2, 0x7d

    const/16 v1, 0x21

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iP;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 86647
    .local v2, "state":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 86648
    const/4 v1, 0x0

    .line 86649
    :cond_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/TM;

    invoke-direct {v0, v6, v4, v1}, Lcom/facebook/ads/redexgen/X/TM;-><init>([Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public final A8W()Ljava/lang/String;
    .locals 4

    .line 86650
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/iP;->A00:Landroid/os/Bundle;

    const/16 v2, 0xb2

    const/16 v1, 0x19

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iP;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A9G()Ljava/lang/String;
    .locals 7

    .line 86651
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/iP;->A00:Landroid/os/Bundle;

    const/16 v2, 0x9e

    const/16 v1, 0x14

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iP;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 86652
    .local v0, "adTestTypeStr":Ljava/lang/String;
    sget-object v0, Lcom/facebook/ads/AdSettings$TestAdType;->DEFAULT:Lcom/facebook/ads/AdSettings$TestAdType;

    invoke-virtual {v0}, Lcom/facebook/ads/AdSettings$TestAdType;->getAdTypeString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 86653
    return-object v5

    .line 86654
    :cond_0
    invoke-static {}, Lcom/facebook/ads/AdSettings$TestAdType;->values()[Lcom/facebook/ads/AdSettings$TestAdType;

    move-result-object v4

    array-length v3, v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v4, v2

    .line 86655
    .local v5, "testAdType":Lcom/facebook/ads/AdSettings$TestAdType;
    invoke-virtual {v1}, Lcom/facebook/ads/AdSettings$TestAdType;->getAdTypeString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86656
    invoke-virtual {v1}, Lcom/facebook/ads/AdSettings$TestAdType;->getAdTypeString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 86657
    .end local v5    # "testAdType":Lcom/facebook/ads/AdSettings$TestAdType;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86658
    :cond_2
    return-object v5
.end method

.method public final AAa()Z
    .locals 4

    .line 86659
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/iP;->A00:Landroid/os/Bundle;

    const/16 v2, 0x28

    const/16 v1, 0x17

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iP;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final AAg()Z
    .locals 1

    .line 86660
    const/4 v0, 0x1

    return v0
.end method

.method public final AAk()Ljava/lang/Boolean;
    .locals 4

    .line 86661
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iP;->A00:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    const/16 v2, 0x1b

    const/16 v1, 0xd

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iP;->A00(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86662
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iP;->A00:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 86663
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final isTestMode(Landroid/content/Context;)Z
    .locals 4

    .line 86664
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/iP;->A00:Landroid/os/Bundle;

    const/4 v2, 0x0

    const/16 v1, 0x1b

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iP;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86665
    invoke-static {p1}, Lcom/facebook/ads/AdSettings;->isTestMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 86666
    :goto_0
    return v0

    .line 86667
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
