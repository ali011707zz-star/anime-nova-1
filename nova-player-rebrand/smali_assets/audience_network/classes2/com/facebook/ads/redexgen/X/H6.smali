.class public final Lcom/facebook/ads/redexgen/X/H6;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 768
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "HU4YGL7IwZePYHnBLI2PbuSTKGYLERhV"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "fFsJPZ9"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "v5n0jNlIC8VEk9kcmtdxoaJ1lX"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "iKo8W6GX5Xgtq"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "u9GtZMdpfWAUjc"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "5VwMttC"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "nQaWhqWLYmZyv"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "CiiXTe9emjL8TKahiZ469ARUB1y9RvmO"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/H6;->A04:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/H6;->A02()V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 38376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38377
    iput p1, p0, Lcom/facebook/ads/redexgen/X/H6;->A01:I

    .line 38378
    iput p2, p0, Lcom/facebook/ads/redexgen/X/H6;->A00:I

    .line 38379
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/H6;->A02:Ljava/lang/String;

    .line 38380
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/4v;)Lcom/facebook/ads/redexgen/X/H6;
    .locals 5

    .line 38381
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 38382
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v0

    .line 38383
    .local v0, "profileData":I
    shr-int/lit8 v4, v0, 0x1

    .line 38384
    .local v1, "dvProfile":I
    and-int/lit8 v3, v0, 0x1

    const/4 v1, 0x5

    shl-int/2addr v3, v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v0

    shr-int/lit8 v0, v0, 0x3

    and-int/lit8 v0, v0, 0x1f

    or-int/2addr v3, v0

    .line 38385
    .local v2, "dvLevel":I
    const/4 v0, 0x4

    if-eq v4, v0, :cond_0

    if-eq v4, v1, :cond_0

    const/4 v0, 0x7

    if-ne v4, v0, :cond_2

    .line 38386
    :cond_0
    const/4 v2, 0x7

    const/4 v1, 0x4

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/H6;->A01(III)Ljava/lang/String;

    move-result-object v1

    .line 38387
    .restart local v3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/4 v2, 0x1

    const/4 v1, 0x2

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/H6;->A01(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0xa

    if-ge v3, v0, :cond_1

    :goto_1
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 38388
    .local v4, "codecs":Ljava/lang/String;
    new-instance v0, Lcom/facebook/ads/redexgen/X/H6;

    invoke-direct {v0, v4, v3, v1}, Lcom/facebook/ads/redexgen/X/H6;-><init>(IILjava/lang/String;)V

    return-object v0

    .line 38389
    :cond_1
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/H6;->A01(III)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 38390
    :cond_2
    const/16 v0, 0x8

    if-ne v4, v0, :cond_3

    .line 38391
    const/16 v2, 0xb

    const/4 v1, 0x4

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/H6;->A01(III)Ljava/lang/String;

    move-result-object v1

    .local v3, "codecsPrefix":Ljava/lang/String;
    goto :goto_0

    .line 38392
    .end local v3    # "codecsPrefix":Ljava/lang/String;
    :cond_3
    const/16 p0, 0x9

    sget-object v1, Lcom/facebook/ads/redexgen/X/H6;->A04:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/H6;->A04:[Ljava/lang/String;

    const-string v1, "DwVGRWEQxSiyr"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "AkYplpXV9U4Nr"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-ne v4, p0, :cond_5

    .line 38393
    const/4 v2, 0x3

    const/4 v1, 0x4

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/H6;->A01(III)Ljava/lang/String;

    move-result-object v1

    .restart local v3    # "codecsPrefix":Ljava/lang/String;
    goto :goto_0

    .line 38394
    .end local v3    # "codecsPrefix":Ljava/lang/String;
    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/H6;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x37

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

    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/H6;->A03:[B

    return-void

    :array_0
    .array-data 1
        -0x49t
        -0x53t
        -0x51t
        -0x51t
        -0x3ct
        -0x4ft
        -0x7ft
        -0x59t
        -0x47t
        -0x55t
        -0x58t
        -0xbt
        -0xet
        0x3t
        -0x42t
    .end array-data
.end method
