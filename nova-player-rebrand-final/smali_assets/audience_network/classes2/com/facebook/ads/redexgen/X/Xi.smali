.class public abstract Lcom/facebook/ads/redexgen/X/Xi;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Xi;->A03()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/T8;)Landroid/content/pm/PackageInfo;
    .locals 3

    .line 72939
    const/4 v2, 0x0

    const/16 v1, 0x13

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xi;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/Xi;->A01(Lcom/facebook/ads/redexgen/X/T8;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/T8;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 3

    .line 72940
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 72941
    return-object v2

    .line 72942
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T8;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 72943
    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-nez v1, :cond_1

    .line 72944
    return-object v2

    .line 72945
    :cond_1
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72946
    .local v2, "e":Ljava/lang/RuntimeException;
    :catch_0
    return-object v2

    .line 72947
    .end local v2    # "e":Ljava/lang/RuntimeException;
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    return-object v2
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Xi;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x6c

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x13

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Xi;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x3et
        0x32t
        0x30t
        0x73t
        0x3bt
        0x3ct
        0x3et
        0x38t
        0x3ft
        0x32t
        0x32t
        0x36t
        0x73t
        0x36t
        0x3ct
        0x29t
        0x3ct
        0x33t
        0x3ct
    .end array-data
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/T8;Ljava/lang/String;)Z
    .locals 0

    .line 72948
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/Xi;->A01(Lcom/facebook/ads/redexgen/X/T8;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 72949
    .local p0, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz p0, :cond_0

    const/4 p0, 0x1

    :goto_0
    return p0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method
