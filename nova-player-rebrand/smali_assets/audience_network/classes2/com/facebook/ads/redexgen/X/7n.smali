.class public final Lcom/facebook/ads/redexgen/X/7n;
.super Lcom/facebook/ads/redexgen/X/jd;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static A00:[B = null

.field public static A01:[Ljava/lang/String; = null

.field public static final serialVersionUID:J = 0x4fd0ad1c9cd13febL


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 480
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "DwBpRdjhynFrlzLsBFrR"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "QSeBoONoLaQYOKTzvkglRPiKzJDmlw8V"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "7gQnCJoaPerIMpa6ilCeIjK7d9DzDLkx"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "0G82UgBGsFbmab2LaOSe1R1N"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "BET7yFkEMT8u6XlB2K"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "QGCw11GNV2Lw2F7bA4MSMYlzIGOyIq"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/7n;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/7n;->A02()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/NR;",
            ">;)V"
        }
    .end annotation

    .line 21572
    .local p1, "adInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adapters/datamodels/AdInfo;>;"
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/jd;-><init>(Ljava/util/List;)V

    .line 21573
    return-void
.end method

.method public static A00(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/gi;)Lcom/facebook/ads/redexgen/X/7n;
    .locals 2

    .line 21574
    new-instance v0, Lcom/facebook/ads/redexgen/X/jS;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/jS;-><init>()V

    .line 21575
    invoke-static {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/jd;->A08(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Ne;)Ljava/util/List;

    move-result-object v0

    new-instance p1, Lcom/facebook/ads/redexgen/X/7n;

    invoke-direct {p1, v0}, Lcom/facebook/ads/redexgen/X/7n;-><init>(Ljava/util/List;)V

    .line 21576
    .local v0, "dataBundle":Lcom/facebook/ads/redexgen/X/7n;
    invoke-virtual {p1, p0}, Lcom/facebook/ads/redexgen/X/jd;->A2I(Lorg/json/JSONObject;)V

    .line 21577
    const/4 p0, 0x0

    const/16 v1, 0xc

    const/16 v0, 0x9

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/7n;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1N(Ljava/lang/String;)V

    .line 21578
    return-object p1
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/7n;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p0, 0x0

    :goto_0
    array-length v0, p1

    if-ge p0, v0, :cond_1

    aget-byte v0, p1, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x36

    int-to-byte v3, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/7n;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x12

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/7n;->A01:[Ljava/lang/String;

    const-string v1, "xBe8M"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    aput-byte v3, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/7n;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x56t
        0x51t
        0x4bt
        0x5at
        0x4dt
        0x4ct
        0x4bt
        0x56t
        0x4bt
        0x56t
        0x5et
        0x53t
    .end array-data
.end method


# virtual methods
.method public final A0o()I
    .locals 1

    .line 21579
    const/4 v0, 0x0

    return v0
.end method

.method public final A0p()I
    .locals 1

    .line 21580
    const/4 v0, 0x0

    return v0
.end method
