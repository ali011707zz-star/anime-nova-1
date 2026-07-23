.class public final Lcom/facebook/ads/redexgen/X/jz;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/N1;
.implements Lcom/facebook/ads/redexgen/X/Nt;


# static fields
.field public static A0B:[B

.field public static A0C:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/RewardData;

.field public A02:Lcom/facebook/ads/redexgen/X/NC;

.field public A03:Lcom/facebook/ads/redexgen/X/ND;

.field public A04:Lcom/facebook/ads/redexgen/X/Nu;

.field public A05:Lcom/facebook/ads/redexgen/X/gi;

.field public A06:Ljava/lang/String;

.field public A07:Ljava/lang/String;

.field public A08:Ljava/lang/String;

.field public A09:Z

.field public final A0A:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3135
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Tri2"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "1D6RXHNY"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "CY2J"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "FG3HLf7FRck3Q4"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "aTw9XxKg19aD2PWH35UjlgQd"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "aN0Sboz7ddtAAnQUWG6qQ4oJRDDzSUBt"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "pWs"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "z"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/jz;->A0C:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/jz;->A05()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 89242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89243
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jz;->A0A:Ljava/lang/String;

    return-void
.end method

.method private A00()I
    .locals 4

    .line 89244
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/jz;->A05:Lcom/facebook/ads/redexgen/X/gi;

    .line 89245
    const/16 v2, 0xc2

    const/4 v1, 0x6

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jz;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/gi;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 89246
    .local v0, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 89247
    .local v1, "rotation":I
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/jz;->A02()Lcom/facebook/ads/redexgen/X/bD;

    move-result-object v1

    .line 89248
    .local v2, "adOrientation":Lcom/facebook/ads/redexgen/X/bD;
    sget-object v0, Lcom/facebook/ads/redexgen/X/bD;->A05:Lcom/facebook/ads/redexgen/X/bD;

    if-ne v1, v0, :cond_0

    .line 89249
    const/4 v3, -0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/jz;->A0C:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/jz;->A0C:[Ljava/lang/String;

    const-string v1, "b7o"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "Q7inAkPu5HYVeU"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return v3

    .line 89250
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/bD;->A03:Lcom/facebook/ads/redexgen/X/bD;

    if-ne v1, v0, :cond_2

    .line 89251
    packed-switch v2, :pswitch_data_0

    .line 89252
    const/4 v0, 0x0

    return v0

    .line 89253
    :pswitch_0
    const/16 v3, 0x8

    sget-object v1, Lcom/facebook/ads/redexgen/X/jz;->A0C:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/jz;->A0C:[Ljava/lang/String;

    const-string v1, "bcp"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "BEZRNTMscmchpM"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return v3

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 89254
    :cond_2
    packed-switch v2, :pswitch_data_1

    .line 89255
    const/4 v3, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/jz;->A0C:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/jz;->A0C:[Ljava/lang/String;

    const-string v1, "VdY7"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "KFhl"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return v3

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 89256
    :pswitch_1
    const/16 v0, 0x9

    return v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
    .end packed-switch
.end method

.method private final A01()Lcom/facebook/ads/redexgen/X/WK;
    .locals 1

    .line 89257
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jz;->A04:Lcom/facebook/ads/redexgen/X/Nu;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nu;->A0E()Lcom/facebook/ads/redexgen/X/WK;

    move-result-object v0

    return-object v0
.end method

.method private A02()Lcom/facebook/ads/redexgen/X/bD;
    .locals 1

    .line 89258
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jz;->A04:Lcom/facebook/ads/redexgen/X/Nu;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nu;->A0F()Lcom/facebook/ads/redexgen/X/bD;

    move-result-object v0

    return-object v0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/jz;->A0B:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x54

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A04()V
    .locals 1

    .line 89259
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jz;->A09:Z

    .line 89260
    return-void
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0xc8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/jz;->A0B:[B

    return-void

    :array_0
    .array-data 1
        -0x25t
        -0x7t
        0x6t
        -0x41t
        0xct
        -0x48t
        0xbt
        0xct
        -0x7t
        0xat
        0xct
        -0x48t
        -0x27t
        0xdt
        -0x4t
        0x1t
        -0x3t
        0x6t
        -0x5t
        -0x3t
        -0x1at
        -0x3t
        0xct
        0xft
        0x7t
        0xat
        0x3t
        -0x27t
        -0x5t
        0xct
        0x1t
        0xet
        0x1t
        0xct
        0x11t
        -0x3at
        -0x48t
        -0x1bt
        -0x7t
        0x3t
        -0x3t
        -0x48t
        0xbt
        0xdt
        0xat
        -0x3t
        -0x48t
        0xct
        0x0t
        -0x7t
        0xct
        -0x48t
        0x1t
        0xct
        -0x41t
        0xbt
        -0x48t
        0x1t
        0x6t
        -0x48t
        0x11t
        0x7t
        0xdt
        0xat
        -0x48t
        -0x27t
        0x6t
        -0x4t
        0xat
        0x7t
        0x1t
        -0x4t
        -0x1bt
        -0x7t
        0x6t
        0x1t
        -0x2t
        -0x3t
        0xbt
        0xct
        -0x3at
        0x10t
        0x5t
        0x4t
        -0x48t
        -0x2t
        0x1t
        0x4t
        -0x3t
        -0x3at
        -0x10t
        -0x14t
        -0x15t
        0x1ft
        0xet
        0x13t
        0xft
        0x18t
        0xdt
        0xft
        -0x8t
        0xft
        0x1et
        0x21t
        0x19t
        0x1ct
        0x15t
        -0x37t
        -0x30t
        -0x23t
        -0x32t
        -0x30t
        -0x2et
        -0x1dt
        -0x28t
        -0x1bt
        -0x28t
        -0x1dt
        -0x18t
        -0x1t
        -0x9t
        -0xat
        -0x5t
        -0xdt
        0x6t
        -0x5t
        0x1t
        0x0t
        -0x2at
        -0xdt
        0x6t
        -0xdt
        0x10t
        0xct
        0x1t
        0x3t
        0x5t
        0xdt
        0x5t
        0xet
        0x14t
        -0x17t
        0x4t
        -0x37t
        -0x35t
        -0x42t
        -0x43t
        -0x42t
        -0x41t
        -0x3et
        -0x39t
        -0x42t
        -0x43t
        -0x58t
        -0x35t
        -0x3et
        -0x42t
        -0x39t
        -0x33t
        -0x46t
        -0x33t
        -0x3et
        -0x38t
        -0x39t
        -0x5ct
        -0x42t
        -0x2et
        -0x7t
        -0x14t
        -0x8t
        -0x4t
        -0x14t
        -0x6t
        -0x5t
        -0x25t
        -0x10t
        -0xct
        -0x14t
        -0x6t
        -0xdt
        -0x12t
        -0xat
        -0x6t
        -0x16t
        -0x32t
        -0x17t
        0x22t
        0x15t
        0x11t
        0x23t
        0x0t
        0x25t
        0x1ct
        0x11t
        0xct
        -0x2t
        0x3t
        -0x7t
        0x4t
        0xct
    .end array-data
.end method

.method private A06(Landroid/content/Intent;)V
    .locals 5

    .line 89261
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/jz;->A04:Lcom/facebook/ads/redexgen/X/Nu;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/jz;->A01:Lcom/facebook/ads/RewardData;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/jz;->A01:Lcom/facebook/ads/RewardData;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/jz;->A0A:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jz;->A06:Ljava/lang/String;

    .line 89262
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ea;->A04(Lcom/facebook/ads/RewardData;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89263
    invoke-virtual {v4, p1, v3, v0}, Lcom/facebook/ads/redexgen/X/Nu;->A0I(Landroid/content/Intent;Lcom/facebook/ads/RewardData;Ljava/lang/String;)V

    .line 89264
    return-void
.end method

.method private final A07(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/NC;Lcom/facebook/ads/redexgen/X/O8;Ljava/util/EnumSet;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/gi;",
            "Lcom/facebook/ads/redexgen/X/NC;",
            "Lcom/facebook/ads/redexgen/X/O8;",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 89265
    .local p4, "cacheFlags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/ads/CacheFlag;>;"
    new-instance v4, Lcom/facebook/ads/redexgen/X/Nu;

    invoke-direct {v4, p1, p3, p0, p5}, Lcom/facebook/ads/redexgen/X/Nu;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/O8;Lcom/facebook/ads/redexgen/X/Nt;Ljava/lang/String;)V

    .line 89266
    .local v0, "delegate":Lcom/facebook/ads/redexgen/X/Nu;
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Nu;->A0D()Lcom/facebook/ads/redexgen/X/NQ;

    move-result-object v3

    .line 89267
    .local v1, "adDataBundle":Lcom/facebook/ads/redexgen/X/NQ;
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Up;->A0v(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, v3, Lcom/facebook/ads/redexgen/X/jd;

    if-eqz v0, :cond_0

    .line 89268
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/jz;->A05:Lcom/facebook/ads/redexgen/X/gi;

    .line 89269
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/O8;->A03()Lorg/json/JSONObject;

    move-result-object v1

    check-cast v3, Lcom/facebook/ads/redexgen/X/jd;

    .line 89270
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v0

    .line 89271
    invoke-static {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/Mx;->A01(Lcom/facebook/ads/redexgen/X/gi;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/kJ;

    move-result-object v1

    .line 89272
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/T8;->A0A()Lcom/facebook/ads/redexgen/X/VA;

    move-result-object v0

    .line 89273
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Mx;->A06(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Mw;Lcom/facebook/ads/redexgen/X/VA;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89274
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jz;->A05:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->A52()V

    .line 89275
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/jz;->A02:Lcom/facebook/ads/redexgen/X/NC;

    sget-object v0, Lcom/facebook/ads/AdError;->NO_FILL:Lcom/facebook/ads/AdError;

    invoke-interface {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/NC;->AEG(Lcom/facebook/ads/redexgen/X/jz;Lcom/facebook/ads/AdError;)V

    .line 89276
    return-void

    .line 89277
    :cond_0
    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/jz;->A04:Lcom/facebook/ads/redexgen/X/Nu;

    .line 89278
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Nu;->A0E()Lcom/facebook/ads/redexgen/X/WK;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/jz;->A08(Lcom/facebook/ads/redexgen/X/WK;)V

    .line 89279
    invoke-virtual {v4, p1, p4}, Lcom/facebook/ads/redexgen/X/Nu;->A0J(Lcom/facebook/ads/redexgen/X/gi;Ljava/util/EnumSet;)V

    .line 89280
    return-void
.end method

.method private A08(Lcom/facebook/ads/redexgen/X/WK;)V
    .locals 4

    .line 89281
    sget-object v0, Lcom/facebook/ads/redexgen/X/WK;->A04:Lcom/facebook/ads/redexgen/X/WK;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/WK;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89282
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jz;->A05:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/M5;->A05:Lcom/facebook/ads/redexgen/X/M5;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Lt;->AJt(Lcom/facebook/ads/redexgen/X/M5;)V

    .line 89283
    :cond_0
    :goto_0
    return-void

    .line 89284
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/WK;->A0A:Lcom/facebook/ads/redexgen/X/WK;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/WK;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89285
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jz;->A05:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/M5;->A04:Lcom/facebook/ads/redexgen/X/M5;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Lt;->AJt(Lcom/facebook/ads/redexgen/X/M5;)V

    goto :goto_0

    .line 89286
    :cond_2
    sget-object v0, Lcom/facebook/ads/redexgen/X/WK;->A0B:Lcom/facebook/ads/redexgen/X/WK;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/WK;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 89287
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jz;->A05:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/M5;->A0B:Lcom/facebook/ads/redexgen/X/M5;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Lt;->AJt(Lcom/facebook/ads/redexgen/X/M5;)V

    goto :goto_0

    .line 89288
    :cond_3
    sget-object v0, Lcom/facebook/ads/redexgen/X/WK;->A0D:Lcom/facebook/ads/redexgen/X/WK;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/WK;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 89289
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jz;->A05:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/M5;->A0D:Lcom/facebook/ads/redexgen/X/M5;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Lt;->AJt(Lcom/facebook/ads/redexgen/X/M5;)V

    goto :goto_0

    .line 89290
    :cond_4
    sget-object v0, Lcom/facebook/ads/redexgen/X/WK;->A0C:Lcom/facebook/ads/redexgen/X/WK;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/WK;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 89291
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jz;->A05:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/M5;->A0C:Lcom/facebook/ads/redexgen/X/M5;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Lt;->AJt(Lcom/facebook/ads/redexgen/X/M5;)V

    goto :goto_0

    .line 89292
    :cond_5
    sget-object v0, Lcom/facebook/ads/redexgen/X/WK;->A06:Lcom/facebook/ads/redexgen/X/WK;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/WK;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89293
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jz;->A04:Lcom/facebook/ads/redexgen/X/Nu;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nu;->A0K()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 89294
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jz;->A05:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/M5;->A08:Lcom/facebook/ads/redexgen/X/M5;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Lt;->AJt(Lcom/facebook/ads/redexgen/X/M5;)V

    goto :goto_0

    .line 89295
    :cond_6
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/jz;->A09()Lcom/facebook/ads/redexgen/X/NQ;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/jd;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/jz;->A04:Lcom/facebook/ads/redexgen/X/Nu;

    .line 89296
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/jz;->A09()Lcom/facebook/ads/redexgen/X/NQ;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nu;->A0L(Lcom/facebook/ads/redexgen/X/jd;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 89297
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jz;->A05:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/jz;->A0C:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_8

    sget-object v2, Lcom/facebook/ads/redexgen/X/jz;->A0C:[Ljava/lang/String;

    const-string v1, "5zP"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "kcwn0HZtMTZNOx"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    sget-object v0, Lcom/facebook/ads/redexgen/X/M5;->A0A:Lcom/facebook/ads/redexgen/X/M5;

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/Lt;->AJt(Lcom/facebook/ads/redexgen/X/M5;)V

    goto/16 :goto_0

    .line 89298
    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jz;->A05:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/M5;->A09:Lcom/facebook/ads/redexgen/X/M5;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Lt;->AJt(Lcom/facebook/ads/redexgen/X/M5;)V

    goto/16 :goto_0

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A09()Lcom/facebook/ads/redexgen/X/NQ;
    .locals 1

    .line 89299
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jz;->A04:Lcom/facebook/ads/redexgen/X/Nu;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nu;->A0D()Lcom/facebook/ads/redexgen/X/NQ;

    move-result-object v0

    return-object v0
.end method

.method public final A0A(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/NC;Lcom/facebook/ads/redexgen/X/O8;Ljava/util/EnumSet;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/RewardData;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/gi;",
            "Lcom/facebook/ads/redexgen/X/NC;",
            "Lcom/facebook/ads/redexgen/X/O8;",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/RewardData;",
            ")V"
        }
    .end annotation

    .line 89300
    .local p2, "cacheFlags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/ads/CacheFlag;>;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/jz;->A05:Lcom/facebook/ads/redexgen/X/gi;

    .line 89301
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/jz;->A02:Lcom/facebook/ads/redexgen/X/NC;

    .line 89302
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/O8;->A02()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jz;->A08:Ljava/lang/String;

    .line 89303
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jz;->A08:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/jz;->A08:Ljava/lang/String;

    const/16 v2, 0x6b

    const/4 v1, 0x1

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jz;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    aget-object v0, v1, v0

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jz;->A06:Ljava/lang/String;

    .line 89304
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/O8;->A00()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/jz;->A00:J

    .line 89305
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/jz;->A07:Ljava/lang/String;

    .line 89306
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/jz;->A01:Lcom/facebook/ads/RewardData;

    .line 89307
    invoke-direct/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/jz;->A07(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/NC;Lcom/facebook/ads/redexgen/X/O8;Ljava/util/EnumSet;Ljava/lang/String;)V

    .line 89308
    return-void

    .line 89309
    :cond_0
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jz;->A03(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final A0B()Z
    .locals 8

    .line 89310
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jz;->A09:Z

    const/4 v7, 0x0

    if-nez v0, :cond_1

    .line 89311
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jz;->A02:Lcom/facebook/ads/redexgen/X/NC;

    if-eqz v0, :cond_0

    .line 89312
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/jz;->A02:Lcom/facebook/ads/redexgen/X/NC;

    sget-object v0, Lcom/facebook/ads/AdError;->SHOW_CALLED_BEFORE_LOAD_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/NC;->AEG(Lcom/facebook/ads/redexgen/X/jz;Lcom/facebook/ads/AdError;)V

    .line 89313
    :cond_0
    return v7

    .line 89314
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jz;->A05:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Wu;->A05(Lcom/facebook/ads/redexgen/X/gi;)Lcom/facebook/ads/internal/util/activity/AdActivityIntent;

    move-result-object v3

    .line 89315
    .local v0, "intent":Lcom/facebook/ads/internal/util/activity/AdActivityIntent;
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/jz;->A00()I

    move-result v4

    .line 89316
    const/16 v2, 0x8f

    const/16 v1, 0x18

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jz;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 89317
    const/16 v2, 0xb2

    const/16 v1, 0x8

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jz;->A03(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jz;->A0A:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89318
    const/16 v2, 0x84

    const/16 v1, 0xb

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jz;->A03(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jz;->A08:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89319
    const/16 v2, 0xa7

    const/16 v1, 0xb

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jz;->A03(III)Ljava/lang/String;

    move-result-object v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/jz;->A00:J

    invoke-virtual {v3, v2, v0, v1}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 89320
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/jz;->A01()Lcom/facebook/ads/redexgen/X/WK;

    move-result-object v4

    .line 89321
    .local v2, "viewType":Lcom/facebook/ads/redexgen/X/WK;
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/jz;->A08(Lcom/facebook/ads/redexgen/X/WK;)V

    .line 89322
    const/16 v2, 0xba

    const/16 v1, 0x8

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jz;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 89323
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jz;->A07:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 89324
    const/16 v2, 0x77

    const/16 v1, 0xd

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jz;->A03(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jz;->A07:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89325
    :cond_2
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/jz;->A06(Landroid/content/Intent;)V

    .line 89326
    invoke-static {}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->isRemoteRenderingProcess()Z

    move-result v0

    if-nez v0, :cond_4

    .line 89327
    const/high16 v4, 0x10000000

    sget-object v2, Lcom/facebook/ads/redexgen/X/jz;->A0C:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/jz;->A0C:[Ljava/lang/String;

    const-string v1, "Sc68"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "wieN"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v3, v4}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 89328
    :cond_4
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jz;->A05:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A03(Lcom/facebook/ads/redexgen/X/gi;)V

    .line 89329
    invoke-static {}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->isRemoteRenderingProcess()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 89330
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jz;->A05:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/Wu;->A0I(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/internal/util/activity/AdActivityIntent;)Z

    move-result v0

    .line 89331
    .local v3, "launchResult":Z
    if-nez v0, :cond_7

    .line 89332
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jz;->A05:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->AIC()V

    .line 89333
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jz;->A02:Lcom/facebook/ads/redexgen/X/NC;

    if-eqz v0, :cond_5

    .line 89334
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/jz;->A02:Lcom/facebook/ads/redexgen/X/NC;

    sget-object v0, Lcom/facebook/ads/AdError;->AD_PRESENTATION_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/NC;->AEG(Lcom/facebook/ads/redexgen/X/jz;Lcom/facebook/ads/AdError;)V

    .line 89335
    :cond_5
    return v7

    .line 89336
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jz;->A05:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/Wu;->A0B(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/internal/util/activity/AdActivityIntent;)V

    .line 89337
    :cond_7
    const/4 v0, 0x1

    return v0
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/Ws; {:try_start_0 .. :try_end_0} :catch_0

    .line 89338
    :catch_0
    move-exception v5

    .line 89339
    .local v3, "anfe":Lcom/facebook/ads/redexgen/X/Ws;
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Ws;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Ws;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    .line 89340
    .local v4, "e":Ljava/lang/Throwable;
    :cond_8
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jz;->A05:Lcom/facebook/ads/redexgen/X/gi;

    .line 89341
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v6

    sget v4, Lcom/facebook/ads/redexgen/X/Td;->A0D:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v3, v5}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/Throwable;)V

    .line 89342
    const/16 v2, 0x6c

    const/16 v1, 0xb

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jz;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    .line 89343
    const/16 v2, 0x5a

    const/16 v1, 0x11

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jz;->A03(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x5a

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jz;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89344
    return v7
.end method

.method public final A7O()Ljava/lang/String;
    .locals 1

    .line 89345
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jz;->A04:Lcom/facebook/ads/redexgen/X/Nu;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nu;->A0G()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A8k()Lcom/facebook/ads/internal/protocol/AdPlacementType;
    .locals 1

    .line 89346
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->INTERSTITIAL:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    return-object v0
.end method

.method public final ACo(Lcom/facebook/ads/AdError;)V
    .locals 1

    .line 89347
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jz;->A02:Lcom/facebook/ads/redexgen/X/NC;

    if-eqz v0, :cond_0

    .line 89348
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jz;->A02:Lcom/facebook/ads/redexgen/X/NC;

    invoke-interface {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/NC;->AEG(Lcom/facebook/ads/redexgen/X/jz;Lcom/facebook/ads/AdError;)V

    .line 89349
    :cond_0
    return-void
.end method

.method public final ACp()V
    .locals 1

    .line 89350
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/jz;->A04()V

    .line 89351
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jz;->A02:Lcom/facebook/ads/redexgen/X/NC;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/NC;->AEF(Lcom/facebook/ads/redexgen/X/jz;)V

    .line 89352
    return-void
.end method

.method public final AHY()V
    .locals 4

    .line 89353
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/jz;->A05:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/jz;->A0A:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/jz;->A02:Lcom/facebook/ads/redexgen/X/NC;

    new-instance v0, Lcom/facebook/ads/redexgen/X/ND;

    invoke-direct {v0, v3, v2, p0, v1}, Lcom/facebook/ads/redexgen/X/ND;-><init>(Lcom/facebook/ads/redexgen/X/gi;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/jz;Lcom/facebook/ads/redexgen/X/NC;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jz;->A03:Lcom/facebook/ads/redexgen/X/ND;

    .line 89354
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jz;->A03:Lcom/facebook/ads/redexgen/X/ND;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ND;->A02()V

    .line 89355
    return-void
.end method

.method public final AKL()Z
    .locals 1

    .line 89356
    const/4 v0, 0x1

    return v0
.end method

.method public final AKX()V
    .locals 4

    .line 89357
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jz;->A03:Lcom/facebook/ads/redexgen/X/ND;

    if-eqz v0, :cond_1

    .line 89358
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/jz;->A03:Lcom/facebook/ads/redexgen/X/ND;

    sget-object v2, Lcom/facebook/ads/redexgen/X/jz;->A0C:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/jz;->A0C:[Ljava/lang/String;

    const-string v1, "DiF0"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "lQT3"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/ND;->A03()V

    .line 89359
    :cond_1
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 89360
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jz;->A04:Lcom/facebook/ads/redexgen/X/Nu;

    if-eqz v0, :cond_0

    .line 89361
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jz;->A04:Lcom/facebook/ads/redexgen/X/Nu;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nu;->A0H()V

    .line 89362
    :cond_0
    return-void
.end method
