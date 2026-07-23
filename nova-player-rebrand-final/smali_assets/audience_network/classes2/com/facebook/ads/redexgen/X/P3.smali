.class public abstract Lcom/facebook/ads/redexgen/X/P3;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final A02:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[D>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1519
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "OxqqmxACKcMb9rgd4flgeoqO4FLkDXK8"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "hO921EE08Z5YovLaOXzv"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "4KPhJxryuqZouci8ltOnoaa6GepMOFR6"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Qaf3Cf9SMgDDqCFg3avrhgzCiMtnLJnE"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "vZFktEahG3bWOXRkYAMaCi8nGdaO1v3Q"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "tZHqmUfqpLYo8cwpqndw"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "zlaA7TXYCJ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "adeIrckSIlUrZ7yW4ZooAIUWBthMSkAF"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/P3;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/P3;->A08()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/P3;->A02:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static A00(I)D
    .locals 3

    .line 56598
    invoke-static {}, Lcom/facebook/ads/redexgen/X/P3;->A0B()[D

    move-result-object v1

    .line 56599
    .local v0, "result":[D
    invoke-static {p0, v1}, Lcom/facebook/ads/redexgen/X/P3;->A0A(I[D)V

    .line 56600
    const/4 v0, 0x1

    aget-wide v2, v1, v0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v0

    return-wide v2
.end method

.method public static A01(II)D
    .locals 5

    .line 56601
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_1

    .line 56602
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 56603
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/P3;->A04(II)I

    move-result p0

    .line 56604
    :cond_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/P3;->A00(I)D

    move-result-wide v4

    const-wide v2, 0x3fa999999999999aL    # 0.05

    add-double/2addr v4, v2

    .line 56605
    .local v0, "luminance1":D
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/P3;->A00(I)D

    move-result-wide v0

    add-double/2addr v0, v2

    .line 56606
    .local v4, "luminance2":D
    invoke-static {v4, p0, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v4, p0, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    div-double/2addr v2, v0

    return-wide v2

    .line 56607
    .end local v0    # "luminance1":D
    .end local v4    # "luminance2":D
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x20

    const/16 v1, 0x24

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/P3;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 56608
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A02(II)I
    .locals 4

    .line 56609
    if-ltz p1, :cond_1

    const/16 v0, 0xff

    if-gt p1, v0, :cond_1

    .line 56610
    const v3, 0xffffff

    sget-object v2, Lcom/facebook/ads/redexgen/X/P3;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x1

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/P3;->A01:[Ljava/lang/String;

    const-string v1, "DAqAm14HDJv7tSHiVIRuluRO44d0lStM"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    and-int/2addr v3, p0

    shl-int/lit8 v0, p1, 0x18

    or-int/2addr v3, v0

    return v3

    .line 56611
    :cond_1
    const/4 v2, 0x0

    const/16 v1, 0x20

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/P3;->A07(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A03(II)I
    .locals 0

    .line 56612
    rsub-int p1, p1, 0xff

    rsub-int p0, p0, 0xff

    mul-int/2addr p1, p0

    div-int/lit16 p0, p1, 0xff

    rsub-int p0, p0, 0xff

    return p0
.end method

.method public static A04(II)I
    .locals 7

    .line 56613
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    .line 56614
    .local v0, "bgAlpha":I
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    .line 56615
    .local v1, "fgAlpha":I
    invoke-static {v5, v6}, Lcom/facebook/ads/redexgen/X/P3;->A03(II)I

    move-result v4

    .line 56616
    .local v2, "a":I
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 56617
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 56618
    invoke-static {v1, v5, v0, v6, v4}, Lcom/facebook/ads/redexgen/X/P3;->A06(IIIII)I

    move-result v3

    .line 56619
    .local v3, "r":I
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 56620
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    .line 56621
    invoke-static {v1, v5, v0, v6, v4}, Lcom/facebook/ads/redexgen/X/P3;->A06(IIIII)I

    move-result v2

    .line 56622
    .local v4, "g":I
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 56623
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 56624
    invoke-static {v1, v5, v0, v6, v4}, Lcom/facebook/ads/redexgen/X/P3;->A06(IIIII)I

    move-result v0

    .line 56625
    .local v5, "b":I
    invoke-static {v4, v3, v2, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public static A05(IIF)I
    .locals 6

    .line 56626
    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, p2

    .line 56627
    .local v0, "inverseRatio":F
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v3, v0

    mul-float/2addr v3, v5

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    add-float/2addr v3, v0

    .line 56628
    .local v1, "a":F
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v2, v0

    mul-float/2addr v2, v5

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    add-float/2addr v2, v0

    .line 56629
    .local v2, "r":F
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v1, v0

    mul-float/2addr v1, v5

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    add-float/2addr v1, v0

    .line 56630
    .local v3, "g":F
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v4, v0

    mul-float/2addr v4, v5

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    add-float/2addr v4, v0

    .line 56631
    .local v4, "b":F
    float-to-int v3, v3

    float-to-int v2, v2

    float-to-int v1, v1

    float-to-int v0, v4

    invoke-static {v3, v2, v1, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public static A06(IIIII)I
    .locals 1

    .line 56632
    if-nez p4, :cond_0

    const/4 v0, 0x0

    return v0

    .line 56633
    :cond_0
    mul-int/lit16 p0, p0, 0xff

    mul-int/2addr p0, p1

    mul-int/2addr p2, p3

    rsub-int v0, p1, 0xff

    mul-int/2addr p2, v0

    add-int/2addr p0, p2

    mul-int/lit16 v0, p4, 0xff

    div-int/2addr p0, v0

    return p0
.end method

.method public static A07(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/P3;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x38

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A08()V
    .locals 1

    const/16 v0, 0x63

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/P3;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x1at
        0x17t
        0xbt
        0x13t
        0x1at
        0x5bt
        0x16t
        0xet
        0x8t
        0xft
        0x5bt
        0x19t
        0x1et
        0x5bt
        0x19t
        0x1et
        0xft
        0xct
        0x1et
        0x1et
        0x15t
        0x5bt
        0x4bt
        0x5bt
        0x1at
        0x15t
        0x1ft
        0x5bt
        0x49t
        0x4et
        0x4et
        0x55t
        0x3bt
        0x38t
        0x3at
        0x32t
        0x3et
        0x2bt
        0x36t
        0x2ct
        0x37t
        0x3dt
        0x79t
        0x3at
        0x38t
        0x37t
        0x79t
        0x37t
        0x36t
        0x2dt
        0x79t
        0x3bt
        0x3ct
        0x79t
        0x2dt
        0x2bt
        0x38t
        0x37t
        0x2at
        0x35t
        0x2ct
        0x3at
        0x3ct
        0x37t
        0x2dt
        0x63t
        0x79t
        0x7at
        0x3ft
        0x25t
        0x24t
        0x8t
        0x29t
        0x2at
        0x70t
        0x3dt
        0x25t
        0x23t
        0x24t
        0x70t
        0x38t
        0x31t
        0x26t
        0x35t
        0x70t
        0x31t
        0x70t
        0x3ct
        0x35t
        0x3et
        0x37t
        0x24t
        0x38t
        0x70t
        0x3ft
        0x36t
        0x70t
        0x63t
        0x7et
    .end array-data
.end method

.method public static A09(III[D)V
    .locals 16

    .line 56634
    move-object/from16 v8, p3

    array-length v1, v8

    const/4 v0, 0x3

    if-ne v1, v0, :cond_5

    .line 56635
    move/from16 v0, p0

    int-to-double v4, v0

    const-wide v15, 0x406fe00000000000L    # 255.0

    div-double/2addr v4, v15

    .line 56636
    .local v2, "sr":D
    const-wide v13, 0x4029d70a3d70a3d7L    # 12.92

    const-wide v1, 0x4003333333333333L    # 2.4

    const-wide v9, 0x3ff0e147ae147ae1L    # 1.055

    const-wide v6, 0x3fac28f5c28f5c29L    # 0.055

    const-wide v11, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpg-double v0, v4, v11

    if-gez v0, :cond_4

    div-double/2addr v4, v13

    .line 56637
    :goto_0
    move/from16 v0, p1

    int-to-double v2, v0

    div-double/2addr v2, v15

    .line 56638
    .local v8, "sg":D
    cmpg-double v0, v2, v11

    if-gez v0, :cond_0

    div-double/2addr v2, v13

    .line 56639
    .end local v8    # "sg":D
    .local v6, "sg":D
    :goto_1
    move/from16 v0, p2

    int-to-double v9, v0

    div-double/2addr v9, v15

    .line 56640
    .local v9, "sb":D
    cmpg-double v0, v9, v11

    if-gez v0, :cond_1

    const-wide v0, 0x4029d70a3d70a3d7L    # 12.92

    div-double/2addr v9, v0

    .line 56641
    .end local v9    # "sb":D
    .local v4, "sb":D
    :goto_2
    const-wide v6, 0x3fda64c2f837b4a2L    # 0.4124

    mul-double/2addr v6, v4

    const-wide v0, 0x3fd6e2eb1c432ca5L    # 0.3576

    mul-double/2addr v0, v2

    add-double/2addr v6, v0

    const-wide v0, 0x3fc71a9fbe76c8b4L    # 0.1805

    mul-double/2addr v0, v9

    add-double/2addr v6, v0

    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v11

    const/4 v0, 0x0

    aput-wide v6, v8, v0

    .line 56642
    const-wide v6, 0x3fcb367a0f9096bcL    # 0.2126

    mul-double/2addr v6, v4

    const-wide v0, 0x3fe6e2eb1c432ca5L    # 0.7152

    mul-double/2addr v0, v2

    add-double/2addr v6, v0

    const-wide v0, 0x3fb27bb2fec56d5dL    # 0.0722

    mul-double/2addr v0, v9

    add-double/2addr v6, v0

    mul-double/2addr v6, v11

    const/4 v0, 0x1

    aput-wide v6, v8, v0

    .line 56643
    const-wide v6, 0x3f93c36113404ea5L    # 0.0193

    mul-double/2addr v6, v4

    const-wide v0, 0x3fbe83e425aee632L    # 0.1192

    mul-double/2addr v0, v2

    add-double/2addr v6, v0

    const-wide v0, 0x3fee6a7ef9db22d1L    # 0.9505

    mul-double/2addr v0, v9

    add-double/2addr v6, v0

    mul-double/2addr v6, v11

    const/4 v0, 0x2

    aput-wide v6, v8, v0

    .line 56644
    return-void

    .line 56645
    :cond_0
    const-wide v0, 0x3fac28f5c28f5c29L    # 0.055

    add-double/2addr v2, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/P3;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x59

    if-eq v1, v0, :cond_2

    sget-object v6, Lcom/facebook/ads/redexgen/X/P3;->A01:[Ljava/lang/String;

    const-string v1, "aAOO9yx7jRsDtZ33Oh1YUTlwgCOJU7qQ"

    const/4 v0, 0x3

    aput-object v1, v6, v0

    const-string v1, "tiIjGPCneBcQleUKUeg5FNX5aBHKyIuK"

    const/4 v0, 0x4

    aput-object v1, v6, v0

    div-double/2addr v2, v9

    const-wide v0, 0x4003333333333333L    # 2.4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    goto/16 :goto_1

    .line 56646
    :cond_1
    const-wide v6, 0x3fac28f5c28f5c29L    # 0.055

    sget-object v11, Lcom/facebook/ads/redexgen/X/P3;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v11, v0

    const/4 v0, 0x1

    aget-object v0, v11, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v11, Lcom/facebook/ads/redexgen/X/P3;->A01:[Ljava/lang/String;

    const-string v1, "axgx58ekBr3JsKBSYEIr"

    const/4 v0, 0x5

    aput-object v1, v11, v0

    const-string v1, "AyWuGeE7FNinezs3svxh"

    const/4 v0, 0x1

    aput-object v1, v11, v0

    add-double/2addr v6, v9

    const-wide v0, 0x3ff0e147ae147ae1L    # 1.055

    div-double/2addr v6, v0

    const-wide v0, 0x4003333333333333L    # 2.4

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    goto/16 :goto_2

    .line 56647
    :cond_4
    add-double/2addr v4, v6

    div-double/2addr v4, v9

    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    goto/16 :goto_0

    .line 56648
    .end local v2    # "sr":D
    .end local v4    # "sb":D
    .end local v6    # "sg":D
    :cond_5
    const/16 v2, 0x44

    const/16 v1, 0x1f

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/P3;->A07(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A0A(I[D)V
    .locals 3

    .line 56649
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-static {v2, v1, v0, p1}, Lcom/facebook/ads/redexgen/X/P3;->A09(III[D)V

    .line 56650
    return-void
.end method

.method public static A0B()[D
    .locals 2

    .line 56651
    sget-object v0, Lcom/facebook/ads/redexgen/X/P3;->A02:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    .line 56652
    .local v0, "result":[D
    if-nez v1, :cond_0

    .line 56653
    const/4 v0, 0x3

    new-array v1, v0, [D

    .line 56654
    sget-object v0, Lcom/facebook/ads/redexgen/X/P3;->A02:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 56655
    :cond_0
    return-object v1
.end method
