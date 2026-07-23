.class public abstract Lcom/facebook/ads/redexgen/X/gS;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lcom/google/common/math/ElementTypesAreNonnullByDefault;
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2886
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "AE3RQ6SjoFsrAp99H6Zd4spKw"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "3Pq1cGGFUNEEXAchrVP3Xf"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "yX"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "SQjo6b3iOf0URtZXiBRUVHbWf8EnkAui"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "00"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "u726MkM70Dw3XEWQiRy0H2gvugSd8Tre"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "3sVZHBX6ZyruD1ikbvJFjqJz5AcrXt3h"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "iwn02HMEBncjK0hVIYdCKaY5g2oqtZ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/gS;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/gS;->A01()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/gS;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v3, p0, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/gS;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x5

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/gS;->A01:[Ljava/lang/String;

    const-string v1, "H9pmIUr4yhuwQEnoSmBFmn"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "tMM9GmlwKAk4hf8HM9GRHGRZ0"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    sub-int/2addr v3, p2

    add-int/lit8 v0, v3, -0x64

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

    const/16 v0, 0x30

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/gS;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x2dt
        0x2ft
        0x24t
        0x25t
        -0x20t
        0x37t
        0x21t
        0x33t
        -0x20t
        0x15t
        0xet
        0xet
        0x5t
        0x3t
        0x5t
        0x13t
        0x13t
        0x1t
        0x12t
        0x19t
        -0x14t
        -0x20t
        0x22t
        0x35t
        0x34t
        -0x20t
        0x32t
        0x2ft
        0x35t
        0x2et
        0x24t
        0x29t
        0x2et
        0x27t
        -0x20t
        0x37t
        0x21t
        0x33t
        -0x20t
        0x2et
        0x25t
        0x23t
        0x25t
        0x33t
        0x33t
        0x21t
        0x32t
        0x39t
    .end array-data
.end method

.method public static A02(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "condition"
        }
    .end annotation

    .line 83329
    if-eqz p0, :cond_0

    .line 83330
    return-void

    .line 83331
    :cond_0
    const/4 p0, 0x0

    const/16 v1, 0x30

    const/16 v0, 0x5c

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/gS;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/ArithmeticException;

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
