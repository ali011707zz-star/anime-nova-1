.class public abstract Lcom/facebook/ads/redexgen/X/b4;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/b4;->A02()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/b4;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x52

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 77326
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77327
    const/16 v2, 0x26

    const/16 v1, 0x19

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b4;->A00(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 77328
    :cond_0
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, v3, v0

    const/16 v2, 0xb

    const/16 v1, 0x1b

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b4;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x3f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/b4;->A00:[B

    return-void

    :array_0
    .array-data 1
        0xbt
        0x8t
        0x5t
        0x1ft
        0x1et
        0x50t
        0x8t
        0x6t
        0xbt
        0x4t
        0x1t
        0x77t
        0x6bt
        0x6bt
        0x6ft
        0x6ct
        0x25t
        0x30t
        0x30t
        0x68t
        0x68t
        0x68t
        0x31t
        0x3at
        0x6ct
        0x31t
        0x79t
        0x7et
        0x7ct
        0x7at
        0x7dt
        0x70t
        0x70t
        0x74t
        0x31t
        0x7ct
        0x70t
        0x72t
        0x31t
        0x2dt
        0x2dt
        0x29t
        0x2at
        0x63t
        0x76t
        0x76t
        0x2et
        0x2et
        0x2et
        0x77t
        0x3ft
        0x38t
        0x3at
        0x3ct
        0x3bt
        0x36t
        0x36t
        0x32t
        0x77t
        0x3at
        0x36t
        0x34t
        0x76t
    .end array-data
.end method

.method public static A03(Landroid/webkit/WebView;)V
    .locals 3

    .line 77329
    const/4 v2, 0x0

    const/16 v1, 0xb

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b4;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 77330
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 77331
    return-void
.end method

.method public static A04(Landroid/webkit/WebView;)V
    .locals 1

    .line 77332
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p0

    .line 77333
    .local v0, "webSettings":Landroid/webkit/WebSettings;
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 77334
    return-void
.end method
