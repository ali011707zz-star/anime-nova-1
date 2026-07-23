.class public abstract Lcom/facebook/ads/redexgen/X/Z4;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Z4;->A02()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/gi;Ljava/lang/Throwable;)Landroid/view/View;
    .locals 1

    .line 74821
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/Z4;->A03(Lcom/facebook/ads/redexgen/X/gi;Ljava/lang/Throwable;)V

    .line 74822
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Z4;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x2a

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

    const/16 v0, 0x64

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Z4;->A00:[B

    return-void

    :array_0
    .array-data 1
        -0x70t
        -0x74t
        -0x75t
        -0x41t
        -0x52t
        -0x4dt
        -0x51t
        -0x48t
        -0x53t
        -0x51t
        -0x68t
        -0x51t
        -0x42t
        -0x3ft
        -0x47t
        -0x44t
        -0x4bt
        -0x7bt
        -0x60t
        -0x58t
        -0x55t
        0x5ft
        -0x4dt
        -0x52t
        0x5ft
        -0x4ft
        -0x5ct
        -0x53t
        -0x5dt
        -0x5ct
        -0x4ft
        0x5ft
        -0x73t
        -0x60t
        -0x4dt
        -0x58t
        -0x4bt
        -0x5ct
        0x5ft
        -0x4dt
        -0x5ct
        -0x54t
        -0x51t
        -0x55t
        -0x60t
        -0x4dt
        -0x5ct
        0x6dt
        0x5ft
        -0x7ct
        -0x54t
        -0x51t
        -0x4dt
        -0x48t
        0x5ft
        -0x80t
        -0x53t
        -0x5dt
        -0x4ft
        -0x52t
        -0x58t
        -0x5dt
        0x5ft
        -0x6bt
        -0x58t
        -0x5ct
        -0x4at
        0x5ft
        -0x4at
        -0x58t
        -0x55t
        -0x55t
        0x5ft
        -0x5ft
        -0x5ct
        0x5ft
        -0x4ft
        -0x5ct
        -0x4dt
        -0x4ct
        -0x4ft
        -0x53t
        -0x5ct
        -0x5dt
        0x6dt
        -0x1t
        -0xet
        0x5t
        -0x6t
        0x7t
        -0xat
        -0x10t
        0x5t
        -0xat
        -0x2t
        0x1t
        -0x3t
        -0xet
        0x5t
        -0xat
    .end array-data
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/gi;Ljava/lang/Throwable;)V
    .locals 5

    .line 74823
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object p0

    sget v4, Lcom/facebook/ads/redexgen/X/Td;->A1w:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v3, p1}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/Throwable;)V

    .line 74824
    const/16 v2, 0x55

    const/16 v1, 0xf

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z4;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    .line 74825
    const/4 v2, 0x0

    const/16 v1, 0x11

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z4;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x11

    const/16 v1, 0x44

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z4;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74826
    return-void
.end method
