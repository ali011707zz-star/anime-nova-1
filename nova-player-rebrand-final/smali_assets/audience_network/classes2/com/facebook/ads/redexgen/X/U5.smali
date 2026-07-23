.class public abstract Lcom/facebook/ads/redexgen/X/U5;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/U5;->A04()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/U5;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x69

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/ge;)Ljava/lang/String;
    .locals 3

    .line 66573
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WN;->A00(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v2, 0x0

    const/16 v1, 0xf

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/U5;->A00(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/ge;)Ljava/lang/String;
    .locals 3

    .line 66574
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WN;->A00(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const/16 v2, 0xf

    const/16 v1, 0x11

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/U5;->A00(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/ge;)Ljava/lang/String;
    .locals 3

    .line 66575
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WN;->A00(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 66576
    const/16 v2, 0x20

    const/16 v1, 0x16

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/U5;->A00(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66577
    return-object v0
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0x36

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/U5;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x6t
        0x6t
        0x13t
        -0x9t
        0x3t
        0x2t
        -0x6t
        -0x3t
        -0x5t
        0x13t
        0x8t
        0x7t
        0x13t
        0x1t
        0x7t
        -0x5t
        -0x5t
        0x8t
        -0x4t
        -0x12t
        -0x5t
        -0x1t
        -0xet
        -0x14t
        -0x12t
        0x8t
        -0x12t
        0x1t
        -0x3t
        -0x5t
        -0x16t
        -0x4t
        -0x10t
        -0x10t
        -0x3t
        -0xft
        -0x1dt
        -0x10t
        -0xct
        -0x19t
        -0x1ft
        -0x1dt
        -0x3t
        -0xft
        -0x1et
        -0x17t
        -0x3t
        -0xct
        -0x1dt
        -0x10t
        -0xft
        -0x19t
        -0x13t
        -0x14t
    .end array-data
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/ge;)V
    .locals 3

    .line 66578
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WN;->A00(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/16 v2, 0x20

    const/16 v1, 0x16

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/U5;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 66579
    return-void
.end method

.method public static A06(Lcom/facebook/ads/redexgen/X/ge;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 66580
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WN;->A00(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 66581
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 66582
    const/16 v2, 0x20

    const/16 v1, 0x16

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/U5;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 66583
    const/16 v2, 0xf

    const/16 v1, 0x11

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/U5;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 66584
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Y1;->A00()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Y1;->A07(J)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    const/16 v1, 0xf

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/U5;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 66585
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 66586
    return-void
.end method
