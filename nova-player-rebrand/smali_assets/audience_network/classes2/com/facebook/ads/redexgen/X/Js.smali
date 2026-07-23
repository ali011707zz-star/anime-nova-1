.class public abstract Lcom/facebook/ads/redexgen/X/Js;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 851
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "igoOoy3NY4UMRHdpx9h3UlwGdvMc0fc9"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "i1My3cIv2txc6hnpPF2N9ufK5yKqcDwp"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ZPKM82HH2UhiHuE6c"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "N8bcPF6"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "fP1uMJr9juYIT"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Q74KZy4WGIwm3"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "kYmec6ZLKDIoPLbK3wnMb68OSlbBsX7E"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "P2I33wOyCa7MBOFZieFJQqH5gMHCVrks"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Js;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Js;->A02()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/4v;)I
    .locals 6

    .line 44359
    const/4 v5, 0x0

    .line 44360
    .local v0, "value":I
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v0

    if-nez v0, :cond_1

    .line 44361
    const/4 v0, -0x1

    return v0

    .line 44362
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v4

    .line 44363
    .local v1, "b":I
    add-int/2addr v5, v4

    .line 44364
    const/16 v3, 0xff

    sget-object v1, Lcom/facebook/ads/redexgen/X/Js;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Js;->A01:[Ljava/lang/String;

    const-string v1, "hfDUXVNQknc2urmlb"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eq v4, v3, :cond_0

    .line 44365
    return v5

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Js;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x3f

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

    sput-object v0, Lcom/facebook/ads/redexgen/X/Js;->A00:[B

    return-void

    :array_0
    .array-data 1
        -0x11t
        0x11t
        0xdt
        0x1t
        0x20t
        0x15t
        0x18t
        -0x29t
        -0x11t
        -0x13t
        -0xct
        -0xct
        -0x13t
        -0xet
        -0x15t
        -0x5ct
        -0xat
        -0x17t
        -0xft
        -0x1bt
        -0x13t
        -0xet
        -0x18t
        -0x17t
        -0xat
        -0x5ct
        -0xdt
        -0x16t
        -0x5ct
        -0xft
        -0x1bt
        -0x10t
        -0x16t
        -0xdt
        -0xat
        -0xft
        -0x17t
        -0x18t
        -0x5ct
        -0x29t
        -0x37t
        -0x33t
        -0x5ct
        -0x2et
        -0x3bt
        -0x30t
        -0x5ct
        -0x7t
        -0xet
        -0x13t
        -0x8t
        -0x4et
    .end array-data
.end method

.method public static A03(JLcom/facebook/ads/redexgen/X/4v;[Lcom/facebook/ads/redexgen/X/Hd;)V
    .locals 9

    .line 44366
    :goto_0
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v0

    const/4 v8, 0x1

    if-le v0, v8, :cond_9

    .line 44367
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/Js;->A00(Lcom/facebook/ads/redexgen/X/4v;)I

    move-result v2

    .line 44368
    .local v0, "payloadType":I
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/Js;->A00(Lcom/facebook/ads/redexgen/X/4v;)I

    move-result v1

    .line 44369
    .local v2, "payloadSize":I
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v7

    add-int/2addr v7, v1

    .line 44370
    .local v3, "nextPayloadPosition":I
    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v0

    if-le v1, v0, :cond_2

    .line 44371
    .end local v4
    .end local v5
    .end local v6
    .end local v8
    .end local p0    # null:J
    :cond_0
    const/4 v2, 0x0

    const/4 v1, 0x7

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Js;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x7

    const/16 v1, 0x2d

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Js;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 44372
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4v;->A0A()I

    move-result v7

    .line 44373
    :cond_1
    :goto_1
    invoke-virtual {p2, v7}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 44374
    .end local v0    # "payloadType":I
    .end local v2    # "payloadSize":I
    .end local v3    # "nextPayloadPosition":I
    goto :goto_0

    .line 44375
    :cond_2
    const/4 v0, 0x4

    if-ne v2, v0, :cond_1

    const/16 v0, 0x8

    if-lt v1, v0, :cond_1

    .line 44376
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v6

    .line 44377
    .local v4, "countryCode":I
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4v;->A0M()I

    move-result v5

    .line 44378
    .local v5, "providerCode":I
    const/4 v4, 0x0

    .line 44379
    .local v6, "userIdentifier":I
    const/16 v3, 0x31

    if-ne v5, v3, :cond_3

    .line 44380
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v4

    .line 44381
    :cond_3
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v2

    .line 44382
    .local v8, "userDataTypeCode":I
    const/16 v1, 0x2f

    if-ne v5, v1, :cond_4

    .line 44383
    invoke-virtual {p2, v8}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 44384
    :cond_4
    const/16 v0, 0xb5

    if-ne v6, v0, :cond_8

    if-eq v5, v3, :cond_5

    if-ne v5, v1, :cond_8

    :cond_5
    const/4 v0, 0x3

    if-ne v2, v0, :cond_8

    const/4 v1, 0x1

    .line 44385
    .local p0, "messageIsSupportedCeaCaption":Z
    :goto_2
    if-ne v5, v3, :cond_6

    .line 44386
    const v0, 0x47413934

    if-ne v4, v0, :cond_7

    :goto_3
    and-int/2addr v1, v8

    .line 44387
    :cond_6
    if-eqz v1, :cond_1

    .line 44388
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Js;->A04(JLcom/facebook/ads/redexgen/X/4v;[Lcom/facebook/ads/redexgen/X/Hd;)V

    goto :goto_1

    .line 44389
    :cond_7
    const/4 v8, 0x0

    goto :goto_3

    .line 44390
    :cond_8
    const/4 v1, 0x0

    goto :goto_2

    .line 44391
    :cond_9
    return-void
.end method

.method public static A04(JLcom/facebook/ads/redexgen/X/4v;[Lcom/facebook/ads/redexgen/X/Hd;)V
    .locals 10

    .line 44392
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v3

    .line 44393
    .local v2, "firstByte":I
    and-int/lit8 v0, v3, 0x40

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 44394
    .local v3, "processCcDataFlag":Z
    :goto_0
    if-nez v0, :cond_1

    .line 44395
    return-void

    .line 44396
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 44397
    :cond_1
    and-int/lit8 v0, v3, 0x1f

    .line 44398
    .local v6, "ccCount":I
    invoke-virtual {p2, v1}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 44399
    mul-int/lit8 v7, v0, 0x3

    .line 44400
    .local v5, "sampleLength":I
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v1

    .line 44401
    .local p4, "sampleStartPosition":I
    array-length v0, p3

    :goto_1
    if-ge v2, v0, :cond_2

    aget-object v3, p3, v2

    .line 44402
    .local p3, "output":Lcom/facebook/ads/redexgen/X/Hd;
    invoke-virtual {p2, v1}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 44403
    invoke-interface {v3, p2, v7}, Lcom/facebook/ads/redexgen/X/Hd;->AIr(Lcom/facebook/ads/redexgen/X/4v;I)V

    .line 44404
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x1

    .end local p3    # "output":Lcom/facebook/ads/redexgen/X/Hd;
    .local p7, "output":Lcom/facebook/ads/redexgen/X/Hd;
    move-wide v4, p0

    invoke-interface/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/Hd;->AIu(JIIILcom/facebook/ads/redexgen/X/Hb;)V

    .line 44405
    .end local p7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 44406
    :cond_2
    return-void
.end method
