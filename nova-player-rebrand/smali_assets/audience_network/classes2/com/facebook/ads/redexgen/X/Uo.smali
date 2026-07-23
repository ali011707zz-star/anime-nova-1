.class public abstract Lcom/facebook/ads/redexgen/X/Uo;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Uo;->A03()V

    return-void
.end method

.method public static A00(Landroid/content/Context;)J
    .locals 3

    .line 68247
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Up;->A0V(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Up;

    move-result-object p0

    .line 68248
    const/16 v2, 0x1d

    const/16 v1, 0x19

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Uo;->A02(III)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v0, -0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Up;->A33(Ljava/lang/String;J)J

    move-result-wide v0

    .line 68249
    return-wide v0
.end method

.method public static A01(Landroid/content/Context;)J
    .locals 3

    .line 68250
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Up;->A0V(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Up;

    move-result-object p0

    .line 68251
    const/16 v2, 0x83

    const/16 v1, 0x1f

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Uo;->A02(III)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v0, -0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Up;->A33(Ljava/lang/String;J)J

    move-result-wide v0

    .line 68252
    return-wide v0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Uo;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x3e

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

    const/16 v0, 0xa2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Uo;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x3et
        0x3bt
        0x31t
        0x28t
        0x0t
        0x3ct
        0x30t
        0x31t
        0x39t
        0x36t
        0x38t
        0x0t
        0x2ct
        0x3at
        0x31t
        0x3bt
        0x0t
        0x39t
        0x3dt
        0x33t
        0x30t
        0x38t
        0x36t
        0x31t
        0x0t
        0x3et
        0x2ct
        0x36t
        0x3bt
        0x7ft
        0x7at
        0x70t
        0x69t
        0x41t
        0x77t
        0x7at
        0x78t
        0x7ft
        0x41t
        0x6ct
        0x7bt
        0x78t
        0x6ct
        0x7bt
        0x6dt
        0x76t
        0x41t
        0x6at
        0x77t
        0x73t
        0x7bt
        0x41t
        0x73t
        0x6dt
        0x5et
        0x5bt
        0x51t
        0x48t
        0x60t
        0x4ct
        0x57t
        0x50t
        0x4at
        0x53t
        0x5bt
        0x60t
        0x4ct
        0x5at
        0x51t
        0x5bt
        0x60t
        0x5et
        0x4ft
        0x4ft
        0x60t
        0x56t
        0x51t
        0x59t
        0x50t
        0x60t
        0x56t
        0x51t
        0x60t
        0x4at
        0x4ct
        0x5at
        0x4dt
        0x60t
        0x5et
        0x58t
        0x5at
        0x51t
        0x4bt
        0x1t
        0x4t
        0xet
        0x17t
        0x3ft
        0x15t
        0x13t
        0x5t
        0x3ft
        0x6t
        0x2t
        0x54t
        0x1t
        0x3ft
        0x9t
        0x4t
        0x7at
        0x7ft
        0x75t
        0x6ct
        0x44t
        0x6et
        0x68t
        0x7et
        0x44t
        0x7dt
        0x79t
        0x2ft
        0x7at
        0x44t
        0x72t
        0x7ft
        0x44t
        0x7dt
        0x72t
        0x69t
        0x68t
        0x6ft
        0x40t
        0x45t
        0x4ft
        0x56t
        0x7et
        0x54t
        0x52t
        0x44t
        0x53t
        0x7et
        0x40t
        0x46t
        0x44t
        0x4ft
        0x55t
        0x7et
        0x53t
        0x44t
        0x47t
        0x53t
        0x44t
        0x52t
        0x49t
        0x7et
        0x55t
        0x48t
        0x4ct
        0x44t
        0x7et
        0x4ct
        0x52t
    .end array-data
.end method

.method public static A04(Landroid/content/Context;)Z
    .locals 3

    .line 68253
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Up;->A0V(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Up;

    move-result-object p0

    .line 68254
    const/16 v2, 0x36

    const/16 v1, 0x27

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Uo;->A02(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Up;->A38(Ljava/lang/String;Z)Z

    move-result v0

    .line 68255
    return v0
.end method

.method public static A05(Landroid/content/Context;)Z
    .locals 3

    .line 68256
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Up;->A0V(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Up;

    move-result-object p0

    .line 68257
    const/4 v2, 0x0

    const/16 v1, 0x1d

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Uo;->A02(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Up;->A38(Ljava/lang/String;Z)Z

    move-result v0

    .line 68258
    return v0
.end method

.method public static A06(Landroid/content/Context;)Z
    .locals 3

    .line 68259
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Up;->A0V(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Up;

    move-result-object p0

    .line 68260
    const/16 v2, 0x5d

    const/16 v1, 0x10

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Uo;->A02(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Up;->A38(Ljava/lang/String;Z)Z

    move-result v0

    .line 68261
    return v0
.end method

.method public static A07(Landroid/content/Context;)Z
    .locals 3

    .line 68262
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Up;->A0V(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Up;

    move-result-object p0

    .line 68263
    const/16 v2, 0x6d

    const/16 v1, 0x16

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Uo;->A02(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Up;->A38(Ljava/lang/String;Z)Z

    move-result v0

    .line 68264
    return v0
.end method
