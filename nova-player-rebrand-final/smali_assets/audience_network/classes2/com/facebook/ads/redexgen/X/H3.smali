.class public abstract Lcom/facebook/ads/redexgen/X/H3;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/H3;->A02()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/4v;)I
    .locals 3

    .line 38308
    const/4 v2, 0x0

    .line 38309
    .local v0, "value":I
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v0

    if-nez v0, :cond_1

    .line 38310
    const/4 v0, -0x1

    return v0

    .line 38311
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v1

    .line 38312
    .local v1, "b":I
    add-int/2addr v2, v1

    .line 38313
    const/16 v0, 0xff

    if-eq v1, v0, :cond_0

    .line 38314
    return v2
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/H3;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x79

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

    const/16 v0, 0x34

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/H3;->A00:[B

    return-void

    :array_0
    .array-data 1
        -0x41t
        -0x1ft
        -0x23t
        -0x2ft
        -0x10t
        -0x1bt
        -0x18t
        -0x24t
        -0xct
        -0xet
        -0x7t
        -0x7t
        -0xet
        -0x9t
        -0x10t
        -0x57t
        -0x5t
        -0x12t
        -0xat
        -0x16t
        -0xet
        -0x9t
        -0x13t
        -0x12t
        -0x5t
        -0x57t
        -0x8t
        -0x11t
        -0x57t
        -0xat
        -0x16t
        -0xbt
        -0x11t
        -0x8t
        -0x5t
        -0xat
        -0x12t
        -0x13t
        -0x57t
        -0x24t
        -0x32t
        -0x2et
        -0x57t
        -0x29t
        -0x36t
        -0x2bt
        -0x57t
        -0x2t
        -0x9t
        -0xet
        -0x3t
        -0x49t
    .end array-data
.end method

.method public static A03(JLcom/facebook/ads/redexgen/X/4v;[Lcom/facebook/ads/redexgen/X/Hd;)V
    .locals 9

    .line 38315
    :goto_0
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v0

    const/4 v8, 0x1

    if-le v0, v8, :cond_9

    .line 38316
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/H3;->A00(Lcom/facebook/ads/redexgen/X/4v;)I

    move-result v2

    .line 38317
    .local v0, "payloadType":I
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/H3;->A00(Lcom/facebook/ads/redexgen/X/4v;)I

    move-result v1

    .line 38318
    .local v2, "payloadSize":I
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v7

    add-int/2addr v7, v1

    .line 38319
    .local v3, "nextPayloadPosition":I
    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v0

    if-le v1, v0, :cond_2

    .line 38320
    .end local v4
    .end local v5
    .end local v6
    .end local v8
    .end local p0    # null:J
    :cond_0
    const/4 v2, 0x0

    const/4 v1, 0x7

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/H3;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x7

    const/16 v1, 0x2d

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/H3;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 38321
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4v;->A0A()I

    move-result v7

    .line 38322
    :cond_1
    :goto_1
    invoke-virtual {p2, v7}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 38323
    .end local v0    # "payloadType":I
    .end local v2    # "payloadSize":I
    .end local v3    # "nextPayloadPosition":I
    goto :goto_0

    .line 38324
    :cond_2
    const/4 v0, 0x4

    if-ne v2, v0, :cond_1

    const/16 v0, 0x8

    if-lt v1, v0, :cond_1

    .line 38325
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v6

    .line 38326
    .local v4, "countryCode":I
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4v;->A0M()I

    move-result v5

    .line 38327
    .local v5, "providerCode":I
    const/4 v4, 0x0

    .line 38328
    .local v6, "userIdentifier":I
    const/16 v3, 0x31

    if-ne v5, v3, :cond_3

    .line 38329
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v4

    .line 38330
    :cond_3
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v2

    .line 38331
    .local v8, "userDataTypeCode":I
    const/16 v1, 0x2f

    if-ne v5, v1, :cond_4

    .line 38332
    invoke-virtual {p2, v8}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 38333
    :cond_4
    const/16 v0, 0xb5

    if-ne v6, v0, :cond_8

    if-eq v5, v3, :cond_5

    if-ne v5, v1, :cond_8

    :cond_5
    const/4 v0, 0x3

    if-ne v2, v0, :cond_8

    const/4 v1, 0x1

    .line 38334
    .local p0, "messageIsSupportedCeaCaption":Z
    :goto_2
    if-ne v5, v3, :cond_6

    .line 38335
    const v0, 0x47413934

    if-ne v4, v0, :cond_7

    :goto_3
    and-int/2addr v1, v8

    .line 38336
    :cond_6
    if-eqz v1, :cond_1

    .line 38337
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/H3;->A04(JLcom/facebook/ads/redexgen/X/4v;[Lcom/facebook/ads/redexgen/X/Hd;)V

    goto :goto_1

    .line 38338
    :cond_7
    const/4 v8, 0x0

    goto :goto_3

    .line 38339
    :cond_8
    const/4 v1, 0x0

    goto :goto_2

    .line 38340
    :cond_9
    return-void
.end method

.method public static A04(JLcom/facebook/ads/redexgen/X/4v;[Lcom/facebook/ads/redexgen/X/Hd;)V
    .locals 15

    .line 38341
    move-object/from16 v6, p2

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v2

    .line 38342
    .local v2, "firstByte":I
    and-int/lit8 v0, v2, 0x40

    const/4 v5, 0x0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 38343
    .local v3, "processCcDataFlag":Z
    :goto_0
    if-nez v0, :cond_1

    .line 38344
    return-void

    .line 38345
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 38346
    :cond_1
    and-int/lit8 v0, v2, 0x1f

    .line 38347
    .local v6, "ccCount":I
    invoke-virtual {v6, v1}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 38348
    mul-int/lit8 v12, v0, 0x3

    .line 38349
    .local v5, "sampleLength":I
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v4

    .line 38350
    .local v14, "sampleStartPosition":I
    move-object/from16 v7, p3

    array-length v3, v7

    :goto_1
    if-ge v5, v3, :cond_3

    aget-object v8, v7, v5

    .line 38351
    .local v13, "output":Lcom/facebook/ads/redexgen/X/Hd;
    invoke-virtual {v6, v4}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 38352
    invoke-interface {v8, v6, v12}, Lcom/facebook/ads/redexgen/X/Hd;->AIr(Lcom/facebook/ads/redexgen/X/4v;I)V

    .line 38353
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v9, p0

    cmp-long v0, v9, v1

    if-eqz v0, :cond_2

    .line 38354
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v11, 0x1

    .end local v13    # "output":Lcom/facebook/ads/redexgen/X/Hd;
    .local p2, "output":Lcom/facebook/ads/redexgen/X/Hd;
    invoke-interface/range {v8 .. v14}, Lcom/facebook/ads/redexgen/X/Hd;->AIu(JIIILcom/facebook/ads/redexgen/X/Hb;)V

    .line 38355
    .end local v13
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 38356
    :cond_3
    return-void
.end method
