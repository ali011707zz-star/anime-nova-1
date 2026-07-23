.class public abstract Lcom/facebook/ads/redexgen/X/F3;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/F4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HandlerAndListener"
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 727
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "hxRtgXLlXZBZOOikVlBghnrqRk8D"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "kooIKi1fx1Hb2qPm3oF2lCQrgWRqeUq9"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "tAS3MHwJkliRqJEhDeJC9YibHYE"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "z1PlvRauaFfgQg02R7fRgUIUzlYZ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "X9uQKTEyJl"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "tATbEztK"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "lnp2iYjILHnNLb0EhQTEEhT3vvCpm0GE"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ASuPVfTQk0HiiSTBHvF2"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/F3;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/F3;->A01()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/F3;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/F3;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/F3;->A01:[Ljava/lang/String;

    const-string v1, "l0wMWtKaafBi6h"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_0

    aget-byte v0, v3, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x60

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/F3;->A00:[B

    return-void

    :array_0
    .array-data 1
        -0x12t
        -0x1ft
        -0x18t
        -0x1ft
        -0x23t
        -0x11t
        -0x1ft
        -0x20t
    .end array-data
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/F3;)Z
    .locals 2

    .line 35468
    const/4 p0, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x1c

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/F3;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
