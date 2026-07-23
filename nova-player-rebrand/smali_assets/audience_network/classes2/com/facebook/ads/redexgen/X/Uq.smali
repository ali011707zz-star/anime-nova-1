.class public abstract Lcom/facebook/ads/redexgen/X/Uq;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Uq;->A01()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Uq;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x22

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0xc8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Uq;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x3at
        0x3ft
        0x35t
        0x2ct
        0x4t
        0x3at
        0x35t
        0x3ft
        0x29t
        0x34t
        0x32t
        0x3ft
        0x4t
        0x3at
        0x37t
        0x37t
        0x34t
        0x2ct
        0x4t
        0x32t
        0x3at
        0x39t
        0x4t
        0x38t
        0x34t
        0x35t
        0x2ft
        0x3et
        0x23t
        0x2ft
        0x4t
        0x2ct
        0x29t
        0x3at
        0x2bt
        0x2bt
        0x3et
        0x29t
        0x4t
        0x38t
        0x29t
        0x3et
        0x3at
        0x2ft
        0x32t
        0x34t
        0x35t
        0x20t
        0x25t
        0x2ft
        0x36t
        0x1et
        0x20t
        0x2ft
        0x25t
        0x33t
        0x2et
        0x28t
        0x25t
        0x1et
        0x24t
        0x2ft
        0x20t
        0x23t
        0x2dt
        0x24t
        0x1et
        0x28t
        0x2ft
        0x1et
        0x20t
        0x31t
        0x31t
        0x1et
        0x23t
        0x33t
        0x2et
        0x36t
        0x32t
        0x24t
        0x33t
        0x1et
        0x27t
        0x28t
        0x2dt
        0x24t
        0x1et
        0x22t
        0x29t
        0x2et
        0x2et
        0x32t
        0x24t
        0x33t
        0xbt
        0xet
        0x4t
        0x1dt
        0x35t
        0xbt
        0x4t
        0xet
        0x18t
        0x5t
        0x3t
        0xet
        0x35t
        0xft
        0x4t
        0xbt
        0x8t
        0x6t
        0xft
        0x35t
        0x3t
        0x4t
        0x35t
        0xbt
        0x1at
        0x1at
        0x35t
        0x8t
        0x18t
        0x5t
        0x1dt
        0x19t
        0xft
        0x18t
        0x35t
        0x4t
        0xbt
        0x1ct
        0x3t
        0xdt
        0xbt
        0x1et
        0x3t
        0x5t
        0x4t
        0x6at
        0x6ft
        0x65t
        0x7ct
        0x54t
        0x6at
        0x65t
        0x6ft
        0x79t
        0x64t
        0x62t
        0x6ft
        0x54t
        0x62t
        0x6at
        0x69t
        0x54t
        0x62t
        0x66t
        0x7bt
        0x79t
        0x64t
        0x7dt
        0x6et
        0x54t
        0x69t
        0x79t
        0x64t
        0x7ct
        0x78t
        0x62t
        0x65t
        0x6ct
        0x54t
        0x68t
        0x6at
        0x7bt
        0x6at
        0x69t
        0x62t
        0x67t
        0x62t
        0x7ft
        0x62t
        0x6et
        0x78t
        0x5dt
        0x58t
        0x52t
        0x4bt
        0x63t
        0x59t
        0x52t
        0x5dt
        0x5et
        0x50t
        0x59t
        0x63t
        0x55t
        0x5dt
        0x5et
    .end array-data
.end method

.method public static A02(Landroid/content/Context;)Z
    .locals 3

    .line 68699
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Up;->A0V(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Up;

    move-result-object p0

    .line 68700
    const/4 v2, 0x0

    const/16 v1, 0x2f

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Uq;->A00(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Up;->A38(Ljava/lang/String;Z)Z

    move-result v0

    .line 68701
    return v0
.end method

.method public static A03(Landroid/content/Context;)Z
    .locals 3

    .line 68702
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Up;->A0V(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Up;

    move-result-object p0

    .line 68703
    const/16 v2, 0x2f

    const/16 v1, 0x2f

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Uq;->A00(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Up;->A38(Ljava/lang/String;Z)Z

    move-result v0

    .line 68704
    return v0
.end method

.method public static A04(Landroid/content/Context;)Z
    .locals 3

    .line 68705
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Up;->A0V(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Up;

    move-result-object p0

    .line 68706
    const/16 v2, 0x8b

    const/16 v1, 0x2e

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Uq;->A00(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Up;->A38(Ljava/lang/String;Z)Z

    move-result v0

    .line 68707
    return v0
.end method

.method public static A05(Landroid/content/Context;)Z
    .locals 3

    .line 68708
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Up;->A0V(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Up;

    move-result-object p0

    .line 68709
    const/16 v2, 0xb9

    const/16 v1, 0xf

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Uq;->A00(III)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Up;->A38(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 68710
    :cond_0
    return v1
.end method

.method public static A06(Landroid/content/Context;)Z
    .locals 3

    .line 68711
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Up;->A0V(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Up;

    move-result-object p0

    .line 68712
    const/16 v2, 0x5e

    const/16 v1, 0x2d

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Uq;->A00(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Up;->A38(Ljava/lang/String;Z)Z

    move-result v0

    .line 68713
    return v0
.end method
