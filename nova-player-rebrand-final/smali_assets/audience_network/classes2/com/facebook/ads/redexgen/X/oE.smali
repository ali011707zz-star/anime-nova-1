.class public abstract Lcom/facebook/ads/redexgen/X/oE;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/5v;


# static fields
.field public static A00:[B

.field public static final A01:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 3319
    invoke-static {}, Lcom/facebook/ads/redexgen/X/oE;->A01()V

    sget-object v3, Lcom/facebook/ads/redexgen/X/5C;->A05:Ljava/lang/String;

    .line 3320
    const/16 v2, 0x8

    const/4 v1, 0x6

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/oE;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v3, Lcom/facebook/ads/redexgen/X/5C;->A06:Ljava/lang/String;

    .line 3321
    const/4 v2, 0x4

    const/4 v1, 0x4

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/oE;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v3, Lcom/facebook/ads/redexgen/X/5C;->A06:Ljava/lang/String;

    .line 3322
    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/oE;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/facebook/ads/redexgen/X/oE;->A01:Z

    .line 3323
    return-void

    .line 3324
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/oE;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/oE;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x20t
        0x27t
        0x35t
        0x23t
        0x23t
        0x24t
        0x36t
        0x2ft
        0x3at
        0x16t
        0x1at
        0x1t
        0x14t
        0x15t
    .end array-data
.end method
