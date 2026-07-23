.class public abstract Lcom/facebook/ads/redexgen/X/nJ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation


# static fields
.field public static A00:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/nJ;->A02()V

    return-void
.end method

.method public static A00(ILjava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "name"
        }
    .end annotation

    .line 100317
    if-ltz p0, :cond_0

    .line 100318
    return p0

    .line 100319
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x1d

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/nJ;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/nJ;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x57

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

    const/16 v0, 0x81

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/nJ;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x60t
        0x23t
        0x21t
        0x2et
        0x2et
        0x2ft
        0x34t
        0x60t
        0x22t
        0x25t
        0x60t
        0x2et
        0x25t
        0x27t
        0x21t
        0x34t
        0x29t
        0x36t
        0x25t
        0x60t
        0x22t
        0x35t
        0x34t
        0x60t
        0x37t
        0x21t
        0x33t
        0x7at
        0x60t
        0x2bt
        0x78t
        0x63t
        0x7at
        0x7at
        0x0t
        0x1t
        0x4et
        0xdt
        0xft
        0x2t
        0x2t
        0x1dt
        0x4et
        0x1at
        0x1t
        0x4et
        0x0t
        0xbt
        0x16t
        0x1at
        0x46t
        0x47t
        0x4et
        0x1dt
        0x7t
        0x0t
        0xdt
        0xbt
        0x4et
        0x1at
        0x6t
        0xbt
        0x4et
        0x2t
        0xft
        0x1dt
        0x1at
        0x4et
        0xdt
        0xft
        0x2t
        0x2t
        0x4et
        0x1at
        0x1t
        0x4et
        0x1ct
        0xbt
        0x3t
        0x1t
        0x18t
        0xbt
        0x46t
        0x47t
        0xat
        0x11t
        0x8t
        0x8t
        0x44t
        0xft
        0x1t
        0x1dt
        0x44t
        0xdt
        0xat
        0x44t
        0x1t
        0xat
        0x10t
        0x16t
        0x1dt
        0x5et
        0x44t
        0xat
        0x11t
        0x8t
        0x8t
        0x59t
        0x1ft
        0x4t
        0x1dt
        0x1dt
        0x51t
        0x7t
        0x10t
        0x1dt
        0x4t
        0x14t
        0x51t
        0x18t
        0x1ft
        0x51t
        0x14t
        0x1ft
        0x5t
        0x3t
        0x8t
        0x4bt
        0x51t
    .end array-data
.end method

.method public static A03(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 100320
    if-eqz p0, :cond_1

    .line 100321
    if-eqz p1, :cond_0

    .line 100322
    return-void

    .line 100323
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x6c

    const/16 v1, 0x15

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/nJ;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x1d

    const/4 v1, 0x5

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/nJ;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100324
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x54

    const/16 v1, 0x18

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/nJ;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A04(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canRemove"
        }
    .end annotation

    .line 100325
    const/16 v2, 0x22

    const/16 v1, 0x32

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/nJ;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/ki;->A0F(ZLjava/lang/Object;)V

    .line 100326
    return-void
.end method
