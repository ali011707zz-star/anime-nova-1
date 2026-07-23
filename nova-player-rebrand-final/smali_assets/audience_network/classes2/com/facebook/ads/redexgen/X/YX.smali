.class public abstract Lcom/facebook/ads/redexgen/X/YX;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2516
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "fNLd7n7EkFNgLvt4vtbAtkfYXAQTEPRW"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "T28d5tP6PdXMoXHWEuFSx"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "qUncBokoif621v1GQ7gcKknRgizXPQsv"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "IkdBxGtQCWxg3d0UA"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "tTLCQWoYBdse5ixamGS9HTw2k7WXO8kY"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "MyXxcbJBNTQUhn8S7mcX9rM3djOk"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ymwmgwOSW636xClV84tW2WEHiZAMdx7v"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "xCAHRx5Y4"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/YX;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/YX;->A01()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/YX;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v3, p0, p1

    sget-object v2, Lcom/facebook/ads/redexgen/X/YX;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/YX;->A01:[Ljava/lang/String;

    const-string v1, "dZQs1GEaNPWr5rijC2ubsciPbAft3PPF"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    sub-int/2addr v3, p2

    add-int/lit8 v0, v3, -0x75

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/YX;->A00:[B

    return-void

    nop

    :array_0
    .array-data 1
        0xft
        0xdt
        0x16t
        0xdt
        0x1at
        0x11t
        0xbt
    .end array-data
.end method

.method public static A02(Landroid/app/Activity;ILcom/facebook/ads/redexgen/X/gi;)V
    .locals 3

    .line 74175
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74176
    :catch_0
    move-exception v0

    .line 74177
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object p2

    sget p1, Lcom/facebook/ads/redexgen/X/Td;->A0H:I

    new-instance p0, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/Throwable;)V

    .line 74178
    const/4 v2, 0x0

    const/4 v1, 0x7

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YX;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p1, p0}, Lcom/facebook/ads/redexgen/X/Tc;->ABz(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    .line 74179
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    return-void
.end method
