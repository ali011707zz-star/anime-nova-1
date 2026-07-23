.class public final Lcom/facebook/ads/redexgen/X/qq;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0008\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "",
        "",
        "<init>",
        "toString",
        "",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final A02:Lcom/facebook/ads/redexgen/X/qq;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3576
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "e7AwhByPjRPUw6TPvHQ97hdZd1"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "BA53CFSFXKNaueAmPJEc9hkRINMpWiHX"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "eg"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "BOBLIBOzzfVObnmt242WmA3oiPmYKJxA"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "5X54btT7YSWi6fK"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "vwsHu7ibsWkpW0OsiHz"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "pfFn7t8nBopYri9"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "k"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/qq;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/qq;->A01()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/qq;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/qq;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/qq;->A02:Lcom/facebook/ads/redexgen/X/qq;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 105993
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/qq;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length v0, v3

    if-ge p0, v0, :cond_1

    aget-byte p1, v3, p0

    xor-int/2addr p1, p2

    sget-object v2, Lcom/facebook/ads/redexgen/X/qq;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/qq;->A01:[Ljava/lang/String;

    const-string v1, "yY0Pcbq111zueav"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "lktBBxSgK8ahxIm"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    xor-int/lit8 v0, p1, 0x51

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/qq;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x1bt
        0x1ft
        0x4t
        0x1ct
        0x19t
        0x1et
        0x5et
        0x25t
        0x1et
        0x19t
        0x4t
    .end array-data
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 105994
    const/4 v2, 0x0

    const/16 v1, 0xb

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/qq;->A00(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
