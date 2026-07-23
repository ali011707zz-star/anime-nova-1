.class public abstract Lcom/facebook/ads/redexgen/X/eK;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/eK;->A02()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/eK;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x47

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/T8;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/T8;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 80985
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 80986
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Lcom/facebook/ads/redexgen/X/To;

    invoke-direct {v5, p0}, Lcom/facebook/ads/redexgen/X/To;-><init>(Lcom/facebook/ads/redexgen/X/T8;)V

    .line 80987
    .local v1, "deviceTrackingParams":Lcom/facebook/ads/redexgen/X/To;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T8;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 80988
    .local v2, "screenWidth":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T8;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v6, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 80989
    .local v3, "screenHeight":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T8;->A09()Lcom/facebook/ads/redexgen/X/U7;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/U7;->A02()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x69

    const/16 v1, 0xa

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/eK;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80990
    const/16 v2, 0x38

    const/16 v1, 0xd

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/eK;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80991
    const/16 v2, 0x28

    const/16 v1, 0x10

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/eK;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80992
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/To;->A09()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xe

    const/16 v1, 0xc

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/eK;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80993
    int-to-float v1, v7

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    div-float/2addr v1, v0

    float-to-int v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x52

    const/16 v1, 0xc

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/eK;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80994
    int-to-float v1, v6

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    div-float/2addr v1, v0

    float-to-int v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x45

    const/16 v1, 0xd

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/eK;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80995
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T8;->A05()Lcom/facebook/ads/redexgen/X/TD;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/TD;->A9S()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x20

    const/4 v1, 0x2

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/eK;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80996
    const/16 v2, 0x22

    const/4 v1, 0x6

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/eK;->A00(III)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/To;->A04:Ljava/lang/String;

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80997
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x1a

    const/4 v1, 0x6

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/eK;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80998
    const/16 v2, 0x5e

    const/16 v1, 0xb

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/eK;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x6

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/eK;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80999
    const/4 v2, 0x6

    const/16 v1, 0x8

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/eK;->A00(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/To;->A05()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81000
    return-object v4
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x73

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/eK;->A00:[B

    return-void

    :array_0
    .array-data 1
        -0x66t
        -0x6et
        -0x6at
        -0x6bt
        -0x6et
        -0x6ct
        -0x2dt
        -0x1et
        -0x1et
        -0x2ft
        -0x20t
        -0x2dt
        -0x21t
        -0x29t
        -0xat
        -0x9t
        0x8t
        -0x5t
        -0xbt
        -0x9t
        -0xft
        -0x1t
        0x1t
        -0xat
        -0x9t
        -0x2t
        -0x27t
        -0x24t
        -0x30t
        -0x32t
        -0x27t
        -0x2et
        -0x41t
        -0x3dt
        0x26t
        0x2at
        0x16t
        0x2dt
        0x1ct
        0x29t
        -0xat
        -0x19t
        -0x8t
        -0x6t
        -0xct
        -0x15t
        -0x8t
        -0x1bt
        -0x15t
        -0xct
        -0x16t
        -0xat
        -0xbt
        -0x11t
        -0xct
        -0x6t
        -0x1ft
        -0x23t
        -0x2et
        -0x16t
        -0x2et
        -0x2dt
        -0x23t
        -0x2at
        -0x30t
        -0x21t
        -0x2et
        -0x22t
        -0x2at
        -0x38t
        -0x48t
        -0x39t
        -0x46t
        -0x46t
        -0x3dt
        -0x4ct
        -0x43t
        -0x46t
        -0x42t
        -0x44t
        -0x43t
        -0x37t
        0x16t
        0x6t
        0x15t
        0x8t
        0x8t
        0x11t
        0x2t
        0x1at
        0xct
        0x7t
        0x17t
        0xbt
        -0x13t
        -0x22t
        -0x1bt
        -0x27t
        -0x10t
        -0x21t
        -0x14t
        -0x13t
        -0x1dt
        -0x17t
        -0x18t
        -0x1t
        -0xft
        -0x1t
        -0x1t
        -0xbt
        -0x5t
        -0x6t
        -0x15t
        -0xbt
        -0x10t
    .end array-data
.end method
