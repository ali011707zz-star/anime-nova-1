.class public abstract Lcom/facebook/ads/redexgen/X/XL;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2306
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "qSiXKiq1IG9lqM50Z2Mb9O8Z2LWgBu"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "r2U8xUOmaYVPqVNF7ipuwqUkClKOL9fI"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "t2SmaoScOMFcI6wk6u94gycUTd7TrCEv"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "g958mvzQCDN4laMR6tofpj9QKe8MWy18"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "srt0ITOyv23HblPPEDvfXyJdFCTOXScH"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "yBqqog3SgBsnKDzcKk1fPvagOkeR5j"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "3gR"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "V2iGxa"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/XL;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/XL;->A02()V

    return-void
.end method

.method public static A00(F)Ljava/lang/String;
    .locals 3

    .line 72482
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/XL;->A03(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72483
    const/16 v2, 0xa

    const/4 v1, 0x4

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XL;->A01(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 72484
    :cond_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/XL;->A05(F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72485
    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XL;->A01(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 72486
    :cond_1
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/XL;->A04(F)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72487
    const/4 v2, 0x4

    const/4 v1, 0x3

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XL;->A01(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 72488
    :cond_2
    const/4 v2, 0x7

    const/4 v1, 0x3

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XL;->A01(III)Ljava/lang/String;

    move-result-object p0

    sget-object v2, Lcom/facebook/ads/redexgen/X/XL;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/XL;->A01:[Ljava/lang/String;

    const-string v1, "joCrsBqpJwLPerzsPAAgEpnRec6YcWpS"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return-object p0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/XL;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x5f

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
    .locals 1

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/XL;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x10t
        0x17t
        0x1bt
        0x18t
        0xet
        0x5t
        0xet
        0x1bt
        0x15t
        0x1at
        0x23t
        0x20t
        0x2bt
        0x2ct
    .end array-data
.end method

.method public static A03(F)Z
    .locals 1

    .line 72489
    const v0, 0x3f333333    # 0.7f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A04(F)Z
    .locals 1

    .line 72490
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A05(F)Z
    .locals 1

    .line 72491
    const v0, 0x3f99999a    # 1.2f

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
