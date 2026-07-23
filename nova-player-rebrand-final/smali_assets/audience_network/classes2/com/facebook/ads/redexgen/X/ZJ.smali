.class public final Lcom/facebook/ads/redexgen/X/ZJ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/UF;


# static fields
.field public static A02:Landroid/content/pm/PackageInfo;

.field public static A03:Z

.field public static A04:[B

.field public static A05:[Ljava/lang/String;

.field public static final A06:[Lcom/facebook/ads/redexgen/X/Lw;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Sn;

.field public final A01:Lcom/facebook/ads/redexgen/X/T8;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2558
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "txu4RBo63YQ5Q7SoAp"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "BY8ga9ljLbuWBmJa1ktUn6UmPorDtudq"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "oIcH05TUMC1H4eRB0f575BffOzLV6s"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "RDV9o0Xs0wR3bMJwiMoqv"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Drf"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "fWBbnfM052TaJjbz2mNIhyXx2yjBcv"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "vwrAcDNdoQtjOaT8FPnJSektvmYH0bUo"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "A7bgPIcOUjT1m5u12vt0AimohlYQKPcw"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/ZJ;->A05:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/ZJ;->A02()V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/facebook/ads/redexgen/X/ZJ;->A03:Z

    .line 2559
    const/16 v0, 0x9

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/Lw;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Lw;->A1D:Lcom/facebook/ads/redexgen/X/Lw;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Lw;->A0r:Lcom/facebook/ads/redexgen/X/Lw;

    aput-object v0, v2, v1

    const/4 v1, 0x2

    sget-object v0, Lcom/facebook/ads/redexgen/X/Lw;->A1E:Lcom/facebook/ads/redexgen/X/Lw;

    aput-object v0, v2, v1

    const/4 v1, 0x3

    sget-object v0, Lcom/facebook/ads/redexgen/X/Lw;->A1O:Lcom/facebook/ads/redexgen/X/Lw;

    aput-object v0, v2, v1

    const/4 v1, 0x4

    sget-object v0, Lcom/facebook/ads/redexgen/X/Lw;->A18:Lcom/facebook/ads/redexgen/X/Lw;

    aput-object v0, v2, v1

    const/4 v1, 0x5

    sget-object v0, Lcom/facebook/ads/redexgen/X/Lw;->A1A:Lcom/facebook/ads/redexgen/X/Lw;

    aput-object v0, v2, v1

    const/4 v1, 0x6

    sget-object v0, Lcom/facebook/ads/redexgen/X/Lw;->A2h:Lcom/facebook/ads/redexgen/X/Lw;

    aput-object v0, v2, v1

    const/4 v1, 0x7

    sget-object v0, Lcom/facebook/ads/redexgen/X/Lw;->A2i:Lcom/facebook/ads/redexgen/X/Lw;

    aput-object v0, v2, v1

    const/16 v1, 0x8

    sget-object v0, Lcom/facebook/ads/redexgen/X/Lw;->A2j:Lcom/facebook/ads/redexgen/X/Lw;

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/ZJ;->A06:[Lcom/facebook/ads/redexgen/X/Lw;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/T8;ZLcom/facebook/ads/redexgen/X/Sn;)V
    .locals 1

    .line 75034
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75035
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A01:Lcom/facebook/ads/redexgen/X/T8;

    .line 75036
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A00:Lcom/facebook/ads/redexgen/X/Sn;

    .line 75037
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/facebook/ads/redexgen/X/UB;->A08(Lcom/facebook/ads/redexgen/X/T8;ZLjava/lang/String;)V

    .line 75038
    return-void
.end method

.method public static declared-synchronized A00(Lcom/facebook/ads/redexgen/X/T8;)Landroid/content/pm/PackageInfo;
    .locals 2

    const-class v1, Lcom/facebook/ads/redexgen/X/ZJ;

    monitor-enter v1

    .line 75039
    :try_start_0
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/ZJ;->A03:Z

    if-nez v0, :cond_0

    .line 75040
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Xi;->A00(Lcom/facebook/ads/redexgen/X/T8;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/ZJ;->A02:Landroid/content/pm/PackageInfo;

    .line 75041
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/ads/redexgen/X/ZJ;->A03:Z

    .line 75042
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/ZJ;->A02:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 75043
    .end local p0    # null:Lcom/facebook/ads/redexgen/X/T8;
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/ZJ;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x3f

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 4

    const/16 v3, 0x262

    sget-object v1, Lcom/facebook/ads/redexgen/X/ZJ;->A05:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/ZJ;->A05:[Ljava/lang/String;

    const-string v1, "e8Iif6peCxlhmB6JTHauJ"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "U2Egyo0LhTV3FJWkcb"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/ZJ;->A04:[B

    return-void

    :array_0
    .array-data 1
        -0x62t
        -0x46t
        -0x55t
        -0x53t
        -0x53t
        -0x51t
        -0x43t
        -0x43t
        -0x4dt
        -0x54t
        -0x4dt
        -0x4at
        -0x4dt
        -0x42t
        -0x3dt
        -0x37t
        -0x51t
        -0x48t
        -0x55t
        -0x54t
        -0x4at
        -0x51t
        -0x52t
        -0x1at
        -0xdt
        -0x1at
        -0xft
        -0xct
        -0x14t
        -0x45t
        -0x36t
        -0x36t
        -0x27t
        -0x39t
        -0x3dt
        -0x38t
        -0x27t
        -0x33t
        -0x42t
        -0x3bt
        -0x27t
        -0x30t
        -0x41t
        -0x34t
        -0x33t
        -0x3dt
        -0x37t
        -0x38t
        -0x26t
        -0x14t
        -0x1ft
        -0x26t
        -0x14t
        -0x19t
        -0x7t
        -0x11t
        -0x16t
        -0xet
        0x5t
        0x5t
        0x3t
        -0x6t
        -0xdt
        0x6t
        0x5t
        -0x6t
        0x0t
        -0x1t
        0x10t
        -0x6t
        -0xbt
        -0x7t
        0x0t
        -0x5t
        -0x5t
        -0x4t
        0x9t
        0x16t
        0xbt
        0x6t
        0x2t
        -0x4t
        0x5t
        0x16t
        -0x4t
        0xft
        0xbt
        0x9t
        -0x8t
        0xat
        -0x7ct
        -0x75t
        -0x7at
        -0x7at
        -0x79t
        -0x6ct
        -0x5ft
        -0x6at
        -0x6ft
        -0x73t
        -0x79t
        -0x70t
        -0x5ft
        -0x6at
        -0x6bt
        -0x5ft
        -0x71t
        -0x6bt
        -0x1at
        -0x7t
        -0xet
        -0x18t
        -0x10t
        -0x17t
        -0x6et
        -0x70t
        -0x6et
        -0x69t
        -0x6ct
        -0x49t
        -0x4bt
        -0x3ct
        -0x3ct
        -0x47t
        -0x48t
        -0x2dt
        -0x43t
        -0x48t
        -0x39t
        -0x60t
        -0x62t
        -0x51t
        -0x51t
        -0x5at
        -0x5et
        -0x51t
        -0x20t
        -0x23t
        -0x10t
        -0x23t
        -0x5t
        -0x14t
        -0x12t
        -0x15t
        -0x21t
        -0x1ft
        -0x11t
        -0x11t
        -0x1bt
        -0x16t
        -0x1dt
        -0x5t
        -0x15t
        -0x14t
        -0x10t
        -0x1bt
        -0x15t
        -0x16t
        -0x11t
        -0x78t
        -0x7bt
        -0x68t
        -0x7bt
        -0x5dt
        -0x6ct
        -0x6at
        -0x6dt
        -0x79t
        -0x77t
        -0x69t
        -0x69t
        -0x73t
        -0x6et
        -0x75t
        -0x5dt
        -0x6dt
        -0x6ct
        -0x68t
        -0x73t
        -0x6dt
        -0x6et
        -0x69t
        -0x5dt
        -0x79t
        -0x6dt
        -0x67t
        -0x6et
        -0x68t
        -0x6at
        -0x63t
        -0x68t
        -0x6bt
        -0x58t
        -0x6bt
        -0x4dt
        -0x5ct
        -0x5at
        -0x5dt
        -0x69t
        -0x67t
        -0x59t
        -0x59t
        -0x63t
        -0x5et
        -0x65t
        -0x4dt
        -0x5dt
        -0x5ct
        -0x58t
        -0x63t
        -0x5dt
        -0x5et
        -0x59t
        -0x4dt
        -0x59t
        -0x58t
        -0x6bt
        -0x58t
        -0x67t
        -0x47t
        -0x46t
        -0x3dt
        -0x38t
        -0x42t
        -0x37t
        -0x32t
        -0x29t
        -0x1at
        -0x21t
        -0x21t
        -0x2at
        -0x23t
        -0x10t
        -0x2ct
        -0x20t
        -0x1dt
        -0x2at
        -0x10t
        -0x2at
        -0x19t
        -0x2at
        -0x21t
        -0x1bt
        -0x1ct
        -0x19t
        -0xat
        -0x11t
        -0x11t
        -0x1at
        -0x13t
        0x0t
        -0x13t
        -0x10t
        -0x18t
        -0x18t
        -0x1at
        -0x1bt
        -0x51t
        -0x36t
        -0x2et
        -0x2bt
        -0x32t
        -0x33t
        -0x77t
        -0x23t
        -0x28t
        -0x77t
        -0x35t
        -0x22t
        -0x2et
        -0x2bt
        -0x33t
        -0x77t
        -0x22t
        -0x24t
        -0x32t
        -0x25t
        -0x77t
        -0x23t
        -0x28t
        -0x2ct
        -0x32t
        -0x29t
        -0x60t
        -0x67t
        -0x55t
        -0x49t
        -0x63t
        -0x50t
        -0x59t
        -0x58t
        -0x5ct
        -0x67t
        -0x4ft
        -0x63t
        -0x56t
        -0x6t
        -0xbt
        -0x9t
        -0xet
        -0x39t
        -0x3et
        -0x23t
        -0x3ft
        -0x41t
        -0x3ft
        -0x3at
        -0x3dt
        -0x23t
        -0x2et
        -0x2ft
        -0x23t
        -0x35t
        -0x2ft
        -0x45t
        -0x4at
        -0x2ft
        -0x3bt
        -0x3ft
        -0x39t
        -0x3ct
        -0x4bt
        -0x49t
        -0x18t
        -0x13t
        -0xet
        -0xdt
        -0x20t
        -0x15t
        -0x15t
        -0x1ct
        -0xft
        -0x68t
        -0x65t
        -0x71t
        -0x73t
        -0x68t
        -0x6ft
        0x1t
        -0xbt
        -0x1t
        -0x7t
        -0x4bt
        -0x53t
        -0x54t
        -0x4ft
        -0x57t
        -0x44t
        -0x4ft
        -0x49t
        -0x4at
        -0x39t
        -0x45t
        -0x53t
        -0x46t
        -0x42t
        -0x4ft
        -0x55t
        -0x53t
        -0xat
        -0x13t
        -0x4t
        -0x1t
        -0x9t
        -0x6t
        -0xdt
        0x7t
        -0x4t
        0x1t
        -0x8t
        -0x13t
        -0x52t
        -0x5et
        -0x4ct
        -0x55t
        -0x4ct
        -0x4et
        -0x42t
        -0x4ct
        -0x4et
        -0x5ct
        -0x4ft
        -0x42t
        -0x58t
        -0x5dt
        -0x64t
        -0x67t
        -0x67t
        -0x62t
        -0x71t
        -0x72t
        -0x4at
        -0x4at
        -0x3dt
        -0x59t
        -0x50t
        -0x53t
        -0x57t
        -0x4et
        -0x48t
        -0x3dt
        -0x49t
        -0x58t
        -0x51t
        -0x3dt
        -0x46t
        -0x57t
        -0x4at
        -0x49t
        -0x53t
        -0x4dt
        -0x4et
        0x2t
        0x2t
        0xft
        -0xdt
        -0x1t
        -0x2t
        -0xat
        -0x7t
        -0x9t
        0xft
        0x4t
        0x3t
        0xft
        -0x3t
        0x3t
        -0x6t
        -0x6t
        0x7t
        -0x13t
        0x0t
        -0x4t
        -0x6t
        -0x17t
        -0x5t
        -0x59t
        -0x59t
        -0x4ct
        -0x62t
        -0x58t
        -0x4ct
        -0x65t
        -0x59t
        -0x5ct
        -0x5et
        -0x4ct
        -0x58t
        -0x66t
        -0x59t
        -0x55t
        -0x62t
        -0x68t
        -0x66t
        -0x6ft
        -0x6ft
        -0x62t
        -0x6et
        -0x7ct
        -0x6ft
        -0x6bt
        -0x78t
        -0x7et
        -0x7ct
        -0x62t
        -0x6et
        -0x7dt
        -0x76t
        -0x62t
        -0x6bt
        -0x7ct
        -0x6ft
        -0x6et
        -0x78t
        -0x72t
        -0x73t
        -0x2at
        -0x28t
        -0x36t
        -0x1dt
        -0x36t
        -0x3at
        -0x1dt
        -0x3bt
        -0x2ct
        -0x2ct
        -0x1dt
        -0x33t
        -0x2et
        -0x29t
        -0x28t
        -0x3bt
        -0x30t
        -0x30t
        -0x37t
        -0x38t
        -0x6dt
        -0x6bt
        -0x79t
        -0x60t
        -0x79t
        -0x7dt
        -0x60t
        -0x7et
        -0x6ft
        -0x6ft
        -0x60t
        -0x69t
        -0x7at
        -0x6dt
        -0x6ct
        -0x76t
        -0x70t
        -0x71t
        -0x11t
        -0x21t
        -0x12t
        -0x1ft
        -0x1ft
        -0x16t
        -0x5t
        -0x1ct
        -0x1ft
        -0x1bt
        -0x1dt
        -0x1ct
        -0x10t
        -0xat
        -0x1at
        -0xbt
        -0x18t
        -0x18t
        -0xft
        0x2t
        -0x6t
        -0x14t
        -0x19t
        -0x9t
        -0x15t
        -0x1bt
        -0x2at
        -0x23t
        -0xft
        -0x2bt
        -0x2dt
        -0x1et
        -0x2dt
        -0x2ct
        -0x25t
        -0x22t
        -0x25t
        -0x1at
        -0x15t
        -0x41t
        -0x50t
        -0x49t
        -0x35t
        -0x47t
        -0x53t
        -0x46t
        -0x53t
        -0x4dt
        -0x4ft
        -0x50t
        -0x35t
        -0x51t
        -0x53t
        -0x51t
        -0x4ct
        -0x4ft
        -0x9t
        -0x17t
        -0x9t
        -0x9t
        -0x13t
        -0xdt
        -0xet
        0x3t
        -0x8t
        -0x13t
        -0xft
        -0x17t
        0x11t
        0xat
        0x5t
        0x10t
        0x15t
        -0x6at
        -0x6ct
        -0x7at
        -0x6dt
        -0x60t
        -0x7et
        -0x78t
        -0x7at
        -0x71t
        -0x6bt
        -0x3bt
        -0x50t
        -0x45t
        -0x41t
        -0x50t
        -0x3ft
        -0x50t
        -0x44t
        -0x3et
        -0x3ct
        -0x35t
        -0x3et
        -0x3et
    .end array-data
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/U3;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/U3;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 75044
    .local p1, "environmentAdParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 75045
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/U3;->AAg()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75046
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x1b4

    const/16 v1, 0x12

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZJ;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75047
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/U3;->A7N()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75048
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/U3;->A7N()Ljava/lang/String;

    move-result-object v3

    .line 75049
    const/16 v2, 0x187

    const/16 v1, 0x15

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZJ;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75050
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A01:Lcom/facebook/ads/redexgen/X/T8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Us;->A09(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 75051
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A01:Lcom/facebook/ads/redexgen/X/T8;

    sget-object v1, Lcom/facebook/ads/redexgen/X/ZJ;->A05:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6f

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 75052
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/ZJ;->A05:[Ljava/lang/String;

    const-string v1, "qhmjNI7uMFHuEfCbgrNi3HvbFW0uqLeT"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "rAF5k5sPuv4hj6bjGKLvAsDqqwbdtY33"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/T8;->A02()Lcom/facebook/ads/redexgen/X/ge;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U5;->A03(Lcom/facebook/ads/redexgen/X/ge;)Ljava/lang/String;

    move-result-object v3

    .line 75053
    .local v0, "remoteRenderingSdkVersion":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 75054
    const/16 v2, 0x1c6

    const/16 v1, 0x16

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZJ;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75055
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A01:Lcom/facebook/ads/redexgen/X/T8;

    .line 75056
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A02()Lcom/facebook/ads/redexgen/X/ge;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U5;->A02(Lcom/facebook/ads/redexgen/X/ge;)Ljava/lang/String;

    move-result-object v4

    .line 75057
    .local v1, "remoteRenderingExtras":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 75058
    const/16 v2, 0x1ab

    const/16 v1, 0x9

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZJ;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75059
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A01:Lcom/facebook/ads/redexgen/X/T8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Us;->A0D(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 75060
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A01:Lcom/facebook/ads/redexgen/X/T8;

    .line 75061
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A02()Lcom/facebook/ads/redexgen/X/ge;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U5;->A01(Lcom/facebook/ads/redexgen/X/ge;)Ljava/lang/String;

    move-result-object v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZJ;->A05:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_6

    .line 75062
    .local v2, "remoteRenderingConfigTs":Ljava/lang/String;
    sget-object v2, Lcom/facebook/ads/redexgen/X/ZJ;->A05:[Ljava/lang/String;

    const-string v1, "Mj9TvIbv6bgZbZ2pKznECnYI7EK5ROuc"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "5qjAp4YjV3Q6sbLE0XRdgT3gO1lX1tGk"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_4

    .line 75063
    const/16 v2, 0x19c

    const/16 v1, 0xf

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZJ;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75064
    .end local v0    # "remoteRenderingSdkVersion":Ljava/lang/String;
    .end local v1    # "remoteRenderingExtras":Ljava/lang/String;
    .end local v2    # "remoteRenderingConfigTs":Ljava/lang/String;
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A01:Lcom/facebook/ads/redexgen/X/T8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A0x(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 75065
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A01:Lcom/facebook/ads/redexgen/X/T8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A02()Lcom/facebook/ads/redexgen/X/ge;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U6;->A01(Lcom/facebook/ads/redexgen/X/ge;)Ljava/lang/String;

    move-result-object v3

    .line 75066
    .local v0, "cache":Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 75067
    const/16 v2, 0x72

    const/4 v1, 0x5

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZJ;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75068
    .end local v0    # "cache":Ljava/lang/String;
    :cond_5
    return-void

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A04()Ljava/lang/String;
    .locals 1

    .line 75069
    invoke-static {}, Lcom/facebook/ads/redexgen/X/UE;->A00()Lcom/facebook/ads/redexgen/X/ZQ;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/ZJ;->A05(Lcom/facebook/ads/redexgen/X/UD;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/UD;)Ljava/lang/String;
    .locals 8

    .line 75070
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A01:Lcom/facebook/ads/redexgen/X/T8;

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/UB;->A08(Lcom/facebook/ads/redexgen/X/T8;ZLjava/lang/String;)V

    .line 75071
    const/4 v5, 0x0

    .line 75072
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .line 75073
    .local v1, "base64":Landroid/util/Base64OutputStream;
    const/4 v3, 0x0

    .line 75074
    .local v2, "zip":Ljava/util/zip/DeflaterOutputStream;
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v5, v0

    .line 75075
    const/4 v7, 0x0

    new-instance v0, Landroid/util/Base64OutputStream;

    invoke-direct {v0, v5, v7}, Landroid/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    move-object v4, v0

    .line 75076
    new-instance v0, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v0, v4}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v3, v0

    .line 75077
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ZJ;->A06()Ljava/util/Map;

    move-result-object v2

    .line 75078
    .local v3, "environmentAdParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/facebook/ads/redexgen/X/SZ;->A00()Lcom/facebook/ads/redexgen/X/SX;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SX;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75079
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A01:Lcom/facebook/ads/redexgen/X/T8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SZ;->A07(Lcom/facebook/ads/redexgen/X/T8;)V

    .line 75080
    :cond_0
    const/16 v6, 0x128

    const/4 v1, 0x4

    const/16 v0, 0x72

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/ZJ;->A01(III)Ljava/lang/String;

    move-result-object v0

    .line 75081
    invoke-static {}, Lcom/facebook/ads/redexgen/X/SZ;->A00()Lcom/facebook/ads/redexgen/X/SX;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/SX;->A03()Ljava/lang/String;

    move-result-object v1

    .line 75082
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75083
    const/16 v6, 0x24b

    const/16 v1, 0xa

    const/4 v0, 0x2

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/ZJ;->A01(III)Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A01:Lcom/facebook/ads/redexgen/X/T8;

    new-instance v1, Lcom/facebook/ads/redexgen/X/To;

    invoke-direct {v1, v6}, Lcom/facebook/ads/redexgen/X/To;-><init>(Lcom/facebook/ads/redexgen/X/T8;)V

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A01:Lcom/facebook/ads/redexgen/X/T8;

    .line 75084
    invoke-static {v1, v6, v7}, Lcom/facebook/ads/redexgen/X/UJ;->A06(Lcom/facebook/ads/redexgen/X/To;Lcom/facebook/ads/redexgen/X/T8;Z)Ljava/lang/String;

    move-result-object v1

    .line 75085
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75086
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A01:Lcom/facebook/ads/redexgen/X/T8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A21(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75087
    const/16 v6, 0x77

    const/16 v1, 0xa

    const/16 v0, 0x35

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/ZJ;->A01(III)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A01:Lcom/facebook/ads/redexgen/X/T8;

    .line 75088
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/N8;->A01(Lcom/facebook/ads/redexgen/X/T8;)Lcom/facebook/ads/redexgen/X/N8;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/N8;->A0K()Ljava/lang/String;

    move-result-object v1

    .line 75089
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75090
    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 75091
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 75092
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/UD;->A3A(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 75093
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 75094
    :cond_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 75095
    .local v5, "envParameters":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/zip/DeflaterOutputStream;->write([B)V

    .line 75096
    invoke-virtual {v3}, Ljava/util/zip/DeflaterOutputStream;->close()V

    .line 75097
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZJ;->A01(III)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/16 v0, 0x2e

    invoke-static {v6, v2, v0}, Lcom/facebook/ads/redexgen/X/ZJ;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75098
    :try_start_1
    invoke-virtual {v3}, Ljava/util/zip/DeflaterOutputStream;->close()V

    .line 75099
    invoke-virtual {v4}, Landroid/util/Base64OutputStream;->close()V

    .line 75100
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 75101
    :catch_0
    return-object v0

    .line 75102
    :catch_1
    move-exception v6

    .line 75103
    :try_start_2
    const/16 v2, 0x101

    const/16 v1, 0x1a

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZJ;->A01(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "base64":Landroid/util/Base64OutputStream;
    .end local v2    # "zip":Ljava/util/zip/DeflaterOutputStream;
    .end local p2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75104
    .end local v3    # "environmentAdParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v5    # "envParameters":Lorg/json/JSONObject;
    :catchall_0
    move-exception v6

    sget-object v1, Lcom/facebook/ads/redexgen/X/ZJ;->A05:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 75105
    .end local v3
    .restart local v0    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "base64":Landroid/util/Base64OutputStream;
    .restart local v2    # "zip":Ljava/util/zip/DeflaterOutputStream;
    .restart local p2
    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/ZJ;->A05:[Ljava/lang/String;

    const-string v1, "YYekAclIzhra9Pv39zprUDIkOoogCrwo"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_5

    .line 75106
    :try_start_3
    invoke-virtual {v3}, Ljava/util/zip/DeflaterOutputStream;->close()V

    .line 75107
    :cond_5
    if-eqz v4, :cond_6

    .line 75108
    invoke-virtual {v4}, Landroid/util/Base64OutputStream;->close()V

    .line 75109
    :cond_6
    if-eqz v5, :cond_7

    .line 75110
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 75111
    :catch_2
    :cond_7
    throw v6
.end method

.method public final synthetic A06()Ljava/util/Map;
    .locals 1

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/UC;->A00(Lcom/facebook/ads/redexgen/X/UF;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final A7y(Lcom/facebook/ads/redexgen/X/U3;)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/U3;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 75112
    move-object v4, p0

    if-eqz p1, :cond_12

    .line 75113
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/U3;->A79()Ljava/lang/String;

    move-result-object v7

    .line 75114
    .local v2, "bundleOverride":Ljava/lang/String;
    :goto_0
    if-eqz v7, :cond_11

    move-object v6, v7

    .line 75115
    .local v3, "bundle":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->isRemoteRenderingProcess()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 75116
    const/4 v1, 0x1

    .line 75117
    .local v4, "blockInit":Z
    .restart local v4    # "blockInit":Z
    :goto_2
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/ZJ;->A01:Lcom/facebook/ads/redexgen/X/T8;

    invoke-static {v0, v1, v7}, Lcom/facebook/ads/redexgen/X/UB;->A08(Lcom/facebook/ads/redexgen/X/T8;ZLjava/lang/String;)V

    .line 75118
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/ZJ;->A01:Lcom/facebook/ads/redexgen/X/T8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tn;->A0B(Lcom/facebook/ads/redexgen/X/T8;)V

    .line 75119
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/ZJ;->A01:Lcom/facebook/ads/redexgen/X/T8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tn;->A08(Landroid/content/Context;)V

    .line 75120
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 75121
    .local v5, "environmentAdParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/ZJ;->A01:Lcom/facebook/ads/redexgen/X/T8;

    invoke-static {v0, v3, v7}, Lcom/facebook/ads/redexgen/X/U8;->A03(Lcom/facebook/ads/redexgen/X/T8;Ljava/util/Map;Ljava/lang/String;)V

    .line 75122
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0x14c

    const/4 v1, 0x6

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZJ;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75123
    sget v9, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    .line 75124
    .local v6, "density":F
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/ZJ;->A01:Lcom/facebook/ads/redexgen/X/T8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 75125
    .local v7, "screenWidth":I
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/ZJ;->A01:Lcom/facebook/ads/redexgen/X/T8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v8, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 75126
    .local v8, "screenHeight":I
    const/16 v2, 0xdb

    const/4 v1, 0x7

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZJ;->A01(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75127
    int-to-float v0, v5

    div-float/2addr v0, v9

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0x20f

    const/16 v1, 0xc

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZJ;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75128
    int-to-float v0, v8

    div-float/2addr v0, v9

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0x202

    const/16 v1, 0xd

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZJ;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75129
    const/16 v2, 0x39

    const/16 v1, 0xe

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZJ;->A01(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/SZ;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75130
    invoke-static {}, Lcom/facebook/ads/redexgen/X/SZ;->A00()Lcom/facebook/ads/redexgen/X/SX;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SX;->A02()Lcom/facebook/ads/redexgen/X/SW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SW;->name()Ljava/lang/String;

    move-result-object v5

    .line 75131
    const/16 v2, 0x13a

    const/16 v1, 0x9

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZJ;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75132
    invoke-static {}, Lcom/facebook/ads/redexgen/X/SZ;->A00()Lcom/facebook/ads/redexgen/X/SX;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SX;->A01()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 75133
    const/16 v2, 0x12c

    const/16 v1, 0xe

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZJ;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75134
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/ZJ;->A01:Lcom/facebook/ads/redexgen/X/T8;

    new-instance v5, Lcom/facebook/ads/redexgen/X/To;

    invoke-direct {v5, v0, v7}, Lcom/facebook/ads/redexgen/X/To;-><init>(Lcom/facebook/ads/redexgen/X/T8;Ljava/lang/String;)V

    .line 75135
    .local v9, "deviceTrackingParams":Lcom/facebook/ads/redexgen/X/To;
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/ZJ;->A01:Lcom/facebook/ads/redexgen/X/T8;

    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/UJ;->A03(Lcom/facebook/ads/redexgen/X/T8;Lcom/facebook/ads/redexgen/X/To;)Ljava/lang/String;

    move-result-object v7

    const/16 v2, 0x6c

    const/4 v1, 0x6

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZJ;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75136
    const/16 v2, 0x81

    const/4 v1, 0x7

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZJ;->A01(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/To;->A08()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75137
    const/16 v2, 0x152

    const/4 v1, 0x4

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZJ;->A01(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/To;->A09()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75138
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/ZJ;->A01:Lcom/facebook/ads/redexgen/X/T8;

    .line 75139
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UB;->A00(Lcom/facebook/ads/redexgen/X/T8;)Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/XT;->A00:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 75140
    const/16 v2, 0x181

    const/4 v1, 0x6

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZJ;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75141
    const/16 v2, 0x143

    const/16 v1, 0x9

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZJ;->A01(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/To;->A0B()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75142
    const/16 v2, 0x21b

    const/16 v1, 0xe

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZJ;->A01(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/XF;->A01()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75143
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/ZJ;->A01:Lcom/facebook/ads/redexgen/X/T8;

    .line 75144
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Xz;->A00(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Xy;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Xy;->A00:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 75145
    const/16 v2, 0x167

    const/16 v1, 0xc

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZJ;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75146
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/ZJ;->A01:Lcom/facebook/ads/redexgen/X/T8;

    .line 75147
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A09()Lcom/facebook/ads/redexgen/X/U7;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/U7;->A01()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Y1;->A03(D)Ljava/lang/String;

    move-result-object v7

    .line 75148
    const/16 v2, 0x23a

    const/16 v1, 0xc

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZJ;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75149
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/ZJ;->A01:Lcom/facebook/ads/redexgen/X/T8;

    invoke-static {v0, v6, v3}, Lcom/facebook/ads/redexgen/X/UB;->A06(Lcom/facebook/ads/redexgen/X/T8;Ljava/lang/String;Ljava/util/Map;)V

    .line 75150
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/ZJ;->A01:Lcom/facebook/ads/redexgen/X/T8;

    invoke-static {v0, v6}, Lcom/facebook/ads/redexgen/X/XU;->A03(Lcom/facebook/ads/redexgen/X/T8;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 75151
    .local v10, "appCerts":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 75152
    const/16 v2, 0x30

    const/4 v1, 0x5

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZJ;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75153
    :cond_0
    const/16 v2, 0x246

    const/4 v1, 0x5

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZJ;->A01(III)Ljava/lang/String;

    move-result-object v7

    if-eqz p1, :cond_f

    .line 75154
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/U3;->AAk()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 75155
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/U3;->AAk()Ljava/lang/Boolean;

    move-result-object v8

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZJ;->A05:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_18

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZJ;->A05:[Ljava/lang/String;

    const-string v1, "32RBgLNf778xvD9weLhwI46Snl5hrv"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "IyuqHiwE4txdUinr9J2yO2mEn55tsE"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 75156
    invoke-interface {v3, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75157
    :goto_3
    if-eqz p1, :cond_e

    .line 75158
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/U3;->A8W()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 75159
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/U3;->A8W()Ljava/lang/String;

    move-result-object v8

    .line 75160
    .local p0, "mediationService":Ljava/lang/String;
    .restart local p0    # "mediationService":Ljava/lang/String;
    :goto_4
    if-eqz v8, :cond_1

    .line 75161
    const/16 v10, 0x156

    const/16 v9, 0x11

    const/16 v7, 0x29

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZJ;->A05:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_d

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZJ;->A05:[Ljava/lang/String;

    const-string v1, "lzJ4Ecl31LKhf9GNtdySIIM2KCn5d6"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "MfUCKgpZ3l00IXdOSEBXHLe94uIrQG"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-static {v10, v9, v7}, Lcom/facebook/ads/redexgen/X/ZJ;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75162
    :cond_1
    :goto_5
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/To;->A0C()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    .line 75163
    const/4 v2, 0x2

    const/16 v1, 0x15

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZJ;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75164
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/To;->A03()I

    move-result v1

    const/4 v0, -0x1

    if-eq v1, v0, :cond_2

    .line 75165
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/To;->A03()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 75166
    const/16 v2, 0x1d

    const/16 v1, 0x13

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZJ;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75167
    :cond_2
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/ZJ;->A01:Lcom/facebook/ads/redexgen/X/T8;

    .line 75168
    invoke-static {v0, v6}, Lcom/facebook/ads/redexgen/X/U4;->A05(Lcom/facebook/ads/redexgen/X/T8;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 75169
    const/16 v2, 0x255

    const/16 v1, 0x9

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZJ;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75170
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Tn;->A02()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Xd;->A01(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0x17

    const/4 v1, 0x6

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZJ;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75171
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/ZJ;->A01:Lcom/facebook/ads/redexgen/X/T8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Uo;->A05(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 75172
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/ZJ;->A01:Lcom/facebook/ads/redexgen/X/T8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A05()Lcom/facebook/ads/redexgen/X/TD;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/TD;->A87()Ljava/lang/String;

    move-result-object v5

    .line 75173
    .local p1, "fbLoginASID":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 75174
    const/16 v2, 0x35

    const/4 v1, 0x4

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZJ;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75175
    .end local p1    # "fbLoginASID":Ljava/lang/String;
    :cond_3
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/ZJ;->A01:Lcom/facebook/ads/redexgen/X/T8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A05()Lcom/facebook/ads/redexgen/X/TD;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/TD;->A8c()Ljava/lang/String;

    move-result-object v5

    .line 75176
    .local p1, "oculusUserId":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 75177
    const/16 v2, 0x173

    const/16 v1, 0xe

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZJ;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75178
    :cond_4
    const/4 v8, 0x0

    .line 75179
    .local p2, "dataProcessingOptions":Lcom/facebook/ads/redexgen/X/TM;
    if-eqz p1, :cond_5

    .line 75180
    iget-object v5, v4, Lcom/facebook/ads/redexgen/X/ZJ;->A01:Lcom/facebook/ads/redexgen/X/T8;

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZJ;->A05:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_18

    .line 75181
    sget-object v2, Lcom/facebook/ads/redexgen/X/ZJ;->A05:[Ljava/lang/String;

    const-string v1, "QL1vZoGO1wQ14zpGXE2Sg"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "5V9s84iDx7Ocfd5gsL"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-interface {p1, v5}, Lcom/facebook/ads/redexgen/X/U3;->A7m(Lcom/facebook/ads/redexgen/X/T8;)Lcom/facebook/ads/redexgen/X/TM;

    move-result-object v8

    .line 75182
    :cond_5
    if-nez v8, :cond_6

    .line 75183
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/ZJ;->A01:Lcom/facebook/ads/redexgen/X/T8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A07()Lcom/facebook/ads/redexgen/X/TP;

    move-result-object v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZJ;->A05:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_18

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZJ;->A05:[Ljava/lang/String;

    const-string v1, "UvZ2k7gEJDaOAPFQ7LljUQwSSHt3Qj5l"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "lsSUyvw0Epval1a8yRy7YtOStWYNlmUT"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-interface {v5}, Lcom/facebook/ads/redexgen/X/TP;->A7k()Lcom/facebook/ads/redexgen/X/TM;

    move-result-object v8

    .line 75184
    :cond_6
    const/16 v2, 0xbe

    const/16 v1, 0x1d

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZJ;->A01(III)Ljava/lang/String;

    move-result-object v6

    const/16 v2, 0x9f

    const/16 v1, 0x1f

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZJ;->A01(III)Ljava/lang/String;

    move-result-object v7

    .end local v2    # "bundleOverride":Ljava/lang/String;
    .local p5, "bundleOverride":Ljava/lang/String;
    const/16 v2, 0x88

    const/16 v1, 0x17

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZJ;->A01(III)Ljava/lang/String;

    move-result-object v5

    if-eqz v8, :cond_c

    .line 75185
    .end local v3    # "bundle":Ljava/lang/String;
    .local p6, "bundle":Ljava/lang/String;
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/TM;->A08()Ljava/lang/String;

    move-result-object v0

    .line 75186
    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75187
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/TM;->A05()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 75188
    invoke-interface {v3, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75189
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/TM;->A06()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 75190
    invoke-interface {v3, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75191
    :goto_6
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/ZJ;->A01:Lcom/facebook/ads/redexgen/X/T8;

    .line 75192
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N8;->A01(Lcom/facebook/ads/redexgen/X/T8;)Lcom/facebook/ads/redexgen/X/N8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N8;->A0K()Ljava/lang/String;

    move-result-object v5

    .line 75193
    const/16 v2, 0x77

    const/16 v1, 0xa

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZJ;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75194
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/ZJ;->A00:Lcom/facebook/ads/redexgen/X/Sn;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/ZJ;->A01:Lcom/facebook/ads/redexgen/X/T8;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Sn;->A03(Lcom/facebook/ads/redexgen/X/T8;)Ljava/lang/String;

    move-result-object v5

    .line 75195
    .local v2, "bidderTokenExtras":Ljava/lang/String;
    if-eqz v5, :cond_7

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 75196
    const/16 v2, 0x47

    const/16 v1, 0x13

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZJ;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75197
    :cond_7
    iget-object v5, v4, Lcom/facebook/ads/redexgen/X/ZJ;->A01:Lcom/facebook/ads/redexgen/X/T8;

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZJ;->A05:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_b

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZJ;->A05:[Ljava/lang/String;

    const-string v1, "xfpBh2d17TpisnhOgc4FARMiGoOeOma4"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/Us;->A0D(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 75198
    :goto_7
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Y1;->A00()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Y1;->A07(J)Ljava/lang/String;

    move-result-object v5

    .line 75199
    const/16 v2, 0x5a

    const/16 v1, 0x12

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZJ;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75200
    :cond_8
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/ZJ;->A01:Lcom/facebook/ads/redexgen/X/T8;

    .line 75201
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A04()Lcom/facebook/ads/redexgen/X/TB;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/TB;->A9m()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    .line 75202
    const/16 v2, 0x11b

    const/16 v1, 0xd

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZJ;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75203
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/ZJ;->A01:Lcom/facebook/ads/redexgen/X/T8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/TX;->A0H(Lcom/facebook/ads/redexgen/X/T8;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0xf4

    const/16 v1, 0xd

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZJ;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75204
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 75205
    .local v3, "coreEventsSB":Ljava/lang/StringBuilder;
    sget-object v7, Lcom/facebook/ads/redexgen/X/ZJ;->A06:[Lcom/facebook/ads/redexgen/X/Lw;

    .line 75206
    .local p3, "coreEvents":[Lcom/facebook/ads/redexgen/X/Lw;
    const/4 v6, 0x0

    .local p4, "i":I
    .end local v2    # "bidderTokenExtras":Ljava/lang/String;
    .local p7, "bidderTokenExtras":Ljava/lang/String;
    :goto_8
    array-length v8, v7

    const/4 v9, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZJ;->A05:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_a

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZJ;->A05:[Ljava/lang/String;

    const-string v1, "zWUmLpLkv5ZkeLP8Nx8FR5P0NkpI1z"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "rR6LCigUl1U30r1W401qlH7SB9R1I9"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ge v6, v8, :cond_13

    .line 75207
    :goto_9
    aget-object v0, v7, v6

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Lw;->A03()I

    move-result v0

    add-int/lit16 v0, v0, 0xfa0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75208
    array-length v0, v7

    add-int/lit8 v0, v0, -0x1

    if-eq v6, v0, :cond_9

    .line 75209
    const/4 v2, 0x1

    const/4 v1, 0x1

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZJ;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75210
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_a
    if-ge v6, v8, :cond_13

    goto :goto_9

    :cond_b
    sget-object v2, Lcom/facebook/ads/redexgen/X/ZJ;->A05:[Ljava/lang/String;

    const-string v1, "SgB"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/Us;->A0D(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_7

    .line 75211
    .end local p6
    .restart local v3    # "coreEventsSB":Ljava/lang/StringBuilder;
    .end local v3    # "coreEventsSB":Ljava/lang/StringBuilder;
    .restart local p6
    :cond_c
    const/16 v2, 0x25e

    const/4 v1, 0x4

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZJ;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75212
    invoke-interface {v3, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75213
    invoke-interface {v3, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    :cond_d
    invoke-static {v10, v9, v7}, Lcom/facebook/ads/redexgen/X/ZJ;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 75214
    .end local p0    # "mediationService":Ljava/lang/String;
    :cond_e
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/ZJ;->A01:Lcom/facebook/ads/redexgen/X/T8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A05()Lcom/facebook/ads/redexgen/X/TD;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/TD;->A8V()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_4

    .line 75215
    :cond_f
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/ZJ;->A01:Lcom/facebook/ads/redexgen/X/T8;

    .line 75216
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XY;->A05(Lcom/facebook/ads/redexgen/X/T8;)Z

    move-result v8

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZJ;->A05:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_19

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZJ;->A05:[Ljava/lang/String;

    const-string v1, "M1q"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    .line 75217
    invoke-interface {v3, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 75218
    .end local v4    # "blockInit":Z
    :cond_10
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/ZJ;->A01:Lcom/facebook/ads/redexgen/X/T8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A0n(Landroid/content/Context;)Z

    move-result v1

    goto/16 :goto_2

    .line 75219
    :cond_11
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/ZJ;->A01:Lcom/facebook/ads/redexgen/X/T8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->getPackageName()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 75220
    :cond_12
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 75221
    .end local p4
    :cond_13
    const/16 v2, 0xe2

    const/16 v1, 0x12

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZJ;->A01(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75222
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/ZJ;->A01:Lcom/facebook/ads/redexgen/X/T8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZJ;->A00(Lcom/facebook/ads/redexgen/X/T8;)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 75223
    .local v2, "fbPackageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v6, :cond_15

    :goto_a
    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    .end local v3
    .local p8, "coreEventsSB":Ljava/lang/StringBuilder;
    const/16 v2, 0x1dc

    const/16 v1, 0x14

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZJ;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75224
    if-eqz v6, :cond_14

    .line 75225
    iget v0, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0x1f0

    const/16 v1, 0x12

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZJ;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75226
    :cond_14
    invoke-direct {v4, p1, v3}, Lcom/facebook/ads/redexgen/X/ZJ;->A03(Lcom/facebook/ads/redexgen/X/U3;Ljava/util/Map;)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/ZJ;->A05:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_16

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 75227
    :cond_15
    const/4 v9, 0x0

    goto :goto_a

    .line 75228
    :cond_16
    sget-object v2, Lcom/facebook/ads/redexgen/X/ZJ;->A05:[Ljava/lang/String;

    const-string v1, "GvfG5gBfjM6hmXKTNV25n"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "CjMBMD2IWFco7mVmEr"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/ZJ;->A01:Lcom/facebook/ads/redexgen/X/T8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A0y(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 75229
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/ZJ;->A01:Lcom/facebook/ads/redexgen/X/T8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A02()Lcom/facebook/ads/redexgen/X/ge;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U6;->A02(Lcom/facebook/ads/redexgen/X/ge;)Ljava/util/Map;

    move-result-object v4

    .line 75230
    .local v3, "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v4, :cond_17

    .line 75231
    const/16 v2, 0x229

    const/16 v1, 0x11

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZJ;->A01(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Xd;->A01(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75232
    .end local v3    # "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_17
    return-object v3

    :cond_18
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_19
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
