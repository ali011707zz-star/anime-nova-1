.class public abstract Lcom/facebook/ads/redexgen/X/Pr;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lcom/google/common/math/ElementTypesAreNonnullByDefault;
.end annotation


# static fields
.field public static A00:[I

.field public static A01:[B

.field public static A02:[Ljava/lang/String;

.field public static final A03:[B

.field public static final A04:[I

.field public static final A05:[I

.field public static final A06:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1566
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "xE1uVhGB69CiXPpHcJa10wbSlC3W3Pqt"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "6IpI1YgYEWBIhrDPxczszndZYzSCWcQF"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "bz"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "MzPVaMVFsogiMWrn4KMw3MbbkZJMuH"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "2ugKETTJdLvfYrUKb1TohGbXSYfe6n6C"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "hmUXQG87xVCBxVGQbZ2KvW4kNx5lzwQm"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "IXb1TBLYeY5D6VfxvuWbchUwU2o2Kpep"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "MzSHxO025yCTKgxZvpDu7SYsFbhNKTLL"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Pr;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Pr;->A02()V

    const/16 v0, 0x21

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Pr;->A03:[B

    .line 1567
    const/16 v1, 0xa

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/facebook/ads/redexgen/X/Pr;->A05:[I

    .line 1568
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/facebook/ads/redexgen/X/Pr;->A04:[I

    .line 1569
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/facebook/ads/redexgen/X/Pr;->A06:[I

    .line 1570
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/facebook/ads/redexgen/X/Pr;->A00:[I

    return-void

    nop

    :array_0
    .array-data 1
        0x9t
        0x9t
        0x9t
        0x8t
        0x8t
        0x8t
        0x7t
        0x7t
        0x7t
        0x6t
        0x6t
        0x6t
        0x6t
        0x5t
        0x5t
        0x5t
        0x4t
        0x4t
        0x4t
        0x3t
        0x3t
        0x3t
        0x3t
        0x2t
        0x2t
        0x2t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 4
        0x1
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x1f
        0x13c
        0xc5a
        0x7b86
        0x4d343
        0x3040a5
        0x1e28678
        0x12d940b6
        0x7fffffff
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x1
        0x2
        0x6
        0x18
        0x78
        0x2d0
        0x13b0
        0x9d80
        0x58980
        0x375f00
        0x2611500
        0x1c8cfc00
    .end array-data

    :array_4
    .array-data 4
        0x7fffffff
        0x7fffffff
        0x10000
        0x929
        0x1dd
        0xc1
        0x6e
        0x4b
        0x3a
        0x31
        0x2b
        0x27
        0x25
        0x23
        0x22
        0x22
        0x21
    .end array-data
.end method

.method public static A00(IILjava/math/RoundingMode;)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "p",
            "q",
            "mode"
        }
    .end annotation

    .line 58250
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/ki;->A04(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58251
    if-eqz p1, :cond_b

    .line 58252
    div-int v5, p0, p1

    .line 58253
    .local v0, "div":I
    mul-int v0, p1, v5

    sub-int v4, p0, v0

    .line 58254
    .local v1, "rem":I
    if-nez v4, :cond_0

    .line 58255
    return v5

    .line 58256
    :cond_0
    xor-int/2addr p0, p1

    shr-int/lit8 v3, p0, 0x1f

    const/4 v2, 0x1

    or-int/2addr v3, v2

    .line 58257
    .local v2, "signum":I
    sget-object v1, Lcom/facebook/ads/redexgen/X/Cc;->A00:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 58258
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 58259
    :pswitch_0
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 58260
    .local v4, "absRem":I
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sub-int/2addr v0, v1

    sub-int/2addr v1, v0

    .line 58261
    .local p0, "cmpRemToHalfDivisor":I
    if-nez v1, :cond_4

    .line 58262
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    if-eq p2, v0, :cond_8

    sget-object v0, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    if-ne p2, v0, :cond_2

    const/4 v1, 0x1

    :goto_0
    and-int/lit8 v0, v5, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    and-int/2addr v1, v0

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    .line 58263
    .end local v3
    :cond_4
    if-lez v1, :cond_5

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    goto :goto_3

    .line 58264
    .end local v3
    .end local v4    # "absRem":I
    .end local p0    # "cmpRemToHalfDivisor":I
    :pswitch_1
    if-lez v3, :cond_6

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    goto :goto_3

    .line 58265
    .end local v3
    :pswitch_2
    const/4 v2, 0x1

    .line 58266
    .restart local v3
    goto :goto_3

    .line 58267
    .end local v3
    :pswitch_3
    if-gez v3, :cond_7

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    goto :goto_3

    .line 58268
    .end local v3
    :pswitch_4
    if-nez v4, :cond_a

    :goto_2
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/gS;->A02(Z)V

    .line 58269
    :pswitch_5
    const/4 v2, 0x0

    .line 58270
    .restart local v3
    :cond_8
    :goto_3
    if-eqz v2, :cond_9

    add-int/2addr v5, v3

    :cond_9
    return v5

    .line 58271
    :cond_a
    const/4 v2, 0x0

    goto :goto_2

    .line 58272
    .end local v0    # "div":I
    .end local v1    # "rem":I
    .end local v2    # "signum":I
    .end local v3
    :cond_b
    const/4 v2, 0x0

    const/16 v1, 0x9

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Pr;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/ArithmeticException;

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Pr;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Pr;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x30

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Pr;->A02:[Ljava/lang/String;

    const-string v1, "Wzlt7pC9sZ6E4twls83s4vi3o8ZTUgJv"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "VyCJESJZLvIfYV7xXyp1DHPmX8SMlxdC"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_1

    aget-byte v0, v3, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x61

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Pr;->A01:[B

    return-void

    :array_0
    .array-data 1
        -0x2et
        -0x3dt
        0x5t
        0x1ct
        -0x3dt
        0x1dt
        0x8t
        0x15t
        0x12t
    .end array-data
.end method
