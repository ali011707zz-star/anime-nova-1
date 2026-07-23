.class public abstract Lcom/facebook/ads/redexgen/X/HB;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 773
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "JBqvX3ouZOOCqox6TCkHsUUnq79xKaTL"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "x"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "BIUpfUNI3eVa3mY8ect95XlwPu2Ofuw"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "eTPSYv4hujFcnfJKGeeHsnhQxUvQ5rkD"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "uOymuGwhHDkcqDuJ17"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "MFseKYUy643KM5DvrPXxmzbMJL0nMbh3"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ti0zz4"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/HB;->A00:[Ljava/lang/String;

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/ms;[BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38493
    const/4 v4, 0x0

    .line 38494
    .local v0, "totalBytesPeeked":I
    :goto_0
    if-ge v4, p3, :cond_1

    .line 38495
    add-int v1, p2, v4

    sub-int v0, p3, v4

    invoke-interface {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/ms;->AGs([BII)I

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/HB;->A00:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 38496
    .local v1, "bytesPeeked":I
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/HB;->A00:[Ljava/lang/String;

    const-string v1, "xnIrdLQGczxEK23FHKuSo6llrjoojLCP"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const/4 v0, -0x1

    if-ne v3, v0, :cond_2

    .line 38497
    :cond_1
    return v4

    .line 38498
    :cond_2
    add-int/2addr v4, v3

    .line 38499
    .end local v1    # "bytesPeeked":I
    goto :goto_0
.end method

.method public static A01(ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/3K;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 38500
    if-eqz p0, :cond_0

    .line 38501
    return-void

    .line 38502
    :cond_0
    const/4 p0, 0x0

    invoke-static {p1, p0}, Lcom/facebook/ads/redexgen/X/3K;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/3K;

    move-result-object p0

    throw p0
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/ms;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38503
    :try_start_0
    invoke-interface {p0, p1}, Lcom/facebook/ads/redexgen/X/ms;->AK3(I)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38504
    const/4 p1, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/HB;->A00:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object p0, Lcom/facebook/ads/redexgen/X/HB;->A00:[Ljava/lang/String;

    const-string v1, "SfDhdqvr0QmEID8ZIpBFjoMfbavps9"

    const/4 v0, 0x3

    aput-object v1, p0, v0

    return p1

    .line 38505
    .local v0, "e":Ljava/io/EOFException;
    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/ms;[BII)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38506
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/ms;->readFully([BII)V

    goto :goto_0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38507
    .local p0, "e":Ljava/io/EOFException;
    :catch_0
    const/4 p3, 0x0

    sget-object p1, Lcom/facebook/ads/redexgen/X/HB;->A00:[Ljava/lang/String;

    const/4 p0, 0x0

    aget-object p0, p1, p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p0, 0x0

    if-eq p1, p0, :cond_0

    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_0
    sget-object p2, Lcom/facebook/ads/redexgen/X/HB;->A00:[Ljava/lang/String;

    const-string p1, "fFP2kzBTuIshDEJva9vOOxjFjEDNGXev"

    const/4 p0, 0x6

    aput-object p1, p2, p0

    return p3

    .line 38508
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/ms;[BIIZ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38509
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/ms;->AGu([BIIZ)Z

    move-result p0

    return p0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38510
    :catch_0
    move-exception p0

    .line 38511
    .local p0, "e":Ljava/io/EOFException;
    if-eqz p4, :cond_1

    .line 38512
    const/4 p3, 0x0

    sget-object p1, Lcom/facebook/ads/redexgen/X/HB;->A00:[Ljava/lang/String;

    const/4 p0, 0x3

    aget-object p0, p1, p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p0, 0x14

    if-eq p1, p0, :cond_0

    sget-object p2, Lcom/facebook/ads/redexgen/X/HB;->A00:[Ljava/lang/String;

    const-string p1, "24rmiB"

    const/4 p0, 0x7

    aput-object p1, p2, p0

    const-string p1, "kHyj46IkHv9Sbvkaop"

    const/4 p0, 0x5

    aput-object p1, p2, p0

    return p3

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    .line 38513
    :cond_1
    throw p0
.end method
