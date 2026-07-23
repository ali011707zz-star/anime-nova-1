.class public final Lcom/facebook/ads/redexgen/X/Vb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/NativeAdImageApi;


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

    .line 2069
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "VJJRZ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "cZdb6ZeXWXZ9VUL9rLCw743uVGQUpxOO"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "WdMLtMmdaAcYUdhsZ0J"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "wLMa4MLdUcqpCAe5uR"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Vb;->A04:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vb;->A02()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 69460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69461
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Vb;->A02:Ljava/lang/String;

    .line 69462
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Vb;->A01:I

    .line 69463
    iput p3, p0, Lcom/facebook/ads/redexgen/X/Vb;->A00:I

    .line 69464
    return-void
.end method

.method public static A00(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/Vb;
    .locals 6

    .line 69465
    const/4 v3, 0x0

    if-nez p0, :cond_0

    .line 69466
    return-object v3

    .line 69467
    :cond_0
    const/4 v2, 0x6

    const/4 v1, 0x3

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vb;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 69468
    .local v1, "mUrl":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 69469
    return-object v3

    .line 69470
    :cond_1
    const/16 v2, 0x9

    const/4 v1, 0x5

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vb;->A01(III)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 69471
    .local v0, "mWidth":I
    const/4 v2, 0x0

    const/4 v1, 0x6

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vb;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 69472
    .local v2, "mHeight":I
    new-instance v0, Lcom/facebook/ads/redexgen/X/Vb;

    invoke-direct {v0, v5, v3, v1}, Lcom/facebook/ads/redexgen/X/Vb;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vb;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vb;->A04:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x5

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vb;->A04:[Ljava/lang/String;

    const-string v1, "EG8fSiCn7c4UcgqXgi"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_2

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x42

    int-to-byte p1, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vb;->A04:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x12

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vb;->A04:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, ""

    const/4 v0, 0x3

    aput-object v1, v2, v0

    aput-byte p1, v3, p0

    add-int/lit8 p0, p0, 0x0

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vb;->A04:[Ljava/lang/String;

    const-string v1, "dmTYix46cwH5S26Htz"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    aput-byte p1, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Vb;->A03:[B

    return-void

    :array_0
    .array-data 1
        0x76t
        0x7bt
        0x77t
        0x79t
        0x76t
        0x6at
        0x7ct
        0x7bt
        0x65t
        0x48t
        0x56t
        0x5bt
        0x4bt
        0x57t
    .end array-data
.end method


# virtual methods
.method public final getHeight()I
    .locals 1

    .line 69473
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vb;->A00:I

    return v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 69474
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vb;->A02:Ljava/lang/String;

    return-object v0
.end method

.method public final getWidth()I
    .locals 1

    .line 69475
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vb;->A01:I

    return v0
.end method
