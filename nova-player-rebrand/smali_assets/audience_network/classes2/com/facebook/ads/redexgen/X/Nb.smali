.class public final Lcom/facebook/ads/redexgen/X/Nb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static A03:[B = null

.field public static final serialVersionUID:J = 0x536a6714c49e4af6L


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Nb;->A02()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 54497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54498
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Nb;->A02:Ljava/lang/String;

    .line 54499
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Nb;->A01:I

    .line 54500
    iput p3, p0, Lcom/facebook/ads/redexgen/X/Nb;->A00:I

    .line 54501
    return-void
.end method

.method public static A00(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/Nb;
    .locals 6

    .line 54502
    const/4 v3, 0x0

    if-nez p0, :cond_0

    .line 54503
    return-object v3

    .line 54504
    :cond_0
    const/4 v2, 0x6

    const/4 v1, 0x3

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nb;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 54505
    .local v1, "mUrl":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 54506
    return-object v3

    .line 54507
    :cond_1
    const/16 v2, 0x9

    const/4 v1, 0x5

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nb;->A01(III)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 54508
    .local v0, "mWidth":I
    const/4 v2, 0x0

    const/4 v1, 0x6

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nb;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 54509
    .local v2, "mHeight":I
    new-instance v0, Lcom/facebook/ads/redexgen/X/Nb;

    invoke-direct {v0, v5, v3, v1}, Lcom/facebook/ads/redexgen/X/Nb;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Nb;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x75

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

    sput-object v0, Lcom/facebook/ads/redexgen/X/Nb;->A03:[B

    return-void

    :array_0
    .array-data 1
        0x19t
        0x16t
        0x1at
        0x18t
        0x19t
        0x25t
        0x59t
        0x56t
        0x50t
        0x2t
        -0xct
        -0x11t
        -0x1t
        -0xdt
    .end array-data
.end method


# virtual methods
.method public final A03()I
    .locals 1

    .line 54510
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Nb;->A00:I

    return v0
.end method

.method public final A04()I
    .locals 1

    .line 54511
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Nb;->A01:I

    return v0
.end method

.method public final A05()Ljava/lang/String;
    .locals 1

    .line 54512
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nb;->A02:Ljava/lang/String;

    return-object v0
.end method
