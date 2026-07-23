.class public abstract Lcom/facebook/ads/redexgen/X/G3;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/G7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Api30"
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 744
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "C9RGb7NCXIcFkq487TbtOiV6wJyl5V"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "dIw4BKlzmuU3zMuMzRjmW2qgnJuCAgWy"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "9uTfiPT"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "rJUClzDzuXOVG7xlKmzeqZnP5Peloa5p"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Z"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "9S6veErjLDkLbxAihnisBS"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "TmmUyGbb1uzRJUdaHSZi2e0nreAYvBIE"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "B53ji15DIU9T3sUrLFCN0rmnX0Pwja5D"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/G3;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/G3;->A01()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/G3;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p0, 0x0

    :goto_0
    array-length v0, p1

    if-ge p0, v0, :cond_1

    aget-byte v0, p1, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v3, v0, 0x5e

    sget-object v1, Lcom/facebook/ads/redexgen/X/G3;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1e

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/G3;->A01:[Ljava/lang/String;

    const-string v1, "TD1mTFY2qo3QaoZPZEPw0mbH2R8uHE"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    int-to-byte v0, v3

    aput-byte v0, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 4

    const/16 v0, 0x3a

    new-array v3, v0, [B

    fill-array-data v3, :array_0

    sget-object v1, Lcom/facebook/ads/redexgen/X/G3;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/G3;->A01:[Ljava/lang/String;

    const-string v1, "Lq9CeCJTygMtbBn2m02oyI"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    sput-object v3, Lcom/facebook/ads/redexgen/X/G3;->A00:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x14t
        0x33t
        0x3bt
        0x3et
        0x37t
        0x36t
        0x72t
        0x26t
        0x3dt
        0x72t
        0x31t
        0x33t
        0x3et
        0x3et
        0x72t
        0x1t
        0x27t
        0x20t
        0x34t
        0x33t
        0x31t
        0x37t
        0x7ct
        0x21t
        0x37t
        0x26t
        0x14t
        0x20t
        0x33t
        0x3ft
        0x37t
        0x0t
        0x33t
        0x26t
        0x37t
        0x4dt
        0x72t
        0x7ft
        0x7et
        0x74t
        0x5dt
        0x69t
        0x7at
        0x76t
        0x7et
        0x49t
        0x7et
        0x77t
        0x7et
        0x7at
        0x68t
        0x7et
        0x53t
        0x7et
        0x77t
        0x6bt
        0x7et
        0x69t
    .end array-data
.end method

.method public static A02(Landroid/view/Surface;F)V
    .locals 3

    .line 36654
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 36655
    const/4 v0, 0x0

    goto :goto_0

    .line 36656
    :cond_0
    const/4 v0, 0x1

    .line 36657
    .local v0, "compatibility":I
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/view/Surface;->setFrameRate(FI)V

    goto :goto_1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36658
    :catch_0
    move-exception p1

    .line 36659
    .local v1, "e":Ljava/lang/IllegalStateException;
    const/16 v2, 0x23

    const/16 v1, 0x17

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G3;->A00(III)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    const/16 v1, 0x23

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G3;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/4g;->A08(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36660
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :goto_1
    return-void
.end method
