.class public final Lcom/facebook/ads/redexgen/X/6Z;
.super Lcom/facebook/ads/redexgen/X/EA;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/MI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/MI;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 440
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "cVYzzU3WDwilAiB6lBwH"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ltb11yKnDLf"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "qD1l7ddw57WScFbFlpW6gLQQ4LJZYMm4"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "7tmDLtuP1dSUokfmYRKMMhnjp75BOUEQ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "O1T"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "OUAaXGhWo5xW6BfvCbr"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "NPW6PnCzVK8iTd9b27h5"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ykk8Miz3Z2gvnB5Rb4Sxgn912BIo"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/6Z;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/6Z;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/MI;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 17676
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6Z;->A00:Lcom/facebook/ads/redexgen/X/MI;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/EA;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/6Z;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v3, p0, p1

    xor-int/2addr v3, p2

    sget-object v1, Lcom/facebook/ads/redexgen/X/6Z;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x35

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/6Z;->A02:[Ljava/lang/String;

    const-string v1, "7KI0j9KfVtSFY3dF"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    xor-int/lit8 v0, v3, 0x46

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x15

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/6Z;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x3t
        0x1ct
        0x11t
        0x10t
        0x1at
        0x3ct
        0x1bt
        0x1t
        0x10t
        0x7t
        0x6t
        0x1t
        0x1ct
        0x1t
        0x14t
        0x19t
        0x30t
        0x3t
        0x10t
        0x1bt
        0x1t
    .end array-data
.end method

.method private final A02(Lcom/facebook/ads/redexgen/X/4K;)V
    .locals 4

    .line 17677
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Z;->A00:Lcom/facebook/ads/redexgen/X/MI;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MI;->A00(Lcom/facebook/ads/redexgen/X/MI;)Lcom/facebook/ads/redexgen/X/Yh;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x15

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6Z;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, p1}, Lcom/facebook/ads/redexgen/X/Yh;->A4k(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/UL;)V

    .line 17678
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/UL;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 17679
    check-cast p1, Lcom/facebook/ads/redexgen/X/4K;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6Z;->A02(Lcom/facebook/ads/redexgen/X/4K;)V

    return-void
.end method
