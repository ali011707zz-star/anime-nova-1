.class public abstract Lcom/facebook/ads/redexgen/X/Us;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final A02:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1941
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "QTcAMu2NTOnQYBZmZwc1s5"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "djg1XP0D7NXFeZ0NOExGmhJDpZKI4dpr"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ihQhkuhtHB3Nrh2mtKDZtHhTCWsAfOgS"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "rKuldGKjFGgUg8"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "leLR2vmDgK1cO2"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "qW6uohj2RnSHed6NlIulLWXBUQuwa2BT"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "fEb7DtRuRt"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Zqv9"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Us;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Us;->A06()V

    const/4 v1, 0x0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Us;->A02:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static A00(Landroid/content/Context;)I
    .locals 3

    .line 68816
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Up;->A0V(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Up;

    move-result-object p0

    .line 68817
    const/16 v2, 0x16

    const/16 v1, 0x1a

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Us;->A04(III)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0x2710

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Up;->A32(Ljava/lang/String;I)I

    move-result v0

    .line 68818
    return v0
.end method

.method public static A01(Landroid/content/Context;)I
    .locals 3

    .line 68819
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Up;->A0V(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Up;

    move-result-object p0

    .line 68820
    const/16 v2, 0x91

    const/16 v1, 0x19

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Us;->A04(III)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0x7530

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Up;->A32(Ljava/lang/String;I)I

    move-result v0

    .line 68821
    return v0
.end method

.method public static A02(Landroid/content/Context;)J
    .locals 3

    .line 68822
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Up;->A0V(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Up;

    move-result-object p0

    .line 68823
    const/16 v2, 0x5b

    const/16 v1, 0x1d

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Us;->A04(III)Ljava/lang/String;

    move-result-object v2

    const-wide/32 v0, 0x5265c00

    invoke-virtual {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Up;->A33(Ljava/lang/String;J)J

    move-result-wide v0

    .line 68824
    return-wide v0
.end method

.method public static A03(Lorg/json/JSONObject;)Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 68825
    const/16 v2, 0x133

    const/16 v1, 0xa

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Us;->A04(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68826
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 68827
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Us;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0xf

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A05(Z)Ljava/lang/String;
    .locals 2

    .line 68828
    if-eqz p0, :cond_0

    const/16 p0, 0x11d

    const/16 v1, 0x16

    const/16 v0, 0x24

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Us;->A04(III)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/16 p0, 0x10a

    const/16 v1, 0x13

    const/16 v0, 0x2e

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Us;->A04(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static A06()V
    .locals 1

    const/16 v0, 0x13d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Us;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x7ct
        0x7ft
        -0x77t
        -0x6et
        0x7at
        -0x73t
        -0x73t
        0x7at
        0x7ct
        0x7ft
        0x7at
        0x7et
        -0x79t
        -0x72t
        0x7at
        -0x76t
        -0x77t
        0x7at
        0x7ft
        -0x7ct
        -0x72t
        0x7et
        -0x24t
        -0x21t
        -0x17t
        -0xet
        -0x26t
        -0x13t
        -0x13t
        -0x26t
        -0x24t
        -0x21t
        -0x26t
        -0x13t
        -0x20t
        -0x14t
        -0x10t
        -0x20t
        -0x12t
        -0x11t
        -0x26t
        -0x11t
        -0x1ct
        -0x18t
        -0x20t
        -0x16t
        -0x10t
        -0x11t
        0x70t
        0x73t
        0x7dt
        -0x7at
        0x6et
        -0x7ft
        -0x7ft
        0x6et
        0x71t
        -0x7dt
        0x6et
        0x77t
        0x70t
        0x7dt
        0x73t
        -0x7et
        0x77t
        0x70t
        0x7at
        0x74t
        0x6et
        0x74t
        0x7dt
        0x70t
        0x71t
        0x7bt
        0x74t
        0x73t
        -0x1ct
        -0x19t
        -0xft
        -0x6t
        -0x1et
        -0xbt
        -0xbt
        -0x1et
        -0x18t
        -0xft
        -0x1ct
        -0x1bt
        -0x11t
        -0x18t
        -0x19t
        -0x41t
        -0x3et
        -0x34t
        -0x2bt
        -0x43t
        -0x30t
        -0x30t
        -0x43t
        -0x3ct
        -0x3ft
        -0x43t
        -0x3dt
        -0x2at
        -0x32t
        -0x39t
        -0x30t
        -0x41t
        -0x2et
        -0x39t
        -0x33t
        -0x34t
        -0x43t
        -0x2et
        -0x39t
        -0x35t
        -0x3dt
        -0x33t
        -0x2dt
        -0x2et
        -0x69t
        -0x66t
        -0x5ct
        -0x53t
        -0x6bt
        -0x58t
        -0x58t
        -0x6bt
        -0x62t
        -0x69t
        -0x5ct
        -0x66t
        -0x57t
        -0x62t
        -0x69t
        -0x5ft
        -0x65t
        -0x6bt
        -0x65t
        -0x5ct
        -0x69t
        -0x68t
        -0x5et
        -0x65t
        -0x66t
        -0x59t
        -0x56t
        -0x4ct
        -0x43t
        -0x5bt
        -0x48t
        -0x48t
        -0x5bt
        -0x52t
        -0x59t
        -0x4ct
        -0x56t
        -0x47t
        -0x52t
        -0x59t
        -0x4ft
        -0x55t
        -0x5bt
        -0x46t
        -0x51t
        -0x4dt
        -0x55t
        -0x4bt
        -0x45t
        -0x46t
        -0x7ct
        -0x79t
        -0x6ft
        -0x66t
        -0x7et
        -0x6bt
        -0x6bt
        -0x7et
        -0x74t
        -0x6ft
        -0x69t
        -0x7et
        -0x78t
        -0x6ft
        -0x7ct
        -0x7bt
        -0x71t
        -0x78t
        -0x79t
        -0x37t
        -0x34t
        -0x2at
        -0x21t
        -0x39t
        -0x26t
        -0x26t
        -0x39t
        -0x26t
        -0x2ct
        -0x34t
        -0x39t
        -0x2ct
        -0x35t
        -0x2ct
        -0x3at
        -0x37t
        -0x2dt
        -0x24t
        -0x3ct
        -0x29t
        -0x29t
        -0x3ct
        -0x29t
        -0x25t
        -0x3ct
        -0x36t
        -0x2dt
        -0x3at
        -0x39t
        -0x2ft
        -0x36t
        -0x37t
        0x73t
        0x76t
        -0x80t
        -0x77t
        0x71t
        -0x7ct
        -0x7ct
        0x71t
        -0x7bt
        0x77t
        -0x80t
        0x76t
        0x71t
        0x74t
        -0x7at
        0x71t
        0x77t
        -0x76t
        -0x7at
        -0x7ct
        0x73t
        -0x7bt
        0x73t
        0x76t
        -0x80t
        -0x77t
        0x71t
        -0x7ct
        -0x7ct
        0x71t
        -0x7bt
        0x77t
        -0x80t
        0x76t
        0x71t
        0x75t
        -0x7ft
        -0x80t
        0x78t
        0x7bt
        0x79t
        0x71t
        -0x7at
        -0x7bt
        -0x60t
        -0x54t
        -0x56t
        0x6bt
        -0x5dt
        -0x62t
        -0x60t
        -0x5et
        -0x61t
        -0x54t
        -0x54t
        -0x58t
        0x6bt
        -0x58t
        -0x62t
        -0x4ft
        -0x62t
        -0x55t
        -0x62t
        -0x6at
        -0x5et
        -0x60t
        0x61t
        -0x67t
        -0x6ct
        -0x6at
        -0x68t
        -0x6bt
        -0x5et
        -0x5et
        -0x62t
        0x61t
        -0x56t
        -0x6ct
        -0x62t
        -0x64t
        -0x53t
        -0x6ct
        -0x5at
        -0x65t
        -0x64t
        -0x2at
        -0x2at
        -0x3dt
        -0x37t
        -0x2et
        -0x3bt
        -0x3at
        -0x30t
        -0x37t
        -0x38t
    .end array-data
.end method

.method public static A07(Landroid/content/Context;)V
    .locals 3

    .line 68829
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Up;->A0V(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Up;

    move-result-object p0

    .line 68830
    const/16 v2, 0x4c

    const/16 v1, 0xf

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Us;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Up;->A35(Ljava/lang/String;)V

    .line 68831
    return-void
.end method

.method public static A08(Landroid/content/Context;)Z
    .locals 3

    .line 68832
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Up;->A0V(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Up;

    move-result-object p0

    .line 68833
    const/4 v2, 0x0

    const/16 v1, 0x16

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Us;->A04(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Up;->A38(Ljava/lang/String;Z)Z

    move-result v0

    .line 68834
    return v0
.end method

.method public static A09(Landroid/content/Context;)Z
    .locals 1

    .line 68835
    sget-object v0, Lcom/facebook/ads/redexgen/X/Us;->A02:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Us;->A0K(Landroid/content/Context;)Z

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

.method public static A0A(Landroid/content/Context;)Z
    .locals 3

    .line 68836
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Up;->A0V(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Up;

    move-result-object p0

    .line 68837
    const/16 v2, 0xaa

    const/16 v1, 0x13

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Us;->A04(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Up;->A38(Ljava/lang/String;Z)Z

    move-result v0

    .line 68838
    return v0
.end method

.method public static A0B(Landroid/content/Context;)Z
    .locals 3

    .line 68839
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Up;->A0V(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Up;

    move-result-object p0

    .line 68840
    const/16 v2, 0xcc

    const/16 v1, 0x12

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Us;->A04(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Up;->A38(Ljava/lang/String;Z)Z

    move-result v0

    .line 68841
    return v0
.end method

.method public static A0C(Landroid/content/Context;)Z
    .locals 3

    .line 68842
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Up;->A0V(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Up;

    move-result-object p0

    .line 68843
    const/16 v2, 0xbd

    const/16 v1, 0xf

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Us;->A04(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Up;->A38(Ljava/lang/String;Z)Z

    move-result v0

    .line 68844
    return v0
.end method

.method public static A0D(Landroid/content/Context;)Z
    .locals 3

    .line 68845
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Up;->A0V(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Up;

    move-result-object p0

    .line 68846
    const/16 v2, 0xf4

    const/16 v1, 0x16

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Us;->A04(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Up;->A38(Ljava/lang/String;Z)Z

    move-result v0

    .line 68847
    return v0
.end method

.method public static A0E(Landroid/content/Context;)Z
    .locals 1

    .line 68848
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Up;->A1d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68849
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Us;->A0H(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 68850
    :goto_0
    return v0

    .line 68851
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0F(Landroid/content/Context;)Z
    .locals 1

    .line 68852
    sget-object v0, Lcom/facebook/ads/redexgen/X/Us;->A02:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Us;->A0I(Landroid/content/Context;)Z

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

.method public static A0G(Landroid/content/Context;)Z
    .locals 3

    .line 68853
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Up;->A0V(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Up;

    move-result-object p0

    .line 68854
    const/16 v2, 0xde

    const/16 v1, 0x16

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Us;->A04(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Up;->A38(Ljava/lang/String;Z)Z

    move-result v0

    .line 68855
    return v0
.end method

.method public static A0H(Landroid/content/Context;)Z
    .locals 8

    .line 68856
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Us;->A0K(Landroid/content/Context;)Z

    move-result v0

    const/4 v7, 0x0

    if-eqz v0, :cond_1

    .line 68857
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Up;->A0V(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Up;

    move-result-object v6

    .line 68858
    const/16 v5, 0x78

    const/16 v4, 0x19

    const/16 v3, 0x27

    sget-object v1, Lcom/facebook/ads/redexgen/X/Us;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x75

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Us;->A01:[Ljava/lang/String;

    const-string v1, "s8XR5C0JhaykpGlf4kHqosaURTbELCS3"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/Us;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0, v7}, Lcom/facebook/ads/redexgen/X/Up;->A38(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v7, 0x1

    .line 68859
    :cond_1
    return v7
.end method

.method public static A0I(Landroid/content/Context;)Z
    .locals 5

    .line 68860
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Us;->A0K(Landroid/content/Context;)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 68861
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Up;->A0V(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Up;

    move-result-object v3

    .line 68862
    const/16 v2, 0x30

    const/16 v1, 0x1c

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Us;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Lcom/facebook/ads/redexgen/X/Up;->A38(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    .line 68863
    :cond_0
    return v4
.end method

.method public static A0J(Landroid/content/Context;)Z
    .locals 1

    .line 68864
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Us;->A0B(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68865
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Us;->A0A(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 68866
    :goto_0
    return v0

    .line 68867
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0K(Landroid/content/Context;)Z
    .locals 4

    .line 68868
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Up;->A0V(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Up;

    move-result-object v3

    .line 68869
    const/16 v2, 0x4c

    const/16 v1, 0xf

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Us;->A04(III)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v3, v0, v2}, Lcom/facebook/ads/redexgen/X/Up;->A38(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68870
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Us;->A0J(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68871
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Us;->A02(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Us;->A0L(Landroid/content/Context;J)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    .line 68872
    :cond_0
    return v2
.end method

.method public static A0L(Landroid/content/Context;J)Z
    .locals 4

    .line 68873
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 68874
    .local v0, "currentTime":J
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Up;->A0U(Landroid/content/Context;)J

    move-result-wide v0

    .line 68875
    .local v2, "lastUpdateTime":J
    sub-long/2addr v2, v0

    cmp-long v0, v2, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0M(Ljava/lang/String;)Z
    .locals 1

    .line 68876
    if-eqz p0, :cond_0

    .line 68877
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 68878
    .local v0, "bidPayloadJson":Lorg/json/JSONObject;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Us;->A03(Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v0

    .line 68879
    .local p0, "parsedFlag":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 68880
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68881
    :catch_0
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
