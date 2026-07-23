.class public abstract Lcom/facebook/ads/redexgen/X/XI;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final A02:Landroid/os/Handler;

.field public static final A03:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2297
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "jE5XhhYKQHpatPcaqKauHRorLHvmx36n"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "j5XcoEcQeBll47Gmx6jJ35WP8DJmwvrw"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "kVl1RLZeBZp6BFsBugJhIVOAvqqMASOM"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "QSUK5zHpyvdae"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "vPHRoVXEMWzbN"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "yuxZo0oeIJp1om754wFfCKw5qfu7K2sC"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "XIj7zi9aVzSGRkWRza9PLbW8qplNkm3M"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "NShUMjU8EFbasu9WAPG4eHHUTqko21N4"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/XI;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/XI;->A03()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/XI;->A03:Ljava/util/Set;

    .line 2298
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/XI;->A02:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic A00()Landroid/os/Handler;
    .locals 1

    .line 72383
    sget-object v0, Lcom/facebook/ads/redexgen/X/XI;->A02:Landroid/os/Handler;

    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/XI;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x4

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A02()Ljava/util/Set;
    .locals 1

    .line 72384
    sget-object v0, Lcom/facebook/ads/redexgen/X/XI;->A03:Ljava/util/Set;

    return-object v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x47

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/XI;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x27t
        0x2ft
        0x6bt
        0x70t
        0x7at
        0x77t
        0x73t
        0x68t
        -0x80t
        0x6ct
        0x6bt
        0x27t
        0x6dt
        0x76t
        0x79t
        0x27t
        0x7bt
        0x6ct
        0x7at
        0x7bt
        0x27t
        0x68t
        0x6bt
        0x7at
        0x27t
        0x76t
        0x75t
        0x73t
        -0x80t
        0x30t
        -0x4et
        -0x42t
        -0x44t
        0x7dt
        -0x4bt
        -0x50t
        -0x4et
        -0x4ct
        -0x4ft
        -0x42t
        -0x42t
        -0x46t
        0x7dt
        -0x46t
        -0x50t
        -0x3dt
        -0x50t
        -0x43t
        -0x50t
        -0x57t
        -0x4bt
        -0x4dt
        0x74t
        -0x54t
        -0x59t
        -0x57t
        -0x55t
        -0x58t
        -0x4bt
        -0x4bt
        -0x4ft
        0x74t
        -0x43t
        -0x59t
        -0x4ft
        -0x51t
        -0x40t
        -0x59t
        -0x47t
        -0x52t
        -0x51t
    .end array-data
.end method

.method public static A04(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 72385
    invoke-static {p0}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isTestMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/4 p0, 0x0

    const/16 v1, 0x1e

    const/4 v0, 0x3

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/XI;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72387
    :cond_0
    return-void
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/ge;Lcom/facebook/ads/redexgen/X/Xh;Ljava/lang/String;)V
    .locals 4

    .line 72388
    if-eqz p2, :cond_0

    sget-object v0, Lcom/facebook/ads/redexgen/X/XI;->A03:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72389
    .end local v0
    :cond_0
    return-void

    .line 72390
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ge;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/facebook/ads/redexgen/X/XI;->A08(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    .line 72391
    .local v0, "isPackageInstalled":Z
    if-eqz v0, :cond_2

    .line 72392
    invoke-interface {p1, p2}, Lcom/facebook/ads/redexgen/X/Xh;->AF5(Ljava/lang/String;)V

    .line 72393
    .end local v1
    .end local v2
    :goto_0
    return-void

    .line 72394
    :cond_2
    sget-object v0, Lcom/facebook/ads/redexgen/X/XI;->A03:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72395
    const/4 v0, 0x0

    filled-new-array {v0}, [I

    move-result-object v2

    .line 72396
    .local v1, "totalDelay":[I
    sget-object v1, Lcom/facebook/ads/redexgen/X/XI;->A02:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 72397
    new-instance v3, Lcom/facebook/ads/redexgen/X/XH;

    invoke-direct {v3, v2, p2, p0, p1}, Lcom/facebook/ads/redexgen/X/XH;-><init>([ILjava/lang/String;Lcom/facebook/ads/redexgen/X/ge;Lcom/facebook/ads/redexgen/X/Xh;)V

    .line 72398
    .local v2, "packageCheckRunnable":Ljava/lang/Runnable;
    sget-object v2, Lcom/facebook/ads/redexgen/X/XI;->A02:Landroid/os/Handler;

    const-wide/16 v0, 0x3e8

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public static A06(Lcom/facebook/ads/redexgen/X/ge;Ljava/lang/String;)V
    .locals 6

    .line 72399
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ge;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x1e

    const/16 v1, 0x13

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XI;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 72400
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ge;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x31

    const/16 v3, 0x16

    sget-object v2, Lcom/facebook/ads/redexgen/X/XI;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/XI;->A01:[Ljava/lang/String;

    const-string v1, "j02YsboHYugdBqu3W2eQxUFjhHj6b2oh"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "jTJN86H0DvMYpZ5S4bGPoLkC3Jk4zW8z"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const/16 v0, 0x42

    invoke-static {v5, v3, v0}, Lcom/facebook/ads/redexgen/X/XI;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 72401
    .local v0, "isWithinFB":Z
    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 72402
    sget-object v0, Lcom/facebook/ads/redexgen/X/XI;->A02:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 72403
    sget-object v0, Lcom/facebook/ads/redexgen/X/XI;->A03:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 72404
    :goto_1
    return-void

    .line 72405
    :cond_2
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/OP;->A00(Lcom/facebook/ads/redexgen/X/ge;)Lcom/facebook/ads/redexgen/X/OO;

    move-result-object v1

    .line 72406
    const/4 v0, 0x5

    invoke-virtual {v1, p1, v2, v0}, Lcom/facebook/ads/redexgen/X/OO;->A0A(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Xh;I)V

    goto :goto_1

    .line 72407
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A07(Lcom/facebook/ads/redexgen/X/ge;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Xh;)V
    .locals 4

    .line 72408
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ge;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x1e

    const/16 v1, 0x13

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XI;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72409
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ge;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x31

    const/16 v1, 0x16

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XI;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 72410
    .local v0, "isWithinFB":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 72411
    invoke-static {p0, p2, p1}, Lcom/facebook/ads/redexgen/X/XI;->A05(Lcom/facebook/ads/redexgen/X/ge;Lcom/facebook/ads/redexgen/X/Xh;Ljava/lang/String;)V

    .line 72412
    :goto_1
    return-void

    .line 72413
    :cond_1
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/OP;->A00(Lcom/facebook/ads/redexgen/X/ge;)Lcom/facebook/ads/redexgen/X/OO;

    move-result-object v1

    .line 72414
    const/4 v0, 0x4

    invoke-virtual {v1, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/OO;->A0A(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Xh;I)V

    goto :goto_1

    .line 72415
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A08(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 1

    .line 72416
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 72417
    return v0

    .line 72418
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackageGids(Ljava/lang/String;)[I

    goto :goto_0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72419
    .local p0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_0
    return v0

    .line 72420
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic A09(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 0

    .line 72421
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/XI;->A08(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
