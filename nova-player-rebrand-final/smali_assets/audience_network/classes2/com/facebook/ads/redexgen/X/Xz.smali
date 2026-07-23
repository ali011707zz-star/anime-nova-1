.class public abstract Lcom/facebook/ads/redexgen/X/Xz;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Xy;
    }
.end annotation


# static fields
.field public static A00:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Xz;->A02()V

    return-void
.end method

.method public static A00(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Xy;
    .locals 3

    .line 73243
    const/4 v2, 0x0

    const/16 v1, 0x27

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xz;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 73244
    .local v0, "result":I
    if-eqz v0, :cond_0

    .line 73245
    sget-object v0, Lcom/facebook/ads/redexgen/X/Xy;->A08:Lcom/facebook/ads/redexgen/X/Xy;

    return-object v0

    .line 73246
    :cond_0
    const/16 v2, 0x27

    const/16 v1, 0xc

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xz;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 73247
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 73248
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 73249
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/Xy;->A07:Lcom/facebook/ads/redexgen/X/Xy;

    return-object v0

    .line 73250
    :cond_2
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_3

    .line 73251
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 73252
    sget-object v0, Lcom/facebook/ads/redexgen/X/Xy;->A08:Lcom/facebook/ads/redexgen/X/Xy;

    return-object v0

    .line 73253
    :pswitch_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/Xy;->A05:Lcom/facebook/ads/redexgen/X/Xy;

    return-object v0

    .line 73254
    :pswitch_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/Xy;->A04:Lcom/facebook/ads/redexgen/X/Xy;

    return-object v0

    .line 73255
    :pswitch_2
    sget-object v0, Lcom/facebook/ads/redexgen/X/Xy;->A03:Lcom/facebook/ads/redexgen/X/Xy;

    return-object v0

    .line 73256
    :cond_3
    sget-object v0, Lcom/facebook/ads/redexgen/X/Xy;->A06:Lcom/facebook/ads/redexgen/X/Xy;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Xz;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x59

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

    const/16 v0, 0x33

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Xz;->A00:[B

    return-void

    :array_0
    .array-data 1
        -0x13t
        -0x6t
        -0x10t
        -0x2t
        -0x5t
        -0xbt
        -0x10t
        -0x46t
        -0x4t
        -0xft
        -0x2t
        -0x7t
        -0xbt
        -0x1t
        -0x1t
        -0xbt
        -0x5t
        -0x6t
        -0x46t
        -0x33t
        -0x31t
        -0x31t
        -0x2ft
        -0x21t
        -0x21t
        -0x15t
        -0x26t
        -0x2ft
        -0x20t
        -0x1dt
        -0x25t
        -0x22t
        -0x29t
        -0x15t
        -0x21t
        -0x20t
        -0x33t
        -0x20t
        -0x2ft
        0x5t
        0x11t
        0x10t
        0x10t
        0x7t
        0x5t
        0x16t
        0xbt
        0x18t
        0xbt
        0x16t
        0x1bt
    .end array-data
.end method
