.class public final Lcom/facebook/ads/redexgen/X/VI;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A02:[B


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/VA;

.field public final A01:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/VI;->A01()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/VA;)V
    .locals 0

    .line 69239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69240
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/VI;->A01:Ljava/lang/String;

    .line 69241
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/VI;->A00:Lcom/facebook/ads/redexgen/X/VA;

    .line 69242
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/VI;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x2d

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

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/VI;->A02:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0xft
        -0xdt
        -0x20t
        -0xet
        -0x9t
        -0x12t
        -0x1dt
    .end array-data
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/VH;Ljava/util/Map;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/VA;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/VH;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/VA;",
            ")V"
        }
    .end annotation

    .line 69243
    .local p2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/VH;->A03()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/VI;->A03(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/VA;)V

    .line 69244
    return-void
.end method

.method public static A03(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/VA;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/VA;",
            ")V"
        }
    .end annotation

    .line 69245
    .local v2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p2, p0}, Lcom/facebook/ads/redexgen/X/VK;->A0B(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69246
    return-void

    .line 69247
    :cond_0
    if-nez p1, :cond_1

    .line 69248
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 69249
    :cond_1
    const/4 v2, 0x0

    const/4 v1, 0x7

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VI;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69250
    invoke-interface {p3, p2, p1}, Lcom/facebook/ads/redexgen/X/VA;->ABF(Ljava/lang/String;Ljava/util/Map;)V

    .line 69251
    return-void
.end method


# virtual methods
.method public final A04(Lcom/facebook/ads/redexgen/X/VH;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/VH;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 69252
    .local p2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/VH;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/facebook/ads/redexgen/X/VI;->A05(Ljava/lang/String;Ljava/util/Map;)V

    .line 69253
    return-void
.end method

.method public final A05(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 69254
    .local p2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VI;->A01:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VI;->A00:Lcom/facebook/ads/redexgen/X/VA;

    invoke-static {p1, p2, v1, v0}, Lcom/facebook/ads/redexgen/X/VI;->A03(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/VA;)V

    .line 69255
    return-void
.end method
