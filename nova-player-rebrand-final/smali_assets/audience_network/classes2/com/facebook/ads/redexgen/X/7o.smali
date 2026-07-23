.class public final Lcom/facebook/ads/redexgen/X/7o;
.super Lcom/facebook/ads/redexgen/X/jd;
.source ""


# static fields
.field public static A00:[B = null

.field public static final serialVersionUID:J = 0x4fd0ad1c9cd13fecL


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/7o;->A02()V

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

    .line 21581
    .local p1, "adInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adapters/datamodels/AdInfo;>;"
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/jd;-><init>(Ljava/util/List;)V

    .line 21582
    return-void
.end method

.method public static A00(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/gi;)Lcom/facebook/ads/redexgen/X/7o;
    .locals 2

    .line 21583
    new-instance v0, Lcom/facebook/ads/redexgen/X/jb;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/jb;-><init>()V

    .line 21584
    invoke-static {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/jd;->A08(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Ne;)Ljava/util/List;

    move-result-object v0

    new-instance p1, Lcom/facebook/ads/redexgen/X/7o;

    invoke-direct {p1, v0}, Lcom/facebook/ads/redexgen/X/7o;-><init>(Ljava/util/List;)V

    .line 21585
    .local v0, "dataBundle":Lcom/facebook/ads/redexgen/X/7o;
    invoke-virtual {p1, p0}, Lcom/facebook/ads/redexgen/X/jd;->A2I(Lorg/json/JSONObject;)V

    .line 21586
    const/4 p0, 0x0

    const/4 v1, 0x6

    const/4 v0, 0x6

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/7o;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1N(Ljava/lang/String;)V

    .line 21587
    return-object p1
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/7o;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x5b

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

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/7o;->A00:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x3ft
        0x3ct
        0x33t
        0x33t
        0x38t
        0x2ft
    .end array-data
.end method


# virtual methods
.method public final A0o()I
    .locals 1

    .line 21588
    const/4 v0, 0x0

    return v0
.end method

.method public final A0p()I
    .locals 1

    .line 21589
    const/4 v0, 0x0

    return v0
.end method
