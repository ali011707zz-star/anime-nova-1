.class public abstract Lcom/facebook/ads/redexgen/X/OA;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/OA;->A02()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/gi;)Lcom/facebook/ads/AdSettings$IntegrationErrorMode;
    .locals 4

    .line 55399
    sget-object v3, Lcom/facebook/ads/internal/settings/AdInternalSettings;->sSettingsBundle:Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;

    .line 55400
    const/4 v2, 0x0

    const/16 v1, 0x1e

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OA;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/AdSettings$IntegrationErrorMode;

    .line 55401
    .local v0, "integrationErrorMode":Lcom/facebook/ads/AdSettings$IntegrationErrorMode;
    if-nez v1, :cond_0

    .line 55402
    sget-object v1, Lcom/facebook/ads/AdSettings$IntegrationErrorMode;->INTEGRATION_ERROR_CRASH_DEBUG_MODE:Lcom/facebook/ads/AdSettings$IntegrationErrorMode;

    .line 55403
    :cond_0
    sget-object v0, Lcom/facebook/ads/AdSettings$IntegrationErrorMode;->INTEGRATION_ERROR_CRASH_DEBUG_MODE:Lcom/facebook/ads/AdSettings$IntegrationErrorMode;

    if-ne v1, v0, :cond_1

    .line 55404
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/OA;->A03(Lcom/facebook/ads/redexgen/X/gi;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 55405
    sget-object v1, Lcom/facebook/ads/AdSettings$IntegrationErrorMode;->INTEGRATION_ERROR_CALLBACK_MODE:Lcom/facebook/ads/AdSettings$IntegrationErrorMode;

    .line 55406
    :cond_1
    return-object v1
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/OA;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x2b

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
    .locals 1

    const/16 v0, 0x1e

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/OA;->A00:[B

    return-void

    :array_0
    .array-data 1
        -0x79t
        -0x7at
        -0x80t
        -0x6dt
        0x7dt
        -0x7et
        -0x78t
        0x79t
        0x7bt
        -0x7at
        0x75t
        -0x78t
        0x7dt
        -0x7dt
        -0x7et
        -0x6dt
        0x79t
        -0x7at
        -0x7at
        -0x7dt
        -0x7at
        -0x6dt
        -0x7ft
        -0x7dt
        0x78t
        0x79t
        -0x6dt
        0x7ft
        0x79t
        -0x73t
    .end array-data
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/gi;)Z
    .locals 0

    .line 55407
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/gi;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

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
