.class public final enum Lcom/facebook/ads/redexgen/X/JS;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/m2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Version"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/ads/redexgen/X/JS;",
        ">;"
    }
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final synthetic A02:[Lcom/facebook/ads/redexgen/X/JS;

.field public static final enum A03:Lcom/facebook/ads/redexgen/X/JS;

.field public static final enum A04:Lcom/facebook/ads/redexgen/X/JS;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 830
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "AGSeLGKSRVWHjwpJcBbRLkJfLT8WtSj5"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "H7iAoy9xUjOjDwkyYn3gaRvOJ1nIBHLJ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "EVfEuZVSowgq13ZnxgimNyesiv2WPjJR"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "wEMBUpOgjO3FJGZSz1OinbfqqxPYLP66"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "CBkqendLt6fx"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "OD9b4WhLx6uMipDOtSe029KXVXZlCbYX"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "5yVEyiRs1KvMosNbPykruqGUah2O3DeM"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "pqSqJaa9ICEXDKYBpEheNdvD5WKufuNj"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/JS;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/JS;->A01()V

    const/4 v2, 0x0

    const/4 v1, 0x3

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JS;->A00(III)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/JS;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/JS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/JS;->A03:Lcom/facebook/ads/redexgen/X/JS;

    .line 831
    const/4 v2, 0x3

    const/4 v1, 0x3

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JS;->A00(III)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/JS;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/JS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/JS;->A04:Lcom/facebook/ads/redexgen/X/JS;

    .line 832
    invoke-static {}, Lcom/facebook/ads/redexgen/X/JS;->A02()[Lcom/facebook/ads/redexgen/X/JS;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/JS;->A02:[Lcom/facebook/ads/redexgen/X/JS;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 43011
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/JS;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length v0, v3

    if-ge p0, v0, :cond_1

    aget-byte v0, v3, p0

    sub-int/2addr v0, p2

    add-int/lit8 p1, v0, -0x3d

    sget-object v2, Lcom/facebook/ads/redexgen/X/JS;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/JS;->A01:[Ljava/lang/String;

    const-string v1, "ai0karKAJoeNx7Xk9C6gfqHAQPI6uXke"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "u7OYJqR0ngtg88afXXFiWDXiPlKyUSBE"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    int-to-byte v0, p1

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/JS;->A00:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x22t
        -0x23t
        -0x2ct
        -0x49t
        -0x46t
        -0x4et
    .end array-data
.end method

.method public static synthetic A02()[Lcom/facebook/ads/redexgen/X/JS;
    .locals 3

    .line 43012
    const/4 v0, 0x2

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/JS;

    sget-object v1, Lcom/facebook/ads/redexgen/X/JS;->A03:Lcom/facebook/ads/redexgen/X/JS;

    const/4 v0, 0x0

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/JS;->A04:Lcom/facebook/ads/redexgen/X/JS;

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JS;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 43013
    const-class v0, Lcom/facebook/ads/redexgen/X/JS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/JS;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/redexgen/X/JS;
    .locals 1

    .line 43014
    sget-object v0, Lcom/facebook/ads/redexgen/X/JS;->A02:[Lcom/facebook/ads/redexgen/X/JS;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/JS;

    return-object v0
.end method
