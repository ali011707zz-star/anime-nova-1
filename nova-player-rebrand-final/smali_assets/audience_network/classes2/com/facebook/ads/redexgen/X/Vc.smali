.class public final Lcom/facebook/ads/redexgen/X/Vc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/NativeAdRatingApi;


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;


# instance fields
.field public final A00:D

.field public final A01:D


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2070
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "hUjcMotf6J7QgolLzfJFqEdJCj8"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "g61DfN6A"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "xfoiRdjW7FqaK"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "7BIjRnWTmZFI6"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "QawwIwJGbW4wV95frp"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "JAocLFgZR1eZV5wbskPWRgC49zmLSQ48"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "dTzZFi0gHRoFN0fz4IZK"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "PRpOn4dc8EeXJ60LxB5o"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Vc;->A03:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vc;->A02()V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .line 69476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69477
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Vc;->A01:D

    .line 69478
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/Vc;->A00:D

    .line 69479
    return-void
.end method

.method public static A00(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/Vc;
    .locals 8

    .line 69480
    const/4 v7, 0x0

    if-nez p0, :cond_0

    .line 69481
    return-object v7

    .line 69482
    :cond_0
    const/4 v2, 0x5

    const/4 v1, 0x5

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vc;->A01(III)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v5, 0x0

    invoke-virtual {p0, v0, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    .line 69483
    .local v4, "mValue":D
    const/4 v2, 0x0

    const/4 v1, 0x5

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vc;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    .line 69484
    .local v6, "mScale":D
    cmpl-double v0, v3, v5

    if-eqz v0, :cond_1

    cmpl-double v0, v1, v5

    if-nez v0, :cond_2

    .line 69485
    :cond_1
    return-object v7

    .line 69486
    :cond_2
    new-instance v0, Lcom/facebook/ads/redexgen/X/Vc;

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/facebook/ads/redexgen/X/Vc;-><init>(DD)V

    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vc;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x35

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
    .locals 4

    const/16 v0, 0xa

    new-array v3, v0, [B

    fill-array-data v3, :array_0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vc;->A03:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x17

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vc;->A03:[Ljava/lang/String;

    const-string v1, "JTw9XW"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    sput-object v3, Lcom/facebook/ads/redexgen/X/Vc;->A02:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :array_0
    .array-data 1
        0x14t
        0x4t
        0x2t
        0xdt
        0x6t
        -0x44t
        -0x59t
        -0x4et
        -0x45t
        -0x55t
    .end array-data
.end method


# virtual methods
.method public final getScale()D
    .locals 2

    .line 69487
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A00:D

    return-wide v0
.end method

.method public final getValue()D
    .locals 2

    .line 69488
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A01:D

    return-wide v0
.end method
