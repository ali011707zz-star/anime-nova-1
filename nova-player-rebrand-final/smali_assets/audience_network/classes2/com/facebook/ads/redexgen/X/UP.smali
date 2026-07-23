.class public abstract Lcom/facebook/ads/redexgen/X/UP;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1925
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "DnTt6XIWuAOQU1Yv6ovRwSY"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "69qI84ufJ2UhBtkQx2IBHzZ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "lNRa3H"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "2y2Uq0vrRuc5d5uHsu4hqSSezWuXbHLJ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "zUBzfUPcj8uIEo8tGSc"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "tyrfQSxRYtG07uuggB4oX54vdLL3Tqsi"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "aO8Ix6JCuD3GiDZZv02FTTQkozyjIQFp"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "pMzofq8cn4xP4Da44trMpLQAQtlXLUTp"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/UP;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/UP;->A03()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/ge;)Lcom/facebook/ads/redexgen/X/UR;
    .locals 5

    .line 67678
    :try_start_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/ZD;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ZD;-><init>(Lcom/facebook/ads/redexgen/X/ge;)V

    return-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67679
    :catch_0
    move-exception v0

    .line 67680
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object p0

    sget v4, Lcom/facebook/ads/redexgen/X/Td;->A2K:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/Throwable;)V

    .line 67681
    const/4 v2, 0x0

    const/16 v1, 0xf

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/UP;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    .line 67682
    new-instance v0, Lcom/facebook/ads/redexgen/X/ZG;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/ZG;-><init>()V

    return-object v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/ge;)Lcom/facebook/ads/redexgen/X/71;
    .locals 1

    .line 67683
    new-instance v0, Lcom/facebook/ads/redexgen/X/71;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/71;-><init>(Lcom/facebook/ads/redexgen/X/ge;)V

    return-object v0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/UP;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x19

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
    .locals 4

    const/16 v3, 0xf

    sget-object v2, Lcom/facebook/ads/redexgen/X/UP;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x0

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/UP;->A01:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x4

    aput-object v1, v2, v0

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/UP;->A00:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x3t
        0x14t
        0x12t
        0x1et
        0x3t
        0x15t
        0x2et
        0x15t
        0x10t
        0x5t
        0x10t
        0x13t
        0x10t
        0x2t
        0x14t
    .end array-data
.end method
