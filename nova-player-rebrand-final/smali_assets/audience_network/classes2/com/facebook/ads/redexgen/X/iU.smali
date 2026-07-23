.class public final Lcom/facebook/ads/redexgen/X/iU;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/OQ;


# static fields
.field public static A05:[B

.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:Z

.field public final A01:Lcom/facebook/ads/redexgen/X/OE;

.field public final A02:Lcom/facebook/ads/redexgen/X/iY;

.field public final A03:Lcom/facebook/ads/redexgen/X/OL;

.field public final A04:Lcom/facebook/ads/redexgen/X/gi;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2949
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "41kFMkgYcMqjBdEAHWyZzQ9Q1YQDMkZo"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "a1qrqbdzoLKte5dp2TdqsHV2Btmo8HIO"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "VlRnhGghZyM7Xz"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "WVmrs7jRPAo6ieNv"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "abQhu9SgesOIRxLkCU6L7yAdrfeNFYXV"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "iVqBhi5IkesALAcr"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "e6wMTa30i0R6i9"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "GTVyj1NjpD4uWxM1mBTnBnh1LH0X6W6g"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/iU;->A06:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/iU;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/iY;Lcom/facebook/ads/redexgen/X/OE;Lcom/facebook/ads/redexgen/X/OL;)V
    .locals 0

    .line 86844
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86845
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/iU;->A04:Lcom/facebook/ads/redexgen/X/gi;

    .line 86846
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/iU;->A02:Lcom/facebook/ads/redexgen/X/iY;

    .line 86847
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/iU;->A01:Lcom/facebook/ads/redexgen/X/OE;

    .line 86848
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/iU;->A03:Lcom/facebook/ads/redexgen/X/OL;

    .line 86849
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/iU;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x70

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

    const/16 v0, 0x9b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/iU;->A05:[B

    return-void

    :array_0
    .array-data 1
        0x6et
        0x4bt
        0xft
        0x40t
        0x4dt
        0x45t
        0x4at
        0x4ct
        0x5bt
        0xft
        0x46t
        0x5ct
        0xft
        0x41t
        0x5at
        0x43t
        0x43t
        0x9t
        0x1et
        0x5t
        0xft
        0x7t
        0xet
        0x14t
        0xet
        0x13t
        0x1ft
        0x19t
        0xat
        0x18t
        0x14t
        0x0t
        0xet
        0x12t
        0x2ft
        0x2bt
        0x28t
        0x1ct
        0xdt
        0x0t
        0xct
        0x7t
        0xat
        0xct
        0x27t
        0xct
        0x1dt
        0x1et
        0x6t
        0x1bt
        0x2t
        0x57t
        0x50t
        0x4at
        0x41t
        0x5bt
        0x4ct
        0x4ct
        0x51t
        0x4ct
        0x41t
        0x5dt
        0x51t
        0x5at
        0x5bt
        0x41t
        0x55t
        0x5bt
        0x47t
        0xet
        0xdt
        0xct
        0x5t
        0x1dt
        0xbt
        0xct
        0x14t
        0x3t
        0xet
        0xbt
        0x6t
        0x3t
        0x16t
        0xbt
        0xdt
        0xct
        0x1dt
        0x16t
        0xbt
        0xft
        0x7t
        0x1dt
        0x9t
        0x7t
        0x1bt
        0x27t
        0xft
        0x19t
        0x19t
        0xbt
        0xdt
        0xft
        0x50t
        0x4at
        0x76t
        0x52t
        0x48t
        0x48t
        0x52t
        0x55t
        0x5ct
        0x1bt
        0x59t
        0x4et
        0x55t
        0x5ft
        0x57t
        0x5et
        0x1bt
        0x5dt
        0x54t
        0x49t
        0x1bt
        0x56t
        0x5et
        0x48t
        0x48t
        0x5at
        0x5ct
        0x5et
        0x15t
        0x23t
        0x24t
        0x22t
        0x2ft
        0x35t
        0x22t
        0x22t
        0x3ft
        0x22t
        0x2ft
        0x3dt
        0x35t
        0x23t
        0x23t
        0x31t
        0x37t
        0x35t
        0x2ft
        0x3bt
        0x35t
        0x29t
        0x48t
        0x59t
        0x40t
    .end array-data
.end method


# virtual methods
.method public final A5R(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .line 86850
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iU;->A02:Lcom/facebook/ads/redexgen/X/iY;

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/OX;->A02(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/iY;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final A5v()V
    .locals 3

    .line 86851
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/iU;->A03:Lcom/facebook/ads/redexgen/X/OL;

    const/16 v0, 0x3f4

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/OL;->A0F(ILandroid/os/Bundle;)Z

    .line 86852
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iU;->A03:Lcom/facebook/ads/redexgen/X/OL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OL;->A0C()V

    .line 86853
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iU;->A02:Lcom/facebook/ads/redexgen/X/iY;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/iY;->A0D(Lcom/facebook/ads/InterstitialAd;)V

    .line 86854
    return-void
.end method

.method public final A8P()I
    .locals 1

    .line 86855
    const/16 v0, 0x3f2

    return v0
.end method

.method public final A9j(Landroid/os/Message;)V
    .locals 9

    .line 86856
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iU;->A02:Lcom/facebook/ads/redexgen/X/iY;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iY;->A01()Lcom/facebook/ads/InterstitialAd;

    move-result-object v3

    .line 86857
    .local v0, "ad":Lcom/facebook/ads/Ad;
    const/16 v2, 0x98

    const/4 v1, 0x3

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iU;->A00(III)Ljava/lang/String;

    move-result-object v6

    if-nez v3, :cond_0

    .line 86858
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iU;->A04:Lcom/facebook/ads/redexgen/X/gi;

    .line 86859
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v4

    sget v3, Lcom/facebook/ads/redexgen/X/Td;->A0K:I

    const/4 v2, 0x0

    const/16 v1, 0x11

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iU;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/String;)V

    .line 86860
    invoke-interface {v4, v6, v3, v0}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    .line 86861
    return-void

    .line 86862
    :cond_0
    iget v8, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x0

    const/16 v2, 0x5f

    const/16 v1, 0x9

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iU;->A00(III)Ljava/lang/String;

    move-result-object v7

    const/16 v2, 0x68

    const/16 v1, 0x1b

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iU;->A00(III)Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0x11

    const/16 v1, 0x11

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iU;->A00(III)Ljava/lang/String;

    move-result-object v1

    sparse-switch v8, :sswitch_data_0

    .line 86863
    .end local v2
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iU;->A02:Lcom/facebook/ads/redexgen/X/iY;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iY;->A02()Lcom/facebook/ads/InterstitialAdListener;

    move-result-object v0

    if-nez v0, :cond_2

    .line 86864
    return-void

    .line 86865
    :sswitch_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iU;->A01:Lcom/facebook/ads/redexgen/X/OE;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/OE;->AJm()V

    .line 86866
    goto :goto_0

    .line 86867
    :sswitch_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iU;->A01:Lcom/facebook/ads/redexgen/X/OE;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/OE;->AJW()V

    .line 86868
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 86869
    .local v2, "bundle":Landroid/os/Bundle;
    if-eqz v8, :cond_1

    .line 86870
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/iU;->A02:Lcom/facebook/ads/redexgen/X/iY;

    const/16 v2, 0x45

    const/16 v1, 0x1a

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iU;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Lcom/facebook/ads/redexgen/X/iY;->A0C(J)V

    .line 86871
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iU;->A02:Lcom/facebook/ads/redexgen/X/iY;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/iY;->A0D(Lcom/facebook/ads/InterstitialAd;)V

    .line 86872
    goto :goto_0

    .line 86873
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iU;->A04:Lcom/facebook/ads/redexgen/X/gi;

    .line 86874
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v8

    sget v2, Lcom/facebook/ads/redexgen/X/Td;->A0V:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v0, v5, v1}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 86875
    invoke-interface {v8, v6, v2, v0}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    goto :goto_1

    .line 86876
    :cond_2
    iget v4, p1, Landroid/os/Message;->what:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/iU;->A06:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    :goto_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/iU;->A06:[Ljava/lang/String;

    const-string v1, "311XYum1gU07qORRQ11S6l3eVKorNtDz"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "91xN7y0ETPjwD6LsGrgnzhnoOTtOTKl3"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    packed-switch v4, :pswitch_data_0

    .line 86877
    :cond_4
    :goto_3
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iU;->A02:Lcom/facebook/ads/redexgen/X/iY;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iY;->A04()Lcom/facebook/ads/RewardedAdListener;

    move-result-object v0

    if-nez v0, :cond_6

    .line 86878
    return-void

    .line 86879
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iU;->A02:Lcom/facebook/ads/redexgen/X/iY;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iY;->A02()Lcom/facebook/ads/InterstitialAdListener;

    move-result-object v0

    instance-of v3, v0, Lcom/facebook/ads/InterstitialAdExtendedListener;

    sget-object v2, Lcom/facebook/ads/redexgen/X/iU;->A06:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_5

    goto :goto_2

    .line 86880
    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/iU;->A06:[Ljava/lang/String;

    const-string v1, "qw7ApZ7ipfHbwj"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "LJsV5SavG50yIX"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_4

    .line 86881
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iU;->A02:Lcom/facebook/ads/redexgen/X/iY;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iY;->A02()Lcom/facebook/ads/InterstitialAdListener;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/InterstitialAdExtendedListener;

    .line 86882
    invoke-interface {v0}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onInterstitialActivityDestroyed()V

    goto :goto_3

    .line 86883
    :cond_6
    iget v3, p1, Landroid/os/Message;->what:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/iU;->A06:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_7

    packed-switch v3, :pswitch_data_1

    .line 86884
    :goto_4
    return-void

    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/iU;->A06:[Ljava/lang/String;

    const-string v1, "s5jamizIFVbotxZqKkKlcngcWbLxgQvF"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "aiBjTIjz8RGRWx4VpHoYFj9LDTOMQV9R"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    packed-switch v3, :pswitch_data_2

    goto :goto_4

    .line 86885
    :pswitch_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iU;->A02:Lcom/facebook/ads/redexgen/X/iY;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iY;->A04()Lcom/facebook/ads/RewardedAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/RewardedAdListener;->onRewardedAdServerFailed()V

    goto :goto_4

    .line 86886
    :pswitch_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iU;->A02:Lcom/facebook/ads/redexgen/X/iY;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iY;->A04()Lcom/facebook/ads/RewardedAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/RewardedAdListener;->onRewardedAdServerSucceeded()V

    .line 86887
    return-void

    .line 86888
    :pswitch_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iU;->A02:Lcom/facebook/ads/redexgen/X/iY;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iY;->A04()Lcom/facebook/ads/RewardedAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/RewardedAdListener;->onRewardedAdCompleted()V

    .line 86889
    return-void

    .line 86890
    :pswitch_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iU;->A02:Lcom/facebook/ads/redexgen/X/iY;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iY;->A02()Lcom/facebook/ads/InterstitialAdListener;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/facebook/ads/InterstitialAdListener;->onLoggingImpression(Lcom/facebook/ads/Ad;)V

    .line 86891
    return-void

    .line 86892
    :pswitch_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iU;->A02:Lcom/facebook/ads/redexgen/X/iY;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iY;->A02()Lcom/facebook/ads/InterstitialAdListener;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/facebook/ads/InterstitialAdListener;->onAdClicked(Lcom/facebook/ads/Ad;)V

    .line 86893
    return-void

    .line 86894
    :pswitch_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iU;->A02:Lcom/facebook/ads/redexgen/X/iY;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iY;->A02()Lcom/facebook/ads/InterstitialAdListener;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/facebook/ads/InterstitialAdListener;->onInterstitialDismissed(Lcom/facebook/ads/Ad;)V

    .line 86895
    return-void

    .line 86896
    :pswitch_8
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iU;->A02:Lcom/facebook/ads/redexgen/X/iY;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iY;->A02()Lcom/facebook/ads/InterstitialAdListener;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/facebook/ads/InterstitialAdListener;->onInterstitialDisplayed(Lcom/facebook/ads/Ad;)V

    .line 86897
    return-void

    .line 86898
    :pswitch_9
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/iU;->A00:Z

    if-nez v0, :cond_8

    .line 86899
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iU;->A02:Lcom/facebook/ads/redexgen/X/iY;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iY;->A02()Lcom/facebook/ads/InterstitialAdListener;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/facebook/ads/InterstitialAdListener;->onAdLoaded(Lcom/facebook/ads/Ad;)V

    .line 86900
    :goto_5
    return-void

    .line 86901
    :cond_8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/iU;->A00:Z

    goto :goto_5

    .line 86902
    .end local v2    # "bundle":Landroid/os/Bundle;
    :sswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 86903
    .local v2, "errorBundle":Landroid/os/Bundle;
    if-eqz v8, :cond_a

    .line 86904
    const/16 v2, 0x33

    const/16 v1, 0x12

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iU;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 86905
    .local v1, "errorCode":I
    const/16 v2, 0x83

    const/16 v1, 0x15

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iU;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 86906
    .local v4, "errorMessage":Ljava/lang/String;
    new-instance v6, Lcom/facebook/ads/AdError;

    invoke-direct {v6, v7, v5}, Lcom/facebook/ads/AdError;-><init>(ILjava/lang/String;)V

    .line 86907
    .local v5, "error":Lcom/facebook/ads/AdError;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iU;->A01:Lcom/facebook/ads/redexgen/X/OE;

    invoke-interface {v0, v6}, Lcom/facebook/ads/redexgen/X/OE;->AJR(Lcom/facebook/ads/AdError;)V

    .line 86908
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iU;->A02:Lcom/facebook/ads/redexgen/X/iY;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iY;->A02()Lcom/facebook/ads/InterstitialAdListener;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 86909
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iU;->A02:Lcom/facebook/ads/redexgen/X/iY;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iY;->A02()Lcom/facebook/ads/InterstitialAdListener;

    move-result-object v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/iU;->A06:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_b

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 86910
    :cond_9
    const/16 v2, 0x22

    const/16 v1, 0x11

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iU;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 86911
    :cond_a
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/iU;->A01:Lcom/facebook/ads/redexgen/X/OE;

    sget-object v0, Lcom/facebook/ads/redexgen/X/OD;->A04:Lcom/facebook/ads/redexgen/X/OD;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/OE;->AJM(Lcom/facebook/ads/redexgen/X/OD;)V

    .line 86912
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iU;->A04:Lcom/facebook/ads/redexgen/X/gi;

    .line 86913
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v3

    sget v2, Lcom/facebook/ads/redexgen/X/Td;->A0V:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v0, v5, v1}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 86914
    invoke-interface {v3, v6, v2, v0}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    goto :goto_6

    .line 86915
    :cond_b
    sget-object v2, Lcom/facebook/ads/redexgen/X/iU;->A06:[Ljava/lang/String;

    const-string v1, "mejJWXlfs8BbYc"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "mZxW76dM1wQ3lj"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-interface {v5, v3, v6}, Lcom/facebook/ads/InterstitialAdListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    .line 86916
    :goto_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iU;->A02:Lcom/facebook/ads/redexgen/X/iY;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/iY;->A0D(Lcom/facebook/ads/InterstitialAd;)V

    .line 86917
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_2
        0x3fc -> :sswitch_1
        0x3fe -> :sswitch_0
        0x3ff -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x3fc
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xbb8
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xbb8
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final AJn(Z)V
    .locals 0

    .line 86918
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/iU;->A00:Z

    .line 86919
    return-void
.end method
