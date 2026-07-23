.class public final Lcom/facebook/ads/redexgen/X/gw;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;

.field public static final A04:Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/SR;

.field public final A01:Lcom/facebook/ads/redexgen/X/Sx;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2908
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "lJVeP2IR7ua2"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "jEDUnDrnc1QBGJRRXgI1zLNGeQAVlRB5"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "4J1evWwVBwsv6j2jE3cxdE8l4EvJqUWx"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "hbOpPbm2Lvz8WBi4M4lcAmyYP20RrxkZ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "42MJRsHMkke9vUn"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "N1ePHibZvm11p1YoQp9n3cvTSohhnC86"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "pzMHmXStxFGPpObuVYX1kVlrzXN"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "JuJmyZjKd3poC4Sz8wRazc2gW2"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/gw;->A03:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/gw;->A02()V

    const-class v0, Lcom/facebook/ads/redexgen/X/gw;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/gw;->A04:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/SR;Lcom/facebook/ads/redexgen/X/ge;)V
    .locals 2

    .line 83610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83611
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/gw;->A00:Lcom/facebook/ads/redexgen/X/SR;

    .line 83612
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/gw;->A00:Lcom/facebook/ads/redexgen/X/SR;

    new-instance v0, Lcom/facebook/ads/redexgen/X/gy;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/gy;-><init>(Lcom/facebook/ads/redexgen/X/gw;)V

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/SR;->A40(Lcom/facebook/ads/redexgen/X/ST;)V

    .line 83613
    new-instance v0, Lcom/facebook/ads/redexgen/X/Sx;

    invoke-direct {v0, p2}, Lcom/facebook/ads/redexgen/X/Sx;-><init>(Lcom/facebook/ads/redexgen/X/T8;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/gw;->A01:Lcom/facebook/ads/redexgen/X/Sx;

    .line 83614
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/gw;->A01()V

    .line 83615
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/gw;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x2d

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A01()V
    .locals 6

    .line 83616
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83617
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/gw;->A00:Lcom/facebook/ads/redexgen/X/SR;

    sget-object v1, Lcom/facebook/ads/redexgen/X/gw;->A03:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x56

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 83618
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/gw;->A03:[Ljava/lang/String;

    const-string v1, "B9WAOcp3zNbG4sQr12bKZPkRro"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "6ENVq9NVFWRAnG6rhAVuoXedHs5"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/SR;->A6x()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v1, v3, v0

    const/4 v2, 0x0

    const/16 v1, 0x14

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gw;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 83619
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gw;->A00:Lcom/facebook/ads/redexgen/X/SR;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/SR;->A6x()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/SU;

    .line 83620
    .local v1, "asset":Lcom/facebook/ads/redexgen/X/SU;
    sget-object v1, Lcom/facebook/ads/redexgen/X/SQ;->A00:[I

    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/SU;->A9O()Lcom/facebook/ads/redexgen/X/SV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SV;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 83621
    :pswitch_0
    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/SU;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/gw;->A05(Ljava/lang/String;)V

    goto :goto_0

    .line 83622
    :pswitch_1
    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/SU;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/gw;->A06(Ljava/lang/String;)V

    .line 83623
    goto :goto_0

    .line 83624
    :pswitch_2
    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/SU;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/gw;->A04(Ljava/lang/String;)V

    .line 83625
    goto :goto_0

    .line 83626
    :cond_2
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/gw;->A01:Lcom/facebook/ads/redexgen/X/Sx;

    new-instance v4, Lcom/facebook/ads/redexgen/X/gx;

    invoke-direct {v4, p0}, Lcom/facebook/ads/redexgen/X/gx;-><init>(Lcom/facebook/ads/redexgen/X/gw;)V

    const/16 v2, 0x51

    const/16 v1, 0x24

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gw;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x7d

    const/4 v1, 0x7

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gw;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Sq;

    invoke-direct {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/Sq;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v4, v0}, Lcom/facebook/ads/redexgen/X/Sx;->A0X(Lcom/facebook/ads/redexgen/X/Sp;Lcom/facebook/ads/redexgen/X/Sq;)V

    .line 83627
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x84

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/gw;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x51t
        0x73t
        0x64t
        0x6dt
        0x6et
        0x60t
        0x65t
        0x68t
        0x6ft
        0x66t
        0x21t
        0x24t
        0x65t
        0x21t
        0x60t
        0x72t
        0x72t
        0x64t
        0x75t
        0x72t
        0x3ct
        0x1et
        0x9t
        0x0t
        0x3t
        0xdt
        0x8t
        0x5t
        0x2t
        0xbt
        0x4ct
        0x5t
        0x1t
        0xdt
        0xbt
        0x9t
        0x56t
        0x4ct
        0x49t
        0x1ft
        0x76t
        0x54t
        0x43t
        0x4at
        0x49t
        0x47t
        0x42t
        0x4ft
        0x48t
        0x41t
        0x6t
        0x4bt
        0x47t
        0x54t
        0x4dt
        0x53t
        0x56t
        0x1ct
        0x6t
        0x3t
        0x55t
        0x56t
        0x74t
        0x63t
        0x6at
        0x69t
        0x67t
        0x62t
        0x6ft
        0x68t
        0x61t
        0x26t
        0x70t
        0x6ft
        0x62t
        0x63t
        0x69t
        0x3ct
        0x26t
        0x23t
        0x75t
        0x32t
        0x65t
        0x30t
        0x30t
        0x60t
        0x61t
        0x62t
        0x62t
        0x7bt
        0x34t
        0x6et
        0x65t
        0x64t
        0x7bt
        0x67t
        0x67t
        0x33t
        0x6ft
        0x7bt
        0x37t
        0x64t
        0x37t
        0x65t
        0x7bt
        0x64t
        0x37t
        0x64t
        0x37t
        0x33t
        0x64t
        0x32t
        0x34t
        0x35t
        0x35t
        0x33t
        0x62t
        0x37t
        0x35t
        0x22t
        0x21t
        0x22t
        0x33t
        0x24t
        0x2ft
        0x6at
        0x71t
        0x74t
        0x71t
        0x70t
        0x68t
        0x71t
    .end array-data
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/gw;)V
    .locals 0

    .line 83628
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/gw;->A01()V

    return-void
.end method

.method private A04(Ljava/lang/String;)V
    .locals 10

    .line 83629
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    move-object v5, p1

    if-eqz v0, :cond_0

    .line 83630
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v5, v3, v0

    const/16 v2, 0x14

    const/16 v1, 0x14

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gw;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 83631
    :cond_0
    new-instance v4, Lcom/facebook/ads/redexgen/X/Sv;

    const/16 v2, 0x51

    const/16 v1, 0x24

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gw;->A00(III)Ljava/lang/String;

    move-result-object v8

    const/16 v2, 0x7d

    const/4 v1, 0x7

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gw;->A00(III)Ljava/lang/String;

    move-result-object v9

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/Sv;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 83632
    .local v0, "imageData":Lcom/facebook/ads/redexgen/X/Sv;
    const/16 v2, 0x75

    const/16 v1, 0x8

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gw;->A00(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/Sv;->A02:Ljava/lang/String;

    .line 83633
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gw;->A01:Lcom/facebook/ads/redexgen/X/Sx;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Sx;->A0c(Lcom/facebook/ads/redexgen/X/Sv;)V

    .line 83634
    return-void
.end method

.method private A05(Ljava/lang/String;)V
    .locals 6

    .line 83635
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    .line 83636
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v3, v0

    const/16 v2, 0x28

    const/16 v1, 0x15

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gw;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 83637
    :cond_0
    const/16 v2, 0x51

    const/16 v1, 0x24

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gw;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x7d

    const/4 v1, 0x7

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gw;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/St;

    invoke-direct {v3, p1, v4, v0}, Lcom/facebook/ads/redexgen/X/St;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83638
    .local v0, "cacheFileData":Lcom/facebook/ads/redexgen/X/St;
    iput-boolean v5, v3, Lcom/facebook/ads/redexgen/X/St;->A04:Z

    .line 83639
    const/16 v2, 0x75

    const/16 v1, 0x8

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gw;->A00(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/St;->A02:Ljava/lang/String;

    .line 83640
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gw;->A01:Lcom/facebook/ads/redexgen/X/Sx;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Sx;->A0Y(Lcom/facebook/ads/redexgen/X/St;)V

    .line 83641
    return-void
.end method

.method private A06(Ljava/lang/String;)V
    .locals 6

    .line 83642
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 83643
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p1, v3, v5

    const/16 v2, 0x3d

    const/16 v1, 0x14

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gw;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 83644
    :cond_0
    const/16 v2, 0x51

    const/16 v1, 0x24

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gw;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x7d

    const/4 v1, 0x7

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gw;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/St;

    invoke-direct {v3, p1, v4, v0}, Lcom/facebook/ads/redexgen/X/St;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83645
    .local v0, "cacheFileData":Lcom/facebook/ads/redexgen/X/St;
    iput-boolean v5, v3, Lcom/facebook/ads/redexgen/X/St;->A04:Z

    .line 83646
    const/16 v2, 0x75

    const/16 v1, 0x8

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gw;->A00(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/St;->A02:Ljava/lang/String;

    .line 83647
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gw;->A01:Lcom/facebook/ads/redexgen/X/Sx;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Sx;->A0b(Lcom/facebook/ads/redexgen/X/St;)V

    .line 83648
    return-void
.end method
