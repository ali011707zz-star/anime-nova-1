.class public abstract Lcom/facebook/ads/redexgen/X/Y7;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Y7;->A02()V

    return-void
.end method

.method public static A00(Landroid/content/Context;)F
    .locals 3

    .line 73536
    const/4 v2, 0x2

    const/4 v1, 0x5

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Y7;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 73537
    .local v0, "audio":Landroid/media/AudioManager;
    if-eqz v2, :cond_0

    .line 73538
    const/4 v1, 0x3

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 73539
    .local v2, "volume":I
    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    .line 73540
    .local v1, "maxVolume":I
    if-lez v2, :cond_0

    .line 73541
    int-to-float v1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr v1, v0

    int-to-float v0, v2

    div-float/2addr v1, v0

    return v1

    .line 73542
    .end local v1    # "maxVolume":I
    .end local v2    # "volume":I
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Y7;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x5

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

    const/16 v0, 0x15

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Y7;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x64t
        0x5ct
        0x6ft
        0x7bt
        0x6at
        0x67t
        0x61t
        0x79t
        0x6dt
        0x6ct
        0x77t
        0x68t
        0x74t
        0x79t
        0x61t
        0x7t
        0x0t
        0x2t
        0x7t
        0x0t
        0xbt
    .end array-data
.end method

.method public static A03(Ljava/util/Map;ZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .line 73543
    .local v4, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x1

    const/4 v1, 0x1

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Y7;->A01(III)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Y7;->A01(III)Ljava/lang/String;

    move-result-object v4

    if-eqz p1, :cond_1

    move-object v3, v5

    :goto_0
    const/4 v2, 0x7

    const/16 v1, 0x8

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Y7;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73544
    if-eqz p2, :cond_0

    :goto_1
    const/16 v2, 0xf

    const/4 v1, 0x6

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Y7;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73545
    return-void

    .line 73546
    :cond_0
    move-object v5, v4

    goto :goto_1

    .line 73547
    :cond_1
    move-object v3, v4

    goto :goto_0
.end method
