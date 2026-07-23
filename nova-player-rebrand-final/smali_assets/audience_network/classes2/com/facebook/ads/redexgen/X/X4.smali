.class public final Lcom/facebook/ads/redexgen/X/X4;
.super Ljava/lang/Exception;
.source ""


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2259
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "bPO0ugaeXfa7uXjMXKhS1KHZA7oolnDS"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "5VEkiBesq0S"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "quO3r7P4ln5WJUQ"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "zM7ZelbUg22KKOGLl25t"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "99uhMkddPMJJPnRd4C"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "JBAQo527ZYtZr4L"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "64LnU3lhwQRNyBCw5dlHSHpXej53Kco6"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/X4;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/X4;->A01()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 71836
    const/4 v2, 0x0

    const/16 v1, 0x1c

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/X4;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 71837
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/X4;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p0, 0x0

    :goto_0
    array-length v3, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/X4;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x14

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/X4;->A01:[Ljava/lang/String;

    const-string v1, "NtF9HtTTwBqLhjE3yqSm"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-ge p0, v3, :cond_0

    aget-byte v0, p1, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0xc

    int-to-byte v0, v0

    aput-byte v0, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x1c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/X4;->A00:[B

    return-void

    :array_0
    .array-data 1
        -0x45t
        -0x1dt
        -0x1dt
        -0x25t
        -0x20t
        -0x27t
        -0x6ct
        -0x3ct
        -0x20t
        -0x2bt
        -0x13t
        -0x6ct
        -0x23t
        -0x19t
        -0x6ct
        -0x1et
        -0x1dt
        -0x18t
        -0x6ct
        -0x23t
        -0x1et
        -0x19t
        -0x18t
        -0x2bt
        -0x20t
        -0x20t
        -0x27t
        -0x28t
    .end array-data
.end method
