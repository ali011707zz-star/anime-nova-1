.class public final Lcom/facebook/ads/redexgen/X/U4;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final A02:Ljava/lang/String;

.field public static final A03:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1912
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "45sljFocWSeUIm"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "kFy0iLqCQu1rSjegRu3gZQBslrN28zfh"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Jt25Esr0vPr63IR3ofREXbE2F9XS"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "aIy3uOWBpnLKLBqKI1xznCdUmB4uZWmr"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "OU2R0KFOTNKkc0fC1q8eYWzKYBY"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "OKiYeSmWG"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "N6c8h1LLghxAImqWtVZLONNsuls"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "y1x9YRSrIuYSzULWME6mF7szl8n2nmJ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/U4;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/U4;->A06()V

    const-class v0, Lcom/facebook/ads/redexgen/X/U4;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/U4;->A02:Ljava/lang/String;

    .line 1913
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/U4;->A03:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 66527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()I
    .locals 1

    .line 66528
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    return v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/T8;Ljava/lang/String;)J
    .locals 9

    .line 66529
    const-wide/16 v7, -0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T8;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 66530
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_0

    .line 66531
    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 66532
    .local v4, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    .line 66533
    .end local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    return-wide v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66534
    .end local v3    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v6

    sget-object v2, Lcom/facebook/ads/redexgen/X/U4;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    .line 66535
    .local v3, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/facebook/ads/redexgen/X/U4;->A01:[Ljava/lang/String;

    const-string v1, "r1yKAsFrz8T6kTbDeRMAIryo3adSH8UC"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "KmyFzAC6ois190XCewwcScJ1n5axjY80"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/U4;->A03:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {v1, v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66536
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/Td;->A1E:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v3, v6}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/Throwable;)V

    .line 66537
    const/16 v2, 0x90

    const/4 v1, 0x7

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/U4;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    .line 66538
    :cond_1
    return-wide v7

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/U4;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x36

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 66539
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/4 v2, 0x0

    const/16 v1, 0xc

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/U4;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 66540
    .local v0, "buildConfigClass":Ljava/lang/Class;
    const/16 v2, 0x25

    const/16 v1, 0xa

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/U4;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 66541
    .local v1, "buildType":Ljava/lang/reflect/Field;
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66542
    .end local v0    # "buildConfigClass":Ljava/lang/Class;
    .end local v1    # "buildType":Ljava/lang/reflect/Field;
    .local v0, "e":Ljava/lang/Exception;
    :catch_0
    const/16 v2, 0x5e

    const/4 v1, 0x3

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/U4;->A02(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A04(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 66543
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/4 v2, 0x0

    const/16 v1, 0xc

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/U4;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 66544
    .local v0, "buildConfigClass":Ljava/lang/Class;
    const/16 v2, 0x47

    const/4 v1, 0x5

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/U4;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 66545
    .local v1, "buildType":Ljava/lang/reflect/Field;
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66546
    .end local v0    # "buildConfigClass":Ljava/lang/Class;
    .end local v1    # "buildType":Ljava/lang/reflect/Field;
    .local v0, "e":Ljava/lang/Exception;
    :catch_0
    const/16 v2, 0x5e

    const/4 v1, 0x3

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/U4;->A02(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/T8;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 66547
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 66548
    .local v0, "extraParams":Lorg/json/JSONObject;
    invoke-static {}, Lcom/facebook/ads/redexgen/X/U4;->A08()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0xae

    const/4 v1, 0x6

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/U4;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v3, v0, v4}, Lcom/facebook/ads/redexgen/X/U4;->A07(Lcom/facebook/ads/redexgen/X/T8;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 66549
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/U4;->A01(Lcom/facebook/ads/redexgen/X/T8;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x61

    const/16 v1, 0x8

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/U4;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v3, v0, v4}, Lcom/facebook/ads/redexgen/X/U4;->A07(Lcom/facebook/ads/redexgen/X/T8;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 66550
    invoke-static {}, Lcom/facebook/ads/redexgen/X/U4;->A00()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0xb4

    const/16 v1, 0xf

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/U4;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v3, v0, v4}, Lcom/facebook/ads/redexgen/X/U4;->A07(Lcom/facebook/ads/redexgen/X/T8;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 66551
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Wp;->A00(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Wo;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 66552
    const/16 v2, 0x69

    const/16 v1, 0x12

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/U4;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v3, v0, v4}, Lcom/facebook/ads/redexgen/X/U4;->A07(Lcom/facebook/ads/redexgen/X/T8;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 66553
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/U4;->A09(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0xa1

    const/16 v1, 0xd

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/U4;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v3, v0, v4}, Lcom/facebook/ads/redexgen/X/U4;->A07(Lcom/facebook/ads/redexgen/X/T8;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 66554
    const/16 v2, 0x85

    const/16 v1, 0xb

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/U4;->A02(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/U4;->A04(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/U4;->A07(Lcom/facebook/ads/redexgen/X/T8;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 66555
    const/16 v2, 0x7b

    const/16 v1, 0xa

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/U4;->A02(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/U4;->A03(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/U4;->A07(Lcom/facebook/ads/redexgen/X/T8;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 66556
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A06()V
    .locals 1

    const/16 v0, 0xca

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/U4;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x6ct
        0x0t
        0x37t
        0x2bt
        0x2et
        0x26t
        0x1t
        0x2dt
        0x2ct
        0x24t
        0x2bt
        0x25t
        0x69t
        0x46t
        0x4ct
        0x5at
        0x47t
        0x41t
        0x4ct
        0x8t
        0x7bt
        0x6ct
        0x63t
        0x8t
        0x4at
        0x5dt
        0x41t
        0x44t
        0x5ct
        0x8t
        0x4et
        0x47t
        0x5at
        0x8t
        0x50t
        0x10t
        0x1et
        0x11t
        0x6t
        0x1at
        0x1ft
        0x17t
        0xct
        0x7t
        0xat
        0x3t
        0x16t
        0x19t
        0x35t
        0x2ft
        0x36t
        0x3et
        0x7at
        0x34t
        0x35t
        0x2et
        0x7at
        0x3bt
        0x3et
        0x3et
        0x7at
        0x2at
        0x3bt
        0x28t
        0x3bt
        0x37t
        0x3ft
        0x2et
        0x3ft
        0x28t
        0x60t
        0x15t
        0x14t
        0x13t
        0x4t
        0x16t
        0x63t
        0x4bt
        0x53t
        0x4at
        0x47t
        0x52t
        0x49t
        0x54t
        0x14t
        0x36t
        0x3dt
        0x2at
        0x3et
        0x3ct
        0x27t
        0x3at
        0x3ct
        0x3dt
        0x45t
        0x24t
        0x4at
        0x33t
        0x22t
        0x39t
        0xdt
        0x21t
        0x3bt
        0x28t
        0x37t
        0x64t
        0x75t
        0x75t
        0x5at
        0x76t
        0x71t
        0x64t
        0x77t
        0x71t
        0x60t
        0x61t
        0x5at
        0x77t
        0x60t
        0x64t
        0x76t
        0x6at
        0x6bt
        0x4ft
        0x58t
        0x44t
        0x41t
        0x49t
        0x72t
        0x59t
        0x54t
        0x5dt
        0x48t
        0x3dt
        0x3ct
        0x3bt
        0x2ct
        0x3et
        0x6t
        0x2ft
        0x38t
        0x35t
        0x2ct
        0x3ct
        0xft
        0xdt
        0x6t
        0xdt
        0x1at
        0x1t
        0xbt
        0x73t
        0x7bt
        0x7bt
        0x73t
        0x78t
        0x71t
        0x4bt
        0x67t
        0x70t
        0x7ft
        0x63t
        0x79t
        0x55t
        0x6et
        0x6ft
        0x68t
        0x7ft
        0x6dt
        0x6dt
        0x6bt
        0x68t
        0x66t
        0x6ft
        0xct
        0x16t
        0x3at
        0x0t
        0x8t
        0x10t
        0x57t
        0x4at
        0x4et
        0x46t
        0x59t
        0x4ct
        0x4dt
        0x46t
        0x7ct
        0x4ct
        0x45t
        0x45t
        0x50t
        0x46t
        0x57t
        0x5ft
        0x44t
        0x41t
        0x44t
        0x45t
        0x5dt
        0x44t
    .end array-data
.end method

.method public static A07(Lcom/facebook/ads/redexgen/X/T8;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 66557
    :try_start_0
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66558
    :catch_0
    move-exception p3

    .line 66559
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T8;->A05()Lcom/facebook/ads/redexgen/X/TD;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/TD;->AAO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66560
    sget-object p2, Lcom/facebook/ads/redexgen/X/U4;->A02:Ljava/lang/String;

    const/16 p1, 0x2f

    const/16 p0, 0x18

    const/16 v0, 0x6c

    invoke-static {p1, p0, v0}, Lcom/facebook/ads/redexgen/X/U4;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66561
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    :goto_0
    return-void
.end method

.method public static A08()Z
    .locals 7

    .line 66562
    sget-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const/16 v2, 0x90

    const/4 v1, 0x7

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/U4;->A02(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 66563
    const/16 v2, 0xc3

    const/4 v1, 0x7

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/U4;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 66564
    const/16 v2, 0x97

    const/16 v1, 0xa

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/U4;->A02(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 66565
    const/16 v2, 0x4c

    const/16 v1, 0x8

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/U4;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 66566
    const/16 v6, 0xc

    sget-object v2, Lcom/facebook/ads/redexgen/X/U4;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x4

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/U4;->A01:[Ljava/lang/String;

    const-string v1, "CTJ6oNGQrsuCzXfrpGcSjdlcrxq"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "Vk4ircYNHpPTfJ73X6WLPy0mTCx"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/16 v1, 0x19

    const/16 v0, 0x1e

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/U4;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 66567
    const/16 v2, 0x54

    const/16 v1, 0xa

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/U4;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 66568
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 66569
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 66570
    :goto_0
    return v0

    .line 66571
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A09(Landroid/content/Context;)Z
    .locals 0

    .line 66572
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    :goto_0
    return p0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method
